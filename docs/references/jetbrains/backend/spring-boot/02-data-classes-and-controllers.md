# Spring Boot: Data Classes & REST Controllers

* **Official Source:** [https://kotlinlang.org/docs/jvm-spring-boot-add-data-class.html](https://kotlinlang.org/docs/jvm-spring-boot-add-data-class.html)
* **Breadcrumbs:** Kotlin / JVM / Spring Boot / Add data class to Spring Boot project
* **Target Version:** Spring Boot 3.x / Kotlin 2.x

---

## 1. Concepts & Data Modeling

In Kotlin, models and DTOs (Data Transfer Objects) are represented succinctly using `data class`.

### The DTO Definition:
```kotlin
data class Message(val id: String?, val text: String)
```

### What the Kotlin Compiler Generates Automatically:
* Primary constructor parameters stored as read-only properties (`val`).
* `equals()` and `hashCode()` based on all properties.
* `toString()` in readable format (`Message(id=1, text=Hello)`).
* `copy()` function for non-destructive mutation.
* `component1()`, `component2()` for destructuring declarations.
* Eliminates over 50 lines of Java getters, setters, constructors, and boilerplate.

---

## 2. Defining the REST Controller

File: `src/main/kotlin/com/example/demo/DemoApplication.kt`

```kotlin
package com.example.demo

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
class DemoApplication

fun main(args: Array<String>) {
    runApplication<DemoApplication>(*args)
}

@RestController
class MessageResource {
    @GetMapping
    fun index(): List<Message> = listOf(
        Message("1", "Hello!"),
        Message("2", "Bonjour!"),
        Message("3", "Privet!")
    )
}

data class Message(val id: String?, val text: String)
```

---

## 3. Idiomatic Kotlin Controller Patterns

### 1. Single-Expression Functions
When a controller method performs a direct calculation or returns a collection, use single-expression syntax with `=` rather than block syntax `{ return ... }`:

```kotlin
@GetMapping("/ping")
fun ping(): Map<String, String> = mapOf("status" to "ok", "timestamp" to Instant.now().toString())
```

### 2. Constructor Dependency Injection
Spring automatically autowires dependencies declared in primary constructors. Kotlin eliminates the need for `@Autowired` on the class constructor or field:

```kotlin
@RestController
@RequestMapping("/api/v1/messages")
class MessageController(
    private val messageService: MessageService,
    private val auditLogger: AuditLogger
) {
    // Endpoints here
}
```

### 3. Null Safety & Path Variables / Request Params
Use Kotlin's type system to express optional vs mandatory request parameters:

```kotlin
@GetMapping("/search")
fun search(
    @RequestParam query: String,                // Mandatory: Spring throws 400 Bad Request if missing
    @RequestParam limit: Int? = 10              // Optional with default fallback: null or default
): List<Message> { ... }
```

---

## 4. Running and Testing the Endpoint

### Running the App:
```bash
./gradlew bootRun
```

### Consuming the Endpoint:
```bash
curl http://localhost:8080/
```

### JSON Response:
```json
[
  {
    "id": "1",
    "text": "Hello!"
  },
  {
    "id": "2",
    "text": "Bonjour!"
  },
  {
    "id": "3",
    "text": "Privet!"
  }
]
```

---

## 5. Official Reference Links
* [Add data class to Spring Boot project](https://kotlinlang.org/docs/jvm-spring-boot-add-data-class.html)
