Feature: Curriculum Integration of Multi-Ecosystem Mental Models (TypeScript, Python, C#, Java)
  As a developer with a background in TypeScript, Python, C# / .NET, or Java
  I want idiomatic analogies, runtime comparisons, and cognitive bridges across the Course 2 syllabus
  So that I can map my existing mental models and tooling habits to Kotlin and the JVM efficiently

  # Module 1
  Scenario: Syllabus update with foundational runtime, tooling, and control flow analogies
    Given the Course 2 syllabus and lessons covering environment, types, and control flow
    When comparing Kotlin and JVM fundamentals with other language ecosystems
    Then the curriculum introduces explicit analogies for:
      | Ecosystem   | Runtime / VM   | Build System & Manifest         | Dependency Storage                | Execution Command   |
      | Kotlin      | JVM            | Gradle (build.gradle.kts)       | Global Cache (~/.gradle/caches/)  | ./gradlew run       |
      | TypeScript  | V8 / Node.js   | npm / pnpm (package.json)       | Local (./node_modules)            | npm run dev         |
      | Python      | CPython        | Poetry / pip (pyproject.toml)   | Virtualenv (.venv)                | poetry run python   |
      | C# (.NET)   | CLR            | MSBuild / dotnet (.csproj)      | User Cache (~/.nuget/packages)    | dotnet run          |
      | Java        | JVM            | Maven (pom.xml) / Gradle        | Global Cache (~/.m2 / ~/.gradle)  | ./mvnw / ./gradlew  |
    And contrasts Kotlin null safety (T vs T?) with TypeScript strictNullChecks, Python Optional, C# Nullable Reference Types, and Java @Nullable
    And compares Kotlin "when" expressions with TypeScript discriminated unions, Python 3.10 match/case, C# 8+ switch expressions, and Java 17+ switch

  # Module 2
  Scenario: Syllabus update with functional programming and collections analogies
    Given the Course 2 syllabus covering functions, higher-order functions, and collections
    When students study Kotlin functional idioms
    Then the lessons contrast Kotlin extension functions with:
      | Ecosystem   | Extension / Modular Equivalent                 |
      | C# (.NET)   | Static extension methods (this string str)     |
      | TypeScript  | Module augmentation & prototype methods        |
      | Python      | Dynamic monkey-patching / utility modules      |
      | Java        | Static utility classes (e.g., StringUtils)     |
    And compare Kotlin Sequences (lazy evaluation) directly with C# LINQ (IEnumerable Select/Where), Python Generators (yield), and Java Stream API

  # Module 3
  Scenario: Syllabus update with OOP, properties, and generics variance analogies
    Given the Course 2 syllabus covering classes, objects, and advanced generics
    When developers evaluate object-oriented structures and variance
    Then the curriculum compares Kotlin data classes and sealed hierarchies with:
      | Ecosystem   | Structured Data & Closed Hierarchies           |
      | C# (.NET)   | record class / record struct & pattern match   |
      | TypeScript  | interfaces / type unions with discriminants    |
      | Python      | @dataclass / Pydantic models & Union types     |
      | Java        | record classes (Java 16+) & sealed classes     |
    And maps Kotlin declaration-site variance (in/out) to C# interface variance (in/out) and Java wildcards (? extends / ? super)

  # Module 4
  Scenario: Syllabus update with coroutines vs async/await concurrency models
    Given the Course 2 syllabus introducing coroutines and dispatchers
    When learning Kotlin structured concurrency
    Then the lessons contrast Kotlin cooperative suspension (suspend) with:
      | Ecosystem   | Concurrency Paradigm                           |
      | C# (.NET)   | Task Asynchronous Programming (TAP, async/await)|
      | TypeScript  | Promises & async/await                         |
      | Python      | asyncio event loop & async/await               |
      | Java        | Virtual Threads (Project Loom) & Threads       |
    And highlight how CoroutineScope prevents background task leaks compared to unconstrained promises or background threads
