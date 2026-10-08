# Kotlin Tour: Hello World

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-hello-world.html](https://kotlinlang.org/docs/kotlin-tour-hello-world.html)
* **Breadcrumbs:** Take Kotlin tour / Beginner / Hello world
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Program Entry Point and Functions
* In Kotlin, `fun` is the keyword used to declare a function.
* The `main()` function is the predefined entry point where program execution begins.
* The body of a function is enclosed within curly braces `{}`.
* `println()` and `print()` print their arguments to standard output (`println()` appends a newline).

```kotlin
fun main() {
    println("Hello, world!")
    // Hello, world!
}
```

### Variables: Immutability by Default
In Kotlin, data storage uses two distinct keywords:
* **`val` (Read-only):** Declares a variable whose value cannot be reassigned once initialized.
* **`var` (Mutable):** Declares a variable whose value can be reassigned.

> **Official JetBrains Recommendation:** Declare all variables as read-only (`val`) by default. Only use mutable variables (`var`) if strictly necessary, minimizing accidental side effects.

Variables can also be declared outside the `main()` function at the top level of a file (**top-level variables**).

```kotlin
fun main() {
    val popcorn = 5    // There are 5 boxes of popcorn (read-only)
    val hotdog = 7     // There are 7 hotdogs (read-only)
    var customers = 10 // There are 10 customers in the queue (mutable)
    
    // Some customers leave the queue
    customers = 8
    println(customers)
    // 8
}
```

### String Templates
String templates evaluate and embed variables and expressions directly into double-quoted strings:
* **Simple variable lookup:** Prefix with a dollar sign `$variable`.
* **Arbitrary expressions:** Enclose the expression in curly braces `${expression}`.

```kotlin
fun main() {
    val customers = 10
    println("There are $customers customers")
    // There are 10 customers
    
    println("There are ${customers + 1} customers")
    // There are 11 customers
}
```

### Type Inference
In the examples above, no explicit type annotations were required. Kotlin's compiler automatically inferred the `Int` type from the literal values.

---

## 2. Official Practice & Exercises

### Exercise: Print a statement using string templates
**Task:** Complete the code to make the program print `"Mary is 20 years old"` to standard output.

#### Starter Code:
```kotlin
fun main() {
    val name = "Mary"
    val age = 20
    // Write your code here
}
```

#### Official Solution:
```kotlin
fun main() {
    val name = "Mary"
    val age = 20
    println("$name is $age years old")
}
```

---

## 3. Related Official Links
* [Strings and string templates](https://kotlinlang.org/docs/strings.html#string-templates)
* [Standard library `println()`](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.io/println.html)
* [Next Chapter: Basic types](https://kotlinlang.org/docs/kotlin-tour-basic-types.html)
