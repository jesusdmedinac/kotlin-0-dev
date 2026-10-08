# Spring Boot with Kotlin: Overview & Project Setup

* **Official Source:** [https://kotlinlang.org/docs/jvm-get-started-spring-boot.html](https://kotlinlang.org/docs/jvm-get-started-spring-boot.html)
* **Breadcrumbs:** Kotlin / JVM / Spring Boot / Create a Spring Boot project with Kotlin
* **Target Version:** Spring Boot 3.x / Kotlin 1.9+ / Kotlin 2.x

---

## 1. Official Overview & Philosophy

Spring Framework has offered first-class support for Kotlin since Spring Framework 5.0 (2017). JetBrains and the Spring team maintain close engineering collaboration, enabling:
* **All-Open Compiler Plugin (`kotlin-spring`):** Automatically opens classes and methods annotated with `@Configuration`, `@Bean`, `@Component`, `@Service`, `@Repository`, avoiding the need for manual `open` keywords required by Spring's CGLIB proxies.
* **No-Arg Compiler Plugin (`kotlin-jpa`):** Generates zero-argument constructors for JPA entities (`@Entity`, `@Embeddable`, `@MappedSuperclass`).
* **Extension Functions & Reified Generics:** Eliminates Java reflection boilerplate (e.g., `runApplication<App>(*args)` instead of `SpringApplication.run(App.class, args)`).
* **Coroutines & WebFlux:** Native `suspend` handler functions in Spring WebFlux controllers.

---

## 2. Project Generation & Dependencies

### Initialization Options:
1. **IntelliJ IDEA Ultimate:** `File | New | Project -> Spring Initializr`.
2. **Spring Initializr Web UI:** [start.spring.io](https://start.spring.io):
   * **Project:** Gradle - Kotlin
   * **Language:** Kotlin
   * **Java:** 17 or 21 (LTS)
   * **Dependencies:** Spring Web, Spring Data JDBC, H2 Database

### Gradle Build Configuration (`build.gradle.kts`):

```kotlin
plugins {
    id("org.springframework.boot") version "3.4.3"
    id("io.spring.dependency-management") version "1.1.7"
    kotlin("jvm") version "2.1.10"
    kotlin("plugin.spring") version "2.1.10"
}

group = "com.example"
version = "0.0.1-SNAPSHOT"

java {
    toolchain {
        languageVersion = JavaLanguageVersion.of(21)
    }
}

repositories {
    mavenCentral()
}

dependencies {
    implementation("org.springframework.boot:spring-boot-starter-web")
    implementation("org.springframework.boot:spring-boot-starter-data-jdbc")
    implementation("com.fasterxml.jackson.module:jackson-module-kotlin")
    implementation("org.jetbrains.kotlin:kotlin-reflect")
    runtimeOnly("com.h2database:h2")
    testImplementation("org.springframework.boot:spring-boot-starter-test")
    testImplementation("org.jetbrains.kotlin:kotlin-test-junit5")
    testRuntimeOnly("org.junit.platform:junit-platform-launcher")
}

kotlin {
    compilerOptions {
        freeCompilerArgs.addAll("-Xjsr305=strict")
    }
}

tasks.withType<Test> {
    useJUnitPlatform()
}
```

### Key Kotlin-Specific Compiler Settings:
* **`jackson-module-kotlin`:** Enables Jackson to deserialize JSON into Kotlin data classes respecting non-null properties and default parameter values.
* **`kotlin-reflect`:** Required by Spring and Jackson to inspect Kotlin constructors and metadata.
* **`-Xjsr305=strict`:** Tells the Kotlin compiler to treat JSR-305 nullability annotations (used throughout Spring Framework) as strict null checks rather than platform types (`T!`).

---

## 3. Application Entry Point

File: `src/main/kotlin/com/example/demo/DemoApplication.kt`

```kotlin
package com.example.demo

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class DemoApplication

fun main(args: Array<String>) {
    runApplication<DemoApplication>(*args)
}
```

### Under the Hood Comparison:
| Aspect | Java Standard | Kotlin Idiomatic |
|---|---|---|
| **Class Declaration** | `public class DemoApplication { ... }` | `class DemoApplication` (public and empty by default) |
| **Main Execution** | `SpringApplication.run(DemoApplication.class, args);` | `runApplication<DemoApplication>(*args)` |
| **Reified Types** | Passing `Class<T>` explicitly | Reified generic `runApplication<T>` |
| **Spread Operator** | Array passed directly | `*args` (passes Kotlin array as Java varargs) |

---

## 4. Official Reference Links
* [Create a Spring Boot project with Kotlin](https://kotlinlang.org/docs/jvm-create-project-with-spring-boot.html)
* [Spring Boot Kotlin Official Reference](https://docs.spring.io/spring-boot/docs/current/reference/html/features.html#features.kotlin)
