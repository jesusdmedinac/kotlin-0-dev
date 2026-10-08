Feature: Companion Lab Starter Alignment and Autonomous Tooling
  As a student following Course 2 (Kotlin for Beginners)
  I want the companion lab repository to include the standalone Gradle wrapper and VS Code tasks from Lesson 1
  So that I can clone the starter repository and execute tasks via CLI or lightweight editors without missing file errors

  Scenario: Autonomous L1-start repository with Gradle Wrapper
    Given a student clones "kotlin-course-2-lab" at tag "L1-start"
    Then the repository contains the Gradle wrapper ("gradlew", "gradlew.bat", "gradle/wrapper/")
    And the student can run "./gradlew --version" without installing Gradle on their machine
    And no pre-generated Kotlin build manifests exist yet (allowing step-by-step construction)

  Scenario: Fully verified L1-done tag with build manifests and VS Code tasks
    Given a student checks out tag "L1-done" or starts Lesson 2 at "L2-start"
    Then the repository contains "settings.gradle.kts", "build.gradle.kts", and "src/main/kotlin/Main.kt"
    And it contains ".vscode/tasks.json" preconfigured with the "Run AI Chat CLI" build task
    And executing "./gradlew run" prints the initial welcome banner successfully

  Scenario: Clean working tree and linear tag integrity
    Given the maintainer synchronizes the companion lab
    When all lesson tags are inspected ("L1-start", "L1-done", "L2-start", "L2-done", "L3-start", "L3-done")
    Then each tag accurately matches the pedagogical state taught in the corresponding lesson
    And the repository working tree is clean and tracking "origin/master"
