# 02 | Deep Neural Network using Manual PyTorch Tensors

## Walkthrough Video
[▶ Walkthrough Video](https://drive.google.com/file/d/1-Kft3FFcCT3DWYVRoTHwPOVdC37S5oMi/view?usp=sharing)
*(This video demonstrates code explanation, training output, loss curves, 4D visualization, and GitHub structure overview.)*

## Objective
The objective integrates framework capabilities while retaining strict calculation controls. We bypass automated PyTorch abstractions (`nn.Linear`, `optim` objects) leveraging bare multi-dimensional PyTorch computational graphs (`autograd`) calculating exact nonlinear regression derivatives explicitly manipulating raw tensors.

## Architecture Description
The architecture retains a standardized 3-layer Feed-Forward configuration structure:
- **Inputs:** 3 variables mapping continuous feature boundaries.
- **Hidden Layers:** 64 subsequently 32 linear operational units followed entirely by exact ReLU piecewise activation tensor manipulations.
- **Outputs:** Singular regression numeric target.

## Mathematical Formulation Summary
Variables $W_1, b_1, W_2, b_2, W_3, b_3$ exist natively as PyTorch `Tensors` initialized utilizing `.requires_grad_()`. 
Forward passes matrix multiplications identical physically (`torch.mm`) scaling biases directly scaling identical ReLU operations (`torch.relu` or manually mapping `torch.max`).
Backpropagation logic inherently leverages $L.\text{backward}()$, securely traversing dynamic underlying execution graphs recording functional operations intrinsically evaluating all required mathematical differentials automatically without explicit chain-rule formulas required physically.

## Implementation Approach
By setting operational `requires_grad=True` on exact weight vectors, this methodology highlights foundational PyTorch mechanics. A standard training iterative block explicitly updates tensors wrapped under `torch.no_grad()` logic ensuring parameter modifications do not sequentially pollute dynamic differential tracking metrics recursively natively recalculating parameters entirely predictably. Tensors immediately drop existing variable `.grad` mapping scaling `.zero_()` preserving isolation dynamically.

## Training Procedure Summary
- **Framework Optimization Structure:** Manual parameter extraction modifying matrix updates securely bypassing automated optimization classes sequentially.
- **Loss Operations:** Manual scalar Mean Squared calculations predicting continuous objective distances.
- **Epochs / Learning Rate:** Loop iterations defining deterministic update step capabilities continuously executed predictably across the batch datasets.

## Visualization Explanation
Identical evaluation matrices ensure comparable evaluation dynamics dynamically. Convergence plotting matrices visualize exact rapid optimization mappings highlighting predictive accuracies dynamically leveraging standard external Python graph mapping APIs iteratively summarizing dimensional boundaries capturing underlying nonlinear variable interactions utilizing standardized components (PCA boundary structures).

## Key Learning Outcomes
- Granular differentiation computational dynamic graph awareness mapping metric boundaries across PyTorch capabilities robustly.
- Security and implementation exact syntax understanding regarding `torch.no_grad()` context block constraints necessary during predictive updates securely.
- Automatic gradient computational mitigation bypassing manual NumPy derivational calculus mathematical requirements dynamically.

## Differences from Other Implementations
Reduces the explicit numerical logic requirements shown during NumPy algorithms dynamically replacing mathematical derivatives via intrinsic execution `autograd` mechanisms efficiently without entirely surrendering mechanical manipulation boundaries natively seen across subsequent high-level modules continuously wrapping identical capabilities sequentially.

## Reproducibility Instructions
1. Load identical notebooks natively through Google Colab environments predictably.
2. Ensure GPU configurations accurately map underlying tensor allocations specifically optimizing mathematical performance correctly.
3. Execute standard block structures from top to bottom ensuring dataset matrix boundaries correctly map identical continuous objectives dynamically.

## Requirements
- `python >= 3.8`
- `torch`
- `matplotlib`
- `scikit-learn`

## Expected Output Description
Expect transparent loss reduction iterations directly demonstrating metric tracking calculations natively matching explicit NumPy convergence mapping trajectories exactly maintaining tight predictive boundary visual configurations structurally matching regression surface geometries effectively.
