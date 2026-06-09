Feature: Curso 2 - Kotlin para Principiantes
  Como programador con experiencia previa en otros lenguajes
  Quiero aprender Kotlin de forma idiomática, desde su sintaxis hasta corrutinas básicas
  Para poder construir un Chat de IA interactivo desde la terminal

  Scenario: Lección 1 - Entorno y Hola Mundo
    Dado que el estudiante ya sabe programar
    Cuando configura su entorno (IntelliJ o CLI)
    Entonces comprende la estructura básica de un archivo y compila su primer "Hola Mundo"
  
  Scenario: Lección 2 - Variables, Tipos y Null Safety (La Base de Kotlin)
    Dado que Kotlin tiene un sistema de tipos fuerte y es seguro contra nulos
    Cuando el estudiante define variables mutables (`var`) e inmutables (`val`), y tipos nulables (`?`)
    Entonces puede crear el estado inicial del Chat (ej. nombre de usuario, API key simulada)

  Scenario: Lección 3 - Control de Flujo Avanzado (Expresiones y `when`)
    Dado que el estudiante necesita lógica condicional para el Chat
    Cuando utiliza `if` como expresión y el poderoso bloque `when`
    Entonces implementa la lógica del menú principal y comandos del Chat

  Scenario: Lección 4 - Funciones y Lambdas (Enfoque Funcional)
    Dado que Kotlin trata a las funciones como ciudadanos de primera clase
    Cuando el estudiante crea funciones de extensión, funciones de orden superior y lambdas
    Entonces refactoriza el procesamiento de los mensajes del usuario usando un enfoque funcional

  Scenario: Lección 5 - Colecciones y Operaciones (map, filter, fold)
    Dado que el historial del chat debe almacenarse en memoria
    Cuando utiliza Listas y Mapas junto con operaciones de colección
    Entonces gestiona y transforma el historial de mensajes del chat de manera inmutable

  Scenario: Lección 6 - POO Idiomática (Data Classes y Sealed Classes)
    Dado que los mensajes tienen diferentes estados y estructuras
    Cuando utiliza `data classes` para el modelo de datos y `sealed classes` para los tipos de mensajes (Usuario, Sistema, IA, Error)
    Entonces el estado del chat queda modelado de forma robusta, segura y tipada

  Scenario: Lección 7 - Programación Asíncrona (Corrutinas Básicas)
    Dado que el Chat de IA debe simular un tiempo de respuesta de red (delay)
    Cuando el estudiante introduce `suspend functions`, `runBlocking` y la función `delay`
    Entonces la aplicación procesa la "respuesta de la IA" sin bloquear el hilo de ejecución principal

  Scenario: Lección 8 - Proyecto Final (Chat de IA desde la terminal)
    Dado que el estudiante ha completado las lecciones teóricas
    Cuando une todos los conceptos previos (Null safety, POO, Lambdas y Corrutinas) en su repositorio final
    Entonces finaliza la CLI del "Chat de IA" y completa el Entregable Final del curso
