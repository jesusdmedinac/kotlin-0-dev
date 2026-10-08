# Kotlin Tour: Lambda Expressions with Receiver

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-intermediate-lambdas-receiver.html](https://kotlinlang.org/docs/kotlin-tour-intermediate-lambdas-receiver.html)
* **Breadcrumbs:** Take Kotlin tour / Intermediate / Lambda expressions with receiver
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Function Types with Receiver
A lambda expression with a receiver combines extension functions and lambda expressions. The syntax defines the receiver type before the parentheses:

$$\text{Syntax: } \texttt{ReceiverType.() -> ReturnType}$$

Inside the body of such a lambda, the instance of `ReceiverType` becomes an **implicit `this`**. All members and properties of the receiver can be accessed directly without prefixing.

```kotlin
// Definition:
val isLongString: String.() -> Boolean = { this.length > 10 }

fun main() {
    println("Kotlin".isLongString()) // false
}
```

### The Architectural Role in DSLs and Builders
Lambdas with receivers are the fundamental building block of **Kotlin Type-Safe Builders and DSLs** (used in Gradle Kotlin DSL, Ktor routing, Compose UI, and standard builders like `buildList` and `buildString`):

```kotlin
// buildList has signature: buildList(builderAction: MutableList<E>.() -> Unit): List<E>
val fruits = buildList {
    add("Apple")    // this.add("Apple")
    add("Banana")   // this.add("Banana")
}
```

---

## 2. Official Practice & Exercises

### Exercise 1: UI Button Event Callback
**Task:** Define a `Button.onEvent` method taking a lambda with receiver `ButtonEvent.() -> Unit` and invoke it on a synthesized `ButtonEvent`.

#### Official Solution:
```kotlin
data class Position(val x: Int, val y: Int)

data class ButtonEvent(
    val isRightClick: Boolean,
    val amount: Int,
    val position: Position
)

class Button {
    fun onEvent(action: ButtonEvent.() -> Unit) {
        val event = ButtonEvent(
            isRightClick = false,
            amount = 2,
            position = Position(100, 200)
        )
        event.action() // Execute lambda on event receiver
    }
}

fun main() {
    val button = Button()
    button.onEvent {
        // Direct property access on ButtonEvent receiver
        if (!isRightClick && amount == 2) {
            println("Double click!")
        }
    }
}
```

---

### Exercise 2: Create an Incremented List using `buildList`
**Task:** Write an extension function `List<Int>.incremented()` that creates a copy of the list where every element is incremented by 1 using `buildList`.

#### Official Solution:
```kotlin
fun List<Int>.incremented(): List<Int> {
    val originalList = this
    return buildList {
        for (n in originalList) {
            add(n + 1) // Receiver is MutableList<Int>
        }
    }
}

fun main() {
    val originalList = listOf(1, 2, 3)
    val newList = originalList.incremented()
    println(newList) // [2, 3, 4]
}
```

---

## 3. Related Official Links
* [Type-safe builders](https://kotlinlang.org/docs/type-safe-builders.html)
* [Next Chapter: Classes and interfaces](https://kotlinlang.org/docs/kotlin-tour-intermediate-classes-interfaces.html)
