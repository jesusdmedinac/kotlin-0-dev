# Kotlin Tour: Classes and Interfaces

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-intermediate-classes-interfaces.html](https://kotlinlang.org/docs/kotlin-tour-intermediate-classes-interfaces.html)
* **Breadcrumbs:** Take Kotlin tour / Intermediate / Classes and interfaces
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Interfaces and Default Implementations
Interfaces in Kotlin declare abstract contracts as well as methods with **default implementations**:
* Unlike Java 7 or earlier, interface methods can contain implementation logic directly.
* A class can implement multiple interfaces separated by commas `,`.
* Overriding any method or property requires the mandatory `override` keyword.

```kotlin
interface FoodConsumer {
    fun eat()
    fun pay(amount: Int) = println("Paid $amount bucks!") // Default implementation
}

abstract class Person(val name: String) {
    abstract fun greet()
}

class Customer(name: String) : Person(name), FoodConsumer {
    override fun greet() = println("Hi, I'm $name")
    override fun eat() = println("Eating lunch...")
}
```

---

### Interface Delegation (`by` keyword)
A major architectural feature in Kotlin is native **first-class delegation**, implementing the Decorator Pattern without boilerplate:

Instead of manually forwarding every interface call to an internal delegate:
```kotlin
// Boilerplate approach (Traditional OOP):
class CanvasSession(val tool: DrawingTool) : DrawingTool {
    override val color get() = tool.color
    override fun draw(shape: String) = tool.draw(shape)
    override fun erase(area: String) = tool.erase(area)
}
```

In Kotlin, you delegate using the `by` keyword:
```kotlin
class CanvasSession(val tool: DrawingTool) : DrawingTool by tool {
    // Only override what you want to change:
    override val color = "blue"
}
```
The Kotlin compiler generates all forwarding bridge methods automatically.

---

## 2. Official Practice & Exercises

### Exercise: Decorator Pattern with Interface Delegation
**Task:** Given an interface `Messenger` and `BasicMessenger`, implement `SmartMessenger` that delegates to `BasicMessenger` using `by`, but overrides `sendMessage` to log a smart message and forward it with a `[smart]` prefix.

#### Official Solution:
```kotlin
interface Messenger {
    fun sendMessage(message: String)
    fun receiveMessage(): String
}

class BasicMessenger : Messenger {
    override fun sendMessage(message: String) {
        println("Sending message: $message")
    }

    override fun receiveMessage(): String {
        return "You've got a new message!"
    }
}

class SmartMessenger(val basicMessenger: BasicMessenger) : Messenger by basicMessenger {
    override fun sendMessage(message: String) {
        println("Sending a smart message: $message")
        basicMessenger.sendMessage("[smart] $message")
    }
}

fun main() {
    val basic = BasicMessenger()
    val smart = SmartMessenger(basic)
    
    println(smart.receiveMessage()) // Delegated to basic
    smart.sendMessage("Hello!")     // Custom decorated override
}
```

---

## 3. Related Official Links
* [Interfaces documentation](https://kotlinlang.org/docs/interfaces.html)
* [Delegation documentation](https://kotlinlang.org/docs/delegation.html)
* [Next Chapter: Objects](https://kotlinlang.org/docs/kotlin-tour-intermediate-objects.html)
