# Kotlin Tour: Properties & Delegated Properties

* **Official Source:** [https://kotlinlang.org/docs/kotlin-tour-intermediate-properties.html](https://kotlinlang.org/docs/kotlin-tour-intermediate-properties.html)
* **Breadcrumbs:** Take Kotlin tour / Intermediate / Properties
* **Target Version:** Kotlin 1.3+ / Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

### Properties: Getters, Setters, and Backing Fields
In Kotlin, properties represent accessor contracts rather than plain fields:
* `val` generates a backing field and a `get()` accessor.
* `var` generates a backing field, a `get()` accessor, and a `set()` accessor.
* You can write **custom getters and setters**. Within a custom setter, the identifier `field` references the underlying backing field:

```kotlin
class Rectangle(val width: Int, val height: Int) {
    // Computed property (no backing field)
    val isSquare: Boolean
        get() = width == height

    var counter: Int = 0
        set(value) {
            if (value >= 0) field = value // 'field' access
        }
}
```

---

### Extension Properties
Similar to extension functions, extension properties add accessible attributes to existing classes:
* Must have an explicit custom getter (they cannot have backing fields):

```kotlin
val Double.asMiles: Double
    get() = this * 0.621371
```

---

### Delegated Properties (`by`)
Delegated properties allow common accessor logic to be reused across different properties:

#### 1. Lazy Properties (`lazy`)
Computed only on first access and cached thereafter. Thread-safe by default:
```kotlin
val databaseConnection by lazy {
    println("Connecting to database...")
    Database.connect()
}
```

#### 2. Observable Properties (`Delegates.observable`)
Notifies a callback whenever the property's value changes:
```kotlin
import kotlin.properties.Delegates.observable

class Thermostat {
    var temperature: Double by observable(20.0) { _, old, new ->
        println("Temperature changed from $old to $new")
    }
}
```

---

## 2. Official Practice & Exercises

### Exercise 1: Extension Property (`asMiles`)
**Task:** Create an extension property `Double.asMiles` that converts kilometers to miles using `miles = kilometers * 0.621371`.

#### Official Solution:
```kotlin
val Double.asMiles: Double
    get() = this * 0.621371

fun main() {
    val distanceKm = 100.0
    println("$distanceKm km is ${distanceKm.asMiles} miles")
    // 100.0 km is 62.1371 miles
}
```

---

### Exercise 2: Track Budget Changes with Observable Property
**Task:** Within a `Budget` class initialized with `totalBudget`, create an observable property `remainingBudget` that prints a warning if it falls below 20% of `totalBudget`, or an encouraging message if it increases.

#### Official Solution:
```kotlin
import kotlin.properties.Delegates.observable

class Budget(val totalBudget: Int) {
    var remainingBudget: Int by observable(totalBudget) { _, oldValue, newValue ->
        if (newValue < totalBudget * 0.2) {
            println("Warning: Your remaining budget ($newValue) is below 20% of your total budget.")
        } else if (newValue > oldValue) {
            println("Good news: Your remaining budget increased to $newValue.")
        }
    }
}

fun main() {
    val myBudget = Budget(totalBudget = 1000)
    myBudget.remainingBudget = 800
    myBudget.remainingBudget = 150 // Warning: below 20%
    myBudget.remainingBudget = 300 // Good news: increased
}
```

---

## 3. Related Official Links
* [Properties documentation](https://kotlinlang.org/docs/properties.html)
* [Delegated properties reference](https://kotlinlang.org/docs/delegated-properties.html)
* [Next Chapter: Null safety (Intermediate)](https://kotlinlang.org/docs/kotlin-tour-intermediate-null-safety.html)
