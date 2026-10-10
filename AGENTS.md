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

- **Course Content (BILINGUAL PARITY):**
  - Spanish lessons (`src/content/docs/course-X/...`) and English lessons (`src/content/docs/en/course-X/...`) must maintain 1:1 structural and pedagogical parity.
  - Code comments inside student-facing lessons should be pedagogical and in the target language.

## 3. Pedagogical Content Generation
- **Content Style Guide:** All course content generation (`.mdx` lessons) MUST adhere to the strict pedagogical rules defined in `docs/CONTENT_STYLE.md`. Agents MUST read this file before writing any lesson.
- **Incremental Lab (Project-Based Learning):** The course is designed as an incremental lab. Each lesson MUST include a deep theoretical explanation (analogies, under-the-hood details, bytecode when applicable) followed immediately by a practical application where the student builds a piece of the Final Project (e.g., an AI Chat CLI).
- **Mandatory Syllabus & Overview Synchronization (`00-kotlin-for-begginers.mdx`):** Whenever a lesson is generated, completed, or its pedagogical scope is modified, agents **MUST** update the Course Syllabus overview pages in both languages simultaneously:
  - `src/content/docs/course-2-beginners/00-kotlin-for-begginers.mdx` (Spanish)
  - `src/content/docs/en/course-2-beginners/00-kotlin-for-begginers.mdx` (English)
  Specifically, agents must:
  1. Change the lesson status badge from `<Badge text="WIP" variant="caution" />` to `<Badge text="Disponible" variant="success" />` (Spanish) and `<Badge text="Available" variant="success" />` (English).
  2. Verify that the lesson summary bullet point aligns with the actual delivered topics.
  3. Include this syllabus synchronization within the exact same PR as the lesson content. Never leave the syllabus out of sync.

## 4. Development Workflow
All new features must follow the GitHub Local Management and Git Worktrees workflow:
1. Create a GitHub Issue (`gh issue create`).
2. Create a git worktree (`git worktree add ../<branch> -b <branch>`).
3. Commit atomic changes inside the worktree.
4. Open a PR linked to the Issue (`gh pr create`).

**CRITICAL RULE FOR LAB REPOSITORIES (e.g., `kotlin-course-2-lab`):**
To ensure the highest engineering standards while preserving the pedagogical "One commit per lesson" structure, any modifications to lab repositories MUST follow the PR workflow.
1. NEVER commit directly to `master`. Create a `feat/lesson-X` branch starting from the previous lesson tag (e.g., `L1-done`).
2. Open a Pull Request.
3. The Pull Request MUST be merged using the **"Squash and Merge"** strategy. This compresses all branch commits into a single, clean commit on `master`.
4. After merging, create the `LX-done` tag pointing to that single squashed merge commit.

## 5. Tech Stack
- Astro
- Starlight
