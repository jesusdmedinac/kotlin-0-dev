Feature: Curriculum Integration of .NET and Multi-Ecosystem Mental Models
  As a developer with a C# / .NET or similar enterprise language background
  I want idiomatic analogies, runtime comparisons, and cognitive bridges across the Course 2 syllabus
  So that I can map my existing mental models to Kotlin and the JVM efficiently

  # Module 1
  Scenario: Syllabus update with foundational runtime and tooling analogies
    Given the Course 2 syllabus and lessons covering environment, types, and control flow
    When comparing the JVM with the .NET runtime
    Then the curriculum introduces explicit analogies for JVM vs CLR, Gradle vs MSBuild/NuGet, and .kt/.kts vs .cs/.csx
    And contrasts Kotlin null safety with C# Nullable Reference Types and the null-forgiving operator

  # Module 2
  Scenario: Syllabus update with functional programming and collections analogies
    Given the Course 2 syllabus covering functions, higher-order functions, and collections
    When students study Kotlin functional idioms
    Then the lessons contrast Kotlin extension functions with C# static extension methods
    And compare Kotlin Iterable and Sequence transformations directly with C# LINQ operators and lazy evaluation

  # Module 3
  Scenario: Syllabus update with OOP, properties, and generics variance analogies
    Given the Course 2 syllabus covering classes, objects, and advanced generics
    When developers evaluate object-oriented structures and variance
    Then the curriculum compares Kotlin data classes and sealed hierarchies with C# records and pattern matching
    And maps Kotlin declaration-site variance (in/out) to C# interface variance

  # Module 4
  Scenario: Syllabus update with coroutines vs async/await concurrency models
    Given the Course 2 syllabus introducing coroutines and dispatchers
    When learning Kotlin structured concurrency
    Then the lessons contrast Kotlin cooperative suspension (suspend) with C# Task Asynchronous Programming (async/await and Task)
    And highlight how CoroutineScope prevents memory leaks compared to unconstrained background tasks
