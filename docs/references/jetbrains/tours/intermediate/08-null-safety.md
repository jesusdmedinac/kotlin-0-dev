# Kotlin Tour: Advanced Null Safety & Idiomatic Guard Clauses

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-intermediate-null-safety.html](https://kotlinlang.org/docs/kotlin-tour-intermediate-null-safety.html)
* **Breadcrumbs:** Take Kotlin tour / Intermediate / Null safety
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Safe Type Casts (`as?`)
Standard type casting with `as` throws a `ClassCastException` if types do not match. The **safe cast operator** `as?` returns `null` instead:

```kotlin
val obj: Any = "A string"
val num: Int? = obj as? Int // num is null (no crash)
```

---

### Collection Null-Safe Operations
The Kotlin standard library provides specialized higher-order collection functions to manage nullability safely:

* **`listOfNotNull(...)`:** Omits all `null` items upon creation.
* **`filterNotNull()`:** Returns a list containing only non-null elements of a nullable collection.
* **`mapNotNull { ... }`:** Maps and filters in a single pass, dropping any `null` results.
* **`firstOrNull { ... }` / `reduceOrNull { ... }`:** Returns `null` safely if no match is found or if the collection is empty.

---

### Functional Filtering: `takeIf` and `takeUnless`
* **`takeIf`:** Returns the context object if the predicate is `true`, otherwise returns `null`.
* **`takeUnless`:** Returns the context object if the predicate is `false`, otherwise returns `null`.

```kotlin
val validAge = age.takeIf { it >= 18 } // null if under 18
```

---

### Early Returns with Elvis (`?: return`)
The Elvis operator `?:` can be paired with control-flow jump expressions like `return`, `throw`, or `break`. This enables concise **guard clauses**, eliminating pyramid-of-doom nested checks:

```kotlin
fun getNumberOfFriends(users: Map<Int, User>, userId: Int): Int {
    // Guard clause: return early if user is missing
    val user = users[userId] ?: return -1
    return user.friends.size
}
```

---

## 2. Official Practice & Exercises

### Exercise 1: Filter Active Usernames with `mapNotNull` and `takeIf`
**Task:** Given a list of `User(username, isActive)`, return only the usernames of active users using `mapNotNull` and `takeIf`.

#### Official Solution:
```kotlin
data class User(val username: String, val isActive: Boolean)

fun getActiveUsernames(users: List<User>): List<String> =
    users.mapNotNull { user -> user.username.takeIf { user.isActive } }

fun main() {
    val allUsers = listOf(
        User("alice123", true),
        User("bob_builder", false),
        User("charlie99", true)
    )
    println(getActiveUsernames(allUsers)) // [alice123, charlie99]
}
```

---

### Exercise 2: Validate Stock with Early Return Guard Clauses
**Task:** Complete `validateStock(requested: Int?, available: Int?): Int` using early returns and `?: return -1` to validate nulls and boundary constraints.

#### Official Solution:
```kotlin
fun validateStock(requested: Int?, available: Int?): Int {
    val validRequested = requested ?: return -1
    val validAvailable = available ?: return -1

    if (validRequested < 0) return -1
    if (validRequested > validAvailable) return -1

    return validRequested
}

fun main() {
    println(validateStock(5, 10))   // 5
    println(validateStock(null, 10))// -1
    println(validateStock(-2, 10))  // -1
    println(validateStock(12, 10))  // -1
}
```

---

## 3. Related Official Links
* [Null safety documentation](https://kotlinlang.org/docs/null-safety.html)
* [Returns and jumps](https://kotlinlang.org/docs/returns.html)
* [Next Chapter: Libraries and APIs](https://kotlinlang.org/docs/kotlin-tour-intermediate-libraries-and-apis.html)
