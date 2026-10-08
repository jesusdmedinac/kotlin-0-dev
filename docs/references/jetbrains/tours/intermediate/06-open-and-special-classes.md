# Kotlin Tour: Open and Special Classes

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-intermediate-open-special-classes.html](https://kotlinlang.org/docs/kotlin-tour-intermediate-open-special-classes.html)
* **Breadcrumbs:** Take Kotlin tour / Intermediate / Open and special classes
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Final by Default & The `open` Keyword
In Kotlin, classes and methods are `final` by default to prevent accidental inheritance anti-patterns (Effective Java: "Design and document for inheritance or else prohibit it").
* To allow a class to be subclassed, mark it `open`.
* To allow a member function or property to be overridden, mark it `open`.

```kotlin
open class Vehicle {
    open fun drive() = println("Driving...")
}

class Car : Vehicle() {
    override fun drive() = println("Driving a car...")
}
```

---

### Sealed Classes and Interfaces (`sealed`)
`sealed class` and `sealed interface` represent restricted class hierarchies where all direct subclasses are known at compile time:

* **Exhaustiveness in `when`:** Because the compiler knows every possible subclass, `when` expressions on sealed types do not require a fallback `else` branch. If a new subclass is added later, the compiler immediately flags unhandled branches across the codebase.
* Ideal for UI State, Network Results, and Domain Events.

```kotlin
sealed interface NetworkResult {
    data class Success(val data: String) : NetworkResult
    data class Failure(val error: Throwable) : NetworkResult
    data object Loading : NetworkResult
}
```

---

### Enum Classes (`enum class`)
Model fixed sets of discrete constants. Enums can have properties and member functions:

```kotlin
enum class Direction(val degrees: Int) {
    NORTH(0), EAST(90), SOUTH(180), WEST(270);
    fun isOpposite(other: Direction): Boolean = (this.degrees + 180) % 360 == other.degrees
}
```

---

### Inline Value Classes (`value class`)
Introduce strong domain typing without heap allocation penalties:
* Declared as `@JvmInline value class TypeName(val underlyingValue: UnderlyingType)`.
* At compile time, instances are represented directly by their underlying primitive or reference, avoiding memory overhead.

```kotlin
@JvmInline
value class Email(val address: String)

fun send(email: Email) { /* Inlined at runtime to String */ }
```

---

## 2. Official Practice & Exercises

### Exercise 1: Model Delivery Statuses with a Sealed Class
**Task:** Model package tracking states using a `sealed class DeliveryStatus` with `Pending`, `InTransit`, `Delivered`, and `Canceled`.

#### Official Solution:
```kotlin
sealed class DeliveryStatus {
    data class Pending(val sender: String) : DeliveryStatus()
    data class InTransit(val estimatedDeliveryDate: String) : DeliveryStatus()
    data class Delivered(val deliveryDate: String, val recipient: String) : DeliveryStatus()
    data class Canceled(val reason: String) : DeliveryStatus()
}

fun printDeliveryStatus(status: DeliveryStatus) {
    // Exhaustive when - no 'else' needed
    when (status) {
        is DeliveryStatus.Pending -> println("Pending pickup from ${status.sender}.")
        is DeliveryStatus.InTransit -> println("In transit, arrives ${status.estimatedDeliveryDate}.")
        is DeliveryStatus.Delivered -> println("Delivered to ${status.recipient} on ${status.deliveryDate}.")
        is DeliveryStatus.Canceled -> println("Canceled due to: ${status.reason}.")
    }
}
```

---

### Exercise 2: Combine Sealed Classes with Enum Classes
**Task:** Define a `sealed class Status` with states `Loading`, `OK`, and `Error`, where `Error` holds an inner `enum class Problem { NETWORK, TIMEOUT, UNKNOWN }`.

#### Official Solution:
```kotlin
sealed class Status {
    data object Loading : Status()
    data class Error(val problem: Problem) : Status() {
        enum class Problem {
            NETWORK,
            TIMEOUT,
            UNKNOWN
        }
    }
    data class OK(val data: List<String>) : Status()
}

fun handleStatus(status: Status) {
    when (status) {
        is Status.Loading -> println("Loading...")
        is Status.OK -> println("Data received: ${status.data}")
        is Status.Error -> when (status.problem) {
            Status.Error.Problem.NETWORK -> println("Network issue")
            Status.Error.Problem.TIMEOUT -> println("Request timed out")
            Status.Error.Problem.UNKNOWN -> println("Unknown error occurred")
        }
    }
}
```

---

## 3. Related Official Links
* [Sealed classes documentation](https://kotlinlang.org/docs/sealed-classes.html)
* [Inline value classes](https://kotlinlang.org/docs/inline-classes.html)
* [Next Chapter: Properties](https://kotlinlang.org/docs/kotlin-tour-intermediate-properties.html)
