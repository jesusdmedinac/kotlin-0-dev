# Kotlin Tour: Control Flow

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-control-flow.html](https://kotlinlang.org/docs/kotlin-tour-control-flow.html)
* **Breadcrumbs:** Take Kotlin tour / Beginner / Control flow
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Conditional Expressions

#### 1. `if` as an Expression
In Kotlin, `if` is an **expression**, meaning it returns a value. There is no ternary operator (`condition ? a : b`) in Kotlin because `if-else` serves this exact purpose:

```kotlin
fun main() {
    val a = 10
    val b = 20
    val max = if (a > b) a else b
    println("Max is $max") // 20
}
```

#### 2. The `when` Expression
`when` replaces the traditional `switch` construct with greater power and safety. It can be used as a statement or an expression:

* **As an expression (exhaustiveness required):** Must cover all possible paths via branches or an `else` branch.
* **Flexible conditions:** Can match literals, ranges, sets, or boolean conditions without an argument.

```kotlin
fun main() {
    val trafficLight = "Yellow"
    val action = when (trafficLight) {
        "Green" -> "Go"
        "Yellow", "Amber" -> "Caution"
        "Red" -> "Stop"
        else -> "Malfunction"
    }
    println(action) // Caution

    // when without an argument (acts as clean if-else chain)
    val score = 85
    val grade = when {
        score >= 90 -> "A"
        score >= 80 -> "B"
        score >= 70 -> "C"
        else -> "F"
    }
    println(grade) // B
}
```

### Loops

#### 1. `for` Loops & Ranges
`for` iterates over any collection or range:
* Closed range: `1..5` (includes 1, 2, 3, 4, 5).
* Open-ended range: `1..<5` (includes 1, 2, 3, 4).
* Reverse range: `5 downTo 1`.
* Custom steps: `1..10 step 2`.

```kotlin
fun main() {
    for (number in 1..5) {
        print("$number ") // 1 2 3 4 5
    }

    val cakes = listOf("carrot", "cheese", "chocolate")
    for (cake in cakes) {
        println("Yummy, it's a $cake cake!")
    }
}
```

#### 2. `while` and `do-while` Loops
* **`while`:** Evaluates condition before executing the block.
* **`do-while`:** Executes block at least once before evaluating condition.

```kotlin
var cakesEaten = 0
while (cakesEaten < 3) {
    println("Eat a cake")
    cakesEaten++
}

var cakesBaked = 0
do {
    println("Bake a cake")
    cakesBaked++
} while (cakesBaked < cakesEaten)
```

---

## 2. Official Practice & Exercises

### Exercise: Count pizza slices using while and do-while loops
**Task:** Refactor an imperative repetitive sequence of 8 slices into both a `while` loop and a `do-while` loop.

#### Solution 1 (`while` loop):
```kotlin
fun main() {
    var pizzaSlices = 0
    while (pizzaSlices < 7) {
        pizzaSlices++
        println("There's only $pizzaSlices slice/s of pizza :(")
    }
    pizzaSlices++
    println("There are $pizzaSlices slices of pizza. Hooray! We have a whole pizza! :D")
}
```

#### Solution 2 (`do-while` loop):
```kotlin
fun main() {
    var pizzaSlices = 0
    pizzaSlices++
    do {
        println("There's only $pizzaSlices slice/s of pizza :(")
        pizzaSlices++
    } while (pizzaSlices < 8)
    println("There are $pizzaSlices slices of pizza. Hooray! We have a whole pizza! :D")
}
```

---

## 3. Related Official Links
* [Conditions and loops](https://kotlinlang.org/docs/control-flow.html)
* [Next Chapter: Functions](https://kotlinlang.org/docs/kotlin-tour-functions.html)
