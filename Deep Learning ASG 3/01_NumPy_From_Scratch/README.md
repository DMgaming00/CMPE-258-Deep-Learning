# 01 | Deep Neural Network from Scratch using pure NumPy

## Walkthrough Video
[▶ Walkthrough Video](https://drive.google.com/file/d/1WkdfQ4rdey-8crlT0h3YU3sWmYPY0sm1/view?usp=sharing)
*(This video demonstrates code explanation, training output, loss curves, 4D visualization, and GitHub structure overview.)*

## Objective
The objective of this implementation is to approximate a complex 3-variable nonlinear mathematical equation purely through explicit matrix multiplications and manual calculus derivations utilizing only the NumPy library. 

## Architecture Description
The architecture utilizes a traditional 3-layer Feed-Forward Neural Network:
- **Input Layer:** 3 features (x, y, z variables)
- **Hidden Layer 1:** 64 units, ReLU Activation
- **Hidden Layer 2:** 32 units, ReLU Activation
- **Output Layer:** 1 unit, Linear Activation

## Mathematical Formulation Summary
Let $X \in \mathbb{R}^{B \times 3}$ be the input batch.
Forward Pass:
1. $Z_1 = XW_1 + b_1$
2. $A_1 = \max(0, Z_1)$ *(ReLU)*
3. $Z_2 = A_1W_2 + b_2$
4. $A_2 = \max(0, Z_2)$ *(ReLU)*
5. $Z_3 = A_2W_3 + b_3$
6. $\hat{Y} = Z_3$

Loss Function (Mean Squared Error):  $L = \frac{1}{2B} \sum (\hat{Y} - Y)^2$

Backward Pass (Chain Rule):  Computes $\nabla W_i$ and $\nabla b_i$ iteratively, passing differentials linearly downward adjusting explicitly parameters via Gradient Descent $\theta = \theta - \alpha \nabla \theta$.

## Implementation Approach
By completely avoiding automated frameworks (like PyTorch or TensorFlow), this explicit methodology strictly mandates generating random weight matrices, calculating exact forward tensor shapes ($Z$ and $A$), defining custom derivations for activation boundaries, mapping transpose alignments during backpropagation calculations, and manually subtracting gradients scaled iteratively by learning rates.

## Training Procedure Summary
- **Optimizer:** Manual Gradient Descent
- **Loss Function:** Mean Squared Equation (MSE)
- **Epochs:** Standardized iterative loop over full batch (e.g., 2000-5000 epochs)
- **Learning Rate:** Fixed value scaling the exact gradient update magnitude.

## Visualization Explanation
Calculations finalize through Matplotlib visual mappings. The sequence generates a dual-plot metric figure detailing rapid exponential decay marking error convergence (Loss Curve) adjacent securely mapping expected predictive boundary accuracies (Predictions vs. True Values). A distinct 4-dimensional geometric boundary utilizing Principal Component Analysis captures predictive structures robustly summarizing topological learning.

## Key Learning Outcomes
- Explicit internal operations underlying standard framework Linear Layers (`nn.Linear`, `Dense`).
- Manual backpropagation chain-rule differential calculus requirements across layered matrices.
- Pure parameter update dynamics via primitive matrix scaling.

## Differences from Other Implementations
Provides fundamental numerical mathematical transparency. It operates directly at the arrays' low-level hardware limitations preventing rapid scale capabilities compared to subsequent computationally graphed hardware acceleration frameworks leveraging CUDNN (PyTorch, TensorFlow).

## Reproducibility Instructions
1. Open the `.ipynb` notebook utilizing local standard Jupyter environments or directly within Google Colab.
2. Install fundamental numerical computing dependencies (`pip install numpy matplotlib scikit-learn`).
3. Execute all cell blocks linearly mapping synthetic data directly toward visualization outputs continuously.

## Requirements
- `python >= 3.8`
- `numpy`
- `matplotlib`
- `scikit-learn`

## Expected Output Description
Expect an initial large error gradient structurally converging exponentially. The final plot maps the multidimensional surface boundaries accurately against overlapping points ensuring structural neural representations align strictly targeting the nonlinear deterministic mappings dynamically.
