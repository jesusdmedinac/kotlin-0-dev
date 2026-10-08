# Interactive Learning: Kotlin Playground & Kotlin Koans

* **Official Source:** 
  * [Kotlin Playground](https://play.kotlinlang.org/)
  * [Kotlin Koans Overview](https://play.kotlinlang.org/koans)
  * [Kotlin Koans Documentation](https://kotlinlang.org/docs/koans.html)
* **Breadcrumbs:** Learning materials / Interactive practice / Koans & Playground
* **Target Version:** Modern Kotlin 2.x

---

## 1. Kotlin Playground: In-Browser Execution Runtime

The **Kotlin Playground** (`https://play.kotlinlang.org/`) provides an interactive in-browser compiler and REPL for running and sharing Kotlin code snippets.

### Architecture & Capabilities:
* **Multiple Target Platforms:** Can compile and run code targeting JVM, JavaScript, and WebAssembly (Wasm/GC).
* **Compiler Configuration:** Allows selecting Kotlin language versions (including latest stable and EAP previews).
* **Embeddable Widgets:** The Kotlin Playground can be embedded into any documentation website via the `<script src="https://unpkg.com/kotlin-playground@1"></script>` script, transforming static `<code class="run-kotlin">` blocks into editable, executable interactive sandboxes.

---

## 2. Kotlin Koans: Failing Unit Test Methodology

**Kotlin Koans** are a series of exercises created by JetBrains designed to help developers (particularly those transitioning from Java) become fluent in idiomatic Kotlin syntax and standard library functions.

```
Koans Execution Lifecycle
┌─────────────────────────────────┐
│       Problem Statement         │
│  "Make the following test pass" │
└────────────────┬────────────────┘
                 │
┌────────────────▼────────────────┐
│       Starter Code (TODO)       │
│  fun start(): String = TODO()   │
└────────────────┬────────────────┘
                 │ student implements
┌────────────────▼────────────────┐
│       Unit Test Execution       │
│   assertEquals("OK", start())   │
└────────────────┬────────────────┘
                 │
      ┌──────────┴──────────┐
      ▼                     ▼
[Test Fails]          [Test Passes]
Re-read hints         Proceed to next Koan
```

### Educational Design Principles:
1. **Failing Unit Tests First:** Each exercise is framed not as an abstract prompt, but as a concrete failing unit test.
2. **`TODO()` Stubbing:** Starter code uses Kotlin's built-in `TODO()` function (which throws `NotImplementedError` at runtime), signaling exactly where student code is required.
3. **Progressive Idiom Discovery:** Topics progress systematically:
   * **Introduction:** Named arguments, default values, lambdas, string templates.
   * **Conventions:** Comparison, operators, range to, for loop, destructuring.
   * **Collections:** `filter`, `map`, `all`, `none`, `find`, `count`, `groupBy`, `partition`, `flatMap`, `maxOrNull`, `sort`, `fold`.
   * **Properties:** Custom accessors, lazy properties, observable properties, delegates.
   * **Builders:** Function literals with receiver, HTML builders.
   * **Generics:** Generic functions, variance (`in`/`out`).

---

## 3. Running Environments

### 1. In-Browser:
Directly on [play.kotlinlang.org/koans](https://play.kotlinlang.org/koans) with interactive "Show answer" checks.

### 2. In IDE (IntelliJ IDEA / Android Studio):
Using the **JetBrains Academy Plugin** (`jetbrains-academy`):
* Interactive local Gradle project.
* Local compiler feedback, inspections, and "Peek solution" action.
* Repository source: [Kotlin/kotlin-koans-edu](https://github.com/Kotlin/kotlin-koans-edu).

---

## 4. Official Reference Links
* [Kotlin Playground Online](https://play.kotlinlang.org/)
* [Kotlin Koans Online](https://play.kotlinlang.org/koans)
* [Kotlin Koans GitHub Repository](https://github.com/Kotlin/kotlin-koans-edu)
