Feature: Platform Internationalization and Automatic Language Detection
  As a developer visiting the Kotlin courses platform
  I want the site to detect my preferred language and region automatically, with Spanish as default root and English as secondary
  So that I can read the course content in my preferred language without breaking existing URLs

  Scenario: Spanish root locale configuration
    Given the platform Starlight configuration
    When the root locale is set to Spanish ("es")
    Then all default routes without language prefix serve Spanish content
    And existing URLs remain unchanged

  Scenario: English locale subpath configuration
    Given the platform Starlight configuration
    When the secondary locale is set to English ("en")
    Then routes prefixed with "/en" serve English content
    And Starlight displays a language switcher in the navigation bar

  Scenario: Automatic language and region detection for new visitors
    Given a new visitor arriving at the root path "/" without stored preferences
    When the visitor's browser language or region preference is English
    Then the client automatically redirects to the "/en/" path
    And does not redirect if the visitor's preferred language is Spanish

  Scenario: Persistent user language preference
    Given a visitor who has explicitly chosen a language via the language switcher
    When the preference is stored in localStorage
    Then subsequent visits respect the stored preference regardless of system or browser locale

  Scenario: English syllabus and overview pages availability
    Given the English locale configuration
    When a student navigates to "/en", "/en/course-1-non-programmers", "/en/course-2-beginners", etc.
    Then the corresponding English documentation pages are served with appropriate frontmatter and metadata

  Scenario: Course 2 English lessons availability
    Given the English Course 2 directory structure
    When a student accesses the translated lessons
    Then the lessons follow pedagogical standards and deliverable links
