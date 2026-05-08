# 🌐 Graph Neural Networks

## 🧠 Graph Definition

\[
G = (V, E)
\]

---

## 🔁 Message Passing

\[
h_i^{(l+1)} = \sigma\left(\sum_{j \in N(i)} W h_j^{(l)}\right)
\]

---

## 📊 Graph Convolution

\[
H^{(l+1)} = \sigma(D^{-1/2} A D^{-1/2} H^{(l)} W)
\]

---

## 📈 Applications

- Social networks
- Molecules
- Recommendation systems

---

## ❗ Challenges

- Over-smoothing
- Scalability
- Sparse data

---

## 🎯 Insight

> Learning = **aggregation of neighborhood information**
