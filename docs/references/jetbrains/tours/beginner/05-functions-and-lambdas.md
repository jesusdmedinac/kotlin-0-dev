# Kotlin Tour: Functions & Lambdas

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-functions.html](https://kotlinlang.org/docs/kotlin-tour-functions.html)
* **Breadcrumbs:** Take Kotlin tour / Beginner / Functions
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Function Declarations
Functions are declared using `fun`. Parameters require explicit types. The return type follows the parameter list after a colon `:`. If a function does not return a useful value, its return type is `Unit` (which can be omitted).

```kotlin
fun hello(): Unit {
    println("Hello, world!")
}

fun sum(x: Int, y: Int): Int {
    return x + y
}
```

### Named Arguments & Default Parameter Values
To make function invocations flexible and prevent constructor telescoping:
* **Default values:** Parameters can specify fallback defaults using `=`.
* **Named arguments:** Callers can explicitly specify parameter names, reordering them at will.

```kotlin
fun printMessageWithPrefix(message: String, prefix: String = "Info") {
    println("[$prefix] $message")
}

fun main() {
    printMessageWithPrefix("Welcome")                // [Info] Welcome
    printMessageWithPrefix("Error found", prefix = "Warn") // [Warn] Error found
    printMessageWithPrefix(prefix = "Log", message = "System start") // [Log] System start
}
```

### Single-Expression Functions
When a function's body consists of a single expression, the curly braces can be omitted and replaced with `=`. The return type can also be inferred:

```kotlin
fun sum(x: Int, y: Int) = x + y
```

---

### Lambda Expressions
Lambdas are anonymous functions written within curly braces `{}`:
* Parameters are followed by an arrow `->`.
* The body follows the arrow.
* The last expression inside the body is the implicit return value.

```kotlin
val upperCase = { text: String -> text.uppercase() }
println(upperCase("hello")) // HELLO
```

### Trailing Lambdas & The `it` Keyword
Kotlin promotes idiomatic functional ergonomics:
1. **Trailing Lambda Syntax:** If a function's last parameter is a lambda, the lambda expression can be placed outside the parentheses `()`. If the lambda is the only argument, parentheses can be omitted entirely.
2. **Implicit `it` parameter:** If a lambda has exactly one parameter, you can omit its name and refer to it as `it`.

```kotlin
val numbers = listOf(1, -2, 3, -4, 5)

// Standard
val positives = numbers.filter({ x -> x > 0 })

// Idiomatic: trailing lambda + implicit it
val doubled = numbers.map { it * 2 }
```

### Function Types
Functions in Kotlin are first-class citizens and have explicit types:
* Syntax: `(ParamType1, ParamType2) -> ReturnType`
* Example: `(Int) -> String` or `() -> Unit`

Functions can accept other functions as parameters or return them:

```kotlin
fun toSeconds(time: String): (Int) -> Int = when (time) {
    "hour" -> { value -> value * 3600 }
    "minute" -> { value -> value * 60 }
    "second" -> { value -> value }
    else -> { value -> value }
}
```

---

## 2. Official Practice & Exercises

### Exercise 1: Transform collection with lambda
**Task:** Transform a list of URL actions into full paths using `.map()` and string templates.

#### Starter Code:
```kotlin
fun main() {
    val actions = listOf("title", "year", "author")
    val prefix = "https://example.com/book-info"
    val id = 5
    val urls = // Write your code here
    println(urls)
}
```

#### Official Solution:
```kotlin
fun main() {
    val actions = listOf("title", "year", "author")
    val prefix = "https://example.com/book-info"
    val id = 5
    val urls = actions.map { action -> "$prefix/$id/$action" }
    println(urls)
}
```

---

### Exercise 2: Repeat an action multiple times (Higher-Order Function)
**Task:** Write a function `repeatN` taking an `Int` and an action `() -> Unit` that repeats the action `n` times.

#### Starter Code:
```kotlin
fun repeatN(n: Int, action: () -> Unit) {
    // Write your code here
}

fun main() {
    // Write your code here
}
```

#### Official Solution:
```kotlin
fun repeatN(n: Int, action: () -> Unit) {
    for (i in 1..n) {
        action()
    }
}

fun main() {
    repeatN(5) {
        println("Hello")
    }
}
```

---

## 3. Related Official Links
* [Functions documentation](https://kotlinlang.org/docs/functions.html)
* [Higher-order functions and lambdas](https://kotlinlang.org/docs/lambdas.html)
* [Next Chapter: Classes](https://kotlinlang.org/docs/kotlin-tour-classes.html)
