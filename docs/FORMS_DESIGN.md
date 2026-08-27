# Form Design System & Specifications

This document defines the architectural guidelines, JSON/MCP specifications, and lifecycle management for interactive forms created with **Tally MCP** across the `kotlin-0-dev` ecosystem.

---

## 1. Objectives & Funnel Strategy

Forms in the Kotlin ecosystem serve three strategic functions:
1. **Lead & Student Onboarding (Funnel Top):** Capture student demographics, previous programming background (Java, Python, JS, None), and expectations.
2. **Pedagogical Feedback Loops (Mid-Funnel):** Collect real-time difficulty ratings and friction points immediately after lessons (L1, L2, etc.).
3. **Course Certification & Project Showcase (Funnel Bottom):** Enable students to submit their completed **AI Chat CLI** repository link for review and certificate issuance.

---

## 2. Standard Tally MCP Payload Schema

To ensure reproducible deployments via Tally MCP, each form must maintain its canonical payload in `docs/forms/<form_name>.md`.

```json
{
  "title": "<Form Title>",
  "styling": {
    "submitButtonText": "<Custom Action Text>"
  },
  "groups": [
    {
      "blocks": [
        { "type": "TEXT", "html": "<Rich HTML greeting with bold/links>" },
        { "type": "TITLE", "html": "<Question Title>" },
        { "type": "<INPUT_TYPE>", "placeholder": "<Placeholder text>" }
      ]
    }
  ]
}
```

---

## 3. Active Form Specifications

| Form Name | Target Audience | Strategic Placement | Spec Document |
| :--- | :--- | :--- | :--- |
| **Course 2 Funnel & Feedback Form** | Beginners & Java migrators | `00-kotlin-for-begginers.mdx`, `index.mdx`, L1/L2 Endings | [course_2_funnel_form.md](./forms/course_2_funnel_form.md) |

---

## 4. MCP Management Workflow

To create, update, or sync any form:
1. Load spec from `docs/forms/<form_name>.md`.
2. Execute `create_new_form` via Tally MCP.
3. Batch insert questions with `create_blocks`.
4. Apply logic rules with `apply_logic` if required.
5. Publish with `save_form` (`status: "PUBLISHED"`).
6. Update embedded links in documentation `.mdx` files.
