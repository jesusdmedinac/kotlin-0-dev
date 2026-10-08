Feature: English Course Content Parity and Lab Link Alignment
  As an English-speaking student learning Kotlin at Desde0
  I want the English lessons to provide the exact same pedagogical depth as the Spanish source of truth
  So that I can learn JVM architecture, Gradle project anatomy, and language mechanics with zero missing content or broken links

  Scenario: Lesson 1 English pedagogical parity with Gradle anatomy and conceptual bridges
    Given the student views English Lesson 1 at "/en/course-2-beginners/01-environment-and-hello-world"
    Then the lesson contains the "Anatomy of a Kotlin Project: Demystifying Gradle" section
    And it contains conceptual bridge tabs for TypeScript, Python, C#/.NET, and Java
    And it explains the immutable global cache in "~/.gradle/caches" and the role of the Gradle Wrapper
    And it provides multi-environment execution tabs for IDE, VS Code, and CLI
    And its deliverable links point to universal lab tags "L1-start" and "L1-done"

  Scenario: Lesson 2 English pedagogical parity with immutability and null safety bridges
    Given the student views English Lesson 2 at "/en/course-2-beginners/02-variables-and-null-safety"
    Then the lesson explains reference immutability vs object mutation ("val" with "mutableListOf")
    And it contains conceptual bridge tabs for variables and mutability across TS, Python, C#, and Java
    And it contains conceptual bridge tabs for Null Safety across TS, Python, C#, and Java
    And its deliverable links point to universal lab tags "L2-start" and "L2-done"

  Scenario: Lesson 3 English complete translation and interactive CLI menu lab
    Given the student views English Lesson 3 at "/en/course-2-beginners/03-hierarchies-and-control-flow"
    Then the lesson explains the Java switch fall-through trap and "if"/"when" as expressions
    And it details JVM bytecode optimizations for "TABLESWITCH" vs "LOOKUPSWITCH"
    And it contains the conceptual bridge for pattern matching across languages
    And it teaches exhaustive control flow with "enum class" and "sealed class"
    And it guides the student step-by-step to build the main menu loop with defensive EOF handling
    And its deliverable links point to universal lab tags "L3-start" and "L3-done"

  Scenario: English curricular outline availability for Lessons 4 through 16
    Given the student browses the English syllabus or sidebar
    When all lessons from Lesson 4 to Lesson 16 are inspected
    Then each lesson page exists with its respective WIP overview and learning objectives
    And the Starlight sidebar autogenerates all 17 items for Course 2 in English
    And no 404 broken link errors exist on any lesson page

  Scenario: Brand name and single-currency pricing integrity
    Given any English documentation page
    Then the academy brand name is strictly "Desde0" without translation
    And all session pricing is displayed strictly in "$40 USD"
