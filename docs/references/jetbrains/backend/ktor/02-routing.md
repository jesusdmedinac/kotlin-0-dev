# Ktor: Routing & Request Handling

* **Official Source:** [https://ktor.io/docs/server-routing.html](https://ktor.io/docs/server-routing.html)
* **Breadcrumbs:** Ktor Server / Developing applications / Routing
* **Target Version:** Ktor 3.x (Latest: 3.6.0+) / Kotlin 2.x

---

## 1. Concepts & Mental Model

### The Routing Plugin
Routing is the core Ktor mechanism for directing incoming HTTP requests to their appropriate execution handlers:
* Can be installed via `install(RoutingRoot)` or the canonical top-level extension: `routing { ... }`.
* Inside a route handler, you get access to the `call` context (`ApplicationCall`), representing the incoming request and outgoing response.

```kotlin
import io.ktor.server.application.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun Application.configureRouting() {
    routing {
        get("/hello") {
            call.respondText("Hello, world!")
        }
    }
}
```

---

## 2. HTTP Verbs and Route Handlers

Ktor provides dedicated DSL functions for standard HTTP verbs: `get`, `post`, `put`, `delete`, `patch`, `head`, and `options`.

### Path Patterns and Parameter Matching

| Pattern | Syntax | Description & Example Match |
|---|---|---|
| **Exact match** | `"/orders"` | Matches only `/orders`. |
| **Path parameter** | `"/user/{id}"` | Captures a required path segment. Accessed via `call.parameters["id"]`. |
| **Optional parameter** | `"/user/{id?}"` | Captures segment if present (only valid at the end of a path). |
| **Wildcard** | `"/user/*"` | Matches any single segment (`/user/john`, but not `/user` or `/user/a/b`). |
| **Tailcard** | `"/files/{...}"` | Matches all remaining segments (`/files/a/b/c`). |
| **Parameter tailcard** | `"/docs/{path...}"` | Captures all remaining segments into a list. Accessed via `call.parameters.getAll("path")`. |
| **Regular expression** | `Regex(".+/hello")` | Regex-based matching. Supports named groups: `(?<id>\d+)`. |

```kotlin
routing {
    // Path parameter
    get("/user/{login}") {
        val userLogin = call.parameters["login"]
        call.respondText("User: $userLogin")
    }

    // Path parameter with tailcard
    get("/docs/{path...}") {
        val segments: List<String>? = call.parameters.getAll("path")
        call.respondText("Accessing path: ${segments?.joinToString("/")}")
    }

    // Regular Expression with Named Capture Group
    get(Regex("""(?<id>\d+)/details""")) {
        val id = call.parameters["id"]!!
        call.respondText("Item ID: $id")
    }
}
```

---

## 3. Organizing Routes: Nesting & Route Extensions

To keep large production backends modular and clean, Ktor supports two core organization patterns:

### 1. Hierarchical Nested Routes (`route`)
```kotlin
routing {
    route("/customer") {
        get {
            call.respondText("List of all customers")
        }
        post {
            call.respondText("Customer created")
        }
        route("/{id}") {
            get {
                val id = call.parameters["id"]
                call.respondText("Customer: $id")
            }
            delete {
                call.respondText("Customer deleted")
            }
        }
    }
}
```

### 2. Route Extension Functions (Modular Micro-Files)
Rather than writing thousands of lines in `Application.kt`, routes can be partitioned into dedicated extension functions on `Route`:

```kotlin
// CustomerRoutes.kt
package com.example.routes

import io.ktor.server.routing.*
import io.ktor.server.response.*

fun Route.customerRouting() {
    route("/customer") {
        get { call.respondText("Customers") }
    }
}

// OrderRoutes.kt
fun Route.orderRouting() {
    route("/order") {
        get { call.respondText("Orders") }
    }
}

// In Application.kt:
fun Application.configureRouting() {
    routing {
        customerRouting()
        orderRouting()
    }
}
```

---

## 4. Related Official Links
* [Handling Requests in Ktor](https://ktor.io/docs/server-requests.html)
* [Sending Responses in Ktor](https://ktor.io/docs/server-responses.html)
* [Next: Client Engines](../ktor/03-client-engines.md)
