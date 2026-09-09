# Course 2: Student Lesson Feedback & Doubts Form

## Metadata
- **Form Name:** Kotlin para Principiantes: Feedback y Dudas de la Lección
- **Slug / Purpose:** `course-2-feedback`
- **Target Audience:** Students reading and working through Course 2 lessons (L0 to L16) who have questions, friction points, or suggestions.
- **Form ID:** `A7geNk`
- **Workspace ID:** `wgbE9P`
- **Production URL:** `https://tally.so/r/A7geNk`
- **Status:** `PUBLISHED`

---

## Strategic Placements

### Lesson Footers (`01-environment-and-hello-world.mdx`, `02-variables-and-null-safety.mdx`, `03-hierarchies-and-control-flow.mdx`, ..., `16-final-project-ai-chat.mdx`)
- **Placement:** Section "Feedback y Dudas de la Lección" at the very end of each lesson.
- **URL with query parameter:** `https://tally.so/r/A7geNk?lesson=LX`
- **Goal:** Collect friction points, conceptual doubts, rating on explanation clarity, and suggestions for improvement.

---

## Form Structure & Fields

1. **Header / Welcome Text:**
   - Text explaining the purpose of the form (reporting blockers, asking questions, or suggesting improvements).
2. **Hidden Field:**
   - `lesson`: Automatically pre-fills the lesson code from the URL parameter (e.g. `?lesson=L1`).
3. **Lesson Selector (`DROPDOWN`):**
   - Full catalog of the 17 course lessons:
     - `L0: Bienvenida e Introducción al Curso`
     - `L1: Entorno Agnóstico y Hola Mundo`
     - `L2: Variables, Tipos y la Verdad sobre Null Safety`
     - `L3: Jerarquías y Control de Flujo Exhaustivo`
     - `L4: Anatomía de Funciones`
     - `L5: Extensiones y Funciones Infix`
     - `L6: Funciones de Orden Superior y Lambdas`
     - `L7: Colecciones y Secuencias (Lazy vs Eager)`
     - `L8: Funciones de Ámbito (Scope Functions)`
     - `L9: Clases, Herencia y Visibilidad`
     - `L10: Companion Objects y Object Declarations`
     - `L11: Genéricos Avanzados y Varianza`
     - `L12: Delegación y Propiedades Delegadas`
     - `L13: Corrutinas vs Asincronía Tradicional`
     - `L14: Suspensión y Scopes de Concurrencia`
     - `L15: Contextos y Dispatchers`
     - `L16: Proyecto Final: Empaquetado y Distribución del AI Chat CLI`
     - `General / Otra duda del curso`
4. **Clarity Rating (`MULTIPLE_CHOICE`):**
   - `🟢 Muy clara, todo funcionó a la primera`
   - `🟡 Buena, pero me costó entender algunos conceptos`
   - `🔴 Confusa o tuve errores que no pude resolver`
5. **Doubt or Friction Point (`TEXTAREA`, Required):**
   - "Explícanos qué intentabas hacer, qué error te apareció o qué concepto no quedó del todo claro..."
6. **Suggestions for Improvement (`TEXTAREA`, Optional):**
   - "Ideas, explicaciones o ejemplos que te gustaría ver..."
7. **Contact Info (Optional):**
   - `Tu nombre o apodo` (Text)
   - `Tu correo electrónico` (Email, for follow-up responses)
