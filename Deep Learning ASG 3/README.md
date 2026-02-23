# Deep Neural Network Architectures for Nonlinear Regression

## Objective
This repository serves as a comprehensive academic resource exploring the implementation of a 3-layer Feed-Forward Deep Neural Network for nonlinear regression. By approximating a synthetic 3-variable nonlinear equation, we traverse from foundational explicit matrix mathematics (NumPy) to advanced, production-ready abstracted object architectures (PyTorch Lightning & TensorFlow Keras).

---

## Table of Contents
1. [Project Structure](#project-structure)
2. [Setup Instructions](#setup-instructions)
3. [Installation Requirements](#installation-requirements)
4. [How to Run Detailed Notebooks](#how-to-run-detailed-notebooks)
5. [Overview Comparison](#overview-comparison)
6. [Global Learning Outcomes](#global-learning-outcomes)
7. [Academic Conclusion](#academic-conclusion)

---

## Project Structure

```text
DeepLearning-Nonlinear-Regression/
│
├── 01_NumPy_From_Scratch/
│   ├── 01_NumPy_DNN.ipynb
│   └── README.md
│
├── 02_PyTorch_Manual/
│   ├── 02_PyTorch_Manual_DNN.ipynb
│   └── README.md
│
├── 03_PyTorch_nnModule/
│   ├── 03_PyTorch_nnModule_DNN.ipynb
│   └── README.md
│
├── 04_PyTorch_Lightning/
│   ├── 04_PyTorch_Lightning_DNN.ipynb
│   └── README.md
│
├── 05_TensorFlow_LowLevel/
│   ├── 05_TF_LowLevel_DNN.ipynb
│   └── README.md
│
├── 06_TensorFlow_Builtin/
│   ├── 06_TF_Builtin_DNN.ipynb
│   └── README.md
│
├── 07_TensorFlow_Functional/
│   ├── 07_TF_Functional_DNN.ipynb
│   └── README.md
│
├── 08_TensorFlow_HighLevel/
│   ├── 08_TF_HighLevel_DNN.ipynb
│   └── README.md
│
├── README.md
├── TEMPLATE_README.md
└── VIDEO_SCRIPT.md
```

---

## Setup Instructions

This project is natively optimized for **Google Colaboratory (Colab)** or any standard local Jupyter Notebook environment (e.g., JupyterLab, VS Code). 
For local execution, a configured Anaconda or standard Python virtual environment is recommended to prevent dependency conflicts. Hardware acceleration (GPU) is optional but recommended when evaluating the PyTorch and TensorFlow implementations to observe execution speed advantages.

## Installation Requirements

Ensure your base Python environment satisfies `python >= 3.8`. Use the following pip commands to install the required overarching dependencies:

```bash
pip install numpy matplotlib scikit-learn
pip install torch torchvision pytorch-lightning
pip install tensorflow
```

## How to Run Detailed Notebooks

1. Navigate sequentially into each numbered directory mapping the structural evolution (e.g., `01_NumPy_From_Scratch/`).
2. Read the localized `README.md` to understand the specific architectural objectives, implementation approaches, and math formulations.
3. Open the contained `.ipynb` file.
4. Execute all cells iteratively from top to bottom.
5. Observe the mathematical loss convergence and final multidimensional boundary visualizations plotted directly inline. 

Each notebook operates independently and generates its own dataset, ensuring seamless standalone reproducibility without external file dependencies.

---

## Overview Comparison

| Concept / Framework | Focus | Transparency & Control | Boilerplate Coding | Scalability | Gradient Calculation |
| :------------------ | :---- | :--------------------- | :----------------- | :---------- | :------------------- |
| **NumPy (From Scratch)** | Fundamental Calculus & Math | Highest | Very High | Lowest | Manual Chain-Rule |
| **PyTorch (Manual Tensors)** | Computational Graph Mechanics | High | High | Low | Dynamic `autograd` |
| **TensorFlow (Low-Level)** | Strict Matrix Mapping (`einsum`) | High | High | Low | `GradientTape` Tracking |
| **TensorFlow (Built-In/Sequential)** | Quick Linear Prototyping | Medium | Low | High | Automated |
| **TensorFlow (Functional API)** | Complex Graph Logic / Multi-In/Out | Medium | Low | High | Automated |
| **PyTorch `nn.Module`** | Standard OOP Deep Learning | Medium | Medium | Very High | Dynamic `autograd` |
| **PyTorch Lightning** | Production-Ready Architecture | Low | Lowest | Maximum | Automated |
| **TensorFlow (High-Level Class)** | Custom Layers & Loops | Medium | Medium | Maximum | Automated |

---

## Global Learning Outcomes

By successfully navigating and running these implementations, practitioners achieve:
1. **Mathematical Intuition:** Explicitly understanding forward propagation matrices, piecewise activation functions, and backward chain-rule calculus required to minimize numerical error.
2. **Framework Mechanics:** Comprehending how computational graphs intrinsically track derivatives (`autograd`, `GradientTape`).
3. **Architectural Design Patterns:** Tracking the evolutionary steps between rigid linear blocks (Sequential API) towards highly dynamic, encapsulated object-oriented codebases (PyTorch Lightning, Keras Custom Models).
4. **Data Visualization:** Effectively mapping high-dimensional output regression variables mathematically projected down to explicit geometric visuals natively understanding deep predictive surface mapping boundaries.

---

## Academic Conclusion

Raw numerical matrix multiplications deployed fundamentally via NumPy provide unmatched mathematical transparency, demanding strict understanding of calculus derivations. However, scaling directly demands framework acceleration. Low-level environments across PyTorch and TensorFlow introduce significant advantages by automating exact backpropagation differentiation computations dynamically preventing mechanical derivation flaws. Further scaling these mechanisms, high-level structural deployments utilizing established APIs (such as Keras and PyTorch Lightning) logically prioritize clean engineering workflows ensuring production scalability, strict robustness, and rapid prototyping capabilities. The appropriate methodology strictly correlates directly mathematically aligning perfectly scaling abstract code complexities smoothly explicitly seamlessly optimizing execution environments optimally.
