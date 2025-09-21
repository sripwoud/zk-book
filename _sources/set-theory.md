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

# 1. [Set Theory](https://www.rareskills.io/post/set-theory)

**Exercise: Assume you have a proper definition for integers. Create a well-defined set of rational numbers.**

$$
\mathbb{Q} = \left\{ \frac{a}{b} \mid a, b \in \mathbb{Z}, b \neq 0 \right\}
$$

---
**Exercise: Define the subset relationship between integers, rational numbers, real numbers, and complex numbers.**

$$
\mathbb{Z} \subseteq \mathbb{Q} \subseteq \mathbb{R} \subseteq \mathbb{C}
$$
---

**Exercise: Define the relationship between the set of transcendental numbers and the set of complex numbers in terms of subsets. Is it a proper subset?**

$$
transcendental\; numbers \subseteq \mathbb{C}
$$

---
**Exercise: Using the formal definition of equality, show that if two finite sets have different cardinality, they cannot be equal.**

Suppose $A$ and $B$ are two finite sets such that $A =B$ but $|A| \neq |B|$.
By our assumption, $A=B$.
Therefore, by the formal definition of set equality: $A \subseteq B \text{ and } B\subseteq A$.
Since $A \subseteq B$, every element of $A$ is also an element of $B$.
Likewise, since $B \subseteq A$, every element of $B$ is also an element of $A$.
Therefore, both sets contain the exact same elements.
For finite sets, the cardinality or size of a set is determined by the number of distinct elements it contains. Since $A$ and $B$ have the exact same elements (by our assumption that they are equal), they must also have the same cardinality.
This contradicts our initial assumption that $|A| \neq |B|$.

Thus, if two finite sets $A$ and $B$ have different cardinalities, they cannot be equal.
---

**Exercise: Define a mapping (function) from integers n ∈ 1,2,3,4,5,6 to the set {even, odd}.**

$$
f(x) =
\begin{cases}
\text{even}\; & if \; x \mod 2 = 0\\
\text{odd}\; & if \; x \mod 2 \neq 0
\end{cases}
$$

---
**Exercise: Take the cartesian product of the set of integers 0,1,2,…,8 and the polygons triangle, square, pentagon, hexagon, heptagon, and octagon. Define a mapping such that the integer maps to the number of sides on the shape. For example, the ordered pair (4, □) should be in the subset, but (7,△) should not be in the subset of the cartesian product.**

|   | triangle      | square      | pentagon      | hexagon      | heptagon      | octagon      |
|---|---------------|-------------|---------------|--------------|---------------|--------------|
| 0 |               |             |               |              |               |              |
| 1 |               |             |               |              |               |              |
| 2 |               |             |               |              |               |              |
| 3 | (3, triangle) |             |               |              |               |              |
| 4 |               | (4, square) |               |              |               |              |
| 5 |               |             | (5, pentagon) |              |               |              |
| 6 |               |             |               | (6, hexagon) |               |              |
| 7 |               |             |               |              | (7, heptagon) |              |
| 8 |               |             |               |              |               | (8, octagon) |

+++
---

**Exercise: Let set A be {1,2,3} and set B be {x,y,z}. Define a function from A to B that is well-defined, but not surjective and not injective.**

\begin{align}
f: A &\to B\\
a &\mapsto f(a) =
\begin{cases}
x & \text{if } a \in \{1,2\} \\
y & \text{if } a = 3
\end{cases}
\end{align}

---
**Exercise: Pick a subset of ordered pairs that defines a * b mod 3.**

|| (0,0)     | (1,0) | (2,0) |(0,1) | (1,1)     | (2,1)     | (0,2) | (1,2)     | (2,2)     |
|---|-----------|-------|-------|------|-----------|-----------|-------|-----------|-----------|
|0| ((0,0),0) |((1,0),0)|((2,0),0)|((0,1),0)|  |  |((0,2),0)|  |           |
|1|  ||||((1,1),1)|||| ((2,2),1) |
|2|  |||||((2,1),2)||((1,2),2)|
---

**Exercise: Consider a set $A$, demonstrate that if the binary operator $\circ$ is commutative, then the map from $(A \times A) \to A$ cannot be injective if the cardinality of $|A| \geq 2$.**

Because $|A| \geq 2$, $\exists a,b \in A $ such that $a \neq b$.\
$(a,b)$ maps to $a \circ b$ and $(b,a)$ maps to $b \circ a$.\
If $\circ$ is commutative, $a \circ b = b \circ a$.\
And if $A \times A \to A$ is injective, $a \circ b = b \circ a \implies (a,b) = (b,a) \implies a =b$.
This contradicts our initial assumption that $a \neq b$.

---
**Exercise: Define our set A to be the numbers 0,1,2,3,4 and our binary operator to be subtraction modulo 5. Define all the ordered pairs of A ⨉ A in a table, then map that set of ordered pairs to A.**

|   | (0,0)     | (1,0)     | (2,0)      | (3,0)      | (4,0)      | (0,1)     | (1,1)     | (2,1)      | (3,1)      | (4,1)      | (0,2)     | (1,2)     | (2,2)     | (3,2)     | (4,2)     | (0,3)     | (1,3)     | (2,3)     | (3,3)     | (4,3)     | (0,4)     | (1,4)     | (2,4)     | (3,4)     | (4,4)     |
|---|-----------|-----------|------------|------------|------------|-----------|-----------|------------|------------|------------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| 0 | ((0,0),0) |           |            |            |            |           | ((1,1),0) |            |            |            |           |           | ((2,2),0) |           |           |           |           |           | ((3,3),0) |           |           |           |           |           | ((4,4),0) |
| 1 |           | ((1,0),1) |            |            |            |           |           | ((2,1),1)  |            |            |           |           |           | ((3,2),1) |           |           |           |           |           | ((4,3),1) | ((0,4),1) |           |           |           |           |
| 2 |           |           | ((2,0),2)  |            |            |           |           |            | ((3,1),2)  |            |           |           |           |           | ((4,2),2) | ((0,3),2) |           |           |           |           |           | ((1,4),2) |           |           |           |
| 3 |           |           |            | ((3,0),3)  |            |           |           |            |            | ((4,1),3)  | ((0,2),3) |           |           |           |           |           | ((1,3),3) |           |           |           |           |           | ((2,4),3) |           |           |
| 4 |           |           |            |            | ((4,0),4)  | ((0,1),4) |           |            |            |            |           | ((1,2),4) |           |           |           |           |           | ((2,3),4) |           |           |           |           |           | ((3,4),4) |           |
---

**Exercise: Work out for yourself that concatenating “foo”, “bar”, “baz” in that order is associative. Remember, associative means (A op B) op C = A op (B op C).**

```{code-cell} ipython3
foo = 'foo'
bar = 'bar'
baz = 'baz'

foo + (bar + baz) == (foo + bar) + baz
```

---
**Exercise: Give an example of a magma and a semigroup. The magma must not be a semigroup. Don’t use the examples above.**

Magma example:

$$
\begin{align}
f: \mathbb{Q} \times \mathbb{Q} &\to \mathbb{Q}\\
(x,y) &\mapsto x / y
\end{align}
$$

```{code-cell} ipython3
def f(x,y):
    return x / y

print(f(f(1, 2), 3) == f(1, f(2, 3)))
```

Semi-group example:

$$
\begin{align}
f: \mathbb{N} \times \mathbb{N} &\to \mathbb{N}\\
(x,y) &\mapsto x * y
\end{align}
$$

```{code-cell} ipython3
def f(x,y):
    return x * y

print(f(f(1, 2), 3) == f(1, f(2, 3)))
```
---

**Exercise: Let our binary operator be the function min(a,b) over integers. Is this a magma, semigroup, or monoid? What if we restrict the domain to be positive integers (zero or greater)? What about the binary operator max(a,b) over those two domains?**

$$
\begin{align}
f: \mathbb{Z} \times \mathbb{Z} &\to \mathbb{Z}\\
(x,y) &\mapsto min(x,y)
\end{align}\\
$$

$\forall a,b,c \in \mathbb{Z},\;min(min(a,b),c) = min(a,min(b,c)) \implies \text{associative} \implies \text{semigroup}$.\
The identity element is missing to make this a monoid.\
Same for positive integers.
There is no integer that is bigger than all other integers so that $\forall x \in \mathbb{Z},\;min(x,
\text{identity}) = x$

$$
\begin{align}
f: \mathbb{Z} \times \mathbb{Z} &\to \mathbb{Z}\\
(x,y) &\mapsto max(x,y)
\end{align}
$$

$\forall a,b,c \in \mathbb{Z},\;max(max(a,b),c) = max(a,max(b,c)) \implies \text{associative} \implies \text{semigroup}$.
No identity elemt on $\mathbb{Z}$. But on $\mathbb{N}$, $0$ is the identity element and we get a monoid: $\forall x \in \mathbb{N},\;max(x,0) = x$.

---
**Exercise: Let our set be all 3 bit binary numbers (a set of cardinality 8). Let our possible binary operators be bit-wise and, bit-wise or, bit-wise xor, bit-wise nor, bit-wise xnor, and bit-wise nand. Clearly this is closed because the output is a 3 bit binary number. For each binary operator, determine if the set under that binary operator is a magma, semigroup, or monoid.**

```{code-cell} ipython3
def f(x,y):
    return x & y

semigroup = True
for x in range(8):
    for y in range(8):
        for z  in  range(8):
            if f(f(x, y), z) != f(x, f(y, z)):
                semigroup = False
                break

print(f'is semigroup: {semigroup}')

monoid = False
if semigroup:
    monoid = True
    for x in range(8):
        if f(x,1) != x:
         if f(x,0) != x:
            monoid = False
            break

print(f'is monoid: {monoid}')
```

**OR**

```{code-cell} ipython3
def bit_and(x,y):
    return x | y

def bit_or(x,y):
    return x | y

def xor(x,y):
    return x ^ y

def nor(x,y):
    return ~(x | y)

def xnor(x,y):
    return ~(x ^ y)

def nand(x,y):
    return ~(x & y)

def check_all(f):
    semigroup = True
    for x in range(8):
        for y in range(8):
            for z  in  range(8):
                if f(f(x, y), z) != f(x, f(y, z)):
                    semigroup = False
                    break


    monoid = False
    if semigroup:
        monoid = True
        for x in range(8):
            if f(x,1) != x:
             if f(x,0) != x:
                monoid = False
                break

    print(f'{f.__name__} is a: {"monoid" if monoid else "semigroup" if semigroup else "magma"}')

print('set of 3 bit binary numbers under:')
for f in [bit_and, bit_or, xor, nor, xnor, nand]:
    check_all(f)
```
---

**Exercise: Why can’t strings under concatenation be a group?**\
Assuming the identity element is the empty string.
There is nothing we can concatenate to a non-empty string to get the empty string.
So there is no inverse.

---

**Exercise: Polynomials under addition satisfy the property of a group. Demonstrate this is the case by showing it matches all the properties that define a group.**

Let's assume that the coefficients of the polynomials belong to a set $\mathbb{S}$ closed under addition: $\forall a,b \in \mathbb{S}, a+b \in \mathbb{S}$.\
Let's note the set of all polynomials with coefficients in $\mathbb{S}$ as $\mathbb{P}(\mathbb{S})$.\
Let $P(x), Q(x), R(x) \in \mathbb{P}(\mathbb{S})$.

1. **Closure**:

$$
P(x) + Q(x) = \sum_{i=0}^n a_i x^i + \sum_{i=0}^n b_i x^i = \sum_{i=0}^n (a_i + b_i) x^i \in \mathbb{P}(\mathbb{S})\ \text{ because } \mathbb{S} \text{ is closed under addition}.
$$

2. **Associativity**:

$$
P(x) + (Q(x) + R(x)) = P(x) + \left(\sum_{i=0}^n b_i x^i + \sum_{i=0}^n c_i x^i\right) = \sum_{i=0}^n a_i + \sum_{i=0}^n (b_i + c_i) x^i = \sum_{i=0}^n (a_i + (b_i + c_i)) x^i.\\
(P(x) + Q(x)) + R(x) = \left(\sum_{i=0}^n a_i x^i + \sum_{i=0}^n b_i x^i\right) + R(x) = \sum_{i=0}^n (a_i + b_i) x^i + \sum_{i=0}^n c_i x^i = \sum_{i=0}^n ((a_i + b_i) + c_i) x^i.\\
$$

By associativity of addition in $\mathbb{S}$, $(a_i + (b_i + c_i)) = ((a_i + b_i) + c_i)$, so $P(x) + (Q(x) + R(x)) = (P(x) + Q(x)) + R(x)$.

3. **Identity Element**:

$$
P(x) + 0 = \sum_{i=0}^n a_i x^i + \sum_{i=0}^n 0 x^i = \sum_{i=0}^n a_i x^i = P(x)
$$

Because 0 is the identity element of $\mathbb{S}$.

4. **Inverse**:

$$
P(x)+(-P(x)) = \sum_{i=0}^n a_i x^i + \sum_{i=0}^n (-a_i) x^i = \sum_{i=0}^n (a_i + (-a_i)) x^i = \sum_{i=0}^n 0 x^i = 0
$$

Because $-a_i$ is the inverse of $a_i$ in $\mathbb{S}$.

$\mathbb{P}(\mathbb{S})$ under addition fulfills the closure, associativity, identity and inverse properties, it is therefore a group.
