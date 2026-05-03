# 🔁 Sequence Models: RNN → LSTM → GRU → WaveNet

## 🧠 Problem Definition

Given a sequence:

\[
x_1, x_2, ..., x_t
\]

We model:

\[
P(x_t | x_1, ..., x_{t-1})
\]

---

## 🔁 Recurrent Neural Networks (RNN)

\[
h_t = \tanh(W_x x_t + W_h h_{t-1})
\]

### ❗ Problem
- Vanishing gradients:
\[
\frac{\partial L}{\partial h_t} \propto \prod W_h
\]

---

## 🔐 LSTM

Memory cell:

\[
c_t = f_t \cdot c_{t-1} + i_t \cdot \tilde{c}_t
\]

### ✅ Advantage
- Preserves long-term dependencies

---

## ⚡ GRU

Simplified LSTM:

- Update gate
- Reset gate

Faster and efficient

---

## 🌊 WaveNet

Uses:
- Causal convolutions
- Dilated convolutions

Receptive field:

\[
R = (k-1) \cdot 2^L
\]

---

## 📊 Comparison

| Model | Pros | Cons |
|------|------|------|
| RNN | Simple | Poor memory |
| LSTM | Long memory | Heavy |
| GRU | Efficient | Less expressive |
| WaveNet | Parallel | Complex |

---

## 📈 Results

- LSTM > RNN
- GRU ≈ LSTM (faster)
- WaveNet handles long context best

---

## 🎯 Insight

> Sequence learning = **information flow across time**
