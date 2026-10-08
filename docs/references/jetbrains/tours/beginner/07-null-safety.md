# Kotlin Tour: Null Safety

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-null-safety.html](https://kotlinlang.org/docs/kotlin-tour-null-safety.html)
* **Breadcrumbs:** Take Kotlin tour / Beginner / Null safety
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### The Null Pointer Prevention Paradigm
Kotlin's type system is designed to eliminate `NullPointerException` (The "Billion Dollar Mistake") at compile time. By default, regular types **cannot** hold `null` values:

```kotlin
var neverNull: String = "Hello"
// neverNull = null // Compilation error!
```

To explicitly allow a variable to hold `null`, its type must be marked with a question mark `?`:

```kotlin
var nullable: String? = "Hello"
nullable = null // Perfectly valid
```

### Safe Calls (`?.`)
Attempting to directly call a method on a nullable type is a compile-time error. You must use the **safe call operator** `?.`. If the receiver is `null`, the expression evaluates to `null` instead of throwing an exception:

```kotlin
fun main() {
    val nullString: String? = null
    println(nullString?.uppercase()) // null (No NullPointerException thrown)
}
```

Safe calls can be safely chained: `person?.address?.city?.uppercase()`.

### The Elvis Operator (`?:`)
The **Elvis operator** `?:` provides a default fallback value whenever a nullable expression evaluates to `null`:
* If the left-hand expression is not null, it is returned.
* If the left-hand expression is null, the right-hand expression is evaluated and returned.

```kotlin
fun main() {
    val nullString: String? = null
    val length: Int = nullString?.length ?: 0
    println(length) // 0
}
```

---

## 2. Official Practice & Exercises

### Exercise: Calculate an employee's salary
**Task:** Given `employeeById(id: Int): Employee?` which returns `null` if the employee does not exist, write `salaryById(id: Int)` returning their salary or `0` if missing.

#### Starter Code:
```kotlin
data class Employee(val name: String, var salary: Int)

fun employeeById(id: Int) = when(id) {
    1 -> Employee("Mary", 20)
    2 -> null
    3 -> Employee("John", 21)
    4 -> Employee("Ann", 23)
    else -> null
}

fun salaryById(id: Int) = // Write your code here

fun main() {
    println((1..5).sumOf { id -> salaryById(id) })
}
```

#### Official Solution:
```kotlin
fun salaryById(id: Int) = employeeById(id)?.salary ?: 0
```

---

## 3. Related Official Links
* [Null safety documentation](https://kotlinlang.org/docs/null-safety.html)
* [Next Step: Intermediate Tour](https://kotlinlang.org/docs/kotlin-tour-intermediate-extension-functions.html)
