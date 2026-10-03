# Live Sessions Pedagogical Feedback & Traceability Tracker

This document maintains the end-to-end traceability between live classroom observations (recorded and synthesized by Gemini) and the engineering/pedagogical issues created to improve the courses in the Desde0 ecosystem.

---

## Executive Status Dashboard

| Course | Lesson / Session | Date | Source Notes | Status | Key Findings | Linked Issues |
|---|---|---|---|---|---|---|
| **Course 2** (Beginners) | L1: Matutino | 2026-09-12 | [`L1-Matutino.md`](./course-2/Desde0%20-%20Kotlin%20para%20principiantes%20-%20Matutino_%202026_09_12%2008_56%20PDT%20-%20Notas%20de%20Gemini.md) | ✅ Analyzed & Tracked | Bytecode decompilation, `MainKt`, Annotations vs Decorators, Git branch friction | [#14](https://github.com/jesusdmedinac/kotlin-0-dev/issues/14), [#15](https://github.com/jesusdmedinac/kotlin-0-dev/issues/15), [#16](https://github.com/jesusdmedinac/kotlin-0-dev/issues/16) |
| **Course 2** (Beginners) | L1: Vespertino | 2026-09-12 | [`L1-Vespertino.md`](./course-2/Desde0%20-%20Kotlin%20para%20principiantes%20-%20Vespertino_%202026_09_12%2016_06%20PDT%20-%20Notas%20de%20Gemini.md) | ✅ Analyzed & Tracked | Low-spec hardware (RAM bottleneck), VS Code alternative, macOS CLI tools, Gradle black box | [#13](https://github.com/jesusdmedinac/kotlin-0-dev/issues/13), [#14](https://github.com/jesusdmedinac/kotlin-0-dev/issues/14), [#15](https://github.com/jesusdmedinac/kotlin-0-dev/issues/15), [#16](https://github.com/jesusdmedinac/kotlin-0-dev/issues/16) |
| **Course 2** (Beginners) | L2: Matutino | 2026-09-19 | [`L2-Matutino.md`](./course-2/Desde0%20-%20Kotlin%20para%20principiantes%20-%20Matutino_%202026_09_19%2009_00%20PDT%20-%20Notas%20de%20Gemini.md) | ✅ Analyzed & Tracked | Terminal input stream in Gradle, Tony Hoare Billion Dollar Mistake, `val` vs object mutability, `KotlinNullPointerException` deprecation | [#17](https://github.com/jesusdmedinac/kotlin-0-dev/issues/17), [#18](https://github.com/jesusdmedinac/kotlin-0-dev/issues/18), [#19](https://github.com/jesusdmedinac/kotlin-0-dev/issues/19) |
| **Course 2** (Beginners) | L2: Vespertino | 2026-09-19 | [`L2-Vespertino.md`](./course-2/Desde0%20-%20Kotlin%20para%20principiantes%20-%20Vespertino_%202026_09_19%2015_59%20PDT%20-%20Notas%20de%20Gemini.md) | ✅ Analyzed & Tracked | C#/.NET mental models (`.kt` vs `.cs`, Gradle vs NuGet), `!!` operator ("yelling at compiler"), `isNotBlank()` / `isNullOrBlank()` | [#17](https://github.com/jesusdmedinac/kotlin-0-dev/issues/17), [#18](https://github.com/jesusdmedinac/kotlin-0-dev/issues/18), [#20](https://github.com/jesusdmedinac/kotlin-0-dev/issues/20) |

---

## Detailed Session Audit & Findings Mapping

### 1. Course 2 - Lesson 1: Morning Session (Matutino)
* **Date:** 2026-09-12 (08:56 PDT)
* **Instructor:** Jesús Daniel Medina Cruz
* **Attendees:** Justin Martínez, Martín Amaro
* **Student Profile:** Engineering background (JS/TS, Rust). High curiosity for compiler internals, bytecode, and lower-level JVM abstractions.
* **Raw Document:** [`course-2/Desde0 - Kotlin para principiantes - Matutino_ 2026_09_12 08_56 PDT - Notas de Gemini.md`](./course-2/Desde0%20-%20Kotlin%20para%20principiantes%20-%20Matutino_%202026_09_12%2008_56%20PDT%20-%20Notas%20de%20Gemini.md)

#### Extracted Pedagogical Insights & Issues:
1. **JVM Class Requirements & `MainKt` Synthesis:**
   - *Observation:* Students asked why top-level functions in `Main.kt` generate a `MainKt.class` file. Explaining that the JVM specification forbids standalone functions (everything must reside in a class) sparked high engagement.
   - *Mapped Issue:* **[#15 - feat(l1): enrich under-the-hood section with bytecode decompilation, MainKt, and annotations vs decorators](https://github.com/jesusdmedinac/kotlin-0-dev/issues/15)**
2. **Bytecode Decompilation in IntelliJ:**
   - *Observation:* Demonstrating `Tools -> Kotlin -> Show Kotlin Bytecode -> Decompile` gave students immediate insight into how Kotlin syntax compiles to Java bytecode.
   - *Mapped Issue:* **[#15](https://github.com/jesusdmedinac/kotlin-0-dev/issues/15)**
3. **Annotations vs Decorators:**
   - *Observation:* Discussion arose regarding `@file:JvmName` vs TypeScript decorators. Needed conceptual distinction: annotations provide metadata to compiler/runtime without altering code, whereas TS/Python decorators wrap and actively modify execution.
   - *Mapped Issue:* **[#15](https://github.com/jesusdmedinac/kotlin-0-dev/issues/15)**
4. **Git Workflow Friction:**
   - *Observation:* Confusion between `git checkout` vs `git switch` and managing tags/branches during the lab.
   - *Mapped Issue:* **[#16 - docs(l1-l2): add git tag navigation guide and bridge recap to lesson 2](https://github.com/jesusdmedinac/kotlin-0-dev/issues/16)**

---

### 2. Course 2 - Lesson 1: Afternoon Session (Vespertino)
* **Date:** 2026-09-12 (16:06 PDT)
* **Instructor:** Jesús Daniel Medina Cruz
* **Attendee:** Samantha Enríquez
* **Student Profile:** Novice Kotlin programmer, prior experience in lighter environments / Python / web. Hardware constraints (low RAM).
* **Raw Document:** [`course-2/Desde0 - Kotlin para principiantes - Vespertino_ 2026_09_12 16_06 PDT - Notas de Gemini.md`](./course-2/Desde0%20-%20Kotlin%20para%20principiantes%20-%20Vespertino_%202026_09_12%2016_06%20PDT%20-%20Notas%20de%20Gemini.md)

#### Extracted Pedagogical Insights & Issues:
1. **Hardware & Environment Bottlenecks:**
   - *Observation:* IntelliJ IDEA / Android Studio consumed excessive RAM on low-spec hardware, causing system freezes. Required switching to Visual Studio Code with JetBrains Kotlin extension. Additionally, macOS required `xcode-select --install` to use Git CLI.
   - *Mapped Issue:* **[#13 - feat(l1): add lightweight setup guide (VS Code & macOS CLI tools)](https://github.com/jesusdmedinac/kotlin-0-dev/issues/13)**
2. **Gradle as an Opaque "Black Box":**
   - *Observation:* Student wondered if Gradle dependencies are equivalent to API calls or npm packages. Needed clear mental models comparing Gradle and `libs.versions.toml` to `npm`/`Cargo` and `package.json`.
   - *Mapped Issue:* **[#14 - feat(l1): add Gradle project anatomy and dependency analogies](https://github.com/jesusdmedinac/kotlin-0-dev/issues/14)**
3. **Pacing & Bridge to Lesson 2:**
   - *Observation:* Setting up the environment, understanding bytecode, and running Hello World occupied the entire 2 hours. The student paused to consolidate locally before jumping to Lesson 2, demonstrating the necessity of a warm recap at the start of Lesson 2.
   - *Mapped Issue:* **[#16 - docs(l1-l2): add git tag navigation guide and bridge recap to lesson 2](https://github.com/jesusdmedinac/kotlin-0-dev/issues/16)**

---

### 3. Course 2 - Lesson 2: Morning Session (Matutino)
* **Date:** 2026-09-19 (09:00 PDT)
* **Instructor:** Jesús Daniel Medina Cruz
* **Attendee:** Martín Amaro
* **Student Profile:** Advanced conceptual curiosity, transitioning deeper into type systems and CLI execution loops.
* **Raw Document:** [`course-2/Desde0 - Kotlin para principiantes - Matutino_ 2026_09_19 09_00 PDT - Notas de Gemini.md`](./course-2/Desde0%20-%20Kotlin%20para%20principiantes%20-%20Matutino_%202026_09_19%2009_00%20PDT%20-%20Notas%20de%20Gemini.md)

#### Extracted Pedagogical Insights & Issues:
1. **Interactive Terminal Input in Gradle (`standardInput`):**
   - *Observation:* Running `./gradlew run` fails to capture user keyboard input for `readln()` / `readLine()`. Required defining `tasks.named<JavaExec>("run") { standardInput = System.`in` }` in `build.gradle.kts`.
   - *Mapped Issue:* **[#17 - feat(l2): configure interactive terminal input in Gradle (standardInput = System.in)](https://github.com/jesusdmedinac/kotlin-0-dev/issues/17)**
2. **Reference Immutability (`val`) vs Object Mutability:**
   - *Observation:* Crucial distinction that `val` seals the memory reference/pointer but does not freeze internal mutable structures like `MutableList`.
   - *Mapped Issue:* **[#18 - feat(l2): expand null safety origins, reference vs object immutability, and .NET analogies](https://github.com/jesusdmedinac/kotlin-0-dev/issues/18)**
3. **Historical Origins of Null References:**
   - *Observation:* Tony Hoare's 1965 "Billion Dollar Mistake" in Algol W provides essential context for why Kotlin's type system handles nullability at compile time.
   - *Mapped Issue:* **[#18](https://github.com/jesusdmedinac/kotlin-0-dev/issues/18)**
4. **Historical Deprecation of `KotlinNullPointerException`:**
   - *Observation:* In Kotlin 1.4, `KotlinNullPointerException` was deprecated in favor of standard JVM `java.lang.NullPointerException` for bytecode optimization (Android R8) and platform consistency.
   - *Mapped Issue:* **[#19 - docs(l2): document KotlinNullPointerException historical deprecation in Kotlin 1.4](https://github.com/jesusdmedinac/kotlin-0-dev/issues/19)**

---

### 4. Course 2 - Lesson 2: Afternoon Session (Vespertino)
* **Date:** 2026-09-19 (15:59 PDT)
* **Instructor:** Jesús Daniel Medina Cruz
* **Attendee:** Mar Cabrera
* **Student Profile:** Seasoned developer with C# / .NET / C++ / Blazor background. Excellent intuition for language parallels.
* **Raw Document:** [`course-2/Desde0 - Kotlin para principiantes - Vespertino_ 2026_09_19 15_59 PDT - Notas de Gemini.md`](./course-2/Desde0%20-%20Kotlin%20para%20principiantes%20-%20Vespertino_%202026_09_19%2015_59%20PDT%20-%20Notas%20de%20Gemini.md)

#### Extracted Pedagogical Insights & Issues:
1. **C# / .NET Mental Model Parallels:**
   - *Observation:* The student instantly connected Kotlin concepts with .NET: `.kt` = `.cs`, `.kts` = scripts, JVM = CLR/Runtime, Gradle = MSBuild/NuGet. Capturing these analogies helps developers migrating from Microsoft ecosystems.
   - *Mapped Issues:* **[#18 - feat(l2): expand null safety origins, reference vs object immutability, and .NET analogies](https://github.com/jesusdmedinac/kotlin-0-dev/issues/18)** (Lesson 2) & **[#20 - feat(curriculum): integrate .NET and multi-ecosystem mental models across Course 2 syllabus](https://github.com/jesusdmedinac/kotlin-0-dev/issues/20)** (Curriculum-wide)
2. **Intuitive Operators & String Validations:**
   - *Observation:* Descriptive understanding of `!!` as "yelling at the compiler", and leveraging Kotlin standard library helpers like `readlnOrNull()`, `isNotBlank()`, and `isNullOrBlank()`.
   - *Mapped Issue:* **[#18](https://github.com/jesusdmedinac/kotlin-0-dev/issues/18)**
3. **Gradle Terminal Input Stream:**
   - *Observation:* Confirmed the issue of Gradle running without an input stream, reinforcing the need for Issue #17.
   - *Mapped Issue:* **[#17](https://github.com/jesusdmedinac/kotlin-0-dev/issues/17)**

---

## Action Plan & Issue Registry

| Issue # | Title | Type | Target Scope | Status |
|---|---|---|---|---|
| [#13](https://github.com/jesusdmedinac/kotlin-0-dev/issues/13) | `feat(l1): add lightweight setup guide (VS Code & macOS CLI tools)` | Feature / Docs | `src/content/docs/course-2-beginners/01-environment-and-hello-world.mdx` | 🟡 Open |
| [#14](https://github.com/jesusdmedinac/kotlin-0-dev/issues/14) | `feat(l1): add Gradle project anatomy and dependency analogies` | Feature / Pedagogy | `src/content/docs/course-2-beginners/01-environment-and-hello-world.mdx` | 🟢 Resolved in PR |
| [#15](https://github.com/jesusdmedinac/kotlin-0-dev/issues/15) | `feat(l1): enrich under-the-hood section with bytecode decompilation, MainKt, and annotations vs decorators` | Feature / Pedagogy | `src/content/docs/course-2-beginners/01-environment-and-hello-world.mdx` | 🟡 Open |
| [#16](https://github.com/jesusdmedinac/kotlin-0-dev/issues/16) | `docs(l1-l2): add git tag navigation guide and bridge recap to lesson 2` | Documentation | `01-environment-and-hello-world.mdx` & `02-variables-and-null-safety.mdx` | 🟡 Open |
| [#17](https://github.com/jesusdmedinac/kotlin-0-dev/issues/17) | `feat(l2): configure interactive terminal input in Gradle (standardInput = System.in)` | Feature / Lab | `src/content/docs/course-2-beginners/02-variables-and-null-safety.mdx` | 🟡 Open |
| [#18](https://github.com/jesusdmedinac/kotlin-0-dev/issues/18) | `feat(l2): expand null safety origins, reference vs object immutability, and .NET analogies` | Feature / Pedagogy | `src/content/docs/course-2-beginners/02-variables-and-null-safety.mdx` | 🟢 Resolved in PR |
| [#19](https://github.com/jesusdmedinac/kotlin-0-dev/issues/19) | `docs(l2): document KotlinNullPointerException historical deprecation in Kotlin 1.4` | Documentation | `src/content/docs/course-2-beginners/02-variables-and-null-safety.mdx` | 🟡 Open |
| [#20](https://github.com/jesusdmedinac/kotlin-0-dev/issues/20) | `feat(curriculum): integrate .NET and multi-ecosystem mental models across Course 2 syllabus` | Feature / Curriculum | `docs/features/course-2-beginners/dotnet_ecosystem_analogies.feature` | 🟢 Resolved in PR |

---

## Feedback Intake Protocol for Future Sessions
When a new live class concludes:
1. Export Gemini notes in Markdown and save inside `docs/feedback/<course-id>/<filename>.md`.
2. Add the metadata header banner to the note file marking status as `Pending Analysis`.
3. Agent analyzes the note against the lesson's target goals and student friction.
4. Agent opens GitHub Issues using `gh issue create` with the `🔍 Traceability & Source` section.
5. Update this `FEEDBACK_TRACKER.md` with new entries and linked issue numbers.
6. Address issues atomically through Git branches/worktrees and PRs linked with `Closes #<id>`.
