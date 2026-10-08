# Kotlin Tour: Basic Types

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-basic-types.html](https://kotlinlang.org/docs/kotlin-tour-basic-types.html)
* **Breadcrumbs:** Take Kotlin tour / Beginner / Basic types
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### The Basic Type Hierarchy
In Kotlin, everything is an object in the sense that you can call member functions and properties on any variable. Kotlin provides standard built-in types:

| Category | Type | Description & Example Literal |
|---|---|---|
| **Integers** | `Byte`, `Short`, `Int`, `Long` | Whole numbers. Default integer literal is `Int` (e.g., `1000`). Large numbers support underscores: `100_000_000_000_000L` (`Long`). |
| **Floating-point** | `Float`, `Double` | Fractional numbers. Default floating-point literal is `Double` (e.g., `3.14`). Append `f` or `F` for `Float` (`3.14f`). |
| **Booleans** | `Boolean` | Truth values: `true` or `false`. |
| **Characters** | `Char` | Single characters in single quotes: `'a'`, `'\n'`. |
| **Strings** | `String` | Text sequence enclosed in double quotes: `"Hello"`. |

### Type Inference vs. Explicit Type Annotations
Kotlin has powerful type inference. When you assign an initial value, you do not need to declare the type:

```kotlin
val inferredInt = 10       // Inferred as Int
val inferredDouble = 3.14  // Inferred as Double
val inferredString = "Hi"  // Inferred as String
```

To declare the type explicitly, append a colon `:` followed by the type name after the variable name:

```kotlin
val customers: Int = 10
val pi: Double = 3.14159
val greeting: String = "Welcome"
```

### Uninitialized Variables and Compilation Guarantees
Variables can be declared first and initialized later, but **must be initialized before their first read access**. Failing to do so triggers a compilation error:

```kotlin
fun main() {
    val d: Int
    
    // Compilation error: Variable 'd' must be initialized
    // println(d)
    
    d = 42
    println(d) // 42 (Valid)
}
```

---

## 2. Official Practice & Exercises

### Exercise: Declare explicit types for variables
**Task:** Explicitly declare the correct type for each variable in the starter code.

#### Starter Code:
```kotlin
fun main() {
    val a: Int = 1000 
    val b = "log message"
    val c = 3.14
    val d = 100_000_000_000_000
    val e = false
    val f = '\n'
}
```

#### Official Solution:
```kotlin
fun main() {
    val a: Int = 1000
    val b: String = "log message"
    val c: Double = 3.14
    val d: Long = 100_000_000_000_000
    val e: Boolean = false
    val f: Char = '\n'
}
```

---

## 3. Related Official Links
* [Basic types reference](https://kotlinlang.org/docs/basic-types.html)
* [Numbers reference](https://kotlinlang.org/docs/numbers.html)
* [Next Chapter: Collections](https://kotlinlang.org/docs/kotlin-tour-collections.html)
