Feature: Course 2 - Kotlin for Beginners
  As a developer with previous experience in other languages
  I want to learn Kotlin idiomatically, from syntax to advanced OOP and basic coroutines
  In order to build an interactive AI Chat from the terminal

  # MODULE 1: Basics and Advanced Control Flow
  Scenario: Lesson 1 - Agnostic Environment and Hello World
    Given that the student needs a platform-agnostic environment
    When they set up IntelliJ IDEA (pure) or CLI
    Then they understand what the JVM is and compile Kotlin independently of Android

  Scenario: Lesson 2 - Variables, Types, and the Truth about Null Safety
    Given that Kotlin enforces strict null safety
    When the student learns about read-only (`val`), mutability, and Platform Types (`String!`)
    Then they understand why a Java `@NonNull` variable might still cause compiler warnings in Kotlin

  Scenario: Lesson 3 - Hierarchies and Exhaustive Control Flow
    Given that `when` is more powerful than `switch`
    When the student uses `when` with `enum class`, `sealed class`, and `sealed interface`
    Then they understand when to nest `class`, `data class`, `object`, or `data object` inside a sealed hierarchy

  # MODULE 2: Functional Thinking (FP)
  Scenario: Lesson 4 - Anatomy of Functions
    Given that Kotlin has named and default arguments
    When the student uses them to simplify function calls
    Then they understand why Java lacks this feature due to bytecode parameter name erasure

  Scenario: Lesson 5 - Extension and Infix Functions
    Given that Kotlin allows extending existing classes
    When the student learns the linguistics of code (`prefix`, `infix`, and `suffix`)
    Then they can write expressive, readable DSL-like function calls

  Scenario: Lesson 6 - Custom Higher-Order Functions
    Given that the standard library uses lambdas extensively
    When the student builds their own `myMap` and `myFilter` from scratch
    Then they truly understand how functions are passed as parameters

  Scenario: Lesson 7 - Collections and Sequences (Lazy vs Eager)
    Given that data processing impacts performance
    When the student learns `map`, `filter`, and `fold`
    Then they can differentiate when to use `Iterable` (Eager) vs `Sequence` (Lazy)

  Scenario: Lesson 8 - Scope Functions (The Swiss Army Knife)
    Given that scope functions are crucial for idiomatic Kotlin
    When the student builds their own `myLet`, `myRun`, `myWith`, `myApply`, and `myAlso`
    Then they master the difference between `this` vs `it` and their return values

  # MODULE 3: Advanced OOP and Typing (The Clash with Java)
  Scenario: Lesson 9 - Classes, Inheritance, and Visibility
    Given that Kotlin's class structure differs heavily from Java
    When the student learns why everything is an object in Kotlin (unlike Java primitives) and why classes are `public final` by default
    Then they understand how `open` fosters "Composition over Inheritance"

  Scenario: Lesson 10 - Companion Objects and Object Declarations
    Given the need for singletons and static-like members
    When the student learns `object`, `companion object`, and `data object`
    Then they understand exactly what the `data` modifier generates in bytecode (`equals`, `hashCode`, `copy` vs just `toString`)

  Scenario: Lesson 11 - Advanced Generics
    Given that variance is a complex topic
    When the student explores `in` (Contravariance), `out` (Covariance), and `*` (Star projection)
    Then they can safely design generic classes and functions

  Scenario: Lesson 12 - Delegation and Delegated Properties
    Given that delegation simplifies code reuse
    When the student learns the Delegate pattern and implements a custom `ReadWriteProperty`
    Then they can create custom delegates beyond the standard `by lazy`

  # MODULE 4: Asynchrony and Final Project
  Scenario: Lesson 13 - Coroutines vs Traditional Asynchrony
    Given the need for non-blocking code
    When the student compares threads, callbacks (RxJava/Promises), and suspension
    Then they grasp the core concept of a coroutine

  Scenario: Lesson 14 - Suspension and Scopes
    Given that coroutines need a lifecycle
    When the student learns what a `suspend` function is and uses `CoroutineScope`
    Then they understand the lifecycle of a coroutine and how `launch` works

  Scenario: Lesson 15 - Contexts and Dispatchers
    Given that different tasks require different threads
    When the student uses `Dispatchers.IO` and `Dispatchers.Main` with `async` and `await`
    Then they can safely switch threads for I/O operations

  Scenario: Lesson 16 - Final Project (AI Chat)
    Given that the student has completed all theoretical modules
    When they integrate Null safety, OOP, FP, and Coroutines
    Then they build a fully functional AI Chat CLI
