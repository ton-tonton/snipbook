# Software Design Concepts

**Channel:** Vishali (Software Engineering Series)
**URL:** https://youtu.be/dce6oaUHdyM
**Language:** English
**Topic:** Software Engineering — Design Concepts

---

## 📝 Detailed Summary

### What are Software Design Concepts?

Software design concepts are the **ideas and principles** behind generating a good design for a particular product. They describe:

- How to solve a customer problem through design
- The logic and thinking behind designing a good software product
- How to develop a right and accurate software product

There are **nine core software design concepts** that must be applied when generating a good software product.

---

### 1. Abstraction

**Abstraction** means hiding background and unnecessary information from the user — users see only the required information.

There are two types of abstraction:

#### 1.1 Procedural Abstraction
A collection of sub-programs divided into two groups:
- **Hidden group:** internal implementation details
- **Visible group:** exposed functionalities

**Example:** When driving a car or bike, the user knows how to turn it on/off, apply brakes, and accelerate. The user does NOT need to know how the engine was built, how the fuel machine works, or how top speed is set. Only required information is exposed.

#### 1.2 Data Abstraction
A collection of data describing data objects, where the implementation is hidden.

**Example:** In a Stack data structure program, you can directly call `push()`, `pop()`, `top()`, `empty()` methods without knowing how those methods were implemented internally. The user interacts only with the interface (front-end/built-in information).

---

### 2. Architecture

**Architecture** means the complete structure of a particular product. It is divided into three parts:

#### 2.1 Structural Properties
While designing an architecture, you must mention:
- All types of components, models, and objects
- Relationships between these components

**Example:** In the WhatsApp application, there are different modules — chatting module, status module, contact module, calling module — and you must define relationships between all these.

#### 2.2 Extra-Functional Properties
After completing the design, it must fulfill requirements such as:
- Performance
- Capacity
- Reliability
- Security
- Adaptability

#### 2.3 Families of Related Systems
Code reuse across modules.

**Example:** A `void display()` function mentioned in one module can be reused by two or three other modules. Repeatable blocks are reused — this is called families of related systems.

---

### 3. Design Pattern

**Design pattern** means a **repeated form of design** — a reusable solution to a recurring design problem.

**Example:**
```
Shape (parent class)
  ├── draw() method
  ├── Circle (subclass) → uses draw() from Shape
  ├── Square (subclass) → uses draw() from Shape
  └── Rectangle (subclass) → uses draw() from Shape
```

Since Circle, Square, and Rectangle all derive from Shape, they all reuse the `draw()` method. This is a design pattern — the method is used repeatedly in a pattern form across subclasses.

---

### 4. Modularity

**Modularity** means designing a product divided into different **modules**.

**Example:** College Management System:
- **Teacher Module** → set attendance, set marks
- **Student Module** → get marks, get question paper

After individual module development, all modules are integrated and checked against customer requirements.

**Advantages of Modularity:**
- Effective development
- Easy to accommodate changes (only modify the specific module, not the whole program)
- Efficient testing and debugging (module-by-module)
- Easy maintenance

---

### 5. Information Hiding

While designing module by module, **not all information is shared between all modules** — only required information is accessible to other modules.

**Example:**
- **Sign Up module** collects: first name, last name, email, password, confirm password
- **Login module** only needs: email and password

The login module shares only the required information (email and password) from the sign-up module. First name, last name, etc., are hidden — unnecessary details are not exposed.

---

### 6. Functional Independence

Functional independence is related to modularity, abstraction, and information hiding. It is measured by two criteria:

#### 6.1 Coupling
**Coupling** = connection between one module and another module (inter-module relationship).

**Example:** Class A (from Module A) accesses information from Class C (from Module B) — this interconnection is called coupling.

- **Goal: Low coupling** — modules should be as independent as possible.

#### 6.2 Cohesion
**Cohesion** = how closely related the elements are within the same module (intra-module relationship).

**Example:** Class A and Class B within the same module share information — this is cohesion.

- **Goal: High cohesion** — elements within a module should be strongly related.

> **Key Rule:** For a good software design → **Low Coupling + High Cohesion**

---

### 7. Refinement

**Refinement** is a **top-down design approach** — a process of elaboration through stepwise execution.

**Example (Addition Program):**
1. Compile and run the program
2. Prompt: "Enter first number" → user enters `4`
3. Prompt: "Enter second number" → user enters `4`
4. Process: `4 + 4 = 8` → Display output `8`
5. Prompt again for new input
6. If user enters a string value like `a` → `2 + a` is invalid → error "Invalid number" → exit

Each step is elaborated and refined progressively — this step-by-step execution of a program or algorithm is called **refinement**.

---

### 8. Refactoring

**Refactoring** means making changes to the **internal software** that do **not affect the external behavior** of the code.

Internal changes that constitute refactoring:
- Removing duplicate data
- Removing unused design elements
- Removing unnecessary design algorithms
- Removing inappropriate data structures
- Removing poorly constructed data

After these internal improvements, the external behavior of the code remains the same, but the design quality improves.

> Refactoring generates a **better design** without changing what the software does from the outside.

---

### 9. Object-Oriented Design Concepts

OOP concepts used in software design include:

| Concept | Description |
|---|---|
| **Class** | Collection of different objects, methods, and functions |
| **Objects** | Instances of a class |
| **Inheritance** | Parent-child relationship between classes |
| **Abstraction** | Hiding implementation details |
| **Polymorphism** | Multiple forms for the same operation |
| **Encapsulation** | Binding data and methods of the same type together |

**Example (Inheritance):**
```
Student Marks (parent class)
  ├── Test Marks (child class)
  └── Exam Marks (child class)
```

**Benefits of OOP in design:**
- Faster development
- Lower cost
- Higher quality software

---

## 📚 Concepts and Terminology

| Term | Definition |
|---|---|
| **Abstraction** | Hiding unnecessary details; exposing only required information |
| **Architecture** | The complete structural blueprint of a software product |
| **Design Pattern** | A repeated, reusable form of design solution |
| **Modularity** | Dividing a product into separate, manageable modules |
| **Information Hiding** | Restricting access to module-internal details from other modules |
| **Coupling** | Degree of interdependence between different modules (want: LOW) |
| **Cohesion** | Degree to which elements within a module belong together (want: HIGH) |
| **Functional Independence** | The extent to which a module operates independently of others |
| **Refinement** | Top-down, stepwise elaboration of a design or algorithm |
| **Refactoring** | Internal restructuring of code without changing its external behavior |
| **Encapsulation** | Bundling data and methods that operate on the data within a class |
| **Inheritance** | Mechanism by which a child class derives properties from a parent class |
| **Polymorphism** | Ability of a method or object to take multiple forms |

---

## 📌 Conclusion

Software design concepts are foundational principles that guide engineers in creating well-structured, maintainable, and scalable software products. The nine core concepts — abstraction, architecture, design patterns, modularity, information hiding, functional independence, refinement, refactoring, and OOP — work together to ensure:

- Clear separation of concerns (modularity, information hiding)
- Reusability (design patterns, families of related systems)
- Maintainability (low coupling, high cohesion, refactoring)
- Correct and stepwise development (refinement, abstraction)

The most important design principle to remember: **Low Coupling + High Cohesion** is the hallmark of a good software design.

---

## 📝 Important Exam Questions (from Previous Year Papers)

1. **Explain different Design Concepts** (8 marks)
2. **What is the relationship between modularity and functional independence?** (7 marks)
   - Modularity = dividing a complete product into different modules
   - Functional Independence = the relationship/independence between those modules
3. **What do you mean by cohesion and coupling in the context of software design? How are these concepts useful for good designing?** (7 marks) — *Most important question*
