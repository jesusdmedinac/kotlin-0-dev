# Kotlin Multiplatform: Overview & Ecosystem

* **Official Source:** [https://kotlinlang.org/multiplatform/](https://kotlinlang.org/multiplatform/)
* **Target Version:** Modern Kotlin 2.x
* **Role:** Platform positioning, sharing strategies, and cross-platform architecture.

---

## 1. Vision & Core Value Proposition

Kotlin Multiplatform (KMP) allows engineering teams to share up to 100% of their codebase across multiple operating systems and targets without sacrificing native performance, device UI fidelity, or code maintainability.

```
                        ┌─────────────────────────────────┐
                        │    Shared Kotlin Codebase       │
                        │ (Domain, Networking, DB, State) │
                        └────────────────┬────────────────┘
                                         │ compiles to
     ┌───────────────────┬───────────────┴───┬───────────────────┬───────────────────┐
     ▼                   ▼                   ▼                   ▼                   ▼
┌──────────┐        ┌──────────┐        ┌──────────┐        ┌──────────┐        ┌──────────┐
│ Android  │        │   iOS    │        │ Desktop  │        │   Web    │        │  Server  │
│ (JVM/DEX)│        │ (Native) │        │(JVM/Nat.)│        │(Wasm/JS) │        │  (JVM)   │
└──────────┘        └──────────┘        └──────────┘        └──────────┘        └──────────┘
```

* **No Virtual Machine on Native Targets:** Kotlin/Native compiles directly to machine code (LLVM bitcode / AArch64 / x86_64) on Apple platforms, producing standard iOS Frameworks and XCFrameworks.
* **Direct Access to Platform APIs:** No bridging overhead or serialization penalties. You can call Apple's `Foundation`, `UIKit`, or POSIX APIs directly from Kotlin.

---

## 2. The 3 Code Sharing Strategies

JetBrains defines three primary strategies depending on project needs and existing codebase maturity:

### Strategy 1: Both Logic and UI (Full Reuse)
* **Toolkit:** Kotlin Multiplatform + **Compose Multiplatform**.
* **Scope:** Shares UI design, layout, theming, navigation, and business logic.
* **Benefit:** Maximum code reuse (up to 95–100%), fastest time-to-market across Android, iOS, Desktop, and Web.
* **When to choose:** Greenfield applications, multiplatform teams, or teams seeking identical design across platforms.

### Strategy 2: Logic with Native UI
* **Scope:** Shares data handling, API networking (Ktor), offline caching (SQLDelight/Room), and state management (Kotlin Flows / ViewModels), while writing UI natively:
  * Android: Jetpack Compose
  * iOS: SwiftUI or UIKit
  * Desktop / Web: Native framework
* **Benefit:** 100% platform-native look and feel, zero risk of UI uncanny valley, seamless integration for existing native iOS teams.
* **When to choose:** Established mobile apps introducing KMP incrementally, or apps requiring native platform interaction (e.g., Apple HIG perfection, complex UIKit animations).

### Strategy 3: Isolated Piece of Logic
* **Scope:** Sharing critical, isolated business logic modules:
  * Complex financial calculations.
  * Validation and encryption rules.
  * Proprietary algorithms or offline data synchronization engines.
* **Benefit:** Absolute zero architectural upheaval. Replaces dual maintenance in critical algorithms without altering app structure.
* **When to choose:** Risk-averse enterprise teams testing KMP adoption.

---

## 3. Supported Targets Matrix

| Tier / Platform | Target Architecture | Compiler Backend | Output Format |
|---|---|---|---|
| **Android** | ARMv7, ARM64, x86, x86_64 | Kotlin/JVM | Android AAR / DEX |
| **iOS** | ARM64 (devices), Simulator ARM64/x64 | Kotlin/Native (LLVM) | iOS Framework / XCFramework |
| **macOS** | Apple Silicon ARM64, Intel x86_64 | Kotlin/Native | macOS Binary / Framework |
| **Desktop** | Windows, Linux, macOS | Kotlin/JVM or Native | JVM Jar / Native Executable |
| **Web** | WebAssembly (Wasm/JS), JavaScript | Kotlin/Wasm / Kotlin/JS | `.wasm` + JS loader / `.js` bundle |
| **Server** | Linux, macOS, Windows | Kotlin/JVM | Fat Jar / Containerized microservice |

---

## 4. Notable Production Adopters

* **Duolingo:** Replaced duplicated code across Android and iOS with shared Kotlin business logic.
* **Google:** Google Workspace (Docs, Sheets, Drive) uses Kotlin Multiplatform to power cross-platform components.
* **Booking.com:** Shares booking flows and business rules across customer-facing native applications.
* **McDonald's:** Powers regional order-and-pay workflows using shared KMP modules.
* **Netflix:** Studio mobile applications built on KMP for production logistics.
* **Block / Cash App (Bitkey):** Hardware wallet companion app shares business logic and cryptography.
* **Philo, Workday, H&M, Bolt, Meetup, TravelPerk, Philips, Quizlet.**

---

## 5. Official Reference Links
* [Kotlin Multiplatform Official Portal](https://kotlinlang.org/multiplatform/)
* [KMP Documentation Home](https://kotlinlang.org/docs/multiplatform/get-started.html)
