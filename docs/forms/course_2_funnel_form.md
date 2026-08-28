# Course 2: Funnel & Student Community Form

## Metadata
- **Form Name:** Kotlin para Principiantes - Comunidad y Acceso Anticipado
- **Slug / Purpose:** `course-2-funnel`
- **Target Audience:** Students following Course 2 (Kotlin for Beginners) and building the AI Chat CLI.
- **Live Online Classes:** Starts Saturday September 12. Saturdays 9:00 AM - 11:00 AM (Primary) or 4:00 PM - 6:00 PM (Candidate group).
- **Pricing:** 600 MXN per class (Pay-per-session model).
- **Certification Requirements:** Complete 100% lab project (AI Chat CLI) + Live 1-on-1 code defense session + Full course cost coverage (16 lessons × $600 MXN = $9,600 MXN).

---

## Strategic Placements

### 1. Course 2 Welcome Funnel (`00-kotlin-for-begginers.mdx`)
- **Placement:** Section before CTA / Next steps ("Certificado de Finalización y Criterios de Aprobación" & "Clases en Vivo").
- **Goal:** Conversion for Saturday live cohorts starting Sept 12 (600 MXN/session), schedule preference polling (9-11 AM vs 4-6 PM), certification qualification, and general early access.

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
          "html": "👋 <b>¡Bienvenido al ecosistema Kotlin Desde Cero!</b><br>Completa este breve formulario para apartar tu lugar en las <b>clases en vivo (Inicio: Sábado 12 de Septiembre, $600 MXN/clase)</b>, votar por tu horario preferido y acceder al repositorio del <b>AI Chat CLI</b>."
        }
      ]
    },
    {
      "blocks": [
        { "type": "TITLE", "html": "¿Cuál es tu nombre completo?" },
        { "type": "INPUT_TEXT", "placeholder": "Ej. David Cepeda" }
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
        { "type": "TITLE", "html": "¿Qué horario de clases en vivo se adapta mejor a tu disponibilidad?" },
        { "type": "MULTIPLE_CHOICE_OPTION", "text": "Sábados de 9:00 AM a 11:00 AM (Matutino)" },
        { "type": "MULTIPLE_CHOICE_OPTION", "text": "Sábados de 4:00 PM a 6:00 PM (Vespertino)" },
        { "type": "MULTIPLE_CHOICE_OPTION", "text": "Cualquiera de los dos horarios me funciona" },
        { "type": "MULTIPLE_CHOICE_OPTION", "text": "Prefiero avanzar 100% autodidacta con las lecciones escritas" }
      ]
    },
    {
      "blocks": [
        { "type": "TITLE", "html": "🎓 ¿Te interesa obtener el Certificado Oficial de Finalización?" },
        { "type": "TEXT", "html": "<i>Requisitos: Cubrir el total del curso (16 lecciones × $600 MXN), completar el proyecto AI Chat CLI y aprobar la sesión de defensa técnica en vivo.</i>" },
        { "type": "MULTIPLE_CHOICE_OPTION", "text": "Sí, deseo certificarme cumpliendo todos los requisitos" },
        { "type": "MULTIPLE_CHOICE_OPTION", "text": "Solo deseo tomar las clases / aprender a mi ritmo sin certificarme" }
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

- **URL (Production):** `https://tally.so/r/GxAj5o`
- **Form ID:** `GxAj5o`
- **Workspace ID:** `wgbE9P`
- **Status:** `PUBLISHED`
