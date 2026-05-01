# LLM Hallucination Research Project

![Status](https://img.shields.io/badge/Status-Complete-brightgreen)
![Python](https://img.shields.io/badge/Python-3.10%2B-blue)
![Topic](https://img.shields.io/badge/Research-LLM%20Hallucination-purple)

## 📌 Project Overview
This repository contains a comprehensive suite of academic deliverables analyzing the phenomenon of hallucination in Large Language Models (LLMs). The project is deeply rooted in the 2026 comprehensive survey by Alansari and Luqman, bridging theoretical probabilistic frameworks with empirical, executable experiments.

The deliverables are designed to offer a holistic view of the taxonomy, root causes, detection methodologies, and mitigation strategies surrounding LLM hallucinations.

## 📄 Paper Summary
The paper, *"Large Language Models Hallucination: A Comprehensive Survey"*, systematically dissects why LLMs generate fluent but factually incorrect or unsupported text. It maps hallucination sources across the entire development pipeline—from data collection biases and architectural soft-attention decay, to exposure bias during pre-training and alignment misalignments (RLHF). It further categorizes detection techniques (retrieval vs. uncertainty) and mitigation strategies (prompting, RAG, reasoning, and model-centric adaptations).

### Key Insights
*   **The Probability/Truth Disconnect:** Hallucination is a feature, not a bug. It is the inescapable byproduct of autoregressive models optimizing for syntactic fluency and statistical likelihood rather than absolute truth.
*   **Multi-Stage Failure:** Hallucinations do not originate at a single point. A biased dataset combined with a softmax bottleneck and high-temperature decoding creates a perfect storm for fabrication.
*   **System-Level Mitigation:** No single technique eradicates hallucination. The industry standard requires a hybrid approach: RAG for external grounding combined with Chain-of-Thought (CoT) for internal logical consistency.

## 🗂️ Deliverables Included

1.  **`Medium_Article.md`**: An engaging, deep-dive blog post translating complex taxonomy and root causes into intuitive, high-level analogies.
2.  **`Slide_Deck_Outline.md`**: A structured 12-slide presentation outline designed for academic or professional delivery.
3.  **`Advanced_Colab_Notebook.ipynb`**: An interactive Google Colab notebook featuring theoretical markdown alongside 5 executable Python experiments.
4.  **`Video_Script.md`**: A complete script for a 15-25 minute educational video presentation.
5.  **`README.md`**: This project overview.

## 🔬 Running the Experiments (Colab Notebook)

The `Advanced_Colab_Notebook.ipynb` is designed to be plug-and-play in Google Colab. It utilizes HuggingFace's `transformers` library to empirically demonstrate hallucination triggers and mitigations.

### Setup Instructions
1. Upload the `Advanced_Colab_Notebook.ipynb` file to your Google Drive.
2. Open the file with **Google Colaboratory**.
3. Ensure the environment is set to a standard CPU or T4 GPU instance.
4. Run the setup cell to install dependencies:
   ```bash
   !pip install transformers torch sentence-transformers faiss-cpu
   ```
5. Execute the notebook sequentially to observe:
   *   Fictional completions (Intrinsic Hallucination).
   *   Temperature variance mapping.
   *   Token-level uncertainty mapping (Softmax probabilities).
   *   RAG effectiveness.
   *   Constraint-based prompt engineering.

## 🔗 Useful Links (Placeholders)
*   [Link to Original PDF (Internal Use)](#)
*   [Google Colab Live Version](#)
*   [Medium Published Article](#)
*   [Presentation Deck (Google Slides/Canva)](#)
*   [Video Recording (YouTube)](#)

---
*Created as part of an advanced academic research assignment.*
