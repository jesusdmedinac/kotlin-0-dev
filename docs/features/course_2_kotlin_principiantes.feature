Feature: Course 2 - Kotlin for Beginners
  As a developer with previous experience in other languages
  I want to learn Kotlin idiomatically, from syntax to basic coroutines
  In order to build an interactive AI Chat from the terminal

  Scenario: Lesson 1 - Environment Setup and Hello World
    Given that the student already knows how to program
    When they set up their environment (IntelliJ or CLI)
    Then they understand the basic structure of a file and compile their first "Hello World"
  
  Scenario: Lesson 2 - Variables, Types, and Null Safety (Kotlin Basics)
    Given that Kotlin has a strong type system and is null-safe
    When the student defines mutable (`var`) and immutable (`val`) variables, and nullable types (`?`)
    Then they can create the initial state of the Chat (e.g., username, simulated API key)

  Scenario: Lesson 3 - Advanced Control Flow (Expressions and `when`)
    Given that the student needs conditional logic for the Chat
    When they use `if` as an expression and the powerful `when` block
    Then they implement the logic for the main menu and Chat commands

  Scenario: Lesson 4 - Functions and Lambdas (Functional Approach)
    Given that Kotlin treats functions as first-class citizens
    When the student creates extension functions, higher-order functions, and lambdas
    Then they refactor the user message processing using a functional approach

  Scenario: Lesson 5 - Collections and Operations (map, filter, fold)
    Given that the chat history must be stored in memory
    When they use Lists and Maps along with collection operations
    Then they manage and transform the chat history in an immutable way

  Scenario: Lesson 6 - Idiomatic OOP (Data Classes and Sealed Classes)
    Given that messages have different states and structures
    When they use `data classes` for the data model and `sealed classes` for message types (User, System, AI, Error)
    Then the chat state is modeled in a robust, safe, and typed manner

  Scenario: Lesson 7 - Asynchronous Programming (Basic Coroutines)
    Given that the AI Chat must simulate network response time (delay)
    When the student introduces `suspend functions`, `runBlocking`, and the `delay` function
    Then the application processes the "AI response" without blocking the main execution thread

  Scenario: Lesson 8 - Final Project (AI Chat from the terminal)
    Given that the student has completed the theoretical lessons
    When they bring together all previous concepts (Null safety, OOP, Lambdas, and Coroutines) in their final repository
    Then they finish the "AI Chat" CLI and complete the Final Course Deliverable
