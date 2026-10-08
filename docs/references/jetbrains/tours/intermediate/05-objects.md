# Kotlin Tour: Objects & Companion Objects

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-intermediate-objects.html](https://kotlinlang.org/docs/kotlin-tour-intermediate-objects.html)
* **Breadcrumbs:** Take Kotlin tour / Intermediate / Objects
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Object Declarations (Singletons)
Kotlin elevates the **Singleton pattern** to a native language construct using `object`:
* Thread-safe by default.
* Lazily initialized on the first time it is accessed.
* Can implement interfaces and inherit from classes.

```kotlin
interface DatabaseConnection {
    fun connect()
}

object AppDatabase : DatabaseConnection {
    val url = "jdbc:postgresql://localhost:5432/db"
    override fun connect() = println("Connecting to $url...")
}
```

---

### Object Expressions (Anonymous Objects)
Object expressions create objects of anonymous classes on the fly. They replace Java's anonymous inner classes:

```kotlin
val listener = object : MouseAdapter() {
    override fun mouseClicked(e: MouseEvent) { /* handle click */ }
}
```

---

### Companion Objects
Kotlin does not feature the `static` keyword. To associate methods and constants directly with a class rather than instances, declare a `companion object`:
* Can access private members of the enclosing class.
* Can implement interfaces and hold **Factory Methods**.
* Callers invoke members directly on the class name: `User.create(...)`.

```kotlin
class User private constructor(val name: String) {
    companion object {
        fun createGuest(): User = User("Guest")
    }
}
```

---

## 2. Official Practice & Exercises

### Exercise 1: Singleton Object implementing an Interface
**Task:** Create a singleton object `FlyingSkateboard` implementing `Vehicle`.

#### Official Solution:
```kotlin
interface Vehicle {
    val name: String
    fun move(): String
}

object FlyingSkateboard : Vehicle {
    override val name = "Flying Skateboard"
    override fun move() = "Glides through the air with a hover engine"
    fun fly(): String = "Woooooooo"
}

fun main() {
    println("${FlyingSkateboard.name}: ${FlyingSkateboard.move()}")
    println("${FlyingSkateboard.name}: ${FlyingSkateboard.fly()}")
}
```

---

### Exercise 2: Validate Email via Companion Object
**Task:** Implement `isValidEmail` inside a `companion object` on `User` to validate candidates prior to instance construction.

#### Official Solution:
```kotlin
data class User(val name: String, val email: String) {
    companion object {
        fun isValidEmail(email: String): Boolean =
            email.contains('@') && email.contains('.')
    }
}

fun main() {
    val candidates = listOf(
        Pair("Alice", "alice@example.com"),
        Pair("Bob", "bob2example-com")
    )

    for ((name, email) in candidates) {
        if (User.isValidEmail(email)) {
            val user = User(name, email)
            println("Registered: ${user.name}, ${user.email}")
        } else {
            println("Error: '$email' is not valid.")
        }
    }
}
```

---

## 3. Related Official Links
* [Object declarations and expressions](https://kotlinlang.org/docs/object-declarations.html)
* [Companion objects](https://kotlinlang.org/docs/object-declarations.html#companion-objects)
* [Next Chapter: Open and special classes](https://kotlinlang.org/docs/kotlin-tour-intermediate-open-special-classes.html)
