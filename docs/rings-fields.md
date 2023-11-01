---
jupytext:
  cell_metadata_filter: -all
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.15.2
kernelspec:
  display_name: Python 3 (ipykernel)
  language: python
  name: python3
---
# 3. [Rings and Fields](https://www.rareskills.io/post/rings-and-fields)

**Exercise: by a ring’s definition, why is the following statement not always true? What assumption is it making about the ring?**  
Let our binary operators be □ and ☆, where □ is the first binary operator and ☆ is the second binary operator.  
The following is not necessarily true of a ring: *(a □ b) ☆ c = c ☆ (a □ b)*

By definition:
- under ☆, the set is an abelian group, i.e. a commutative group.  
- under □, the set is a monoid, i.e. an associative binary operation with an identity element. 

□ is not necessarily commutative, which is the required property for the statement to be true.

---
**Exercise: use the definition of a ring to show that the trivial ring ({0} under addition and multiplication) is a ring**

The trivial ring is a ring because it satisfies the following properties:
- under addition, the set is an abelian group, i.e. a commutative group.  
  - closure: $0 + 0 = 0 \in \{0\}$
  - associativity: $0 + (0 + 0) = (0 + 0) + 0 = 0$
  - identity ($0$): $0 + 0 = 0$
  - inverse ($0$): $0 + 0 = 0$
  - commutativity: $0 + 0 = 0 = 0 + 0$
- under multiplication, the set is a monoid, i.e. an associative binary operation with an identity element.
  - closure: $0 \times 0 = 0 \in \{0\}$
  - associativity: $0 \times (0 \times 0) = (0 \times 0) \times 0 = 0$
  - identity ($0$): $0 \times 0 = 0$
- multiplication distributes over addition: $0 \times (0 + 0) = 0 = 0 \times 0 + 0 \times 0$

---
**Exercise: demonstrate that square matrices of real numbers under addition and multiplication is a ring. Think carefully about what the identity elements are and whether an inverse always exists.**

The set of square matrices of real numbers under addition and multiplication is a ring because it satisfies the following properties:
- under addition, the set is an abelian group, i.e. a commutative group.  
  Closure, associativity, identity ($\mathbf{[0]}$), inverse ($\mathbf{[A]} + \mathbf{[-A]}$) and commutativity are satisfied because real numbers under addition form an abelian group and matrices addition is defined as the addition of the corresponding elements. 
- under multiplication, the set is a monoid, i.e. an associative binary operation with an identity element.  
  Let $\mathbf{A} \in \mathbb{R}^{n \times n}$: $A_{n\times n} =
  \left[ {\begin{array}{cccc}
    a_{11} & a_{12} & \cdots & a_{1n}\\
    a_{21} & a_{22} & \cdots & a_{2n}\\
    \vdots & \vdots & \ddots & \vdots\\
    a_{m1} & a_{m2} & \cdots & a_{mn}\\
  \end{array} } \right]
$  

  Let $\mathbf{B} \in \mathbb{R}^{n \times n}$: $B_{n\times n} = 
  \left[ {\begin{array}{cccc}
    b_{11} & b_{12} & \cdots & b_{1n}\\
    b_{21} & b_{22} & \cdots & b_{2n}\\
    \vdots & \vdots & \ddots & \vdots\\
    b_{m1} & b_{m2} & \cdots & b_{mn}\\
\end{array} } \right]
$

  Let $\mathbf{C} \in \mathbb{R}^{n \times n}$: $C_{n\times n} =
  \left[ {\begin{array}{cccc}
    c_{11} & c_{12} & \cdots & c_{1n}\\
    c_{21} & c_{22} & \cdots & c_{2n}\\
    \vdots & \vdots & \ddots & \vdots\\
    c_{m1} & c_{m2} & \cdots & c_{mn}\\
  \end{array} } \right]
$

Let's note: $P = A \times B$, $P' = B \times C$.  

By definition of matrices multiplication and due to the fact that real numbers under addition and multiplication form a ring, where multiplication distributes over addition, we have:
\begin{align*}
\forall i,j \in \{1,2,...,n\}: ((A \times B) \times C)_{ij} &= (P \times C)_{ij} \\
&= \sum_{k=1}^n p_{ik} c_{kj} \\
&= \sum_{k=1}^n (\sum_{l=1}^n a_{il} b_{lk}) c_{kj} \\
&= \sum_{l=1}^n \sum_{k=1}^n a_{il} b_{lk} c_{kj} \\
&= \sum_{l=1}^n a_{il} (\sum_{k=1}^n b_{lk} c_{kj}) \\
&= \sum_{l=1}^n a_{il} p'_{lj}  \\
&= (A \times P')_{ij} \\
&= (A \times (B \times C))_{ij}
\end{align*}

Therefore, matrices multiplication is associative.  
Identity element is $\left[ {\begin{array}{cccc} 1 & 0 & \cdots & 0 \\ 0 & 1 & \cdots & 0 \\ \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & \cdots & 1 \end{array} } \right]$.

---
**Exercise: Why isn't it possible to construct a trivial field using only one element?**  
By definition of a field, the zero element is excluded for the multiplication. If the field only contains one element, the zero element is that element.  
By removing it the field becomes empty. This violates the definition of a group which in particular requires the existence of an identity element.
