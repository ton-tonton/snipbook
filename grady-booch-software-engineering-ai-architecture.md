# Grady Booch on Software Engineering, UML, Architecture, and AI

**Host:** The Pragmatic Engineer Podcast
**Guest:** Grady Booch — IBM Fellow, ACM Fellow, co-creator of UML, creator of the Booch Method, author of 6 books and 100+ technical papers
**URL:** https://youtu.be/u7WaC429YcU
**Language:** English


---

## 📝 Executive Synthesis

This episode is a sweeping conversation with Grady Booch, one of the most influential figures in the history of software engineering. Grady traces the entire arc of the field — from the first golden age of algorithmic thinking in the 1960s, through the object-oriented revolution he helped create, to the rise and fall of UML's popularity, to the modern era of cloud platforms, migrations, and large language models. The interview surfaces important nuances often missing from contemporary discussions: why software architecture is not dead but transformed, why LLMs are impressive yet fundamentally limited, and why the next frontier in AI requires embodied, neurosymbolic architectures — not just scaling.

---

## 📚 Section-by-Section Breakdown

### 1. Who Is Grady Booch?

Grady Booch built his first computer at age 12 (57 years before the interview). He is:

- Co-creator of **UML (Unified Modeling Language)**
- Creator of the **Booch Method** — the foundational object-oriented analysis and design methodology
- IBM Fellow (one of ~89 active, out of ~350 total in IBM history)
- ACM Fellow
- Author of 6 books and over 100 technical papers on software engineering

He describes his IBM Fellow status as analogous to academic tenure: *"We trust you've done good things — go pursue what you think makes sense."* This freedom allowed him to focus on 5–10 year horizons rather than quarterly deliverables.

He has been parachuted into companies across virtually every domain: finance, defense, real-time systems (pacemakers, CT scans, subway systems), aerospace (James Webb Space Telescope uses UML in its design), and AI.

---

### 2. The First Golden Age of Software Engineering (1960s–1970s)

The first golden age was characterized by **algorithmic decomposition** — breaking systems down by functions and procedures.

- The dominant languages were **Fortran, COBOL, LISP, APL**
- Structured analysis and design (DeMarco, Yourdon, Constantine) dominated
- Systems were largely monolithic
- **Key driver:** Machine time was far more expensive than human time → you had to think before touching the machine
- The bottleneck: how to build **larger, sustainable, economically interesting systems**

The seeds of change came from the defense world:
- **SAGE** (Semi-Automatic Ground Environment) in the 1950s–80s was a distributed radar defense system
- SAGE triggered the NATO Software Engineering Conference in the late 1960s, coining the term *"software crisis"*
- **ARPANET** (government-funded) was the true birthplace of distributed computing — Grady had one of the first email addresses in 1979, when all known addresses fit on a mimeographed page

---

### 3. The Booch Method and the Second Golden Age (1970s–1990s)

As systems became more distributed, real-time, multilingual, and multi-platform, algorithmic decomposition proved insufficient. The field needed a new lens.

#### Origins of Object-Oriented Thinking

Grady was asked by the Air Force Academy to help the DoD apply the **Ada programming language** — a language built to replace the thousands of ad-hoc languages then in use. Ada was inspired by:
- **Abstract data types** (Liskov, Guttag)
- **Information hiding** (David Parnas)
- **Simula and Smalltalk** — early OO languages

Working at Vandenberg Air Force Base on a network of 32 minicomputers, Grady saw firsthand the emerging problem of distributed systems: communication, failure, shared state.

#### The Booch Method: Objects, Not Algorithms

Booch's insight (influenced philosophically by Plato's *atoms vs. processes* dialectic): instead of decomposing by algorithms, decompose by **classes and objects** — encapsulating data and behavior together.

> *"We did some things right and some things wrong. Classes as abstractions — right. Overemphasis on inheritance — wrong. Inheritance was meant to save code, but it led to desperate abstractions."*

Key predecessors who influenced him: Liskov, Parnas, Dijkstra, Hoare.

The Booch method was ultimately a reaction to the forces on software systems at the time: distributed architectures, Ada, real-time constraints.

---

### 4. Rational Software and the Creation of UML

#### Founding of Rational (1982)

Grady co-founded **Rational Software** with Paul Levy and Mike Devlin (Air Force Academy classmates) in 1982. Their initial goal: build a software development environment for the Ada language.

They built custom hardware — the **Rational R1000** — because no commercial machine was powerful enough at the time.

Around the same period, Grady connected with **Bjarne Stroustrup**, the creator of C++, and the two influenced each other's work directly (references appear in both their books). *"The Booch method and C++ kind of grew up together."*

#### Rational Rose

Moving into the commercial sector, Rational built **Rose (Rational Object-Oriented Software Engineering)** — a personal productivity tool to draw and reason about object-oriented designs on PCs, with some code generation capability.

- Rose became dominant in the software design tooling market
- Rational began acquiring companies to cover the entire development lifecycle
- **Reed Hastings** (future Netflix founder) sold his company Pure Atria to Rational. He later used those proceeds to seed Netflix.

#### The Three Amigos and UML 1.0

By the mid-1990s, multiple competing methodologies existed. To unify the field, Rational brought together:
- **Grady Booch** (Booch Method)
- **Jim Rumbaugh** (OMT — Object Modeling Technique)
- **Ivar Jacobson** (inventor of use cases, methodology from Ericsson)

Their task: merge three very different methods into one. The result was **UML 1.0**, released to the Object Management Group (OMG) — making it an open, community-owned standard.

Grady drove much of the UML 1.0 document, but credits all three equally. After UML 1.0, he stepped away — *"emotionally exhausted."*

**Philippe Kruchten** contributed the **4+1 View Model** — the idea that architecture must be described from multiple viewpoints (logical, process, implementation, deployment, use cases), stemming from his work on the Canadian Air Traffic Control System. This became IEC/ISO standard 42220.

**Walker Royce** (son of Winston Royce, the author of the famous "waterfall" paper) contributed spiral/iterative models. Notably, Winston Royce did NOT endorse waterfall — he said it was a bad idea. The misreading of his paper is a longstanding myth.

---

### 5. UML's Rise, Peak, and Decline

#### Peak

At its peak (~2000), UML had **20–30% penetration** among commercial developers. Microsoft integrated Rational Rose into Visual Studio to help customers build more complex distributed systems.

#### What Went Wrong

After UML 1.0, Grady stepped away. In moving to **UML 2.0**, a faction pushed to make UML a programming language — precise, code-generating, formal.

> *"I never intended UML to be a programming language. That was a profound mistake."*

Making UML more formal and complex caused two problems:
1. It became harder to use
2. It was being used to generate code (instead of reason about design)

This triggered the decline. Grady designed UML for **reasoning** — most diagrams should be thrown away after use. The over-formalization worked against that intent.

#### UML Today

UML is still used in high-ceremony, high-risk, high-complexity domains:
- James Webb Space Telescope
- Large financial institutions
- Defense systems

For most startups and typical software products: not needed. The architectural decisions have already been made by the frameworks and cloud platforms you choose.

---

### 6. How Software Architecture Has Evolved

#### The Three-Axis Model

Grady describes a 3D space for assessing when formal architecture is needed:

| Axis | Low End | High End |
|------|---------|----------|
| **Ceremony** | Startup (other people's money, disposable code) | Government/defense (half-trillion dollar system) |
| **Risk** | Grinder app (if it fails, no big deal) | Medical device / missile system (failure = death) |
| **Complexity** | Well-understood problem (use prompts/existing patterns) | Never-built-before systems (constellation of LLMs + neural-symbolic systems) |

The sweet spot for most contemporary software sits at low values on all three axes — hence the perceived decline of formal architecture.

#### Architecture Is Not Dead — It's Transformed

> *"The entire history of software engineering is one of rising levels of abstraction."*

Today's architects primarily:
1. Choose cloud platforms (AWS, GCP, Azure)
2. Select frameworks and messaging systems (Kafka, Redis, RabbitMQ)
3. Make **economic decisions**, not just software decisions

The role of **Solutions Architect** is the modern manifestation: knowing where the cloud skeletons are buried, what things cost, what patterns apply.

Amazon and Microsoft have codified architectural patterns into their documentation — the field has matured from discovering patterns to reusing them.

---

### 7. Legacy Systems and Migrations

#### What Is a Legacy System?

> *"The moment you write a line of code it becomes a legacy system until you throw it away."*

The IRS still runs IBM 360 Assembly Language code from the 1960s — on emulators upon emulators. Business rules are embedded in that Assembly code. Rewriting is extremely dangerous because the original context is lost.

Facebook, Google, OpenAI — all face legacy problems. All useful software accumulates technical debt.

#### Why Migrations Are So Hard

> *"The code is the truth, but the code is not the whole truth."*

Design decisions exist **outside the code**: rationale, naming choices, tradeoffs, rejected alternatives. When migrating:
- Original authors may have retired or died (especially for 40–50-year-old systems)
- Intent is lost
- You must reconstruct decisions from incomplete information

Migrations will *"plague us until the heat death of the cosmos"* — technology changes (hardware, social, economic) always outpace existing architectures.

**Conceptual integrity** (a single vision guiding the system) is critical for long-lived systems. Example: the Linux kernel under Linus Torvalds. When that person leaves, drift is inevitable.

---

### 8. AI, LLMs, and the Next Frontier

#### Grady's AI Background

Grady has worked in AI since childhood. Key milestones:
- **Watson Jeopardy (2010s):** Documented the as-built architecture of IBM Watson — a pipeline of statistical systems and knowledge engineering (not neural networks). This was the first formal architectural documentation of an AI system.
- **Cognitive Systems Study (~2012):** Warned IBM management not to over-hype Watson. Was politely ignored.
- **Self Architecture (~2014):** Built a **neurosymbolic architecture** combining:
  - Marvin Minsky's Society of Mind
  - Rodney Brooks's Subsumption Architecture
  - Hofstadter's Strange Loops
  Applied to NASA's Robonaut 2 (on the ISS), Hilton Hotels concierge robots, and Woodside oil rig robots.
- **Current:** Studying the architecture of the organic human brain — cortical columns, thalamus loops, hormonal messaging — to inform next-generation AI architectures.

#### His View on LLMs

> *"They're pretty freaking cool. However, they are by the very nature of their architecture unreliable narrators."*

More bluntly: LLMs are **stochastic parrots**. They do not reason. They do not understand. They navigate a latent space trained on internet-scale corpora and produce coherent text as a result.

Key criticisms:
- **Scaling will not reach AGI.** He and Gary Marcus consistently challenge Sam Altman, Elon Musk, and Yann LeCun on this. (LeCun blocked him on Twitter for too many callouts.)
- **LLMs are unimodal and sensory-sparse.** Human intelligence evolved through full embodiment in the world — multimodal sensory input, physical interaction, emotional systems.
- **Wrong architecture for full autonomy.** *"If I've got to build a nuclear power plant to run my system, I'm probably doing the wrong architecture."*
- **Not AGI-equivalent.** *"Organic neurons are light-years ahead of artificial neurons. Artificial neurons are an echo of a whisper of what organic neurons are."*

#### What Would Actually Work

A **neurosymbolic architecture** combining:
- Neural components (perception, pattern matching)
- Symbolic reasoning (logic, rules, planning)
- Embodiment (physical sensors, real-world grounding)
- Emotional/motivational systems (analogous to human hormones and thalamic loops)

The human brain uses ~tens of millions of cortical columns, 7 layers deep, with entangled architectures across the cerebral cortex, thalamus, and hormonal systems — none of this is replicated in current transformer architectures.

#### Where LLMs Excel

- Code assistance and generation
- Summarization and writing
- One-off, disposable computation
- Use cases where occasional hallucination is acceptable

#### The Parallel to Distributed Computing

The LLM revolution is comparable (but perhaps less seismic) to the rise of distributed computing in the 1970s–80s — another period of radical uncertainty and rapid exploration before patterns solidified.

The rise of **GPUs** (from gaming) powering neural networks, combined with massive internet-scale data and modern backpropagation algorithms, created the *perfect storm* behind LLMs.

---

### 9. Formal Methods

Formal methods (mathematical proofs of software correctness) are valuable but inherently **niche**:
- Amazon uses formal methods for S3 edge cases (1-in-trillion bugs that become common at their scale)
- Microsoft used formal methods for hardware drivers
- Useful for *parts* of a system — never a driver of the whole architecture
- Limitation: formal methods don't model time and space — they verify functional correctness only

---

### 10. Advice for Early-Career Software Engineers

> *"Don't be afraid. This is an exciting time."*

Three pieces of advice:

1. **Learn as much as you can.** The tools and resources available today are extraordinary and cheap. A single person can do things that required teams 20 years ago.

2. **Don't get stuck in one domain.** Find a space nobody is in yet and go make a name for yourself there. The field of computing is vast.

3. **Have fun.** The toys at our disposal are amazing. Use them.

> *"Software engineering is one of rising levels of abstraction — it's just that our tools have changed. You learned to write functions instead of raw assembly. Future engineers will write prompts instead of functions. The work doesn't go away; it elevates."*

---

## 🧠 Key Concepts and Terminology

| Term | Definition |
|------|-----------|
| **Booch Method** | Object-oriented design methodology that decomposes systems by classes/objects rather than algorithms |
| **UML (Unified Modeling Language)** | A visual language for visualizing, specifying, and documenting software-intensive systems — NOT a programming language |
| **4+1 View Model** | Philippe Kruchten's architecture framework: logical, process, implementation, deployment, and use case views |
| **Use Cases** | Invented by Ivar Jacobson at Ericsson; describe system behavior from the user's perspective |
| **Rational Unified Process (RUP)** | Iterative software development process combining UML notation and the 4+1 view methodology |
| **Legacy System** | Any code still in production — it becomes legacy the moment it is written |
| **Conceptual Integrity** | Fred Brooks' concept — a single guiding vision for a system's design, enforced by a chief architect |
| **Neurosymbolic Architecture** | AI systems combining neural networks (perception) and symbolic reasoning (logic/rules) |
| **Society of Mind** | Marvin Minsky's theory that intelligence emerges from a society of small, simple processes |
| **Subsumption Architecture** | Rodney Brooks' layered robot control architecture where higher layers can override lower ones |
| **Strange Loops** | Hofstadter's concept of self-referential systems; applied to the "Self" AI architecture |
| **Stochastic Parrots** | A critique of LLMs — they statistically generate plausible text without understanding |
| **Embodied Cognition** | Intelligence that arises through physical interaction with the world — contrasted with text-only LLMs |
| **Technical Debt** | The implicit cost of future rework accumulated from present design shortcuts |
| **Waterfall Model** | Misattributed to Winston Royce, who actually argued against it — he advocated for iterative development |

---

## 💡 Key Insights

1. **The history of software engineering is a history of rising abstraction.** Assembly → structured programming → OOP → cloud frameworks → LLM prompts. Each level moves architectural decisions downward into platforms and tools.

2. **Architecture is about significant decisions — those where the cost of change is high.** Not all systems need formal architectural rigor. Three axes determine when it matters: ceremony, risk, and complexity.

3. **UML was never meant to be a programming language.** Its over-formalization in 2.0 betrayed its original purpose: to help engineers *think*, not to generate code.

4. **Legacy systems will never go away.** Old code never dies — you have to kill it. And killing it requires understanding decisions whose rationale has been lost to time.

5. **LLMs are a powerful new tool, but the wrong architecture for AGI.** Scaling will hit diminishing returns. The path to general intelligence requires embodiment, neurosymbolic architectures, and understanding the organic brain.

6. **The role of architect has changed, not disappeared.** Modern architects make economic and systemic decisions — choosing cloud services, messaging systems, platform strategies — not just designing software internals.

7. **Software migrations will always be painful.** Technology changes faster than architectures, and the original design rationale is always being lost. This is an entropy problem, not just a technical one.

---

## 📌 Conclusion

Grady Booch remains one of the most clear-eyed thinkers in software engineering, precisely because he has *lived through* every major paradigm shift of the past 50 years. His key message: do not mistake the current excitement around LLMs for a final destination. The history of computing is a history of oversold transitions — distributed computing, OOP, the internet bubble, Watson — each followed by recalibration.

What is genuinely new and durable is the synthesis of powerful hardware (GPUs), massive data, and sophisticated algorithms. But the architecture to turn this into truly intelligent, reliable systems remains unsolved.

For engineers entering the field today: the work has never been more accessible, the tools never more powerful, and the domains never more varied. The right response to the LLM era is not fear — it is curiosity and ambition.

> *"I'm not done yet. I'm having a tremendous amount of fun."*
> — Grady Booch

---

## 📖 Recommended Resources

- **Mary Shaw — *Software Architecture*** — the foundational text that formalized architectural patterns
- Grady's forthcoming **Software Architecture Handbook** (a documented collection of real-world as-built architectures: Photoshop, AlphaFold, Wikipedia, climate monitoring systems)
- Grady's documentary-in-progress: **Computing: The Human Experience** — history of computing and what it means to be human
- **David Parnas — "A Rational Design Process: How and Why to Fake It"** — the paper that inspired the name "Rational Software" and challenged waterfall thinking
- **Ivar Jacobson's work on use cases** — still foundational for requirements engineering
- **Gary Marcus & Grady Booch's public AI critiques** — for a sober counterweight to AGI hype
