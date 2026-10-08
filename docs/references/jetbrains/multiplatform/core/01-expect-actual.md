# Kotlin Multiplatform: Expected and Actual Declarations

* **Official Source:** [https://kotlinlang.org/docs/multiplatform/multiplatform-expect-actual.html](https://kotlinlang.org/docs/multiplatform/multiplatform-expect-actual.html)
* **Breadcrumbs:** Kotlin Multiplatform / Share code / Expected and actual declarations
* **Target Version:** Modern Kotlin 2.x

---

## 1. Concepts & Compiler Mechanism

The `expect`/`actual` mechanism provides a type-safe contract between platform-agnostic common code and target-specific platform code.

```
┌────────────────────────────────────────────────────────┐
│                      commonMain                        │
│             expect fun buildIdentity(): Identity       │
└───────────────────────────┬────────────────────────────┘
                            │ compiler merges per target
         ┌──────────────────┴──────────────────┐
         ▼                                     ▼
┌──────────────────────────────┐ ┌──────────────────────────────┐
│           jvmMain            │ │          nativeMain          │
│ actual fun buildIdentity() = │ │ actual fun buildIdentity() = │
│  JVM implementation (Java)   │ │  Native implementation(POSIX)│
└──────────────────────────────┘ └──────────────────────────────┘
```

### Compiler Rules & Constraints:
1. **No Implementation in Common:** Expected declarations cannot contain default function bodies or property initializers.
2. **Matching Package:** Actual declarations must reside in the exact same package as their expected counterparts (e.g., `org.example.identity`).
3. **Exhaustive Matching:** Every expected declaration must have a matching actual declaration in every target source set (or shared intermediate source set).
4. **Binary Merging:** The Kotlin compiler merges expected and actual symbols into a single compiled declaration per target binary.

---

## 2. Core Approaches & Code Patterns

### Pattern A: Expected Functions
The simplest pattern: declare an expected factory or utility function in `commonMain` and implement it per platform:

```kotlin
// commonMain:
package identity

class Identity(val userName: String, val processID: Long)

expect fun buildIdentity(): Identity
```

```kotlin
// jvmMain:
package identity

import java.lang.ProcessHandle
import java.lang.System

actual fun buildIdentity() = Identity(
    System.getProperty("user.name") ?: "None",
    ProcessHandle.current().pid()
)
```

```kotlin
// nativeMain:
package identity

import kotlinx.cinterop.toKString
import platform.posix.getlogin
import platform.posix.getpid

actual fun buildIdentity() = Identity(
    getlogin()?.toKString() ?: "None",
    getpid().toLong()
)
```

---

### Pattern B: Common Interfaces (Recommended by JetBrains)
Instead of proliferating `expect/actual` across large classes, define a regular Kotlin `interface` in common code and provide platform implementations:

```kotlin
// commonMain:
package identity

interface Identity {
    val userName: String
    val processID: Long
}

expect fun buildIdentity(): Identity
```

```kotlin
// jvmMain:
package identity

actual fun buildIdentity(): Identity = JVMIdentity()

class JVMIdentity(
    override val userName: String = System.getProperty("user.name") ?: "none",
    override val processID: Long = ProcessHandle.current().pid()
) : Identity
```

```kotlin
// nativeMain:
package identity

import kotlinx.cinterop.toKString
import platform.posix.getlogin
import platform.posix.getpid

actual fun buildIdentity(): Identity = NativeIdentity()

class NativeIdentity(
    override val userName: String = getlogin()?.toKString() ?: "None",
    override val processID: Long = getpid().toLong()
) : Identity
```

> [!TIP]
> **JetBrains Architectural Recommendation:** Rely on interfaces + factory functions or Dependency Injection rather than `expect class`. Interfaces make unit testing trivial (via mocks/fakes) and prevent lock-in to one implementation per platform.

---

### Pattern C: Expected Properties & Objects

#### Expected Property:
```kotlin
// commonMain:
expect val identity: Identity

// jvmMain:
actual val identity: Identity = JVMIdentity()

// nativeMain:
actual val identity: Identity = NativeIdentity()
```

#### Expected Singleton Object:
```kotlin
// commonMain:
expect object IdentityBuilder {
    fun build(): Identity
}

// jvmMain:
actual object IdentityBuilder {
    actual fun build() = JVMIdentity()
}
```

---

## 3. Advanced Use Cases

### 1. Satisfying Declarations via `actual typealias`
When a platform already provides a standard library class matching your requirements, use `actual typealias` instead of writing a wrapper class:

```kotlin
// commonMain:
expect enum class Month {
    JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE,
    JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER
}

expect class MyDate {
    fun getYear(): Int
    fun getMonth(): Month
    fun getDayOfMonth(): Int
}
```

```kotlin
// jvmMain:
actual typealias Month = java.time.Month
actual typealias MyDate = java.time.LocalDate
```

### 2. Additional Enum Entries on Actualization
Platform actualizations may declare extra enum entries not present in `commonMain`. When exhaustive `when` expressions are evaluated in common code, an `else` branch is strictly required:

```kotlin
// commonMain:
expect enum class Department { IT, HR, Sales }

fun routeDepartment(dept: Department) {
    when (dept) {
        Department.IT -> println("IT")
        Department.HR -> println("HR")
        Department.Sales -> println("Sales")
        else -> println("Other platform department") // Mandatory!
    }
}

// jvmMain:
actual enum class Department { IT, HR, Sales, Legal }
```

### 3. Expected Annotations & `@OptionalExpectation`
For metadata annotations that might only be needed on specific targets (e.g., JVM serialization annotations):

```kotlin
@OptIn(ExperimentalMultiplatform::class)
@Target(AnnotationTarget.CLASS)
@Retention(AnnotationRetention.RUNTIME)
@OptionalExpectation
expect annotation class XmlSerializable()

@XmlSerializable
class Person(val name: String, val age: Int)
```

On targets where the annotation is omitted, the Kotlin compiler does not generate a compilation error when `@OptionalExpectation` is applied.

---

## 4. Official Reference Links
* [Expected and actual declarations guide](https://kotlinlang.org/docs/multiplatform/multiplatform-expect-actual.html)
* [Connecting to platform-specific APIs](https://kotlinlang.org/docs/multiplatform/multiplatform-connect-to-apis.html)
