# Kotlin Multiplatform: Project Structure & Source Set Hierarchy

* **Official Source:** [https://kotlinlang.org/docs/multiplatform/multiplatform-share-on-platforms.html](https://kotlinlang.org/docs/multiplatform/multiplatform-share-on-platforms.html)
* **Breadcrumbs:** Kotlin Multiplatform / Share code / Share code between platforms
* **Target Version:** Modern Kotlin 2.x

---

## 1. Concepts & Mental Model

A Kotlin Multiplatform project is organized into **source sets**. A source set is a logical collection of Kotlin files and resources with specific dependency rules and target compilation constraints:

```
                            ┌─────────────────────┐
                            │     commonMain      │  (Platform-agnostic Kotlin)
                            └──────────┬──────────┘
                                       │ dependsOn
         ┌─────────────────────────────┼─────────────────────────────┐
         ▼                             ▼                             ▼
┌──────────────────┐          ┌──────────────────┐          ┌──────────────────┐
│     jvmMain      │          │    nativeMain    │          │      jsMain      │
└──────────────────┘          └────────┬─────────┘          └──────────────────┘
                                       │ dependsOn
         ┌─────────────────────────────┴─────────────────────────────┐
         ▼                                                           ▼
┌──────────────────┐                                        ┌──────────────────┐
│    appleMain     │                                        │    linuxMain     │
└────────┬─────────┘                                        └──────────────────┘
         │ dependsOn
┌────────▼─────────┐
│     iosMain      │
└────────┬─────────┘
         │ dependsOn
    ┌────┴─────────────────────────────┐
    ▼                                  ▼
┌─────────────────────────┐   ┌─────────────────────────┐
│       iosArm64Main      │   │  iosSimulatorArm64Main  │
│      (Device ARM64)     │   │     (Simulator ARM64)   │
└─────────────────────────┘   └─────────────────────────┘
```

---

## 2. The Default Hierarchy Template

Since Kotlin 1.9.20+, the Kotlin Gradle Plugin (KGP) includes a **Default Hierarchy Template** enabled automatically. You do not need to wire manual `dependsOn` calls between intermediate source sets.

### Standard Build Script (`build.gradle.kts`):

```kotlin
plugins {
    alias(libs.plugins.kotlinMultiplatform)
    alias(libs.plugins.androidLibrary)
}

kotlin {
    // 1. Android Target
    androidTarget {
        compilerOptions {
            jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17)
        }
    }
    
    // 2. JVM Target
    jvm()
    
    // 3. iOS Targets (automatically grouped under iosMain & appleMain)
    iosX64()
    iosArm64()
    iosSimulatorArm64()
    
    // 4. Web Targets
    @OptIn(org.jetbrains.kotlin.gradle.targets.js.dsl.ExperimentalWasmDsl::class)
    wasmJs {
        browser()
    }

    // Source set dependencies
    sourceSets {
        commonMain.dependencies {
            implementation(libs.kotlinx.coroutines.core)
            implementation(libs.kotlinx.serialization.json)
            implementation(libs.ktor.client.core)
        }
        
        androidMain.dependencies {
            implementation(libs.ktor.client.okhttp)
        }
        
        iosMain.dependencies {
            implementation(libs.ktor.client.darwin)
        }
        
        jvmMain.dependencies {
            implementation(libs.ktor.client.cio)
        }
    }
}
```

---

## 3. Platform Libraries & Interop

* **Kotlin/Native Standard Platform Libraries:**
  When writing code in `iosMain` or `appleMain`, Kotlin/Native automatically provides bindings to Apple frameworks without additional Gradle dependencies:
  ```kotlin
  import platform.Foundation.NSDate
  import platform.Foundation.timeIntervalSince1970
  import platform.UIKit.UIDevice

  fun getDeviceModel(): String = UIDevice.currentDevice.model
  ```

* **POSIX Platform Bindings:**
  Available in `nativeMain` for low-level socket, file, and OS manipulation:
  ```kotlin
  import platform.posix.getpid
  import platform.posix.getlogin
  ```

---

## 4. Official Reference Links
* [Share code between platforms](https://kotlinlang.org/docs/multiplatform/multiplatform-share-on-platforms.html)
* [Hierarchical project structure guide](https://kotlinlang.org/docs/multiplatform/multiplatform-hierarchy.html)
