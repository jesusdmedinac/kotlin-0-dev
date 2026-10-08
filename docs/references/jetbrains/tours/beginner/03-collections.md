# Kotlin Tour: Collections

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-collections.html](https://kotlinlang.org/docs/kotlin-tour-collections.html)
* **Breadcrumbs:** Take Kotlin tour / Beginner / Collections
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

Kotlin provides three core collection types, each with explicit **Read-only** and **Mutable** variants:

```
Collection Hierarchy:
├── List  / MutableList (Ordered, allows duplicates, indexed access)
├── Set   / MutableSet  (Unordered, unique items only)
└── Map   / MutableMap  (Key-value pairs, unique keys, allows duplicate values)
```

### 1. Lists
An ordered collection where elements can be accessed by their integer index (0-based):
* **Read-only:** `listOf("apple", "banana", "cherry")`
* **Mutable:** `mutableListOf("apple", "banana", "cherry")`

```kotlin
fun main() {
    val shapes = listOf("triangle", "square", "circle")
    println("The first item is ${shapes[0]}")
    println("First: ${shapes.first()}, Last: ${shapes.last()}")
    println("Total count: ${shapes.count()}")
    println("circle" in shapes) // true

    val mutableShapes = mutableListOf("triangle", "square")
    mutableShapes.add("pentagon")
    mutableShapes.remove("triangle")
}
```

### 2. Sets
An unordered collection that guarantees element uniqueness. Duplicate additions are dropped:
* **Read-only:** `setOf("apple", "banana", "cherry")`
* **Mutable:** `mutableSetOf("apple", "banana", "cherry")`

```kotlin
fun main() {
    val fruit = setOf("apple", "banana", "cherry", "cherry")
    println(fruit) // [apple, banana, cherry] (duplicates dropped)
    println("banana" in fruit) // true
    println(fruit.count())     // 3
}
```

> **Note:** Because sets are unordered, they do not support indexed access (`fruit[0]` does not exist).

### 3. Maps
Collections storing key-value pairs. Keys must be unique; values can be duplicated:
* **Read-only:** `mapOf("apple" to 100, "kiwi" to 190)`
* **Mutable:** `mutableMapOf("apple" to 100, "kiwi" to 190)`

```kotlin
fun main() {
    val menu = mapOf("apple" to 100, "kiwi" to 190)
    println(menu["apple"]) // 100
    println(menu.keys)     // [apple, kiwi]
    println(menu.values)   // [100, 190]
    println("apple" in menu) // true
}
```

### Read-Only Views (Defensive Immutability)
To prevent modifications to a mutable collection without allocating a new copy, assign it to a read-only interface reference:

```kotlin
val juiceMenu: MutableMap<String, Int> = mutableMapOf("apple" to 100)
val juiceMenuLocked: Map<String, Int> = juiceMenu // Read-only view
```

---

## 2. Official Practice & Exercises

### Exercise 1: Count the total number of items in two lists
**Task:** Complete the code to print the total count of numbers across two lists.

#### Starter Code:
```kotlin
fun main() {
    val greenNumbers = listOf(1, 4, 23)
    val redNumbers = listOf(17, 2)
    // Write your code here
}
```

#### Official Solution:
```kotlin
fun main() {
    val greenNumbers = listOf(1, 4, 23)
    val redNumbers = listOf(17, 2)
    val totalCount = greenNumbers.count() + redNumbers.count()
    println(totalCount)
}
```

---

### Exercise 2: Check whether a requested protocol is supported
**Task:** Check if the requested protocol exists in the supported server protocols set (case-insensitive check, `isSupported` must be Boolean).

#### Starter Code:
```kotlin
fun main() {
    val SUPPORTED = setOf("HTTP", "HTTPS", "FTP")
    val requested = "smtp"
    val isSupported = // Write your code here 
    println("Support for $requested: $isSupported")
}
```

#### Official Solution:
```kotlin
fun main() {
    val SUPPORTED = setOf("HTTP", "HTTPS", "FTP")
    val requested = "smtp"
    val isSupported = requested.uppercase() in SUPPORTED
    println("Support for $requested: $isSupported")
}
```

---

### Exercise 3: Spell out a number using a map
**Task:** Define a map relating integers 1..3 to their English word spelling and look up the word for `n = 2`.

#### Starter Code:
```kotlin
fun main() {
    val number2word = // Write your code here
    val n = 2
    println("$n is spelled as '${<Write your code here >}'")
}
```

#### Official Solution:
```kotlin
fun main() {
    val number2word = mapOf(1 to "one", 2 to "two", 3 to "three")
    val n = 2
    println("$n is spelled as '${number2word[n]}'")
}
```

---

## 3. Related Official Links
* [Collections overview](https://kotlinlang.org/docs/collections-overview.html)
* [Next Chapter: Control flow](https://kotlinlang.org/docs/kotlin-tour-control-flow.html)
