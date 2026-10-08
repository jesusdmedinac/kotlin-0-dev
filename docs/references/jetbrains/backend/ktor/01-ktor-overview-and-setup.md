# Ktor: Overview & Project Setup

* **Official Source:** [https://ktor.io/docs/welcome.html](https://ktor.io/docs/welcome.html), [https://ktor.io/docs/server-create-a-new-project.html](https://ktor.io/docs/server-create-a-new-project.html)
* **Breadcrumbs:** Ktor Server / Getting started with Ktor Server
* **Target Version:** Ktor 3.x (Latest: 3.6.0+) / Kotlin 2.x

---

## 1. Concepts & Architecture

### What is Ktor?
Ktor is an asynchronous web framework built from the ground up by JetBrains in Kotlin. Unlike traditional heavyweight Java frameworks that rely on classpath reflection and heavy annotations, Ktor is:
* **Coroutine-Native:** Every request lifecycle runs inside lightweight coroutines, enabling high throughput without blocking operating system threads.
* **DSL & Code-Driven:** Configuration, routing, security, and content negotiation are declared via explicit, type-safe Kotlin DSLs.
* **Modular Plugin Architecture:** The core engine is lightweight; features are installed as plugins only when needed.
* **Multiplatform:** Operates as both an HTTP Server (JVM) and an HTTP Client (JVM, Android, iOS, Desktop, WebAssembly, JS).

---

## 2. Project Creation Methods

JetBrains provides three official ways to scaffold a new Ktor application:

### 1. Web-based Project Generator ([start.ktor.io](https://start.ktor.io/))
* Allows configuring artifact coordinates, build systems (Gradle Kotlin DSL, Gradle Groovy, Maven, Amper), server engines, and initial plugins.
* Generates a ready-to-run ZIP archive.

### 2. Ktor CLI Tool
A dedicated command-line tool for developers preferring terminal-first workflows:
```bash
# Installation
brew install ktor               # macOS / Linux
winget install JetBrains.KtorCLI # Windows

# Interactive project creation
ktor new
```

### 3. IntelliJ IDEA Ultimate
Native wizard under **File | New | Project -> Ktor**.

---

## 3. Project Structure & Core Entry Points

A standard Ktor project consists of:

```
ktor-sample/
├── build.gradle.kts
├── settings.gradle.kts
└── src/
    └── main/
        ├── kotlin/
        │   └── com/example/
        │       ├── Application.kt      # Main entry point
        │       └── Routing.kt          # Route definitions
        └── resources/
            └── application.yaml        # Server configuration file
```

### 1. Configuration in Code vs YAML/HOCON

#### Code-First Approach (`embeddedServer`):
```kotlin
package com.example

import io.ktor.server.engine.*
import io.ktor.server.netty.*
import io.ktor.server.application.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun main() {
    embeddedServer(Netty, port = 8080, host = "0.0.0.0") {
        module()
    }.start(wait = true)
}

fun Application.module() {
    configureRouting()
}
```

#### Configuration File Approach (`application.yaml`):
```yaml
ktor:
  deployment:
    port: 8080
    host: 0.0.0.0
  application:
    modules:
      - com.example.ApplicationKt.module
```

### 2. Building and Running
```bash
chmod +x ./gradlew
./gradlew build
./gradlew run
# Server listening at http://0.0.0.0:8080
```

---

## 4. Server Engines
Ktor supports pluggable server engines based on deployment requirements:
* **Netty:** The standard, highly optimized default engine for high concurrency.
* **CIO (Coroutine I/O):** Pure Kotlin engine using asynchronous coroutines for all I/O operations without third-party C/Java bindings.
* **Jetty / Tomcat:** Compatible with traditional servlet container environments.

---

## 5. Related Official Links
* [Ktor Project Generator](https://start.ktor.io/)
* [Next: Ktor Routing](../ktor/02-routing.md)
