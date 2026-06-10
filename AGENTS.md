# Guidelines for AI Agents

This document defines the core rules and context for AI agents working on the `kotlin-0-dev` project.

## 1. Project Overview
This project contains the Starlight-based documentation and content for the complete Kotlin courses ecosystem.

## 2. Global Rules & Language Policy
To ensure consistency across the ecosystem, we maintain a strict boundary between Engineering/Platform elements and Course Content:

- **Engineering & Platform (STRICTLY IN ENGLISH):**
  - File and directory names (e.g., `course_2_kotlin_beginners.feature`)
  - Git branch names (e.g., `feat/course-2`)
  - Git commit messages
  - Pull Request titles and descriptions
  - GitHub Issues
  - Source code variables, functions, and configuration files
  - Architectural documents (`AGENTS.md`)
  - Planning and tracking files (`PROGRESS.md`)
  - **Syllabus definitions in Gherkin (`.feature` files)**

- **Course Content (STRICTLY IN SPANISH):**
  - The actual lessons and documentation read by the students (`.mdx` files)
  - Code comments inside the lessons intended for students.

## 3. Pedagogical Content Generation
- **Content Style Guide:** All course content generation (`.mdx` lessons) MUST adhere to the strict pedagogical rules defined in `docs/CONTENT_STYLE.md`. Agents MUST read this file before writing any lesson.

## 4. Development Workflow
All new features must follow the GitHub Local Management and Git Worktrees workflow:
1. Create a GitHub Issue (`gh issue create`).
2. Create a git worktree (`git worktree add ../<branch> -b <branch>`).
3. Commit atomic changes inside the worktree.
4. Open a PR linked to the Issue (`gh pr create`).

## 4. Tech Stack
- Astro
- Starlight
