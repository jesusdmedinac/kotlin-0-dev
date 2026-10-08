# Kotlin Tour: Classes & Data Classes

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-classes.html](https://kotlinlang.org/docs/kotlin-tour-classes.html)
* **Breadcrumbs:** Take Kotlin tour / Beginner / Classes
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Class Declarations and Constructors
In Kotlin, classes are declared using `class`. Properties can be declared directly inside the **primary constructor** in the class header:
* `val` creates a read-only property with a getter.
* `var` creates a mutable property with a getter and setter.
* Creating an instance **never requires the `new` keyword**.

```kotlin
class Contact(val id: Int, var email: String) {
    fun printId() {
        println("Contact ID: $id")
    }
}

fun main() {
    val contact = Contact(1, "mary@gmail.com")
    println(contact.email) // mary@gmail.com
    contact.email = "jane@gmail.com"
    contact.printId()      // Contact ID: 1
}
```

### Data Classes (`data class`)
In software engineering, classes frequently exist solely to hold structured state. Kotlin introduces `data class` to eliminate boilerplate:

```kotlin
data class User(val name: String, val id: Int)
```

The compiler automatically generates the following methods based on properties declared in the primary constructor:
1. **`toString()`:** Formatted human-readable output (e.g., `User(name=Alex, id=1)`).
2. **`equals()` & `hashCode()`:** Structural equality based on property values rather than memory references (`user1 == user2`).
3. **`copy()`:** Creates a shallow copy while allowing selective overrides:
   ```kotlin
   val alex = User("Alex", 1)
   val updatedAlex = alex.copy(id = 2)
   ```
4. **`componentN()` functions:** Enables destructuring declarations (`val (name, id) = user`).

---

## 2. Official Practice & Exercises

### Exercise: Random Employee Generator
**Task:**
1. Define a data class `Employee` with a read-only `name: String` and mutable `salary: Int`.
2. Define a class `RandomEmployeeGenerator` taking `minSalary: Int` and `maxSalary: Int`, with a list of names and a `generateEmployee()` function using `kotlin.random.Random`.

#### Official Solution:
```kotlin
import kotlin.random.Random

data class Employee(val name: String, var salary: Int)

class RandomEmployeeGenerator(var minSalary: Int, var maxSalary: Int) {
    val names = listOf("John", "Mary", "Ann", "Paul", "Jack", "Elizabeth")
    fun generateEmployee() =
        Employee(
            name = names.random(),
            salary = Random.nextInt(from = minSalary, until = maxSalary)
        )
}

fun main() {
    val empGen = RandomEmployeeGenerator(10, 30)
    println(empGen.generateEmployee())
    empGen.minSalary = 50
    empGen.maxSalary = 100
    println(empGen.generateEmployee())
}
```

---

## 3. Related Official Links
* [Classes documentation](https://kotlinlang.org/docs/classes.html)
* [Data classes reference](https://kotlinlang.org/docs/data-classes.html)
* [Next Chapter: Null safety](https://kotlinlang.org/docs/kotlin-tour-null-safety.html)
