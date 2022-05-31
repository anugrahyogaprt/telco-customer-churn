import streamlit as st
import numpy as np
import requests
import result_yes
import result_no

st.set_page_config(
    page_title='FTDS Phase 2 Milestone 1 -Anugrah Yoga Pratama',
    page_icon="✌️",
    initial_sidebar_state="collapsed",
    layout='centered',
    menu_items={
        'Get Help': 'https://www.google.com',
        'Report a bug': "https://github.com/anugrahyogaprt",
        'About': 'This is my Milestone 1\'s assignment, Enjoy :)'
    }
)

st.title("Telco Customer Churn")

col1, col2, col3 = st.columns([0.5, 5, 0.5])
col2.image('churn.png', use_column_width=True, caption='Customer Churn ', width=500)
image_citation = '''
<p
        style="text-align: center;">
        Source : <a href:"https://medium.com/swlh/classification-analysis-on-telco-customer-churn-a01599ad28d7">Medium.com</a>
</p>
'''
st.markdown(image_citation, unsafe_allow_html=True)

st.write('Here we will try to predict customer churn in fictional\n\
        telco company that provided home phone and Internet services to\n\
        7043 customers in California in Q3. Please fill out the required\n\
        forms below so that the system can classify whether the customer potentially\n\
        a churn or not. This dataset from [Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn).')
st.write('This is a description of the required features:')
st.markdown('''
1. Demographic Information\n\
>>- **SeniorCitizen**: Whether the client is a senior citizen or not (0, 1).\n\
>>- **Partner**: Whether the client has a partner or not (Yes, No).\n\
>>- **Dependents**: Whether the client has dependents or not (Yes, No).\n\

2. Customer Account Information\n\
>>- **tenure**: Number of months the customer has stayed with the company (Some numeric values ​​differ).\n\
>>- **Contract**: Shows the customer's current contract type (Month-to-Month, One-year, Two-year).\n\
>>- **PaperlessBilling**: Whether the client has paperless billing or not (Yes, No).\n\
>>- **PaymentMethod**: Customer payment methods (Electronic check, Postal check, Bank transfer (automatic), Credit Card (automatic)).\n\
>>- **MontlyCharges**: The amount charged to the customer each month (Some numeric values ​​differ).\n\
>>- **TotalCharges**: The total amount charged to the customer (Several different numeric values).\n\

3. Service Information\n\
>>- **MultipleLines**: Whether the client has multiple lines or not (No phone service, No, Yes).\n\
>>- **InternetServices**: Does the client subscribe to Internet services with the company (DSL, Fiber optic, No)\n\
>>- **OnlineSecurity**: Whether the client has online security or not (No internet service, No, Yes).\n\
>>- **OnlineBackup**: Whether the client has an online backup or not (No internet service, No, Yes).\n\
>>- **DeviceProtection**: Whether the client has device protection or not (No internet service, No, Yes).\n\
>>- **TechSupport**: Whether the client has technical support or not (No internet service, No, Yes).\n\
>>- **StreamingTV**: Whether the client has streaming TV or not (No internet service, No, Yes).\n\
>>- **StreamingMovies**: Whether the client has streaming movies or not (No internet service, No, Yes).\n\
''')
# ----------------------------------------------------------------------
no_option = {
        'Yes': 'Yes',
        'No': 'No',
        'No phone service': 'No',
        'No internet service': 'No'
}
col1, col2, col3 = st.columns(3)
with col1:
        st.subheader('Senior Citizen')
        senior_citizen = st.radio(
                label='SeniorCitizen',
                options=['No', 'Yes'],
                index=0
        )
with col2:
        st.subheader('Partner')
        partner = st.radio(
                label='Partner',
                options=['No', 'Yes'],
                index=0
        )
with col3:
        st.subheader('Dependents')
        dependents = st.radio(
                label='Dependents',
                options=['No', 'Yes'],
                index=0
        )
# ----------------------------------------------------------------------
st.subheader('Multiple Lines')
multiplelines = st.selectbox(
        label='multiplelines',
        options=['Yes', 'No', 'No phone service'],
        index=0
)
multiplelines = no_option[multiplelines]
# ----------------------------------------------------------------------
st.subheader('Internet Service')
internetservice = st.selectbox(
        label='internetservice',
        options=['Fiber optic', 'DSL', 'No'],
        index=0
)
# ----------------------------------------------------------------------
col1, col2 = st.columns(2)
with col1:
        st.subheader('Online Security')
        onlinesecurity = st.selectbox(
                label='onlinesecurity',
                options=['Yes', 'No', 'No internet service'],
                index=1
        )
        onlinesecurity = no_option[onlinesecurity]
with col2:
        st.subheader('Online Backup')
        onlinebackup = st.selectbox(
                label='onlinebackup',
                options=['Yes', 'No', 'No internet service'],
                index=1
        )
        onlinebackup = no_option[onlinebackup]
# ----------------------------------------------------------------------
col1, col2 = st.columns(2)
with col1:
        st.subheader('Device Protection')
        deviceprotection = st.selectbox(
                label='deviceprotection',
                options=['Yes', 'No', 'No internet service'],
                index=1
        )
        deviceprotection = no_option[deviceprotection]
with col2:
        st.subheader('Tech Support')
        techsupport = st.selectbox(
                label='techsupport',
                options=['Yes', 'No', 'No internet service'],
                index=1
        )
        techsupport = no_option[techsupport]
# ----------------------------------------------------------------------
col1, col2 = st.columns(2)
with col1:
        st.subheader('Streaming TV')
        stream_tv = st.selectbox(
                label='stream_tv',
                options=['Yes', 'No', 'No internet service'],
                index=0
        )
        stream_tv = no_option[stream_tv]
with col2:
        st.subheader('Streaming Movies')
        stream_movies = st.selectbox(
                label='stream_movies',
                options=['Yes', 'No', 'No internet service'],
                index=0
        )
        stream_movies = no_option[stream_movies]
# ----------------------------------------------------------------------
st.subheader('Contract')
contract = st.selectbox(
        label='contract',
        options=['Month-to-month', 'One year', 'Two year'],
        index=0
)
# ----------------------------------------------------------------------
col1, col2 = st.columns(2)
with col1:
        st.subheader('Paperless Billing')
        billing = st.selectbox(
                label='billing',
                options=['No', 'Yes'],
                index=0
        )
with col2:
        st.subheader('Payment Method')
        payment = st.selectbox(
                label='payment',
                options=[
                        'Electronic check',
                        'Mailed check',
                        'Bank transfer (automatic)',
                        'Credit card (automatic)'
                ],
                index=0
        )
# ----------------------------------------------------------------------
st.subheader('Tenure')
tenure = st.select_slider(
        label='in month',
        options=np.arange(0, 73),
        value=9
).item()
# ----------------------------------------------------------------------
col1, col2 = st.columns(2)
with col1:
        st.subheader('Monthly Charges')
        monthlycharges = st.number_input(
                label='monthlycharges',
                min_value=20.0,
                max_value=120.0,
                step=0.01,
                value=94.40
        )
with col2:
        st.subheader('Total Charges')
        totalcharges = st.number_input(
                label='totalcharges',
                min_value=20.0,
                max_value=8500.0,
                step=0.01,
                value=857.25
        )
# ----------------------------------------------------------------------
# inference
data_inf = {
    'SeniorCitizen' : senior_citizen,
    'Partner' :  partner,
    'Dependents' :    dependents,
    'tenure' :   tenure,
    'MultipleLines' :    multiplelines,
    'InternetService' :  internetservice,
    'OnlineSecurity' :   onlinesecurity,
    'OnlineBackup' :  onlinebackup,
    'DeviceProtection' :  deviceprotection,
    'TechSupport' :  techsupport,
    'StreamingTV' :  stream_tv,
    'StreamingMovies' :  stream_movies,
    'Contract' :  contract,
    'PaperlessBilling' :  billing,
    'PaymentMethod' :   payment,
    'MonthlyCharges' : monthlycharges,
    'TotalCharges' : totalcharges
    }

# komunikasi
URL = 'http://yoga-backend-p2m1.herokuapp.com/churn'
r = requests.post(URL, json=data_inf)
st.write('\n'*20)
if st.button('Predict Churn'):
        prediction = r.json()['prediction']
        prob_yes = r.json()['predict']
        st.subheader(f'Probability of Customer Churn: {prob_yes*100:.2f}%')
        if prediction == 'Yes':
                result_yes.app()
        else:
                result_no.app()
else:
        st.write('Click to Predict')