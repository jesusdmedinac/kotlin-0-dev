# Course 2: Funnel & Student Community Form

## Metadata
- **Form Name:** Kotlin para Principiantes - Comunidad y Acceso Anticipado
- **Slug / Purpose:** `course-2-funnel`
- **Target Audience:** Students following Course 2 (Kotlin for Beginners) and building the AI Chat CLI.

---

## Strategic Placements

### 1. Course 2 Welcome Funnel (`00-kotlin-for-begginers.mdx`)
- **Placement:** Section before CTA / Next steps.
- **Goal:** Early lead capture, notifying students when WIP lessons (L3-L16) are published, and granting access to GitHub community channels.

### 2. Global Index / Portal (`index.mdx`)
- **Placement:** CardGrid at the bottom ("Comunidad y Soporte").
- **Goal:** General onboarding for new visitors exploring the Kotlin ecosystem.

### 3. Lesson Footers (`01-environment-and-hello-world.mdx`, `02-variables-and-null-safety.mdx`)
- **Placement:** Section "Feedback y Dudas de la Lección".
- **Goal:** Collect friction points, bug reports on Gradle/JDK setup, and pedagogical clarity feedback.

---

## Canonical Tally MCP Payload

```json
{
  "title": "Kotlin para Principiantes: Comunidad y Acceso Anticipado",
  "styling": {
    "submitButtonText": "Unirme a la Comunidad"
  },
  "groups": [
    {
      "blocks": [
        {
          "type": "TEXT",
          "html": "👋 <b>¡Bienvenido al ecosistema Kotlin Desde Cero!</b><br>Completa este breve formulario para recibir notificaciones cuando publiquemos nuevas lecciones, acceder al repositorio del <b>AI Chat CLI</b> y recibir soporte."
        }
      ]
    },
    {
      "blocks": [
        { "type": "TITLE", "html": "¿Cuál es tu nombre o alias?" },
        { "type": "INPUT_TEXT", "placeholder": "Ej. Alex Dev" }
      ]
    },
    {
      "blocks": [
        { "type": "TITLE", "html": "¿Cuál es tu correo electrónico?" },
        { "type": "INPUT_EMAIL", "placeholder": "tu-correo@ejemplo.com" }
      ]
    },
    {
      "blocks": [
        { "type": "TITLE", "html": "¿Cuál es tu trasfondo técnico actual?" },
        { "type": "MULTIPLE_CHOICE_OPTION", "text": "Nuevo en la programación (primer lenguaje)" },
        { "type": "MULTIPLE_CHOICE_OPTION", "text": "Desarrollador Java / Android tradicional" },
        { "type": "MULTIPLE_CHOICE_OPTION", "text": "Desarrollador Web (JS, TS, Python, PHP)" },
        { "type": "MULTIPLE_CHOICE_OPTION", "text": "Ingeniero de Software con experiencia" }
      ]
    },
    {
      "blocks": [
        { "type": "TITLE", "html": "¿Qué temas del curso te interesan más?" },
        { "type": "CHECKBOX", "text": "Construcción del AI Chat CLI (Proyecto Final)" },
        { "type": "CHECKBOX", "text": "Programación Funcional (Lambdas, Scope Functions)" },
        { "type": "CHECKBOX", "text": "Corrutinas y Concurrencia Asíncrona" },
        { "type": "CHECKBOX", "text": "Buenas prácticas de POO y Arquitectura en la JVM" }
      ]
    },
    {
      "blocks": [
        { "type": "TITLE", "html": "¿Tienes alguna duda o sugerencia para las próximas lecciones?" },
        { "type": "TEXTAREA", "placeholder": "Cuéntanos tus expectativas o preguntas..." }
      ]
    }
  ]
}
```

---

## Form Integration URL

- **URL (Production):** `https://tally.so/r/lbk9MB`
- **Form ID:** `lbk9MB`
- **Status:** `PUBLISHED`
