# Kotlin Tour: Standard Libraries and APIs

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-intermediate-libraries-and-apis.html](https://kotlinlang.org/docs/kotlin-tour-intermediate-libraries-and-apis.html)
* **Breadcrumbs:** Take Kotlin tour / Intermediate / Libraries and APIs
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### The Kotlin Standard Library (`kotlin-stdlib`)
The Kotlin Standard Library provides essential core utilities designed for multiplatform interoperability:

#### 1. Mathematics (`kotlin.math`)
Cross-platform mathematical functions and constants:
* Trigonometry, logarithms, powers (`Double.pow(n)`), roots, and rounding (`round()`, `floor()`, `ceil()`).
* Mathematical constants: `PI`, `E`.

```kotlin
import kotlin.math.*

val result = 2.0.pow(8) // 256.0
val hyp = hypot(3.0, 4.0) // 5.0
```

#### 2. Time & Durations (`kotlin.time`)
Precise, idiomatic time measurement and duration calculations without external libraries:
* `Duration`: Represents time spans with arithmetic (`5.seconds`, `10.milliseconds`).
* `measureTime { ... }`: Measures code block execution time returning a `Duration`.
* `measureTimedValue { ... }`: Measures execution time while returning the computation result and duration.

```kotlin
import kotlin.time.measureTime

val elapsed = measureTime {
    Thread.sleep(100)
}
println("Took: $elapsed") // e.g., 102ms
```

---

### API Evolution and the Opt-In Mechanism
To evolve libraries safely without breaking backward compatibility, Kotlin uses an explicit **opt-in mechanism**:
* Experimental or rapidly evolving APIs are annotated with an opt-in requirement (e.g., `@ExperimentalStdlibApi`).
* Consuming code must explicitly acknowledge the experimental status using:
  ```kotlin
  @OptIn(ExperimentalStdlibApi::class)
  ```
  or configure the compiler argument `-opt-in=...`.

---

## 2. Official Practice & Exercises

### Exercise 1: Compound Interest Calculation with `kotlin.math`
**Task:** Calculate compound interest using the formula $A = P \times (1 + r/n)^{nt}$ with `kotlin.math.pow`.

#### Official Solution:
```kotlin
import kotlin.math.pow

fun calculateCompoundInterest(P: Double, r: Double, n: Int, t: Int): Double {
    return P * (1 + r / n).pow(n * t)
}

fun main() {
    val principal = 1000.0
    val rate = 0.05
    val timesCompounded = 4
    val years = 5
    val amount = calculateCompoundInterest(principal, rate, timesCompounded, years)
    println("The accumulated amount is: $amount")
    // 1282.0372317085844
}
```

---

### Exercise 2: Benchmarking Data Processing with `kotlin.time`
**Task:** Measure execution duration for generating and filtering a list of 1,000 items using `measureTime`.

#### Official Solution:
```kotlin
import kotlin.time.measureTime

fun main() {
    val timeTaken = measureTime {
        val data = List(1000) { it * 2 }
        val filtered = data.filter { it % 3 == 0 }
        val processed = filtered.map { it / 2 }
        println("Processed data count: ${processed.size}")
    }

    println("Time taken: $timeTaken")
}
```

---

### Exercise 3: Opt In to an Experimental Standard Library Feature
**Task:** Write the annotation to opt in to an experimental API guarded by `@ExperimentalStdlibApi`.

#### Official Solution:
```kotlin
@OptIn(ExperimentalStdlibApi::class)
```

---

## 3. Related Official Links
* [Standard library documentation](https://kotlinlang.org/api/latest/jvm/stdlib/)
* [Opt-in requirements](https://kotlinlang.org/docs/opt-in-requirements.html)
* [Time measurement](https://kotlinlang.org/api/core/kotlin-stdlib/kotlin.time/)
