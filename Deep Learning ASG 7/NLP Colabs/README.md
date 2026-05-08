# 🧠 NLP: From Word2Vec to ChatGPT

## 🧬 Tokenization

Text → Tokens → Numbers

Types:
- Character
- Word
- Subword

---

## 🔢 Word Embeddings

\[
\text{similarity} = \frac{A \cdot B}{||A|| ||B||}
\]

Example:
king - man + woman ≈ queen

---

## ⚡ Attention

\[
\text{Attention}(Q,K,V) = \text{softmax}(QK^T / \sqrt{d})V
\]

---

## 🔥 Transformers

Advantages:
- Parallel computation
- Global context

---

## 🧠 GPT vs BERT

| Model | Type |
|------|------|
| GPT | Autoregressive |
| BERT | Bidirectional |

---

## 📈 Observations

- Attention > RNN for long sequences
- Transformers scale better

---

## ❗ Limitations

- O(n²) complexity
- High compute cost

---

## 🎯 Insight

> Language understanding = **geometry in embedding space**

---

## 🎯 Key Insight

Meaning emerges from:
> Geometry of embedding space
