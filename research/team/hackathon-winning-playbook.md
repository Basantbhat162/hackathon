# THE HACKATHON WINNING PLAYBOOK
## A Tactical Blueprint from Participation to Victory (AI-Era Edition)

Welcome to the **Hackathon Winning Playbook**. This comprehensive, highly tactical manual is synthesized directly from the collective wisdom of seasoned hackathon organizers, judges, 7x and 21x champions, and top-50 competitive hackers [45, 78, 110, 173]. 

Historically, hackathons were won by the teams who could code the fastest and sleep the least [27, 67]. In the modern AI-assisted era, this dynamic has fundamentally shifted. High-quality AI coding assistants and visual generators have democratized code creation—making it possible to spin up functional prototypes in minutes rather than days [187, 188, 190, 193]. Consequently, victory is no longer decided by pure coding speed. It is decided by **narrative depth, market validation, precise scope containment (MVP), unique selling propositions (USPs), and cinematic presentation** [31, 38, 78, 112, 163, 188].

Use this playbook as an end-to-end operational guide for your team.

---

## SECTION 1: Pre-Hackathon Preparation & Strategy

Success in a hackathon begins weeks before the timer starts. Preparation is about clearing administrative hurdles, optimizing team chemistry, establishing a tech stack, and understanding the terrain.

### 1. Finding Your Arena
Different platforms cater to different styles of hackathons. Align your search with your team's objective:
*   **Devpost & Major League Hacking (MLH):** The gold standards for global university, corporate, and online thematic hackathons (e.g., AI, Web3, Climate Tech) [29, 62, 157]. Highly recommended for building international networks and exploring cutting-edge tech [50].
*   **Devfolio:** The premier platform for top-tier Indian hackathons, especially highly technical events focused on AI, Web3, and Blockchain (e.g., Smart India Hackathon, Hack Fusion) [49].
*   **HackerEarth:** Best for highly competitive, problem-solving-oriented hackathons [49].
*   **D2C (Dare2Compete, now Unstop):** Perfect for high-stakes **hiring hackathons** hosted by major corporations (e.g., JPMC, Juspay, Goldman Sachs, Walmart, Amazon) where top performers land interviews and full-time job offers [50, 195].

### 2. Avoiding Administrative Pitfalls
Many elite teams lose before the coding starts due to minor administrative oversights.
*   **The SPOC Mandatory Rule (SIH):** In the Smart India Hackathon (SIH), colleges must register a Single Point of Contact (SPOC) from their faculty or innovation cell [175]. If your SPOC does not register your college, your entire student body is ineligible to participate [175]. SPOC registration occurs early (usually by late July or early August) [176].
*   **The PPT Disqualification Trap:** Evaluators of large-scale hackathons (like SIH) are strictly instructed to **disqualify teams instantly, without reviewing their project**, if they use custom PPT templates or add extra slides beyond the official, default template provided on the SIH portal [177, 178]. Always use the exact template mandated by the organizers [177].
*   **Strict Team Composition:** Pay absolute attention to roster rules. For instance, SIH mandates exactly six members per team, with at least one female teammate [178]. All-boys teams are strictly disallowed [179].

### 3. Professional Team Building & Role Alignment
Do not assemble teams based on friendship alone; separate work and friendship to avoid personal conflicts that disrupt product delivery [186].
*   **Avoid the "Too Many Designers" Trap:** A team with one developer and three designers will fail to build a functional app [133]. Prioritize developer-heavy rosters [133]. A balanced roster is: 1 UI/UX Designer, 2 Developers (Full-Stack or Backend-focused), and 1 Product Manager/Presenter [63, 125, 126, 133].
*   **The Power of the Non-Coder PM:** If a teammate cannot code, assign them as the **Product Manager (PM)** and **Presenter** [125, 126]. Their sole responsibility is to visit sponsor booths, run market research, draft the product specification sheet, manage the task schedule, and polish the final pitch [125, 126].
*   **Select for Complementary Experience:** Instead of selecting teammates who merely scored high in CS classes, choose individuals who have built real-world side projects, have prior hackathon experience, and possess high motivation to learn [81, 186, 197]. 

### 4. Technical Prep (The "Fair-Game" Warmup)
While writing project code before the hackathon starts is cheating [82], there is a "fair-game" setup window that dramatically accelerates your start:
1.  **Commit to a Tech Stack Early:** Agree on a tech stack your team is highly comfortable with [81]. A hackathon is *not* the place to learn React or a complex new framework from scratch, as troubleshooting basic setups will eat up precious hours [81].
2.  **Prepare Boilerplate Setup:** Establish empty GitHub repositories with your basic tech stack set up (Next.js, Tailwind, Fast API, DB configurations) [81, 82]. 
3.  **Practice API Implementations:** Practice calling and integrating standard APIs (auth, databases, payment gateways) that you expect to use [82].
4.  **Reverse-Engineer Winners:** Visit Devpost or past event sites, find the company or theme you are targeting, and analyze the pitches and features of previous winning submissions to model their successful patterns [76, 77].

---

## SECTION 2: Idea Validation & Problem Statement Selection

An elite implementation of a mediocre idea will rarely win [78]. Approximately **75% of hackathon projects fail from the start** because of poor ideation and lack of market relevance [78].

```
                +---------------------------------------+
                |     Is there an EMOTIONAL PULL?      |
                |   Does it solve a real pain point?    |
                +-------------------+-------------------+
                                    | Yes
                                    v
                +---------------------------------------+
                |     Is it SPONSOR-ALIGNED?            |
                |  Does it make their technology shine? |
                +-------------------+-------------------+
                                    | Yes
                                    v
                +---------------------------------------+
                |       Is the DEMO PATH clear?         |
                |   Can a judge experience the "Aha!"?  |
                +-------------------+-------------------+
                                    | Yes
                                    v
                           [ WINNING IDEA ]
```

### 1. The Core Criteria for a Winning Idea
When choosing a problem statement, do not select an idea simply because it seems "easy" or because you assume it has "less competition" [185]. Evaluate your ideas against three pillars:
*   **The Emotional Pull (The Story):** Select a problem that you, your family, or your local community actively face [78]. Grounding your project in a real-world story (e.g., serving underprivileged communities, mental health, or accessibility) creates an immediate psychological connection that makes judges want you to win [78, 79].
*   **Paul Graham's Law:** *"Make something people want."* [194, 195] Avoid building products that are merely "cool" to you; build products that solve acute pain points for actual target users [194, 195].
*   **Technical Feasibility & Team Skills:** Honestly assess if your team has the skills to execute the core functionality within the 24-to-36-hour window [185]. Overpromising in the PPT stage only leads to immediate elimination when you fail to produce a working product in the finals [185].

### 2. The Sponsor API Strategy
Sponsors do not host hackathons out of charity; they do it as a **marketing event** to promote their technologies and acquire developer adoption [122]. Understanding this business incentive is the ultimate hackathon cheat code [122].
*   **Run Market Research at Sponor Booths:** The engineers and representatives staffing the sponsor booths are almost always the **judges** who choose the winners for those sponsored prizes [123]. Do not build in isolation [123]. Go straight to their booths, pitch your ideas, ask what specific features they want to see, and analyze their reactions [125, 126].
*   **Bust Their Codebase:** If you can identify an unresolved bug or a missing feature in a sponsor's SDK/API and build a workaround or solution for it, you are practically guaranteed a top-tier prize [123, 124].
*   **Avoid the "Kitchen Sink" Distraction Trap:** A common beginner blunder is cramming 5 to 10 sponsor APIs (Twilio, Capital One, etc.) into one project just to apply for multiple prizes [79]. This results in highly disjointed, basic apps that make zero sense to judges [79, 80]. Select **one or two** sponsors that genuinely align with your core vision and make their tech shine [79].

### 3. The "Demo Path" Evaluation Framework
Before writing a single line of code, evaluate your brainstormed ideas using the **Demo Path Method** [113].
1.  Formulate a step-by-step path showing exactly how a user and judge will experience your prototype during the final demo [113].
2.  If the demo path is hazy, abstract, or hard to visualize in action, **kill the idea**—no matter how cool or ambitious it sounds [113]. 
3.  If the demo path is highly visual, chronological, and clearly demonstrates the "Aha!" moment of solving the problem, **approve the idea** [113, 114].

---

## SECTION 4: Architectural Planning & UX Setup

Before starting the coding sprint, spend 30 to 45 minutes on structured planning to ensure the team can work in parallel without blocking each other.

### 1. Defining Early API Contracts
The frontend and backend teams must agree on the data structures and communications before coding [116]. 
*   **Write down the payload contract:** For example, if you are building a mapping application, the backend developer and frontend developer must write down the exact JSON contract: *"The backend endpoint `/get-location` will return coordinates `{lat: float, lng: float}` and a timestamp `string`."* [116] 
*   This allows the frontend developer to mock the data and build out the UI while the backend developer builds the database and API logic in parallel [116].

### 2. Rapid Wireframing: Figma vs. Excalidraw
*   **The Figma Trap:** Wasting 3 to 4 hours crafting high-fidelity pixel-perfect designs in Figma is a critical time-sink [134, 135].
*   **The Excalidraw Solution:** Use rapid, low-fidelity wireframing tools (like Excalidraw or pen-and-paper) to map out "box-by-box" where elements go [135]. Get the structural layout approved in 15 minutes, then jump straight into UI coding [135].

### 3. Rapid Prototyping & Visual Tools
*   **UI Scaffolding with v0:** Use AI-scaffolding tools like `v0` to prompt your frontend components, UI layout, loading screens, and search bars [13, 160, 169]. It connects seamlessly with database schemas and generates clean React/Tailwind code instantly [160].
*   **Spline 3D Animations:** A high-end visual landing page captures immediate judge attention [134, 154]. Use Spline’s community library to find pre-made interactive 3D assets (e.g., interactive globes, lightbulbs, or spaceships), hit "Remix", export the React component, and drop it into your landing page [137, 139, 140, 141, 144]. This injects an instant "wow factor" into your UI without requiring weeks of custom 3D design [137, 154].

---

## SECTION 4: Building the MVP (Minimum Viable Product)

A successful hackathon project relies entirely on your MVP [82]. An MVP is **one core, highly polished, working feature** that solves the primary problem [82, 168]. Everything else is an optional bonus [159].

### 1. Tech Shortcuts: Speed Over Scalability
Remember: **A hackathon project is a hack, not a production-ready enterprise system** [127, 131]. Speed is your best friend [135, 153].
*   **Leverage Backend-as-a-Service (BaaS):** Do not write SQL databases, schemas, or servers from scratch. Use Firebase, Supabase, Appwrite, or Hasura [136, 160, 200].
*   **Instant Authentication:** Do not waste hours writing custom user registration, login, JWT verification, and email validation [136]. Outsource 100% of your auth system to third-party services like **Clerk, Auth0, or Appwrite** [136]. Drop their React components in, and your auth is done in 5 minutes [136].
*   **Polished Component Libraries:** Build professional-grade UI elements in seconds using pre-built libraries like **Shadcn UI, DaisyUI, Tailwind CSS, or Bootstrap** instead of writing raw CSS [147, 154].

### 2. Prototyping Shortcuts: Mocking & Spoofing
If you run into blocked APIs, slow network responses, or restricted datasets, **mock it, hardcode it, or spoof it** [10, 127, 168]. 
*   **GPS/Location Spoofing:** If you are building a location-based API app (e.g., Yelp or Google Maps) and you are physically located outside the active API coverage zone, do not spend hours trying to fix the network. **Hardcode/spoof your coordinates** to a major city (like San Francisco) to ensure the API returns perfect results for your demo [168].
*   **Synthetic Datasets:** If a real-world database (e.g., medical billing data or local government records) is unavailable, manufacture a clean synthetic dataset directly inside your repository using ChatGPT [10, 97]. Push it to GitHub and query it locally [11, 12, 14].
*   **Simplify Complex Logic:** If a highly complex technical system (like a precise multi-microphone acoustic gunshot triangulation algorithm) is failing due to sensor limitations, simplify the logic [118]. Change the logic to simply detect which microphone is *closest* to the sound [118]. The demo remains incredibly compelling, the core concept is proved, and you bypass a critical engineering bottleneck [118].

### 3. The AI Era: Strategic Coding vs. "Blind Coding"
The integration of tools like Cursor, Claude, and Codex has revolutionized hackathon development, but it has also introduced a massive failure mode [187, 188, 189].

| AI Coding Method | Execution | Danger / Outcome |
| :--- | :--- | :--- |
| **Blind AI Coding** | Copy-pasting massive prompt requests like *"write this entire project idea for me"* into an LLM [189]. | **Disastrous.** The team has no structural understanding of the code. When a bug inevitably crops up or a judge asks a technical system question, the team scrambles, cannot explain their app, and gets immediately disqualified [188, 189]. |
| **Strategic AI Coding** | Prompting AI for discrete, atomic tasks: boilerplate, db migrations [164], translating Python to JS [94], writing test cases [99], or debugging specific errors [93]. | **Highly Successful.** Speeds up development by 10x, leaving the team fully in control and deeply knowledgeable of the underlying system architecture [189]. |

#### Key ChatGPT/LLM Prototyping Prompts [91, 93, 94, 97-100]
*   **Data Generation:** *"Generate a synthetic CSV dataset containing 100 data points regarding medical billing errors with fields [CPT_Code, Hospital_Name, Cost, Error_Type]."* [97]
*   **Database Migration:** *"Write me a SQL migration file for Supabase with the following table schemas so I can copy-paste it directly."* [164]
*   **Language Translation:** *"Convert the following Python utility function into Next.js TypeScript API route code."* [94]
*   **Interactive UI Consult:** *"Act as a UI/UX design consultant. Review this description of my app and suggest a layout that maximizes user ease while highlighting our 3D elements."* [96]

---

## SECTION 5: Time Management & Final Hours

Distractions, noise, side events, and developer exhaustion are the main reasons teams fail to submit a basic working product [51]. You must operate with a strict temporal roadmap.

### 1. High-Performance Time Allocations
*   **The 50/30/20 Rule (Nishant Chahar):** Spend **50%** of your first day fully understanding the problem statement, talking to users, and designing the solution [196]. Allocate **30%** of your time to intense, structured building [196]. Reserve **20%** of your time purely for preparing and practicing the presentation and slide deck [196].
*   **The 24-Hour Phase-by-Phase Timeline (Harshit Trehan) [52, 53, 54]:**

```
 [Hour 0-4]        [Hour 4-12]        [Hour 12-14]       [Hour 14-18]       [Hour 18-24]
+------------+    +------------+    +------------+    +------------+    +------------+
| UNDERSTAND | -> | BUILD MVP  | -> |  TEST &    | -> | ADD EXTRA  | -> | PITCH &    |
| & DESIGN   |    | Core Func. |    |  DEBUG     |    | FEATURES   |    | PRESENT    |
+------------+    +------------+    +------------+    +------------+    +------------+
```

### 2. The Final Hours Decision: Feature vs. Demo
When you are 2 to 3 hours away from the submission deadline, you will inevitably face a dilemma: *Do we spend this remaining time trying to get one more "nice-to-have" minor feature working, or do we stop coding and focus on the demo video?* [118]
*   **The Golden Rule:** **Stop coding and start working on your demo video immediately.** [118]
*   Sponsors and judges have an incredibly limited window to evaluate projects (sometimes only 30 minutes to review hundreds of submissions) [119]. They will **not** look at your repository, and they will **not** read a long text description [112, 119]. If your demo video is non-existent, poorly recorded, or rushed, your project is functionally dead [54, 119].

---

## SECTION 6: The Demo, Pitch, & Presentation

Presentation plays a more significant role in your hackathon success than the prototype itself [31]. If there are multiple highly capable teams, 90% of their technical features will be identical; what sets winners apart is **how they present their project** and **how clearly they articulate their USPS** [31].

### 1. The 21x Champion Presentation Structure
Follow this proven, 6-step chronological flow to structure your slides and verbal presentation [33]:
1.  **The Problem:** Explain the pain point clearly and emotionally [33]. Hook the audience immediately using one of three methods:
    *   *A compelling Quote:* Related directly to the core struggle [33, 34].
    *   *Direct Statistics:* High-impact data points illustrating the scale of the issue [33].
    *   *A Direct Question:* Prompting the judges to reflect on the pain point [33].
2.  **The Cause:** Explain *why* this problem persists and why current market solutions fail [33].
3.  **The Solution:** Introduce your project with maximum authority [33, 36]: *"To solve this critical gap, Team [Name] presents: [Project Name]."* [36] Show how your features map directly to resolving the cause of the problem [36].
4.  **Unique Selling Propositions (USPs):** This is the core marking criteria judges care about [31, 37]. Highlight what you have cracked that others haven't—this could be a unique supply chain approach, a custom algorithm, a highly optimized data collection flow, or a model with demonstrably superior accuracy [38]. Back this up with evidence (e.g., referencing an IEEE paper, a design framework, or a patent) [38].
5.  **The Chronological Prototype Walkthrough:** Showcase your actual working code in action [33, 41]. (See "The Movie-Like Demo Path" below).
6.  **Business Model & Go-To-Market (GTM) Strategy:** Explain how your product will scale, reach users, and sustain itself financially [33, 39]. Keep it incredibly simple (e.g., a freemium model, flat subscription, or targeting a highly specific niche of early-adopter institutions) [39, 40].

### 2. Sophia Sharif's "Movie-Like" Chronological Demo
Do not present your features in abstract isolation (e.g., showing a login screen, then a search bar, then an API dashboard) [114]. This leaves judges confused about what your product actually does [114].
*   **Tell a Chronological Story:** Frame your demo as a cohesive narrative with a protagonist, a moment of tension, and a clear resolution [114, 115].
*   *Example (The Gunshot Detection App):* Instead of saying *"Here is our sound triangulation feature, and here is our camera integration,"* present it like a movie [114, 115]: 
    > *"A gunshot has just gone off in downtown San Francisco [114, 115]. Instantly, our acoustic sound triangulation sensors detect the decibel spike and pinpoint the precise latitude and longitude [115]. The frontend renders a red alert map on the city official's dashboard [115, 116]. The system immediately queries surrounding residential security cameras, requests their live feeds, and pushes the high-risk video footage directly to emergency dispatchers [115]. Beginning-to-end, our workflow resolves the incident in 12 seconds."* [115]

### 3. Demo Delivery Formats: Minimizing Technical Risk
You have three operational paths for delivering your demo [41, 42]:

| Demo Format | Execution Method | Risk Level | Pros & Cons |
| :--- | :--- | :--- | :--- |
| **Live Demo** | Presenting the application live on stage or directly from your local host machine to judges [41, 42]. | **EXTREMELY HIGH.** | **Pros:** Interactive and highly impressive if successful [74, 85]. <br>**Cons:** Internet connectivity failures, database drops, or unexpected live bugs can instantly ruin your pitch [41, 42]. |
| **Pre-Recorded Video** | Recording a flawless walk-through video of your app prior to presentation [41, 42]. | **EXTREMELY LOW.** | **Pros:** Zero chance of crashes [42]. You can speed up slow LLM/API processing times by running the video at 1.5x/2x speed, edit in visual labels, and deliver a smooth live voiceover [42]. <br>**Cons:** Lacks interactive spontaneity [41]. |
| **Hybrid Demo (The Gold Standard)** | Playing a pre-recorded, labeled 1.5x/2x walkthrough video on the main screen for a flawless pitch [42], while keeping the live application running on a secondary laptop right next to you [41, 42]. | **OPTIMAL.** | **Pros:** Delivers a guaranteed, bulletproof, cinematic presentation while remaining fully prepared to let judges touch, test, and query the live app during Q&A [41, 42]. |

### 4. Q&A Preparation
The Q&A session with judges often lasts significantly longer than your actual pitch [86].
*   **Prepare a Defense Map:** Brainstorm the hardest questions judges might ask (e.g., scalability, API limits, security, data privacy, or model drift) [86, 87].
*   **Pivot to Your Strengths:** Do not get defensive about your weaknesses [87]. Acknowledge them, and immediately pivot back to your core strengths: *"While real-world sensor drift is a known challenge, we optimized our model's accuracy specifically to filter out background city noise, which is our core technological breakthrough."* [87]

---

## SECTION 7: Understanding the Judging Ecosystem

To win, you must understand how your evaluators think.

### 1. General vs. Sponsor Prizes
*   **General Prizes (Vibes-Based ELO):** Elite hackathons (like LA Hacks, Stanford, Berkeley, and MIT) often utilize head-to-head evaluation software called **Gavel** [111]. Judges are shown two projects side-by-side and simply vote on which one is more impressive [111]. It functions like a Chess ELO rating system [112]. There is rarely a rigid rubric; it is overwhelmingly about "vibes" driven by three things: **perceived technical complexity, real-world impact, and product completeness** [112].
*   **Sponsor Prizes (Tech Showcase):** Sponsor prizes are highly objective [111]. They are awarded based on how central their specific tool is to your project [123]. If you use their API as a core engine and make their tech look spectacular, you win [123, 127].

### 2. Devpost Pre-Screening
At major hackathons, judges do not have time to visit all 50+ tables [87]. They will sit in a closed room and pre-screen submissions on Devpost [87]. If your Devpost description is empty or poorly structured, judges will simply skip your table [87]. Spend time writing an explicit, clean, visual Devpost entry well before the submission deadline [87].

### 3. Mastering Table Presence
When open judging begins at your table:
*   **Create a Buzz:** Do not sit quietly waiting for judges [87]. Keep your demo running on multiple screens [87]. Actively invite other hackers, visitors, and organizers to your table to test your app [87].
*   A bustling, crowded table signals a captivating project, naturally drawing judges in and pre-disposing them to a positive "vibes" score [87, 88].

---

## SECTION 8: Synthesis of Major Contradictions

Different seasoned experts hold directly opposing views on key hackathon strategies. Analyze these contradictions to select the strategy that matches your team's specific capabilities:

### 1. Sleep vs. All-Nighter
*   **The All-Nighter School:** Advocates staying up for 36 to 38 hours straight to maximize every second of hacking [27, 67].
*   **The Sleep/Nap School:** Advocates taking scheduled 4-to-5-hour naps to keep the brain fresh, prevent coding burnout, and preserve emotional energy [24, 156, 164].
*   *Playbook Recommendation (Synthesis):* If your project relies on highly complex system integration (where small syntax bugs can break the entire app), **prioritize scheduled naps** [156, 164]. Mental fatigue leads to circular debugging loops that waste hours [15, 16, 51]. If your project is highly modular and relies on raw volume of code, lean toward the all-nighter, but stay heavily fueled with consistent snacking [67].

### 2. Design Perfection (Figma) vs. Build Speed
*   **The High-Fidelity School:** Argues that design is what sells first [154] and a high-fidelity visual aesthetic is mandatory to stand out [134].
*   **The Speed/Excalidraw School:** Warns that spending hours in Figma is a massive time-sink [134, 135] and teams should build directly in code using standard layouts [135].
*   *Playbook Recommendation (Synthesis):* **Do not use Figma.** Instead, use rapid wireframing (Excalidraw) for structural layout [135], and outsource your UI styling to AI visual generators (like v0) and pre-built component libraries (like Shadcn UI) [13, 154, 160]. This achieves a stunning, high-fidelity aesthetic at maximum speed [154].

### 3. Live Demo vs. Pre-Recorded Video
*   **The Live Interactive School:** Emphasizes that "seeing is believing" and giving judges a tangible, interactive experience is the ultimate differentiator [74, 85].
*   **The Pre-Recorded Safest School:** Argues that live demos are high-risk threats due to network failure, and pre-recorded videos played at 1.5x/2x speed are mathematically superior [42].
*   *Playbook Recommendation (Synthesis):* **Always use the Hybrid Approach** [41, 42]. Pitch using a polished, 1.5x speed pre-recorded video to guarantee a flawless delivery within your 3-minute limit, but have the live app running on a laptop ready for judges to test during the Q&A [41, 42].

---

## SUMMARY CHECKLIST FOR YOUR REAL-TIME RUN

Use this checklist during your hackathon to keep your team aligned:

*   [ ] **Hour -4 (Pre-Start):** Verify the SPOC registration is complete [175] and download the official slide template [177].
*   [ ] **Hour 1-2:** Visit sponsor booths, ask engineers about their codebase pain points, and pitch early ideas [123, 125, 126].
*   [ ] **Hour 3:** Construct the "Demo Path" for your top 3 ideas and kill any idea that lacks a clear, visual climax [113, 114].
*   [ ] **Hour 4:** Agree on explicit API Contracts and build low-fidelity Excalidraw wireframes [116, 135].
*   [ ] **Hour 5-12 (MVP Sprint):** Scaffold UI with v0 [160] and drop in Spline 3D assets [137]. Hook up instant auth (Clerk) [136] and BaaS (Supabase) [160].
*   [ ] **Hour 13-14 (Debug & Polish):** Test and debug. If location API fails, hardcode your location coordinates immediately [168]. 
*   [ ] **Hour 15-18 (Edge Features):** Add nice-to-have features or challenge requirements to build your competitive edge [53, 56].
*   [ ] **Hour 19-22 (Demo & Video Sprint):** STOP coding [118]. Record a clean walk-through video, speed it up to 1.5x/2x, and write your Devpost entry [42, 87].
*   [ ] **Hour 23-24 (Pitch Rehearsal):** Refine your Dreamer 21x pitch structure, focusing heavily on your USPs and chronological movie-like story [33, 114]. 
*   [ ] **Judging Round:** Create a bustling table atmosphere and guide judges through the chronological story [87, 114].
