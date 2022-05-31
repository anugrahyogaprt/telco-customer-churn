
�Hroot"_tf_keras_network*�H{"name": "model_48", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_48", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_120"}, "name": "input_120", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_585", "trainable": true, "dtype": "float32", "units": 21, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_585", "inbound_nodes": [[["input_120", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_420", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "name": "dropout_420", "inbound_nodes": [[["dense_585", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_586", "trainable": true, "dtype": "float32", "units": 13, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_586", "inbound_nodes": [[["dropout_420", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_421", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "name": "dropout_421", "inbound_nodes": [[["dense_586", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_587", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_587", "inbound_nodes": [[["dropout_421", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_422", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "name": "dropout_422", "inbound_nodes": [[["dense_587", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_588", "trainable": true, "dtype": "float32", "units": 5, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_588", "inbound_nodes": [[["dropout_422", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_423", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "name": "dropout_423", "inbound_nodes": [[["dense_588", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_589", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_589", "inbound_nodes": [[["dropout_423", 0, 0, {}]]]}], "input_layers": [["input_120", 0, 0]], "output_layers": [["dense_589", 0, 0]]}, "shared_object_id": 20, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 24]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 24]}, "float32", "input_120"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 24]}, "float32", "input_120"]}, "keras_version": "2.8.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_48", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_120"}, "name": "input_120", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_585", "trainable": true, "dtype": "float32", "units": 21, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_585", "inbound_nodes": [[["input_120", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Dropout", "config": {"name": "dropout_420", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "name": "dropout_420", "inbound_nodes": [[["dense_585", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Dense", "config": {"name": "dense_586", "trainable": true, "dtype": "float32", "units": 13, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_586", "inbound_nodes": [[["dropout_420", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Dropout", "config": {"name": "dropout_421", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "name": "dropout_421", "inbound_nodes": [[["dense_586", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_587", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_587", "inbound_nodes": [[["dropout_421", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Dropout", "config": {"name": "dropout_422", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "name": "dropout_422", "inbound_nodes": [[["dense_587", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense_588", "trainable": true, "dtype": "float32", "units": 5, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_588", "inbound_nodes": [[["dropout_422", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Dropout", "config": {"name": "dropout_423", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "name": "dropout_423", "inbound_nodes": [[["dense_588", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "dense_589", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_589", "inbound_nodes": [[["dropout_423", 0, 0, {}]]], "shared_object_id": 19}], "input_layers": [["input_120", 0, 0]], "output_layers": [["dense_589", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 22}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input_120", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 24]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_120"}}2
�root.layer_with_weights-0"_tf_keras_layer*�{"name": "dense_585", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_585", "trainable": true, "dtype": "float32", "units": 21, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_120", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 24}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24]}}2
�root.layer-2"_tf_keras_layer*�{"name": "dropout_420", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_420", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_585", 0, 0, {}]]], "shared_object_id": 4, "build_input_shape": {"class_name": "TensorShape", "items": [null, 21]}}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "dense_586", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_586", "trainable": true, "dtype": "float32", "units": 13, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_420", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 21}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 21]}}2
�root.layer-4"_tf_keras_layer*�{"name": "dropout_421", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_421", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_586", 0, 0, {}]]], "shared_object_id": 8, "build_input_shape": {"class_name": "TensorShape", "items": [null, 13]}}2
�root.layer_with_weights-2"_tf_keras_layer*�{"name": "dense_587", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_587", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_421", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 13}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 13]}}2
�root.layer-6"_tf_keras_layer*�{"name": "dropout_422", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_422", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_587", 0, 0, {}]]], "shared_object_id": 12, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}2
�root.layer_with_weights-3"_tf_keras_layer*�{"name": "dense_588", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_588", "trainable": true, "dtype": "float32", "units": 5, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_422", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}2
�	root.layer-8"_tf_keras_layer*�{"name": "dropout_423", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_423", "trainable": true, "dtype": "float32", "rate": 0.28, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_588", 0, 0, {}]]], "shared_object_id": 16, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}}2
�
root.layer_with_weights-4"_tf_keras_layer*�{"name": "dense_589", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_589", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_423", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}}2
��root.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 28}2
��root.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 22}2