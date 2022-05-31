from flask import Flask, jsonify, request
import pickle
import pandas as pd
import numpy as np
import tensorflow as tf

app = Flask(__name__)

columns = ['SeniorCitizen',
    'Partner',
    'Dependents',
    'tenure',
    'MultipleLines',
    'InternetService',
    'OnlineSecurity',
    'OnlineBackup',
    'DeviceProtection',
    'TechSupport',
    'StreamingTV',
    'StreamingMovies',
    'Contract',
    'PaperlessBilling',
    'PaymentMethod',
    'MonthlyCharges',
    'TotalCharges'
    ]

data = {
    'SeniorCitizen' :                             'No',
    'Partner' :                                  'Yes',
    'Dependents' :                               'Yes',
    'tenure' :                                     70,
    'MultipleLines' :                            'Yes',
    'InternetService' :                  'Fiber optic',
    'OnlineSecurity' :                           'Yes',
    'OnlineBackup' :                             'Yes',
    'DeviceProtection' :                         'Yes',
    'TechSupport' :                              'Yes',
    'StreamingTV' :                               'No',
    'StreamingMovies' :                           'No',
    'Contract' :                            'Two year',
    'PaperlessBilling' :                          'No',
    'PaymentMethod' :      'Bank transfer (automatic)',
    'MonthlyCharges' :                          93.9,
    'TotalCharges' :                         6579
    }

with open('branch_pipe.pkl', 'rb') as f:
    pipe_branch = pickle.load(f)

saved_seq_improved = tf.keras.models.load_model('nn_seq_telco')

@app.route("/")
def hello_world():
    return jsonify(data)

@app.route("/churn", methods=['GET', 'POST'])
def data_inference():
    if request.method == 'POST':
        data = request.json
        new_data = [ 
                data['SeniorCitizen'],
                data['Partner'],
                data['Dependents'],
                data['tenure'],
                data['MultipleLines'],
                data['InternetService'],
                data['OnlineSecurity'],
                data['OnlineBackup'],
                data['DeviceProtection'],
                data['TechSupport'],
                data['StreamingTV'],
                data['StreamingMovies'],
                data['Contract'],
                data['PaperlessBilling'],
                data['PaymentMethod'],
                data['MonthlyCharges'],
                data['TotalCharges']
        ]

        arr_transform = pipe_branch.transform(pd.DataFrame([new_data], columns=columns))
        result = saved_seq_improved.predict(arr_transform)
        data_result = 'No' if result[0, 0] < 0.5 else 'Yes'

        response = {
            'code':200, 
            'status':'OK',
            'prediction': data_result,
            'predict': float(result[0,0])
        }

        return jsonify(response)
    return "Silahkan gunakan method post untuk mengakses model"

app.run(debug=True)
#------------------------------------------------------------------------------------------------------------