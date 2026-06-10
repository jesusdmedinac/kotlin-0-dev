# Pedagogical Content Style Guide

This document defines the strict pedagogical structure and tone for all course lessons (`.mdx` files) in the `kotlin-0-dev` project.

## 1. Lesson Structure
Every lesson MUST adhere to the following structure:
1. **Frontmatter**: Title, description, and metadata.
2. **Hook**: An engaging opening paragraph that connects the topic to a real-world scenario or a problem the student has faced in Java or other languages.
3. **Analogies First**: Before showing code, explain the concept using a real-world analogy.
4. **Theory & Under the Hood**: Explain *how* it works. If Kotlin is doing "magic" (e.g., extension functions, `data` classes, named arguments), briefly explain the underlying Java bytecode compilation.
5. **Heavily Commented Code**: Code blocks must contain pedagogical comments explaining *why* each line is written that way.
6. **Custom Implementations (When Applicable)**: For functional concepts (e.g., `map`, `let`), guide the student to build their own version (`myMap`, `myLet`) before using the standard library.
7. **The Deliverable**:
   - Provide a starting template repository link.
   - Provide a solved repository link with a step-by-step commit history.
8. **Sources & References**: Always include a `<LinkCard>` section linking to official documentation or authoritative sources.

## 2. Tone and Voice
- Encouraging, empathetic, and conversational.
- Address the student directly ("you").
- Use bold text for key terms.
- Use Starlight/Astro `<Aside>` components for tips, warnings, and deep dives.
