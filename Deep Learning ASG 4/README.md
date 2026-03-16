# Deep Learning Generalization & Advanced Components

**Course Assignment**: DeepLearning-Generalization-Assignment

**Author**: Dev Mulchandani
**Video Explanation**: [Link to  Explanation Video](videos/video_explanation_link.txt)

---

## 📖 Project Overview
This repository contains a comprehensive suite of Deep Learning experiments aimed at analyzing generalization, data augmentation, regularization, and low-level custom implementations in both **TensorFlow/Keras** and **PyTorch**. This project is built from scratch and thoroughly documented for educational and explanatory purposes.

The project is structurally divided into two main parts:
1. **Regularization & Augmentation**: Techniques to combat overfitting.
2. **Advanced Deep Learning**: Manual implementations of core DL components (loss functions, layers, metrics, schedulers, training loops).

---

## 🧠 Concepts
### Generalization & Overfitting
Deep neural networks have millions of parameters and are prone to **overfitting**—memorizing the training data rather than learning underlying patterns. Generalization refers to the model's ability to perform well on unseen data. This project implements specific methods to force models to generalize better.

### Data Augmentation
Augmentation artificially expands the dataset by applying label-preserving transformations (e.g., flipping an image or replacing a synonym in text). A more diverse dataset prevents the network from learning spurious, non-generalizable correlations.

---

## 📂 Repository Structure & Notebooks

```text
DeepLearning-Generalization-Assignment/
│
├── README.md
├── videos/
│   └── video_explanation_link.txt
│
└── colabs/
    ├── Part1-Regularization/
    │   ├── tensorflow_regularization.ipynb # TF/Keras L1/L2, Dropout, BatchNorm, Init
    │   └── pytorch_regularization.ipynb    # PyTorch L2, Dropout, BatchNorm, Init
    │
    ├── Part1-Augmentation/
    │   ├── image_augmentation.ipynb        # tf.image & Keras layers (CIFAR10)
    │   ├── video_augmentation.ipynb        # Video frame modifications
    │   ├── text_augmentation.ipynb         # NLPaug (Synonyms, Deletion)
    │   ├── timeseries_augmentation.ipynb   # Noise injection & warping
    │   ├── tabular_augmentation.ipynb      # SMOTE for class imbalance
    │   ├── speech_augmentation.ipynb       # Audiomentations (Noise, Pitch)
    │   └── document_image_augmentation.ipynb # Simulating poor document scans
    │
    ├── Part1-KerasCV/
    │   └── keras_cv_augmentation.ipynb     # Cutout, Zoom, Contrast via KerasCV
    │
    ├── Part1-KerasTuner/
    │   └── keras_tuner_hyperparameter_search.ipynb # Hyperparameter Optimization (HPO)
    │
    └── Part2-Advanced-DeepLearning/
        ├── custom_learning_rate_scheduler.ipynb
        ├── custom_dropout.ipynb          
        ├── custom_normalization.ipynb    
        ├── tensorboard_training.ipynb    
        ├── custom_loss_function.ipynb    
        ├── custom_activation_initializer_regularizer.ipynb
        ├── custom_metric.ipynb           
        ├── custom_layers.ipynb           
        ├── custom_model_residual_network.ipynb
        ├── custom_optimizer.ipynb        
        ├── custom_training_loop.ipynb    
        └── weights_and_biases_training.ipynb
```

---

## 📊 Datasets Used
Throughout the notebooks, the following datasets are utilized:
- **Images**: FashionMNIST, CIFAR10, Document simulation matrices.
- **Text**: Sample NLP sequences (simulating IMDB sentiment).
- **Time Series**: Synthetic sine waves.
- **Tabular**: Synthetic classification data using `make_classification`.
- **Speech**: Simulated waveforms.
- **Video**: Synthetic pixel arrays simulating frame sequences.

---

## 🛠 Technologies Used
- **Deep Learning Frameworks**: TensorFlow 2.x, Keras, PyTorch
- **Augmentation Libraries**: KerasCV, NLPaug, Imbalanced-learn (SMOTE), Audiomentations
- **Hyperparameter Tuning**: KerasTuner
- **Experiment Tracking**: TensorBoard, Weights & Biases (WandB)
- **Data stack**: NumPy, Pandas, Matplotlib

---

## 🚀 Instructions for Running Notebooks

1. Due to the high computational requirements of deep learning, these notebooks are optimized for execution on **Google Colab**.
2. Upload the desired `.ipynb` files from the `colabs/` directory to your Google Colab environment.
3. Ensure the runtime type is set to **GPU** (`Runtime` -> `Change runtime type` -> `Hardware accelerator` -> `T4 GPU`).
4. Execute cells sequentially. Explanations and documentation are provided inline before every code cell.

---

## 📈 Comparison Results Summary
*(Refer to individual notebooks for full learning curves and Matplotlib graphs)*

- **Baseline vs. Regularization**: The baseline networks heavily overfit within ~5 epochs on FashionMNIST (Train Acc: 99%, Val Acc: 86%). Utilizing **Dropout (0.2 - 0.4)** and **Early Stopping** gracefully halted training before memorization began, pushing test accuracy to ~88% while controlling variance.
- **Data Augmentation**: Models trained with `tf.keras.layers.RandomFlip` and `RandomRotation` exhibited noisy but steadily increasing validation curves, outperforming static-data models on unseen variations.
- **Tabular Imbalance**: Using `SMOTE` increased recall for the minority class in tabular data from <10% to over 85%.

---

## 💡 Conclusion & Insights
This project solidifies the fact that deep learning models are fundamentally function approximators that will blindly exploit dataset idiosyncrasies if allowed. 

1. **Regularization is mandatory**, not optional, for tabular and visual tasks containing noise.
2. PyTorch's `weight_decay` parameter and Keras' `kernel_regularizer` execute identical L2 mathematical operations but reside at different abstraction layers (Optimizer vs. Layer Definition).
3. Writing **Custom Training Loops** with `tf.GradientTape` demystifies the magic of `.fit()`, exposing the exact mechanics of loss calculation and parameter space updates—essential knowledge for debugging advanced architectures like GANs or custom RL environments.

---
*Created as part of an academic assignment. Do not duplicate without attesting source.*
