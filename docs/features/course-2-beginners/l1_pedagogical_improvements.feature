Feature: Lesson 1 Pedagogical Improvements from Live Classroom Feedback
  As a student in Course 2 (Beginners)
  I want a smooth onboarding experience, clear JVM mental models, and robust build tool analogies
  So that I can learn Kotlin effectively regardless of my hardware constraints or background

  # Issue #13
  Scenario: Lightweight development environment setup for constrained hardware
    Given a student with limited laptop memory (8 GB RAM) or preference for lightweight editors
    When configuring the local development environment in Lesson 1
    Then the lesson provides step-by-step setup for Visual Studio Code with the official JetBrains Kotlin extension
    And documents macOS command-line prerequisites ("xcode-select --install")
    And provides instructions for executing the project directly from the terminal via "./gradlew run"

  # Issue #14
  Scenario: Gradle project anatomy and mental model analogies
    Given a student transitioning from other package ecosystems such as npm or Cargo
    When examining the initial project files in Lesson 1
    Then the lesson explains the anatomy of "settings.gradle.kts", "build.gradle.kts", and "libs.versions.toml"
    And provides real-world analogies comparing Gradle build configuration and dependencies to package.json
    And clarifies why the Gradle Wrapper ("gradlew") guarantees reproducible builds without global tooling

  # Issue #15
  Scenario: Under-the-hood JVM mechanics, MainKt, and annotations vs decorators
    Given a student curious about Kotlin compilation to JVM bytecode
    When investigating the compiled classes generated from "Main.kt"
    Then the lesson explains why the JVM specification requires all methods to reside inside a class, synthesizing "MainKt.class"
    And provides instructions for inspecting decompiled bytecode inside IntelliJ IDEA
    And explains the "@file:JvmName" annotation to customize the generated class name
    And contrasts JVM Annotations (compile/runtime metadata) with TypeScript/Python Decorators (runtime wrapping)

  # Issue #16
  Scenario: Safe Git tag navigation and bridge recap to Lesson 2
    Given a student following along with the companion lab repository
    When checking out Git tags such as "L1-start" or "L1-done"
    Then the lesson instructs how to create safe local working branches using "git switch -c <branch> tags/<tag>" to avoid detached HEAD
    And provides a transitional recap connecting Lesson 1 setup with Lesson 2 variables and null safety
