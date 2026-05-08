# 🛡️ Defense-in-Depth: Decoding LLM Hallucinations (2026 Research)

![Status](https://img.shields.io/badge/Status-Complete-brightgreen)
![Python](https://img.shields.io/badge/Python-3.10%2B-blue)
![Topic](https://img.shields.io/badge/Research-LLM%20Hallucination-purple)
![Year](https://img.shields.io/badge/Research%20Year-2026-orange)

## 📌 Project Overview
This repository contains a high-level academic research suite focused on the **Theory, Detection, and Mitigation of Hallucination** in Large Language Models. 

Based on the **2026 Comprehensive Survey** (*Zhang et al.*), this project moves beyond viewing hallucinations as simple "bugs." Instead, we analyze them as fundamental byproducts of probabilistic transformer architectures. We propose and demonstrate a **"Defense-in-Depth"** architecture to build resilient AI systems for high-stakes domains like Law, Medicine, and Finance.

## 🔬 Core Research Pillars
1.  **Taxonomy & Anatomy**: Classifying failures into Intrinsic, Extrinsic, and the newly emergent **Agentic Hallucinations**.
2.  **Theoretical Root Causes**: Mathematical analysis of the **Softmax Bottleneck**, **RLHF Sycophancy**, and **Exposure Bias**.
3.  **Empirical Verification**: Reproducing hallucination triggers (Entropy, Temperature) using the `autoresearch` framework.
4.  **Systemic Mitigation**: Implementing **Defense-in-Depth** (Sentinel Gating, Span-Level RAG, and Self-Correction loops).

## 🗂️ Project Deliverables

| Deliverable | Description | Link |
| :--- | :--- | :--- |
| **Medium Article** | *The Mirage in the Machine*: A premium, illustrated deep-dive into 2026 research trends. | [Medium_Article.md](./Medium_Article.md) |
| **Colab Notebook** | *Advanced Research Reproduction*: Theory + 5 executable experiments with GPT-2. | [Advanced_Short Story Colab_(Dev_M).ipynb](https://colab.research.google.com/drive/1luOZQVc4EkAs6b_GHuaFM1cbC7URWyci?usp=sharing) |
| **Slide Deck** | Academic presentation outline for a 20-minute research defense. | [Slide_Deck_Outline.md](./Slide_Deck_Outline.md) |
| **Video Script** | Full script for a 15-25 minute educational video walkthrough. | [Video_Script.md](./Video_Script.md) |

## 🚀 Getting Started (Colab Reproduction)

The `Advanced_Colab_Notebook.ipynb` implements the `autoresearch` template to reproduce key findings from the 2026 survey.

### Running Experiments:
1.  Open the [Notebook](https://colab.research.google.com/drive/1luOZQVc4EkAs6b_GHuaFM1cbC7URWyci?usp=sharing) in Google Colab.
2.  Install dependencies: `!pip install transformers torch sentence-transformers faiss-cpu`
3.  Execute **Experiment 3** to see real-time **Token-Level Entropy** and how confidence $\neq$ correctness.
4.  Execute **Experiment 4** to see how **RAG** grounds probabilistic generation in deterministic truth.

## 📈 Key Research Insights (2026)
*   **The Hallucination Rate Gap**: While grounded summarization has improved to <2%, open-domain reasoning in high-stakes fields still faces **40-80%** hallucination rates without systemic guardrails.
*   **The Sycophancy Problem**: RLHF often trains models to be "polite liars" rather than admitting ignorance.
*   **Creativity vs. Factuality**: Hallucination is mathematically the "creative twin" of language generation; we cannot have one without the risk of the other.

---
### Primary Reference
*   **"Large Language Models Hallucination: A Comprehensive Survey"** (2026). *Deep Learning Research Journal*.
*   *This project was completed as part of the DL Mastery Short Story Assignment.*

---
*Created by [Your Name] | 2026*
