# How to Create Effective and Objective ADRs

**Channel:** GOTO Conferences (inferred from context)
**URL:** https://youtu.be/DSRQ-90eDBw
**Language:** English
**Topic:** Architecture Decision Records (ADRs) — structured, objective decision-making in software architecture


## 📝 Executive Synthesis

This talk presents a structured, practical approach to creating Architecture Decision Records (ADRs) that are truly objective and useful — not just bureaucratic artifacts. The speaker, a consultant and ISAQB-certified software architecture trainer from the Netherlands, walks through why common approaches to architectural decision-making fail, then introduces a framework that weighs stakeholders, requirements, and options to arrive at defensible, revisitable decisions.

The core argument: most teams either make decisions without documenting them (leading to blind acceptance or blind reversal), or they document them in ways that appear objective (e.g., pros/cons lists) but are actually driven by pre-existing bias. The speaker's framework aims to fix this by introducing explicit requirement weighting and option scoring.


## 📖 Detailed Section-by-Section Breakdown

### 1. Why ADRs Matter

Architecture decisions are inevitable — even non-decisions are decisions. The problem is that teams often:
- Can't find out what decisions were made (**not discoverable**)
- Don't understand why a decision was made (**not understandable**)
- Didn't have a voice in the process (**not shared**)
- Made decisions in too narrow a context (**not appropriate**)
- Made decisions based on bias (**not objective**)

The speaker frames five pillars as the foundation of good ADRs:

1. **Discoverable** — You must be able to find and identify what decisions exist
2. **Appropriate** — Weighed against context, not taken blindly
3. **Understandable** — Problem well-defined, context documented
4. **Objective** — Based on criteria, not preference or authority
5. **Shared** — Stakeholders are involved throughout the process

> "Architecture work is not done by architects. Most architecture work is done by developers, product owners, users — people implementing and discussing the system."

Architecture is a **role and activity**, not a function or job title.

---

### 2. The Flawed Approaches (What Not to Do)

The speaker identifies five common archetypes of bad architectural decision-making:

#### 2.1 The Aristocrat
- A single person or group makes the decision without consulting anyone
- The decision may or may not be good — it's entirely dependent on the person
- Risk: When that "benevolent dictator" is replaced by a less capable successor, you have no recourse

#### 2.2 The Ivory Tower Dump
- Isolated architects make decisions with little stakeholder input, then hand them down
- These architects are often technically capable, but their isolation creates an **echo chamber**
- The decision-making rationale is hidden; others are left to implement without context
- Problem: Not objective (everyone says yes to each other), not shareable (process is opaque)

#### 2.3 The Paper Decision
- A decision that looks perfect in theory but is impossible to implement in practice
- Happens when the full problem context wasn't considered — business, people, technology
- By definition, not the appropriate decision because it ignores real constraints

#### 2.4 The Pros/Cons List
- Appears objective (green/red dots, scores) but is fundamentally biased
- If you already favor Option A, it's trivially easy to list many pros and few cons for it
- This is one of the most common approaches — and one of the most misleading
- > "You've just told people your preferences. It's not objective."

#### 2.5 The Polder Model (Consensus by Exhaustion)
- Everyone gets in a room, debates for hours, fights, makes up, and eventually agrees
- Produces a "good" decision but burns enormous time and money
- By definition, not appropriate — you can't afford infinite time; organizations must act
- Named after the Dutch poldering model of political compromise

---

### 3. Michael Nygard's ADR Foundation

The speaker references the foundational blog post by **Michael Nygard** (*Release It!* author), who proposed writing down architectural decisions in short documents with five sections:

1. **Title** — Scannable, descriptive (you'll have many ADRs in a repo or wiki)
2. **Context** — What situation prompted this decision?
3. **Decision** — What was actually decided?
4. **Status** — Active / Superseded / Proposed / Rejected
5. **Consequences** — What happens as a result? (Team reorganization, tech debt, etc.)

> "If you don't write it down, you either blindly accept the decision because you don't know why it was taken — or you blindly change it, which might also be wrong."

---

### 4. The Speaker's Extended Framework

The speaker builds on Nygard's structure and adds two critical elements: **explicit stakeholder mapping** and **weighted requirements vs. scored options**.

#### 4.1 Basic Sections (Kept from Nygard)
- **Title** — Clear and scannable
- **Status** — Active, superseded, rejected, etc.
- **Summary** — Brief; LLMs are now helpful for generating these from large ADRs

#### 4.2 Stakeholder Overview

List **who** the stakeholders are and their **roles** (not just names), because people change jobs. Roles persist.

Use a **stakeholder mapping matrix** (Power vs. Interest):

| | **High Power** | **Low Power** |
|---|---|---|
| **High Interest** | Involve throughout (e.g., product owner, manager) | Keep informed regularly |
| **Low Interest** | Keep satisfied (e.g., CEO — inform, don't burden) | Monitor only |

> "You need exactly enough stakeholders. Balance time and context."

#### 4.3 Scope and Non-Scope

Explicitly define:
- **What you ARE trying to solve**
- **What you are NOT trying to solve** (non-scope section)

> "I'm in a lot of situations where people discuss a different problem than I'm trying to discuss. Just write down: not this, we're not talking about this."

This prevents scope creep in ADR discussions and keeps meetings focused.

#### 4.4 Requirements (The Differentiator)

List only **significant architectural requirements** — ones that are:
- Expensive to get wrong
- High-stakes for a powerful stakeholder
- Impact security, scalability, or key quality attributes
- Cause **tension with other requirements**

Use the **ISO/IEC 25010** quality model as a checklist to surface requirements you may have missed (security, maintainability, performance, etc.).

**The key innovation: assign weights to requirements.**

Start by getting stakeholders to rate requirements. Initially, everyone says "everything is super important." Then force prioritization — requirements cannot all be equally weighted. Iterate until you have a ranked list.

Requirements often exist in **tension** with each other. Example from the speaker's experience at a media company:
- "Onboard labels quickly" vs. "Sell off labels quickly"
- These contradict: efficient onboarding ties you to a shared platform; selling off means you can't sell the platform

#### 4.5 Options (Scored Against Requirements)

Define options that are **clearly distinct**. If two options are very similar, remove one.

For each option, define a **spectrum of acceptability** per requirement:
- **Least acceptable form** — the minimum you'd tolerate
- **Perfect form** — the ideal outcome

Then **score** each option on each requirement (e.g., 1–3 scale), then apply requirement weights.

**Example — CMS Replacement Decision:**

| Requirement | Weight | Option A: Vendor CMS | Option B: Custom-Built CMS |
|---|---|---|---|
| Easy integration | 3 | 2 | 3 |
| Low runtime cost | 1 | 3 | 1 |
| Extensibility | 2 | 1 | 3 |
| **Weighted Score** | | **10** | **14** |

Without weights: scores may be close (9 vs. 7). With weights: the better option becomes clear.

**Critical insight:** This process is not deterministic. If during the discussion someone raises a new concern ("What if we found a more extensible vendor?"), you revisit the numbers and rerun. This is the point — it's a **living document and thinking tool**, not a spreadsheet to fill in once.

The speaker demonstrated how changing weights changes outcomes:
- If **business margins** are critical → vendor wins
- If **agility** is critical → custom-built wins
- If **integrability** is the priority → custom-built wins in the original scenario

#### 4.6 Consent-Based Decision Making

Once you've done the analysis and consulted stakeholders:
- **Don't wait for consensus** (that's the Polder Model)
- Use **consent-based** decision making: the decision-maker hears all input, then makes the call
- Example: "You have 10 days to object. If no objection, we proceed."

---

### 5. Practical Tips for Implementation

#### Start Small
- A small decision can be a single-page ADR using a template
- "Can I introduce this tool to our platform?" → "Please do an ADR." → Done in one session

#### Reuse ADRs to Revisit Decisions
- If a decision turns out to be wrong, the document lets you trace back:
  - What did we misunderstand about the business context?
  - What requirement did we underweight?
- Fix: copy the document, update the weights or options, create a new ADR

#### Store ADRs in a Scannable Repository
- Use a wiki (e.g., Confluence) with sub-pages or a table listing all ADRs
- New team member? Returning from vacation? Just scan the table
- Status field lets you filter: active / superseded / rejected

#### You Don't Have to Be "An Architect"
- The ADR process is for anyone making technical decisions
- If your team resists the word "ADR", call them **Design Decision Records (DDRs)** instead

#### Use LLMs for Summaries
- Large ADRs (e.g., a major CMS migration with many stakeholders) can be very long
- Write a prompt: "Here is an ADR. Summarize it in this format." Works well with minimal output edits
- Helps create the scannable overview at the top of each ADR

#### Governance is Out of Scope (But Matters)
- Making the decision and writing it down is only half the work
- Ensuring it's actually implemented is a separate (harder) problem — called **implementation governance** in TOGAF
- The speaker flags this as out of scope for the talk, but acknowledges it's real

---

### 6. Real-World Team Feedback

The speaker shared feedback from their current team after introducing ADRs:

**Positive outcomes:**
- Better decisions overall
- Clearer understanding of what decisions have been made
- Not overly complicated once you've done it once or twice

**Challenges:**
- Getting started is the hardest part — varies by person
- Solution: do it together the first time in a call or meeting

**Role impact:**
- The formal architect on the team could focus on **business architecture** while developers handled **software architecture decisions** via ADRs, with less bottleneck

---

## 📚 Concepts and Terminology

- **ADR (Architecture Decision Record):** A short document that captures an architectural decision, its context, and its consequences. Introduced formally by Michael Nygard.
- **DDR (Design Decision Record):** An alternative name for ADR used in teams that don't have formal architect roles.
- **Consent-Based Decision Making:** A decision-making mode where the decision-maker collects input from stakeholders and then makes the final call without requiring unanimous agreement.
- **Polder Model:** A Dutch metaphor for decision-making by exhaustive consensus — everyone must agree before moving forward. Slow and expensive; not recommended for architectural decisions.
- **Ivory Tower Architecture:** A pattern where architects make decisions in isolation from the rest of the organization, without feedback loops.
- **Significant Architectural Requirements:** Requirements that have high stakes, high cost if wrong, or significantly affect quality attributes like security, scalability, or maintainability.
- **ISO/IEC 25010:** An international standard for software product quality that categorizes quality characteristics (performance, maintainability, security, usability, etc.) — useful as a checklist for surfacing requirements.
- **Stakeholder Mapping (Power/Interest Matrix):** A tool for categorizing stakeholders by their influence and interest to determine how to involve them in a decision process.
- **Spectrum of Acceptability:** A scale from "least acceptable" to "ideal" outcome for a given requirement, used to score how well each option meets that requirement.
- **ISAQB:** International Software Architecture Qualification Board — a certification body for software architecture. The ADR curriculum is part of their program.
- **TOGAF:** The Open Group Architecture Framework — an enterprise architecture methodology. The speaker references its concept of "implementation governance."

---

## 📌 Conclusion

The speaker's core message is that most architectural decision-making fails not because people are unintelligent, but because the process lacks structure. The pros/cons list looks objective but isn't. Consensus wastes time. Dictates lack buy-in. Ivory tower decisions lack context.

The solution is a structured process that:
1. **Involves the right stakeholders** (mapped by power and interest)
2. **Defines the scope and non-scope** explicitly
3. **Surfaces significant requirements** and assigns them weights
4. **Evaluates distinct options** by scoring them against requirements
5. **Makes a decision** via consent, not consensus — and writes it all down

The output is an ADR that any future team member can read and say: "Even if I would have decided differently, I can see why this was the logical conclusion." That's the mark of an objective, effective ADR.

> "In the long run, this saves you time. I've been in so many discussions about decisions that could have just been a decision on paper — and then we could have just pointed to the paper."
