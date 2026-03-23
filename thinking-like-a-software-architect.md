# Thinking Like a Software Architect

**Channel:** Mark Richards (GIDS 2023 Keynote)
**URL:** https://youtu.be/W7Krz__jJUg
**Language:** English


## 📝 Executive Summary

You don't have to hold the title of "Software Architect" to think like one. This keynote by Mark Richards argues that architectural thinking is a skill any developer can and should develop — it leads to better-built systems and accelerates career growth. The session covers three core pillars: (1) identifying and translating business drivers into architectural characteristics, (2) expanding your technical breadth using the Triangle of Knowledge, and (3) analyzing trade-offs rigorously instead of chasing "best practices."


## 📖 Detailed Summary

---

### 1. Why Architectural Thinking Matters for Every Role

Richards opens with a vivid analogy: clouds look different to a meteorologist, an artist, and a software developer. The point is that **perspective changes what you see** — and adopting an architect's perspective changes how you see problems.

To illustrate why this matters practically, he presents a concrete scenario: an **order placement service** sending messages to a payment and inventory service. The developer faces a choice:

- **Full event payload** — include all 45 attributes in the message.
- **Key-based** — include only the order ID; consumers query the database themselves.

A developer's instinct: full payload = better performance and scalability, clear winner.

An architect immediately raises counter-questions:
- What kind of contract will you use — strict schema or loose JSON?
- How will you version it when fields change?
- What about **stamp coupling** — passing all 45 fields when the consumer uses only 2–3?
- What about **bandwidth cost** — 500 KB per message sent to both payment (needs 350 KB) and inventory (needs only 50 KB)?
- What about **multiple systems of record** and data integrity if every service holds a copy?

After exploring both options exhaustively, the architect circles back: "Great, key-based avoids stamp coupling — but what will you do about scalability and performance now?"

This leads to **the First Law of Software Architecture**:

> **Everything in software architecture is a trade-off.**

There are no universally right answers — only context-appropriate trade-offs. Thinking like an architect means being able to find and reason through those trade-offs.

---

### 2. The Three Core Components of Architectural Thinking

Richards distills architectural thinking into three pillars:

1. **Understanding business drivers and translating them into architectural characteristics**
2. **Expanding technical breadth** (the Triangle of Knowledge)
3. **Identifying and analyzing trade-offs**

---

### 3. Pillar 1 — Translating Business Drivers into Architectural Characteristics

Businesses care about things like:
- User satisfaction
- Time to market
- Competitive advantage
- Mergers and acquisitions
- Regulatory compliance

Architects translate these into technical characteristics (the "ilities"):
- Fault tolerance, reliability, recoverability
- Responsiveness, performance, availability
- Scalability, elasticity, agility
- Maintainability, testability, deployability
- Security, interoperability

The challenge is the **"Lost in Translation" problem**: business stakeholders and architects often speak completely different languages. An architect's brain needs to function as a translation engine.

**Where to find architectural characteristics:**
1. **The business domain itself** — a stock trading system self-evidently requires high performance and data integrity.
2. **Requirements and user stories** — e.g., "Support 20 to 200,000 concurrent users" → translates to elasticity.
3. **Listening to stakeholders** — the most valuable source in almost every project.

**Example translations:**
- "User satisfaction is our top priority" → performance, agility, scalability, availability, security, testability, recoverability
- "Time to market is critical" → maintainability, testability, deployability
- "We're constantly doing mergers and acquisitions" → interoperability, scalability, standards compliance (doubling customer base means doubling load)

Once architectural characteristics are identified, they become the basis for choosing an architecture style. Using a qualitative star-rating chart (from the book *Fundamentals of Software Architecture*), you can compare styles like microservices, event-driven, layered, and space-based architectures across characteristics like scalability, fault tolerance, and simplicity.

**Key insight:** You cannot design an architecture without first knowing these characteristics — they are the driving forces behind every structural decision.

Richards provides a free downloadable **Architecture Characteristics Worksheet** with definitions of core characteristics (three pages, available from his website in PDF, PowerPoint, and Keynote format).

---

### 4. Pillar 2 — Expanding Technical Breadth: The Triangle of Knowledge

There are three levels of knowledge:

| Level | Label | Description |
|-------|-------|-------------|
| Top (small) | **Stuff you know** | What you use every day; you could give a talk on it |
| Middle | **Stuff you know you don't know** | You've heard of it (e.g., Clojure) but can't use it |
| Bottom (huge) | **Stuff you don't know you don't know** | Tools, patterns, products you've never heard of — often perfect fits you're missing |

The goal: continuously move things from the bottom tier (unknown unknowns) to the middle tier (known unknowns). You don't need to become an expert — just aware.

**How the triangle evolves across career stages:**

| Role | Triangle Shape |
|------|---------------|
| Junior developer | Large bottom; small top — normal and appropriate |
| Senior developer | Top grows significantly (multi-language, multi-tool); breadth still narrow |
| Junior architect | Top shrinks slightly; middle expands — you trade some depth for breadth |
| Senior architect | Top mostly maintained; middle dramatically expanded; you know the trade-offs of many tools without being an expert coder in all of them |

**Technical depth** = the stuff you know.
**Technical breadth** = stuff you know + stuff you know you don't know.

Thinking like an architect means **deliberately prioritizing breadth over depth** — at the cost of some expertise — because breadth is what allows you to identify more solution options.

**Warning:** The top tier (stuff you know) requires maintenance. If you stop using a technology, it will trickle back down. Richards lost his Scala expertise after 10 years of non-use. Be intentional about what you maintain.

**Three free resources for expanding technical breadth:**
1. **InfoQ (infoq.com)** — biweekly email of trending technologies, tools, and architecture news.
2. **DZone Ref Cards** — 2–6 page summaries of specific technologies; the "Cliff Notes" of tech. Enough to understand *what* something does, *why* it exists, and its pros and cons — without needing to code in it.
3. **ThoughtWorks Technology Radar** — published twice a year by luminaries like Neal Ford, Martin Fowler, and James Lewis. Covers adopting, trial, assessing, and holding categories across techniques, tools, platforms, and languages.

**The 20-Minute Rule:**
Richards's personal technique: spend **20 minutes every morning — before checking email** — on expanding your own technical breadth. One cup of coffee, 20 minutes of deliberate learning. Most InfoQ articles and his own Software Architecture Monday videos are designed to be 10 minutes long to fit this habit.

> "If you can't spend 20 minutes in the morning on yourself, there are other problems we need to discuss."

---

### 5. Pillar 3 — Analyzing Trade-offs

Richards quotes Rich Hickey (creator of Clojure):

> "Developers know the benefits of everything and the trade-offs of nothing."

The second law follows the first:

> **There are no best practices in software architecture — only contextual trade-offs.**

(Exception: process-level best practices like "always collaborate with your team" do exist, but structural ones do not.)

**Trade-off analysis process:**
1. Start with business drivers — what does the business need most?
2. Translate those to architectural characteristics.
3. Identify the core tension (often distilled to something like "performance vs. maintainability").
4. Evaluate options against your specific characteristics.
5. Make a decision grounded in context, not universals.

**Example:** Single service vs. three services
- Single service → faster (performance ↑)
- Three services → maintainability ↑, easier to test/change

A developer's instinct is to optimize performance. But if the business prioritizes time to market, that maps to maintainability and deployability — and suddenly three services is the better architectural choice. The decision is made by reasoning backwards from business need, not forward from technical preference.

---

### 6. Anti-Pattern: The Out-of-Context Trap

When analyzing trade-offs, beware of evaluating options **without considering your specific context**.

**Example: Shared Library vs. Shared Service**

A scorecard comparing the two across criteria like heterogeneous code, code volatility, versioning, change risk, operational characteristics (performance, fault tolerance, scalability):

| Criterion | Shared Library | Shared Service |
|-----------|---------------|---------------|
| Heterogeneous code (polyglot) | ✗ (5 copies) | ✓ (one place) |
| High code volatility | ✗ (triggers rebuild/retest for all) | ✓ |
| Versioning | ✓ (easy via DLL/JAR) | ✗ (hard at runtime) |
| Change risk | ✓ | ✗ (breaks all consumers) |
| Performance / fault tolerance / scalability | ✓ | ✗ |

Default count: Shared Library wins with more checkmarks.

**But in context:** if you use polyglot programming and your biggest pain point is managing frequently-changing shared functionality, the score flips. The shared service may be the right choice because the "X" marks you're ignoring simply don't apply to your context.

> **The out-of-context trap:** Using a scorecard without weighting by context leads to wrong decisions. Apply your specific constraints — weight irrelevant criteria at zero.

---

### 7. Anti-Pattern: Over-Evangelizing

Avoid getting excited about a technology and pushing it on your team without first surfacing trade-offs. Evangelizing hides the negatives. Example: gRPC offers 10x performance improvement — but what are the trade-offs around tooling, language support, debugging, and schema management?

An architect must resist the urge to over-evangelize. (Richards jokes that this is why architects always look grumpy — they can't get excited about anything.)

---

### 8. Practical Takeaways

- Download the **Architecture Characteristics Worksheet** from Richards's website and try identifying what characteristics matter for your current project.
- Practice the **20-minute rule** every morning before checking email.
- Use InfoQ, DZone ref cards, and the ThoughtWorks Technology Radar to systematically expand your technical breadth.
- When making decisions, build a trade-off scorecard and apply your specific context before counting up scores.
- Start acting like an architect now — regardless of title — so you're already practicing when the role comes.


## 📚 Concepts and Terminology

- **Architectural Characteristics (the "ilities"):** Qualities a system must support (scalability, availability, maintainability, testability, deployability, fault tolerance, etc.) — the architectural translation of business needs.
- **Stamp Coupling:** A form of coupling where a service receives a large data payload but only uses a small portion of it — creates unnecessary change dependencies and bandwidth waste.
- **Triangle of Knowledge:** A model dividing knowledge into three tiers: stuff you know, stuff you know you don't know, and stuff you don't know you don't know.
- **Technical Depth:** The expertise within a specific technology domain (top of the triangle).
- **Technical Breadth:** Awareness of a wide range of technologies, tools, and approaches (top + middle of the triangle).
- **The 20-Minute Rule:** Mark Richards's personal practice of spending 20 minutes every morning expanding technical breadth before starting reactive work (email, meetings).
- **Trade-off Analysis / Scorecard:** A structured comparison of architectural options across relevant criteria, weighted by the specific context of the project.
- **Out-of-Context Trap (Anti-pattern):** Making architecture decisions from a universal scorecard without applying the specific constraints and priorities of your context.
- **Over-Evangelizing (Anti-pattern):** Getting excited about a technology and promoting it without equally surfacing its trade-offs, which masks the negatives.
- **Architecture Decision Records (ADRs):** Documents that record and justify architecture decisions — mentioned as a best practice for process-level architectural work.
- **Key-Based Event Payload:** Sending only an identifier in an event message, requiring consumers to query the authoritative database for full data. Opposite of a full event payload.
- **Full Event Payload:** Sending the complete data object in an event message — improves performance but introduces stamp coupling and multiple systems of record risk.
- **System of Record:** The authoritative data source for a given piece of information. Duplicating data across services risks inconsistency.


## 📌 Conclusion

Architectural thinking is not a role — it is a **mindset and a set of practiced skills**. Any developer who understands business drivers, broadens their technical awareness, and reasons rigorously through trade-offs is already thinking like an architect.

The three concrete habits Richards leaves with are:
1. **Know your architectural characteristics** — use the worksheet, listen to stakeholders, and make them explicit.
2. **Invest 20 minutes every morning in breadth** — use InfoQ, DZone ref cards, and ThoughtWorks radar.
3. **Always analyze trade-offs in context** — build scorecards, weight by your specific situation, and resist the pull of "best practices" and enthusiasm.

Whether or not you aspire to the architect title, these habits produce better software systems and better engineering decisions — starting today.
