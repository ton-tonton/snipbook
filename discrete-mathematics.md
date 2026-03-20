# Discrete Mathematics for Programming — Full Course

**Channel:** freeCodeCamp.org
**Instructor:** Shawn Grooms
**URL:** https://youtu.be/2SpuBqvNjHI
**Language:** English


## 📝 Detailed Summary

---

### How to Learn Discrete Mathematics — 3 Tips

Before diving into content, the instructor offers three meta-learning strategies:

1. **Stay calm** — panic shuts down learning. There are no grades here, so relax and stay receptive.
2. **Rewind** — unlike traditional classroom learning, you can replay any section as many times as needed. Use this advantage aggressively.
3. **Explain it** — after watching a section, try to explain the material out loud to yourself, a friend, or a rubber duck. This technique (borrowed from *rubber duck debugging* in programming) forces you to identify gaps in your understanding.

---

### What is Discrete Mathematics?

Discrete mathematics is a branch of mathematics that deals with **discrete (finite) sets of elements**, as opposed to continuous or infinite sets.

**Why it matters for programmers:**

- Programs must terminate — infinite executions are impossible.
- Continuous mathematical objects (like a perfect circle) must be **approximated** using discrete ones.
- A circle is defined as infinitely many equidistant points, which a computer cannot represent. Instead, computers render regular polygons with increasing numbers of vertices until they visually approximate a circle.

**The chain of relevance:** Logic → Math → Algorithms → Code

---

### Sets

A **set** is a collection of **distinct objects** called elements or members.

- Sets are denoted by capital letters: `A`, `B`, `C`, etc.
- Elements can be numbers, letters, variables, other sets, or nothing at all.

#### Roster Notation

Elements are listed inside curly braces, separated by commas:

```
A = {5}
B = {2, 3, 4}
C = {d, f, g}
E = {}              ← empty set
F = {{5}, {2,3,4}, {d,f,g}}  ← set of sets
```

#### Interval Notation

Efficiently describes all numbers between two values:

| Notation | Meaning |
|----------|---------|
| `(0, 1)` | 0 < x < 1 (exclusive) |
| `[0, 1)` | 0 ≤ x < 1 (left-inclusive) |
| `[0, 1]` | 0 ≤ x ≤ 1 (fully inclusive) |

---

### Common Sets

| Symbol | Name | Contents |
|--------|------|----------|
| `∅` | Null / Empty Set | No elements |
| `ℕ` | Natural Numbers | {1, 2, 3, ...} |
| `ℕ₀` | Natural Numbers (with zero) | {0, 1, 2, ...} |
| `ℤ` | Integers | {..., -2, -1, 0, 1, 2, ...} |
| `ℚ` | Rational Numbers | {a/b | a, b ∈ ℤ, b ≠ 0} |
| `ℝ` | Real Numbers | All rational + irrational numbers |

---

### Rational Numbers and Set Builder Notation

A **rational number** is a ratio of two integers (a/b where b ≠ 0). This includes:
- Integers (e.g., 5 = 5/1)
- Terminating decimals (e.g., 2.78 = 278/100)
- Repeating decimals (e.g., 0.999... = 1)

**Proof that 0.999... = 1:**
```
Let 10x = 9.999...
Then  x = 0.999...
Subtract: 9x = 9
Therefore: x = 1
```

**Set Builder Notation:**
```
ℚ = { a/b | a, b ∈ ℤ, b ≠ 0 }
```
Read as: "The set of all a divided by b such that a and b are integers and b is not zero."

---

### Irrational Numbers

**Proof that √2 is irrational** (by contradiction):

1. Assume √2 = a/b (irreducible fraction).
2. Squaring: 2 = a²/b², so 2b² = a².
3. Since 2b² is even, a² is even, therefore a is even → a = 2k.
4. Substituting: b² = 2k², so b² is even, therefore b is even.
5. Both a and b are even — contradicts the assumption that a/b is irreducible.
6. Therefore, √2 is **not rational** → it is irrational.

**Irrational numbers:** `ℝ \ ℚ` (all reals that are not rational)

---

### Set Operators

Given sets A and B:

| Operator | Notation | Definition |
|----------|----------|-----------|
| Union | `A ∪ B` | `{x | x ∈ A or x ∈ B}` |
| Intersection | `A ∩ B` | `{x | x ∈ A and x ∈ B}` |
| Set Difference | `A \ B` | `{x | x ∈ A and x ∉ B}` |
| Symmetric Difference | `A △ B` | `(A \ B) ∪ (B \ A)` |

**Venn diagram intuition:**
- Union = entire shaded area of both circles
- Intersection = only the overlapping region
- Set difference = one circle minus the overlap
- Symmetric difference = both circles minus their overlap

---

### Subsets and Supersets

- **B ⊆ A** (B is a subset of A): every element of B is in A.
- **B ⊂ A** (B is a proper subset of A): B ⊆ A and A contains at least one element not in B.
- **A ⊇ B** (A is a superset of B): A contains all elements of B.
- **A ⊃ B** (A is a proper superset of B): A ⊇ B and A has extra elements.

> Key insight: Two sets are **equal** if and only if each is a subset of the other.

---

### Universal Set and Complements

- The **universal set (U)** defines the "universe" — the maximum boundary. Anything outside it does not exist in the current context.
- If no universe is defined, assume U = ℝ.

**Complement of A:**
```
Aᶜ = { x | x ∈ U and x ∉ A }
```
Everything in the universe that is NOT in A.

---

### Algebraic Laws of Sets

| Law | Statement |
|-----|-----------|
| **Idempotence** | A ∪ A = A ; A ∩ A = A |
| **Identity** | A ∪ ∅ = A ; A ∩ U = A |
| **Complement** | A ∪ Aᶜ = U ; A ∩ Aᶜ = ∅ |
| **Involution** | (Aᶜ)ᶜ = A |
| **Commutativity** | A ∪ B = B ∪ A ; A ∩ B = B ∩ A |
| **Associativity** | A ∪ (B ∪ C) = (A ∪ B) ∪ C |
| **Distributive** | A ∩ (B ∪ C) = (A ∩ B) ∪ (A ∩ C) |
| **De Morgan's** | (A ∪ B)ᶜ = Aᶜ ∩ Bᶜ ; (A ∩ B)ᶜ = Aᶜ ∪ Bᶜ |

**De Morgan's Law — proof sketch:**
- Suppose x ∈ (A ∪ B)ᶜ → x ∉ A ∪ B → x ∉ A and x ∉ B → x ∈ Aᶜ and x ∈ Bᶜ → x ∈ Aᶜ ∩ Bᶜ
- The reverse direction is shown symmetrically.
- Together: (A ∪ B)ᶜ = Aᶜ ∩ Bᶜ ✓

---

### Logic

> "Logic is a systematic way of thinking that allows us to deduce new information from old information and to parse the meaning of sentences." — *Book of Proof*, Richard Hammack

Logic is the foundation under mathematics, which is the foundation under algorithms, which is the foundation under code.

---

### Propositions

A **proposition** is a declarative statement with a verifiable truth value.

| Statement | Type | Truth Value |
|-----------|------|-------------|
| "Rain falls from the sky" | Proposition | True |
| "Ghana is a country in Asia" | Proposition | False |
| "Are you doing that?" | Open statement | None (question) |
| "Wash the laundry" | Open statement | None (command) |
| "5 = 4 + 89" | Proposition | False |
| "7 = α" | Open statement | Unknown |

---

### Composite Propositions

Propositions joined by logical operators:

- **Conjunction (p ∧ q):** "p AND q" — true only when both p and q are true.
- **Disjunction (p ∨ q):** "p OR q" — true when at least one of p, q is true.

---

### Truth Tables

With two primitive propositions p and q, there are **4 possible combinations** of truth values:

| p | q | p ∧ q | p ∨ q |
|---|---|-------|-------|
| T | T | T | T |
| T | F | F | T |
| F | T | F | T |
| F | F | F | F |

---

### Algebraic Laws of Logic

| Law | Statement |
|-----|-----------|
| **Idempotence** | p ∨ p ≡ p ; p ∧ p ≡ p |
| **Identity** | p ∨ F ≡ p ; p ∧ T ≡ p |
| **Domination** | p ∨ T ≡ T ; p ∧ F ≡ F |
| **Complement** | p ∨ ¬p ≡ T (tautology) ; p ∧ ¬p ≡ F (contradiction) |
| **Involution** | ¬(¬p) ≡ p |
| **Commutativity** | p ∨ q ≡ q ∨ p ; p ∧ q ≡ q ∧ p |
| **Associativity** | p ∨ (q ∨ r) ≡ (p ∨ q) ∨ r |
| **Distributive** | p ∧ (q ∨ r) ≡ (p ∧ q) ∨ (p ∧ r) |
| **De Morgan's** | ¬(p ∧ q) ≡ ¬p ∨ ¬q ; ¬(p ∨ q) ≡ ¬p ∧ ¬q |

---

### Conditional Statements

A **conditional statement** (p → q) reads as "If p, then q."

- **p** = hypothesis (antecedent)
- **q** = conclusion (consequent)

Truth table:

| p | q | p → q |
|---|---|-------|
| T | T | T |
| T | F | F |
| F | T | T |
| F | F | T |

A conditional is **only false when a true hypothesis leads to a false conclusion**.

**Related conditionals:**

| Name | Form | Logically equivalent to p → q? |
|------|------|-------------------------------|
| Converse | q → p | No |
| Inverse | ¬p → ¬q | No |
| Contrapositive | ¬q → ¬p | **Yes** |

---

### Quantifiers

**Propositional functions** P(x) take on a truth value for each input x.

- **Universal Quantifier (∀):** "For all x, P(x) is true."
  - False if even one counterexample exists.
  - Example: ∀x ∈ ℕ, x + 3 > 4 → **False** (x = 1 gives 4, not > 4)

- **Existential Quantifier (∃):** "There exists at least one x such that P(x) is true."
  - True if at least one witness exists.
  - Example: ∃x ∈ ℝ, x + 3 > 4 → **True** (x = 2 works)

---

### Tautologies

A **tautology** is a proposition that is **always true**, regardless of truth values of its components.

#### Law of Excluded Middle
```
p ∨ ¬p ≡ T
```
A statement is either true or its negation is true — no middle ground.

#### Law of Contradiction
```
¬(p ∧ ¬p) ≡ T
```
A statement cannot be both true and false simultaneously.

#### Modus Tollens
```
(p → q) ∧ ¬q → ¬p
```
If "p implies q" is true, and q is false, then p must also be false. This is a fundamental pattern of logical reasoning and is always true (a tautology).

---

## 📚 Concepts and Terminology

- **Discrete Mathematics:** Branch of math dealing with finite/countable structures; foundation of computer science.
- **Set:** Unordered collection of distinct elements.
- **Roster Notation:** Listing set elements explicitly in curly braces.
- **Interval Notation:** Describing ranges of numbers using brackets.
- **Set Builder Notation:** Defining a set by a property its elements satisfy (e.g., `{x | condition}`).
- **Union (∪):** Elements in either set.
- **Intersection (∩):** Elements in both sets.
- **Set Difference (\\):** Elements in one set but not the other.
- **Symmetric Difference (△):** Elements in exactly one of two sets.
- **Subset (⊆):** All elements of one set belong to another.
- **Superset (⊇):** A set that contains all elements of another.
- **Universal Set (U):** The encompassing "universe" of a given problem.
- **Complement (Aᶜ):** All elements in U not in A.
- **De Morgan's Laws:** Rules relating complements to unions/intersections (and their logic counterparts).
- **Proposition:** A declarative statement with a definite truth value.
- **Conjunction (∧):** Logical AND.
- **Disjunction (∨):** Logical OR.
- **Negation (¬):** Logical NOT.
- **Truth Table:** Grid showing all possible truth values for a compound proposition.
- **Conditional (→):** "If p then q" — false only when hypothesis is true and conclusion is false.
- **Contrapositive:** Logically equivalent form of a conditional (¬q → ¬p).
- **Universal Quantifier (∀):** "For all."
- **Existential Quantifier (∃):** "There exists."
- **Tautology:** A proposition always true regardless of variable values.
- **Contradiction/Fallacy:** A proposition always false.
- **Modus Tollens:** A tautological argument form used in proofs.
- **Rubber Duck Debugging:** Explaining code/concepts out loud to identify gaps in understanding.

---

## 📌 Conclusion

This video is a rigorous but accessible introduction to Discrete Mathematics tailored specifically for programmers and computer science students. It covers two foundational pillars:

1. **Set Theory** — the mathematical language for describing collections of objects, with operations (union, intersection, complement) and a robust set of algebraic laws that allow formal reasoning about sets.

2. **Logic** — the systematic framework for deducing truth, from basic propositions through truth tables, quantifiers, and tautologies, ending with key proof patterns like Modus Tollens.

The key takeaway is that **programming is applied mathematics**: algorithms are structured logic, and that logic rests on these discrete mathematical foundations. Mastery of these concepts enables programmers to reason about correctness, write proof-like arguments, and understand why algorithms work — not just that they do.

**Recommended resource:** *Book of Proof* by Richard Hammack (free online) — covers all foundational mathematics including discrete math.
