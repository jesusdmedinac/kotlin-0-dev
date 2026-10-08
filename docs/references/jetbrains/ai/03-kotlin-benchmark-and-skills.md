# The Kotlin Benchmark & Agent Skills Standard

* **Official Source:** 
  * [The Kotlin Benchmark by JetBrains](https://kotlinlang.org/benchmark/)
  * [Kotlin AI Skills](https://kotlinlang.org/docs/kotlin-ai-skills.html)
* **Breadcrumbs:** Development tooling / AI development / Benchmark & Agent Skills
* **Target Version:** Modern Kotlin 2.x

---

## 1. The Kotlin Benchmark by JetBrains

The **Kotlin Benchmark** (`https://kotlinlang.org/benchmark/`) is JetBrains' official evaluation suite created to benchmark AI coding agents on realistic, idiomatic Kotlin software engineering tasks.

### Evaluation Dimensions:
* **Resolution Rate (%):** Percentage of complex software engineering issue tasks successfully resolved and verified via test suites.
* **Token Efficiency (Avg Tokens M):** Total input, output, and reasoning tokens consumed to reach a solution.
* **Latency (Avg Latency):** Wall-clock time required for the agent to analyze the repository, propose edits, and pass validation suites.

### Benchmark Setup & Model Rankings:
The benchmark rigorously tracks state-of-the-art coding agents against real-world Kotlin repositories:
* **Top Evaluated Agents:** Claude Code (Anthropic), Junie (JetBrains' native AI agent), OpenAI Codex, and Google Gemini CLI.
* **Core Benchmark Finding:** Real-world Kotlin tasks test not only syntax completion, but type safety resolution, multiplatform source set boundary enforcement, coroutine cancellation safety, and Gradle DSL configuration correctness.

---

## 2. Kotlin AI Skills (Agent Skills Standard)

JetBrains maintains an open repository of standardized **AI Skills** (`https://github.com/Kotlin/kotlin-agent-skills`) following the [Agent Skills standard](https://agentskills.io).

### What is an AI Skill?
An AI Skill is a structured markdown and script package that gives an autonomous AI coding agent deterministic context, API rules, prerequisites, and step-by-step verification procedures *before* it begins executing modifications.

```
Agent Skill Structure
├── 1. SKILL.md (YAML frontmatter + explicit workflow rules)
├── 2. Prerequisites & Preflight Checks
├── 3. Step-by-Step Execution Rules
└── 4. Verification & Linting Commands
```

### Official JetBrains Curated Workflows:

#### 1. Java to Kotlin Migration (`kotlin-tooling-java-to-kotlin`)
* **Purpose:** Converts Java source files into idiomatic Kotlin while preserving behavioral parity.
* **Key Tasks:** Replaces getters/setters with properties, translates static methods into companion objects or top-level functions, converts `Optional<T>` to nullable types `T?`, and refactors nullability annotations.

#### 2. Android Gradle Plugin 9 Migration (`kotlin-tooling-agp9-migration`)
* **Purpose:** Migrates multiplatform projects with Android targets to the modern AGP 9 architecture.
* **Key Tasks:** Updates Gradle build scripts, replaces deprecated Android DSL blocks, and configures modern namespace declarations.

#### 3. CocoaPods to Swift Package Manager Migration (`kotlin-tooling-cocoapods-spm-migration`)
* **Purpose:** Migrates Kotlin Multiplatform iOS dependency integration from legacy CocoaPods to native SwiftPM.
* **Key Tasks:** Removes `cocoapods` Gradle plugin block, generates Swift Package definitions, and aligns Xcode framework search paths.

---

## 3. Official Reference Links
* [The Kotlin Benchmark](https://kotlinlang.org/benchmark/)
* [Kotlin AI Skills Documentation](https://kotlinlang.org/docs/kotlin-ai-skills.html)
* [Kotlin Agent Skills GitHub Repository](https://github.com/Kotlin/kotlin-agent-skills)
