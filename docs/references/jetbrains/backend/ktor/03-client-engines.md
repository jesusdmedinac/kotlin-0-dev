# Ktor: Client Engines & Multiplatform HTTP

* **Official Source:** [https://ktor.io/docs/client-engines.html](https://ktor.io/docs/client-engines.html)
* **Breadcrumbs:** Ktor Client / Developing applications / Engines
* **Target Version:** Ktor 3.x (Latest: 3.6.0+) / Kotlin 2.x

---

## 1. Concepts & Mental Model

### What is a Client Engine?
Ktor Client provides a high-level, idiomatic Kotlin API (`HttpClient`) that delegates the actual HTTP networking, socket connections, TLS handshakes, and thread management to an **engine**.

```
                   ┌────────────────────────────────────────┐
                   │           HttpClient (Ktor)            │
                   │  (Plugins: ContentNegotiation, Auth)   │
                   └───────────────────┬────────────────────┘
                                       │ delegates to
         ┌─────────────────────────────┼─────────────────────────────┐
         ▼                             ▼                             ▼
┌──────────────────┐          ┌──────────────────┐          ┌──────────────────┐
│    CIO Engine    │          │  OkHttp Engine   │          │  Darwin Engine   │
│ (Kotlin Native / │          │  (JVM / Android) │          │  (iOS / macOS /  │
│   Multiplatform) │          │                  │          │     watchOS)     │
└──────────────────┘          └──────────────────┘          └──────────────────┘
```

* **Pluggable Architecture:** You can swap the underlying network engine without altering a single line of business logic or API calls.
* **Target-Specific Optimizations:** Different platforms offer specialized network stacks (e.g., `NSURLSession` on iOS via Darwin, OkHttp on Android, CIO across all targets).

---

## 2. Platform Support Matrix

| Engine | Supported Platforms | Protocols | Key Advantages & Best For |
|---|---|---|---|
| **CIO** (Coroutine I/O) | JVM, Android, Linux, macOS, Windows | HTTP/1.x, HTTP/2, WebSockets | Pure Kotlin implementation, lightweight coroutine-driven, zero external Java/C dependencies. Ideal for KMP shared modules and high-concurrency JVM microservices. |
| **OkHttp** | JVM, Android | HTTP/1.x, HTTP/2, WebSockets | Battle-tested Android/JVM standard. Supports OkHttp native interceptors, certificate pinning, and custom connection pools. |
| **Darwin** | iOS, macOS, tvOS, watchOS | HTTP/1.x, HTTP/2, WebSockets | Built on Apple's `NSURLSession`. Respects iOS background network transfers, system VPN/proxy configs, and Apple Keychain. |
| **Java** | JVM (Java 11+) | HTTP/1.x, HTTP/2, WebSockets | Standard `java.net.http.HttpClient`. Zero additional 3rd-party dependencies on modern JVM runtimes. |
| **Apache / Apache5** | JVM | HTTP/1.x, HTTP/2 | Apache HttpComponents. Rich legacy enterprise proxy, SSL, and authentication integrations. |
| **Js / WasmJs** | Browser, Node.js | HTTP/1.x, HTTP/2, WebSockets | Uses browser `fetch` API or Node.js network primitives. |
| **Curl** | Desktop & Server Native | HTTP/1.x, HTTP/2 | Powered by `libcurl`. |
| **WinHttp** | Windows Native | HTTP/1.x, HTTP/2, WebSockets | Powered by native Windows HTTP Services. |

---

## 3. Dependency Declaration

Add the core client artifact and your chosen engine in `build.gradle.kts`:

### Kotlin Multiplatform Shared Module:
```kotlin
kotlin {
    sourceSets {
        commonMain.dependencies {
            implementation("io.ktor:ktor-client-core:3.1.1")
        }
        jvmMain.dependencies {
            implementation("io.ktor:ktor-client-cio:3.1.1")
        }
        androidMain.dependencies {
            implementation("io.ktor:ktor-client-okhttp:3.1.1")
        }
        iosMain.dependencies {
            implementation("io.ktor:ktor-client-darwin:3.1.1")
        }
    }
}
```

### JVM Only (e.g., Backend Microservice):
```kotlin
dependencies {
    implementation("io.ktor:ktor-client-core:3.1.1")
    implementation("io.ktor:ktor-client-cio:3.1.1")
    implementation("io.ktor:ktor-client-content-negotiation:3.1.1")
    implementation("io.ktor:ktor-serialization-kotlinx-json:3.1.1")
}
```

---

## 4. Instantiation & Engine Configuration

### 1. Default (Classpath Resolution)
If no engine is passed, Ktor automatically resolves an available engine on the runtime classpath:
```kotlin
val client = HttpClient()
```

### 2. Explicit Engine Specification
Pass the engine factory as the first parameter:
```kotlin
import io.ktor.client.*
import io.ktor.client.engine.cio.*

val client = HttpClient(CIO)
```

### 3. Configuring Engine-Specific Settings
Engines expose custom configurations through the `engine { ... }` block:

#### CIO Engine Configuration:
```kotlin
val client = HttpClient(CIO) {
    engine {
        // Maximum number of active connections
        maxConnectionsCount = 1000
        
        // Endpoint configuration
        endpoint {
            maxConnectionsPerRoute = 100
            pipelineMaxSize = 20
            keepAliveTime = 5000
            connectTimeout = 5000
            connectAttempts = 5
        }
        
        // HTTPS / TLS setup
        https {
            serverName = "api.example.com"
        }
    }
}
```

#### OkHttp Engine Configuration:
```kotlin
import io.ktor.client.engine.okhttp.*
import okhttp3.logging.HttpLoggingInterceptor

val client = HttpClient(OkHttp) {
    engine {
        config {
            followRedirects(true)
            retryOnConnectionFailure(true)
        }
        addInterceptor(HttpLoggingInterceptor().apply {
            level = HttpLoggingInterceptor.Level.BODY
        })
    }
}
```

#### Darwin (iOS) Engine Configuration:
```kotlin
import io.ktor.client.engine.darwin.*

val client = HttpClient(Darwin) {
    engine {
        configureRequest {
            setAllowsCellularAccess(true)
        }
        usePreconfiguredSession(NSURLSession.sharedSession)
    }
}
```

---

## 5. Making Requests and Consuming Responses

```kotlin
import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.engine.cio.*
import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.http.*

suspend fun fetchGreeting(): String {
    val client = HttpClient(CIO)
    try {
        val response: HttpResponse = client.get("https://api.example.com/v1/greeting") {
            headers {
                append(HttpHeaders.Accept, "application/json")
                append(HttpHeaders.Authorization, "Bearer token123")
            }
            parameter("lang", "es")
        }
        
        if (response.status == HttpStatusCode.OK) {
            return response.bodyAsText()
        } else {
            throw IllegalStateException("Unexpected HTTP code: ${response.status}")
        }
    } finally {
        // Always close client when no longer needed to release thread pools & sockets
        client.close()
    }
}
```

---

## 6. Official Reference Links
* [Ktor Client Engines Guide](https://ktor.io/docs/client-engines.html)
* [Ktor Client Dependencies](https://ktor.io/docs/client-dependencies.html)
* [Ktor Multiplatform Project Setup](https://ktor.io/docs/client-multiplatform-mobile.html)
