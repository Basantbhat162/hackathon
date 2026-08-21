I have created a comprehensive, professional **`AI Agent Workspace Optimization Blueprint`** in your Studio panel. It translates the core principles from the source material into an actionable engineering guide for building a modular, token-efficient AI coding environment.

This report synthesizes the creator's philosophy on managing agents, structuring instructions, and utilizing rich visual output rather than bloated text files. Below is a targeted, grounded summary of the underlying principles, trade-offs, and structural recommendations for our own workflow.

---

### 1. Key Learnings from the Sources
*   **The Communication Paradigm**: The overarching purpose of writing agent instructions, glossary terms, and custom skills is to **improve human-agent communication**, rather than simply boosting the agent's raw technical coding capability. Making agent outputs structured and visually clear reduces cognitive friction and makes it much easier to steer them.
*   **`AGENTS.md` vs. `README.md`**: A project's `README.md` is intended as high-level context for human developers or external agents to understand the repository. In contrast, `AGENTS.md` (or `claude.md`) is a strict **operational handbook** detailing *how* the agent should work, modify code, respect codebase boundaries, and interact with the developer.
*   **Trigger-Based Modularity**: Storing every possible rule in a single instruction file bloats the context window and leads to instruction fatigue. Instead, operational tasks (such as filing PRs, monitoring test runs, or uploading visual assets) should be split into **modular skills**. Crucially, the **description of a skill should serve as a minimal trigger keyword** (e.g., *"use when the user asks to monitor or babysit a PR"*) so the harness only injects the skill's instructions into the active context when explicitly requested.
*   **Pattern Calibration via Good/Bad Examples**: Agents are highly responsive to comparative examples. Feeding the model exact "good" and "bad" illustrations (such as poorly formatted, overly complex PR titles vs. concise, human-readable equivalents) immediately aligns the agent's output with your preferred standard.
*   **HTML over Markdown for High-Density Outputs**: While markdown is standard, human developers rarely read markdown plans or specifications exceeding 100 lines. Generative HTML provides a vastly more expressive visual canvas—enabling tabs, collapsible sections, responsive grids, and interactive sliders.
*   **Throwaway Tools & Custom Playgrounds**: Code is incredibly cheap to produce now. Instead of writing purely reusable codebase scripts, agents should be directed to build "throwaway" HTML interfaces or mock playgrounds to explore data, test algorithms, or compare UI options. The interface should conclude with an "export as JSON" or "copy as prompt" button to feed the structured state back to the agent.
*   **Session Partitioning**: Because LLM context compaction and long threads degrade focus over time, it is far more efficient to start fresh sessions across multiple branches. Developers should copy-paste key historical outputs (such as a finalized HTML spec) to seed a fresh, clean thread.

---

### 2. Why Each Principle Works
*   **Offloading Instructions Saves Token Overhead**: Moving specialized routines (like PR lifecycle management or file uploading) to triggered skills prevents the agent from running unnecessary verification loops, wasting resources, or violating constraints that do not apply to the current task.
*   **Tone Matching & Weights Calibration**: LLMs are natural pattern-matchers and tend to mirror the user's tone and structure. Comparative examples allow you to steer the model's output without writing wordy, abstract guardrails.
*   **HTML Leverages Human Visual Bandwidth**: Vision represents a "10-lane superhighway of information" into the human brain. Presenting complex plans, code reviews, or design mockups in interactive, visually distinct HTML makes developers far more likely to engage with and steer the agent's work.
*   **Sandboxed Manipulation Protects Code Integrity**: Using throwaway tools to clean data or explore states allows you to manipulate inputs in a safe sandbox before passing finalized, high-precision parameters back to the main codebase.

---

### 3. What We Should Adapt to Our Workflow
*   **A Lean, Philosophically Aligned `AGENTS.md`**: Create a minimal global file introducing our team, our architectural beliefs (e.g., *"fight for the smallest model that makes the correct behavior unsurprising"*, *"match ceremony to the task"*), and a simple glossary.
*   **"Questions are Read-Only" Rule**: Mandate that when answering questions or analyzing files, the agent must treat the request as read-only to prevent it from prematurely editing the codebase.
*   **"Hit Every Surface" Checklist**: Incorporate a multi-surface validation checklist to ensure front-end changes are checked across all platforms (web, desktop, mobile) and relevant backend adapters.
*   **"Reverse States" Rule**: Instruct the agent that any code written to introduce a state (such as adding "settle" or "snooze" buttons) must automatically include the corresponding teardown or inverse logic.
*   **Split Documentation Entry Points**: Separate user-facing documentation from internal maintainer specs so the agent doesn't write internal technical details in user-facing files.
*   **Universal Skills Directory**: Build a modular local `.agents/skills` directory to contain reusable tasks.

---

### 4. What We Should NOT Blindly Copy
*   **The Creator's Tech Stack Preferences**: Do not copy specific tech-stack rules (e.g., instructions around `zustand`, `react query`, `clerk`, or frameworks like `bun` and `convex`) unless they are native to our repository.
*   **Personalized Machine Provisioning**: Avoid adopting highly personalized infrastructure automation scripts (like the creator's `provision-a-box` skill) designed for his multi-machine network.
*   **Extreme HTML Maximalism**: The creator suggests abandoning markdown completely. However, markdown remains exceptionally fast, highly readable, and natively syntax-highlighted inside standard code editors for simple files, small code blocks, and short logs. HTML should be reserved specifically for complex documents, multi-option mockups, and interactive playgrounds.
*   **Custom, Unsecured Microservices**: He utilizes custom personal services (like `files.tslop.org` and `postplan.dev`). We should utilize secure, enterprise-grade cloud storage (like private S3 buckets or local file logging) to prevent raw data or intellectual property from leaking externally.

---

### 5. Recommended Lightweight Workspace Structure

We can implement this optimized, highly modular layout for our repository:

```text
.agents/
├── AGENTS.md                  # Global dev context, glossary, high-level guardrails, and tech stack constraints
├── docs/                      # Split entry points to protect internal details from leaking
│   ├── user/                  # User-facing guides
│   └── maintainer/            # Core architecture, developer specs, and internal workflows
└── skills/                    # Folder for specialized, trigger-based JSON or Markdown skill files
    ├── pr-manager.md          # Skill for formatting PR titles (using good/bad patterns) and descriptions
    ├── asset-uploader.md      # Skill for uploading visual verification assets to secure private storage
    └── html-explainer.md      # Skill for generating interactive, visual HTML specs and code reviews
```

***

📊 I can map out a draft layout for the `html-explainer` skill file, including trigger keywords and formatting guidelines, to help get this modular skill structure started.

### Architecting a High-Velocity AI Agent Coding Workspace

#### 1\. Introduction: The Paradigm Shift in Human-Agent Collaboration

The landscape of software development is undergoing a fundamental shift from "writing code" to "editing instructions." In an AI-native development environment, productivity is no longer measured by manual keystrokes, but by the raw throughput of high-quality Pull Requests (PRs) landed. Moving from generic, one-off prompting to a structured workspace architecture—the "fleet repo" concept—transforms AI agents from simple tools into autonomous, high-velocity architects. This approach treats instructions as infrastructure, ruthlessly eliminating "slop" by providing agents with persistent context and rigorous guardrails across multiple machines. By investing hours into refining markdown-based instructions, developers unlock an exponential return on PR volume, effectively shifting their role to a high-level orchestrator. This strategic foundation begins with the precise definition of agent identity.

#### 2\. Global Identity and Communication Philosophy

Defining a global identity within a centralized AGENTS.md is a strategic requirement for model alignment. Models are highly adept at tone-matching; when addressed as an expert partner rather than a subservient tool, their behavior shifts toward professional, high-agency collaboration. We treat these instructions as code that coordinates intelligence.

##### Personal Identity and Philosophy

Sharing specific developer philosophies—such as "simple systems," "YAGNI," and "measure twice, cut once"—massively impacts the agent's decision-making process. Without these constraints, overeager models like Opus 5 or Soul often become too proactive, introducing unnecessary architectural machinery. We must explicitly instruct agents to "fight for the smallest model that makes correct behavior unsurprising." This prevents over-engineering and aligns the agent with a lean, performance-oriented development style.

##### Glossary of Collaborative Terms

Standardizing language prevents ambiguity during multi-agent orchestration. The following glossary ensures the model understands roles within the environment:

* **You:**  The specific agent reading the file and executing changes.  
* **We/Maintainers:**  The core human development team (e.g., Theo and Julius).  
* **User:**  The person directing the agent via a coding interface (T3 Code/Cursor).  
* **Provider:**  The agent runtime or harness (e.g., Codex, Claude, OpenCode).  
* **Client:**  The specific UI surface (Web, Desktop, or Mobile).  
* **Environment:**  The running server, machine file system, credentials, and owned state.  
* **Agent:**  The general class of coding agent, including the current "You."Defining these terms ensures that when a human says "we should do X," the agent recognizes it as a maintainer directive rather than a suggestion. This precision is the first step in differentiating documentation for humans versus documentation for machines.

#### 3\. The Structural Foundation: AGENTS.md vs. README.md

A common failure in AI-assisted development is providing agents with documentation intended for humans. A high-velocity workspace requires a tactical separation of intent.| Feature | README.md (Human-Centric) | AGENTS.md (Agent-Centric) || \------ | \------ | \------ || **Target Audience** | Potential users, contributors, and evaluators. | AI models and coding agents. || **Primary Purpose** | Project intent, installation, and usage. | Instructions on  *how*  to change code and environmental state. || **Core Content** | High-level roadmaps and feature lists. | Global defaults, coding preferences, and machine guardrails. |

##### The "Read-Only Questions" Rule

To prevent unwanted environment mutations, the workspace must include a rule specifying that "questions are read-only." This ensures that when a user seeks information, the agent does not interpret the query as a directive to modify files. This distinction is critical for maintaining environment stability during the discovery phase of a task.

##### Computer Inventory and Environment Context

Agents require a "Computer Inventory" to avoid common developmental annoyances and resource underutilization. For high-velocity work, an agent must know exactly what hardware it can "abuse."

* **Machine Specs:**  Document specific resources (e.g., "Framework desktop with 32 threads and 64 gigs of RAM").  
* **Connection Methods:**  Specify access paths (Local network, Tailscale, or T3 Connect tunnel).  
* **CLI Quirks:**  Hardcode instructions for specific tool commands. For instance, in a V+ environment, agents must use VP rundev instead of VP dev, as the latter exhibits non-standard behavior that burns millions of tokens on repetitive environment errors.This environmental awareness transitions us from static instructions to modular, trigger-based execution.

#### 4\. Modular Skill Design and Trigger-Based Orchestration

The transition from monolithic instructions to "Trigger-Based" modular skills is a key architectural upgrade. This moves away from elaborate explanations toward a system of "magic keywords."

##### Description as Trigger

Skill descriptions should be treated as triggers for the harness/orchestrator’s logic. Because the description is often inserted into the system prompt even when the skill isn't active, it must be minimal. For example:  *"Use when the user asks to monitor, watch, or babysit a PR."*  This ensures the model pulls in the full context only when functionally required, preserving the token budget for logic rather than overhead.

##### Delegation for Breadth: File vs. Babysit

Splitting skills into components like "File PR" and "Babysit PR" allows for "delegation for breadth." One agent focuses on implementation, while a separate skill/agent monitors CI/CD, rebases against main, and responds to review comments.

##### PR Hygiene and Identification

To maintain repository quality, agents must adhere to strict hygiene rules:

* **Identification:**  Every comment must be tagged: Model Slug responding on behalf of User.  
* **Verification:**  Verify bot findings against the source before changing code.  
* **Failure Analysis:**  Distinguish between repository failures (code issues) and infrastructure flakes.  
* **The "Babysit" Loop:**  Monitor the PR until it is "green" and approved.  
* **Scope Creep:**  Do not let review feedback expand the PR beyond the original goal.Rigorous hygiene is best reinforced through pattern matching and comparative examples.

#### 5\. Pattern Matching: The Power of Good and Bad Examples

"Seating the weights" with comparative examples is more effective than long-form instruction. By showing "Bad" vs. "Good" patterns, the agent learns the specific taste and standards of the developer without excessive token spend.

##### Comparison Gallery: Titles and Descriptions

**PR Titles:**

* **Bad:**  PF server negotiate per message deflate on the websocket (Technical jargon inventory).  
* **Good:**  PF server cut websocket frame size by 70% with gzipping (Impact-focused).**PR Descriptions:**  
* **Bad:**  Removed implicit workspace carryover from every new thread entry point. New threads inherit only project from context. (Implementation inventory/slop).  
* **Good:**  My new work tree default was ignored when starting new threads on existing work trees. Now preferences apply correctly. (Problem/Solution focus).Evaluating examples of "Bad PRs" filed by previous agent iterations is a high-value strategy for steering future model versions away from technical "slop." This clarity is further enhanced by moving beyond text-based outputs.

#### 6\. Beyond Markdown: The Unreasonable Effectiveness of HTML

While Markdown is standard, moving toward HTML for human-facing artifacts significantly increases "visual bandwidth." As Karpathy noted, a third of the human brain is dedicated to vision—it is the "10-lane superhighway" of information.

##### The HTML Planning Skill

HTML allows for a density of information that Markdown cannot match. Agents utilize the "HTML Planning Skill" to generate:

* **High Information Density:**  Tables, SVGs for diagrams, and absolute positioning.  
* **Interactive Elements:**  Sliders/knobs for UI testing or algorithm tweaking.  
* **Spatial Workflows:**  Checklists for multi-surface entry points (Web, Desktop, Mobile).

##### Token Efficiency vs. Cognitive Load

While HTML is less token-efficient, the 1-million-token context windows of models like Claude make this cost negligible. The primary constraint is the human "cognitive budget." High-density HTML is simply faster to review. Hosting these artifacts on microservices like PostPlan facilitates easy sharing and mobile-readability.As we increase visual output, we must also tighten the safety of the agent's internal operations.

#### 7\. Guardrails and Environmental Safety

Managing an agent's "blast radius" is critical as autonomy increases. Defensive workspace rules prevent agents from destroying production environments or killing their own processes.

* **Reverse States Rule:**  Any logic that adds a state (e.g., "snooze" or "settle") must have a corresponding "unsnooze" or "unsettle" logic. This prevents one-way mutations that leave the system inconsistent.  
* **Process Management:**  Agents often kill the wrong processes, potentially terminating the very T3 Code instance they inhabit. Instructions must mandate that agents save PIDs when spinning up dev instances to ensure they can target only the correct processes.  
* **CLI Defensive Coding:**  Hardcode fixes for quirks like VP rundev. This prevents burning millions of tokens on repetitive environment-breaking mistakes caused by the model's default assumptions.Safe execution requires a localized approach to implementation rather than blind copying.

#### 8\. Implementation Guide: Adaptation vs. Blind Copying

A workspace should evolve based on local failure modes. Blindly copy-pasting global files is counterproductive; your instructions must reflect your specific hardware and stack.

##### What to Adapt vs. What NOT to Copy

* **Adapt:**  Identity philosophies, "read-only" question logic, and the HTML artifact pattern.  
* **DO NOT Copy:**  Specific tech preferences (e.g., Zustand, React Query, Clerk), specific shell scripts, or unsecured microservices like files.tslop.org.

##### History Auditing

The most effective refinement strategy is "History Auditing." Use a high-reasoning model (like Opus or Fable) to analyze its own logs. Calculate the  **"corrections per 100 user messages"** —this is the primary KPI for agent performance. Look for patterns in tool misuse or "overbuild" to update your AGENTS.md and SKILLS.md files accordingly.The final step is organizing these assets into a standardized schema for cross-machine syncing.

#### 9\. Recommended Workspace Schema and Metadata

A standardized folder structure is essential for syncing across a "fleet" of development machines.

##### Directory Structure

* **/agents/** : Global instructions (AGENTS.md) and project-specific overrides.  
* **/skills/** : Modular skills categorized by scope:  
* universal/: Skills like "File PR" or "Babysit PR."  
* machine-specific/: Skills for provisioning or local hardware.  
* provider-specific/: Logic tailored for specific model behaviors.  
* **/docs/** : Separated between user/ and maintainer/ to prevent agents from leaking internal implementation details into public-facing docs.

##### Skills Metadata Schema

Every skill in SKILLS.md must follow a structured schema to trigger correctly:  
\#\#\# \[Skill Name\]  
\- \*\*Description:\*\* \[Magic keywords for trigger logic\]  
\- \*\*Requires:\*\* \[Required environment tokens, e.g., GITHUB\_TOKEN\]  
\- \*\*Instructions:\*\* \[Bash commands or specific execution logic\]

This architecture enables a "five-minute dev experience" across any machine. By structuring the workspace for agents rather than humans, developers move from manual labor to high-volume orchestration, landing dozens of PRs with minimal intervention.  
