# Kotlin Tour: Extension Functions

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-intermediate-extension-functions.html](https://kotlinlang.org/docs/kotlin-tour-intermediate-extension-functions.html)
* **Breadcrumbs:** Take Kotlin tour / Intermediate / Extension functions
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Definition and Syntax
In software engineering, you often need to augment an existing class with new capabilities without modifying its original source code or inheriting from it (e.g., third-party libraries or JDK classes).

Kotlin allows this via **extension functions**:
* Prefix the function name with the class to extend followed by a dot `.`.
* The extended class or instance is called the **receiver**.
* Inside the function body, the receiver instance is accessed using the keyword `this`.

```kotlin
fun String.bold(): String = "<b>$this</b>"

fun main() {
    // "hello" is the receiver instance
    println("hello".bold()) // <b>hello</b>
}
```

### Extension-Oriented Design
Extension functions enable **extension-oriented architectural design**: keeping a core class minimal, lean, and focused on essential primitives, while providing specialized ergonomics as separate extension functions.

**Case Study: Ktor's `HttpClient`**
* The core engine only provides a single primitive function: `request(method, url, headers)`.
* Common HTTP actions (`get()`, `post()`, `delete()`) are implemented as extensions that delegate to `request()`:

```kotlin
class HttpClient {
    fun request(method: String, url: String, headers: Map<String, String>): HttpResponse {
        // Core low-level networking logic
        return HttpResponse("Response from $url")
    }
}

// Ergonomic extension functions
fun HttpClient.get(url: String): HttpResponse = request("GET", url, emptyMap())
fun HttpClient.post(url: String): HttpResponse = request("POST", url, emptyMap())
```

This prevents bloating the core class while maintaining high cohesion.

---

## 2. Official Practice & Exercises

### Exercise 1: Check whether an integer is positive
**Task:** Write an extension function `isPositive` on `Int` checking if it is positive (`> 0`).

#### Official Solution:
```kotlin
fun Int.isPositive(): Boolean = this > 0

fun main() {
    println(1.isPositive())  // true
    println((-5).isPositive()) // false
}
```

---

### Exercise 2: Convert a string to lowercase
**Task:** Write an extension function `toLowercaseString` on `String` returning its lowercase version.

#### Official Solution:
```kotlin
fun String.toLowercaseString(): String = this.lowercase()

fun main() {
    println("Hello World!".toLowercaseString()) // hello world!
}
```

---

## 3. Related Official Links
* [Extensions documentation](https://kotlinlang.org/docs/extensions.html)
* [Next Chapter: Scope functions](https://kotlinlang.org/docs/kotlin-tour-intermediate-scope-functions.html)
