# Spring Boot: Database Persistence & CrudRepository

* **Official Source:** 
  * [Add database support for Spring Boot project](https://kotlinlang.org/docs/jvm-spring-boot-add-db-support.html)
  * [Use Spring Data CrudRepository for database access](https://kotlinlang.org/docs/jvm-spring-boot-using-crudrepository.html)
* **Breadcrumbs:** Kotlin / JVM / Spring Boot / Database & Persistence
* **Target Version:** Spring Boot 3.x / Kotlin 2.x

---

## 1. Concepts & Architecture

In this tutorial, JetBrains demonstrates a clean 3-tier enterprise architecture using Kotlin:

```
┌───────────────────────────────────────────────┐
│           MessageResource (Controller)        │
│          REST Endpoints: GET, POST            │
└───────────────────────┬───────────────────────┘
                        │ delegates to
┌───────────────────────▼───────────────────────┐
│           MessageService (Business Logic)     │
│         Transactional operations & DTOs       │
└───────────────────────┬───────────────────────┘
                        │ delegates to
┌───────────────────────▼───────────────────────┐
│        MessageRepository (CrudRepository)     │
│             Spring Data JDBC Proxy            │
└───────────────────────┬───────────────────────┘
                        │ executes SQL against
┌───────────────────────▼───────────────────────┐
│              H2 In-Memory Database            │
│         Table: MESSAGES (UUID Primary Key)    │
└───────────────────────────────────────────────┘
```

---

## 2. Database Schema Configuration

File: `src/main/resources/schema.sql`

```sql
CREATE TABLE IF NOT EXISTS messages (
    id   VARCHAR(60)  DEFAULT RANDOM_UUID() PRIMARY KEY,
    text VARCHAR      NOT NULL
);
```

File: `src/main/resources/application.properties`

```properties
spring.sql.init.schema-locations=classpath:schema.sql
```

---

## 3. Entity Modeling with Spring Data JDBC

File: `src/main/kotlin/com/example/demo/Message.kt`

```kotlin
package com.example.demo

import org.springframework.data.annotation.Id
import org.springframework.data.relational.core.mapping.Table

@Table("MESSAGES")
data class Message(
    val text: String,
    @Id val id: String? = null
)
```

### Key Architectural Detail: Default Parameter Ordering
* Notice that `text: String` is declared **first**, and `@Id val id: String? = null` is declared **second** with a default value of `null`.
* When creating a new message from API payloads, callers simply pass `Message(text = "Hello")`. The ID is `null` at creation time, signaling to Spring Data and H2 to generate the UUID primary key upon insertion.

---

## 4. Repository Definition & `findByIdOrNull`

File: `src/main/kotlin/com/example/demo/MessageRepository.kt`

```kotlin
package com.example.demo

import org.springframework.data.repository.CrudRepository

interface MessageRepository : CrudRepository<Message, String>
```

### The Idiomatic Spring-Kotlin Extension:
In standard Java, `CrudRepository.findById(id)` returns `java.util.Optional<T>`.
In Kotlin, Spring provides a dedicated extension function:

```kotlin
import org.springframework.data.repository.findByIdOrNull

val message: Message? = db.findByIdOrNull(id)
```
This converts the Java `Optional` into an idiomatic Kotlin nullable type (`Message?`), enabling safe calls (`?.`), Elvis operator (`?:`), and smart casts without invoking `.get()` or `.orElse(null)`.

---

## 5. Service Layer Implementation

File: `src/main/kotlin/com/example/demo/MessageService.kt`

```kotlin
package com.example.demo

import org.springframework.data.repository.findByIdOrNull
import org.springframework.stereotype.Service

@Service
class MessageService(val db: MessageRepository) {

    fun findMessages(): List<Message> = db.findAll().toList()

    fun findMessageById(id: String): Message? = db.findByIdOrNull(id)

    fun save(message: Message): Message = db.save(message)
}
```

* **Constructor Injection:** `val db: MessageRepository` in the primary constructor is automatically autowired by Spring.
* **`toList()` Conversion:** Converts the `Iterable<Message>` returned by `findAll()` into a standard Kotlin read-only `List`.

---

## 6. Complete REST Controller with CRUD Operations

File: `src/main/kotlin/com/example/demo/MessageResource.kt`

```kotlin
package com.example.demo

import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*
import java.net.URI

@RestController
@RequestMapping("/")
class MessageResource(val service: MessageService) {

    @GetMapping
    fun list(): List<Message> = service.findMessages()

    @PostMapping
    fun post(@RequestBody message: Message): ResponseEntity<Message> {
        val saved = service.save(message)
        return ResponseEntity.created(URI("/${saved.id}")).body(saved)
    }

    @GetMapping("/{id}")
    fun get(@PathVariable id: String): ResponseEntity<Message> =
        service.findMessageById(id)?.let { ResponseEntity.ok(it) }
            ?: ResponseEntity.notFound().build()
}
```

### Idiomatic Highlights:
* **HTTP 201 Created:** `ResponseEntity.created(URI("/${saved.id}")).body(saved)` constructs standard RFC location headers.
* **Safe Nullable Handling:** `service.findMessageById(id)?.let { ResponseEntity.ok(it) } ?: ResponseEntity.notFound().build()` cleanly branches between 200 OK and 404 Not Found using Kotlin's scoping and Elvis operators without verbose `if (message != null)` blocks.

---

## 7. Verifying Endpoints via cURL

### 1. Create a Message (POST):
```bash
curl -X POST http://localhost:8080/ \
  -H 'Content-Type: application/json' \
  -d '{"text": "Hello from Kotlin!"}'
```

Response:
```json
{
  "id": "e8e19c96-180b-466d-a5ee-a34f9a0c0b11",
  "text": "Hello from Kotlin!"
}
```

### 2. List All Messages (GET):
```bash
curl http://localhost:8080/
```

### 3. Fetch Message by ID (GET):
```bash
curl http://localhost:8080/e8e19c96-180b-466d-a5ee-a34f9a0c0b11
```

---

## 8. Official Reference Links
* [Add database support for Spring Boot project](https://kotlinlang.org/docs/jvm-spring-boot-add-db-support.html)
* [Use Spring Data CrudRepository for database access](https://kotlinlang.org/docs/jvm-spring-boot-using-crudrepository.html)
