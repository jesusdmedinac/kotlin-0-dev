# Guidelines for AI Agents

This document defines the core rules and context for AI agents working on the `kotlin-0-dev` project.

## 1. Project Overview
This project contains the Starlight-based documentation and content for the complete Kotlin courses ecosystem.

## 2. Global Rules
- **Language Policy:** EVERYTHING regarding the development process must be written in English. This includes:
  - Git commit messages
  - Pull Request titles and descriptions
  - GitHub Issues
  - Gherkin Feature files (`.feature`)
  - Architectural and tracking documents (`AGENTS.md`, `PROGRESS.md`)
  *Note: The actual course content (lessons) may be in Spanish, but the underlying engineering and planning structure is strictly in English.*

- **Development Workflow:** All new features must follow the GitHub Local Management and Git Worktrees workflow:
  1. Create a GitHub Issue (`gh issue create`).
  2. Create a git worktree (`git worktree add ../<branch> -b <branch>`).
  3. Commit atomic changes inside the worktree.
  4. Open a PR linked to the Issue (`gh pr create`).

## 3. Tech Stack
- Astro
- Starlight
