Feature: Lesson 2 Pedagogical Improvements from Live Classroom Feedback
  As a student in Course 2 (Beginners)
  I want robust CLI input handling, historical insights into nullability, and clear type system models
  So that I master variables and null safety with complete confidence

  # Issue #17
  Scenario: Interactive CLI input stream configuration in Gradle
    Given an interactive console application requesting user keyboard input via readln() or readLine()
    When running the application via "./gradlew run"
    Then the build configuration in "build.gradle.kts" routes terminal standard input using "standardInput = System.in"
    And the lesson documents why Gradle tasks isolate standard input by default

  # Issue #18
  Scenario: Tony Hoare null safety history, reference immutability, and .NET parallels
    Given a student learning Kotlin's null safety guarantees and variable mutability
    When examining nullability and read-only references
    Then the lesson presents Tony Hoare's 1965 "Billion Dollar Mistake" in Algol W as the historical rationale
    And explains reference immutability ("val") versus internal object mutability ("MutableList")
    And provides mental model comparisons for C# / .NET developers transitioning to Kotlin
    And illustrates defensive usage of "readlnOrNull()", "isNotBlank()", and "isNullOrBlank()"

  # Issue #19
  Scenario: Historical deprecation of KotlinNullPointerException in Kotlin 1.4
    Given a student analyzing runtime exceptions and bytecode optimization
    When examining null pointer exceptions thrown by Kotlin applications
    Then the lesson documents why "KotlinNullPointerException" was deprecated in Kotlin 1.4 in favor of "java.lang.NullPointerException"
    And explains how this unification aids bytecode size reduction and Android R8/ProGuard optimizations
    And clarifies that "UninitializedPropertyAccessException" remains active for lateinit properties
