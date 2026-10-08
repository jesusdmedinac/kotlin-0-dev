# Kotlin Tour: Scope Functions

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-intermediate-scope-functions.html](https://kotlinlang.org/docs/kotlin-tour-intermediate-scope-functions.html)
* **Breadcrumbs:** Take Kotlin tour / Intermediate / Scope functions
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Scope Functions Overview
Kotlin standard library provides five **scope functions** whose sole purpose is to execute a block of code within the context of an object. Inside the lambda, a temporary scope is formed where the object is referenced without its full name.

They differ strictly by two characteristics:
1. **How the context object is referenced:** via `this` (lambda receiver) or via `it` (lambda argument).
2. **What value is returned:** the context object itself or the result of the lambda expression.

---

### Comparison Matrix

| Function | Context Reference | Return Value | Primary Idiomatic Use Case |
|---|---|---|---|
| **`let`** | `it` | Lambda result | Executing code on non-null objects (`?.let`) and local data transformations. |
| **`apply`** | `this` | Context object | Object configuration and property assignment upon instantiation. |
| **`run`** | `this` | Lambda result | Object configuration AND computing a result value. |
| **`also`** | `it` | Context object | Additional side effects (logging, debugging, metric reporting) without altering the chain. |
| **`with`** | `this` | Lambda result | Calling multiple functions/properties on an object without repeating its name (non-extension: `with(obj) { ... }`). |

---

### Idiomatic Examples

#### 1. `let` (Safe calls and transformations)
```kotlin
val nullableName: String? = "Kotlin"
val length = nullableName?.let {
    // Only runs if nullableName is not null
    it.length
}
```

#### 2. `apply` (Object initialization)
```kotlin
val client = HttpClient().apply {
    token = "auth_token_xyz"
    timeout = 5000
}
```

#### 3. `also` (Side effects / logging)
```kotlin
val numbers = mutableListOf("one", "two", "three")
numbers
    .also { println("Populating list: $it") }
    .add("four")
```

#### 4. `with` (Batch operations on an object)
```kotlin
val canvas = Canvas()
with(canvas) {
    rect(0, 0, 100, 100)
    circ(50, 50, 25)
    text(10, 10, "Title")
}
```

---

## 2. Official Practice & Exercises

### Exercise 1: Rewrite using safe calls and `let`
**Task:** Rewrite `getPriceInEuros()` as a single-expression function using safe calls `?.` and `let`.

#### Starter Code:
```kotlin
data class ProductInfo(val priceInDollars: Double?)

class Product {
    fun getProductInfo(): ProductInfo? = ProductInfo(100.0)
}

// Rewrite this function
fun Product.getPriceInEuros(): Double? {
    val info = getProductInfo()
    if (info == null) return null
    val price = info.priceInDollars
    if (price == null) return null
    return convertToEuros(price)
}

fun convertToEuros(dollars: Double): Double = dollars * 0.85
```

#### Official Solution:
```kotlin
fun Product.getPriceInEuros(): Double? =
    getProductInfo()?.priceInDollars?.let { convertToEuros(it) }
```

---

### Exercise 2: Chain `apply` and `also`
**Task:** Update a user's email using `apply` and log `Updating email for user with ID: ${it.id}` using `also`.

#### Official Solution:
```kotlin
data class User(val id: Int, var email: String)

fun updateEmail(user: User, newEmail: String): User = user.apply {
    this.email = newEmail
}.also { println("Updating email for user with ID: ${it.id}") }

fun main() {
    val user = User(1, "old@example.com")
    val updated = updateEmail(user, "new@example.com")
    println(updated)
}
```

---

## 3. Related Official Links
* [Scope functions documentation](https://kotlinlang.org/docs/scope-functions.html)
* [Next Chapter: Lambda expressions with receiver](https://kotlinlang.org/docs/kotlin-tour-intermediate-lambdas-receiver.html)
