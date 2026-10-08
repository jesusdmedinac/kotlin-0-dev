# JetBrains Official Learning Resources Reference

This directory contains the canonical reference archive of official learning and documentation materials from JetBrains and [kotlinlang.org](https://kotlinlang.org).

Its purpose is to serve as an authoritative, high-fidelity knowledge repository preserving the official explanations, conceptual models, standard idioms, code examples, exercises, hints, and solutions directly from JetBrains.

---

## Directory Structure

The structure directly mirrors the organization and taxonomy of the original official resources:

```
docs/references/jetbrains/
├── README.md                           # This index file
│
├── tours/                              # Kotlin Tour resources (in-browser interactive paths)
│   ├── beginner/                       # Beginner Tour (7 modules)
│   │   ├── 01-hello-world.md
│   │   ├── 02-basic-types.md
│   │   ├── 03-collections.md
│   │   ├── 04-control-flow.md
│   │   ├── 05-functions-and-lambdas.md
│   │   ├── 06-classes.md
│   │   └── 07-null-safety.md
│   │
│   └── intermediate/                   # Intermediate Tour (9 modules)
│       ├── 01-extension-functions.md
│       ├── 02-scope-functions.md
│       ├── 03-lambdas-with-receiver.md
│       ├── 04-classes-and-interfaces.md
│       ├── 05-objects.md
│       ├── 06-open-and-special-classes.md
│       ├── 07-properties.md
│       ├── 08-null-safety.md
│       └── 09-libraries-and-apis.md
│
├── backend/                            # Server-side Kotlin documentation
│   ├── 01-backend-overview.md
│   ├── ktor/                           # Ktor framework official docs
│   │   ├── 01-ktor-overview-and-setup.md
│   │   ├── 02-routing.md
│   │   └── 03-client-engines.md
│   └── spring-boot/                    # Official Spring Boot + Kotlin guides
│       ├── 01-spring-boot-overview-and-setup.md
│       ├── 02-data-classes-and-controllers.md
│       └── 03-database-and-crud-repository.md
│
├── multiplatform/                      # Kotlin Multiplatform (KMP) resources
│   ├── 01-multiplatform-overview.md
│   ├── core/                           # Shared logic, expect/actual, project setup
│   │   ├── 01-expect-actual.md
│   │   └── 02-project-structure-and-hierarchy.md
│   └── compose-multiplatform/          # Shared declarative UI
│       ├── 01-compose-multiplatform-setup-and-lifecycle.md
│       └── 02-resources-and-datetime.md
│
├── android/                            # Official Android development with Kotlin
│   └── 01-android-overview.md
│
├── ai/                                 # Kotlin for AI & Data Science
│   ├── 01-ai-overview.md
│   ├── 02-koog-and-mcp.md
│   └── 03-kotlin-benchmark-and-skills.md
│
└── interactive/                        # Practical sandboxes & educational resources
    ├── 01-playground-and-koans.md
    └── 02-education-curriculum.md
```

---

## Standard Reference Template

Every file in this knowledge archive follows this standard layout:
1. **Source Metadata:** Official title, canonical URL, and target Kotlin/library version.
2. **Concept & Mental Model:** The exact theoretical explanation and semantics provided by JetBrains.
3. **Official Code Examples:** Verbatim code blocks demonstrating the syntax and execution output.
4. **Official Practice Exercises:**
   - Problem statement.
   - Starter code template.
   - Official hint (if provided).
   - Official solution.
5. **Related References:** External documentation anchors linked in the original source.
