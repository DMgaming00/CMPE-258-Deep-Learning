# 🔁 GOD-TIER Sequence Modeling

## 🧠 Mathematical Objective

Maximize likelihood:

L = Σ log P(xₜ | x₁,...,xₜ₋₁)

---

## ⚠️ Vanishing Gradient Problem

Gradient propagation:

∂L/∂hₜ ∝ Π Wₕ

→ exponential decay

---

## 🔐 LSTM Deep Insight

Memory cell acts as:

cₜ ≈ identity path

→ prevents gradient decay

---

## ⚡ WaveNet Insight

Dilated convolutions create:

Exponential receptive field growth

→ efficient long-term memory

---

## 🎯 When to Use

| Scenario | Model |
|---------|------|
| Small data | GRU |
| Long sequences | LSTM |
| Parallel tasks | Transformer/WaveNet |
