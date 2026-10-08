# Compose Multiplatform: Resources & kotlinx-datetime

* **Official Source:** [https://kotlinlang.org/docs/multiplatform/compose-multiplatform-new-project.html](https://kotlinlang.org/docs/multiplatform/compose-multiplatform-new-project.html)
* **Breadcrumbs:** Kotlin Multiplatform / Create KMP apps / Introduce images & datetime
* **Target Version:** Compose Multiplatform 1.7+ / Kotlin 2.x

---

## 1. Multiplatform Date & Time with `kotlinx-datetime`

Working with dates and times across platforms requires the official multiplatform library `kotlinx-datetime`.

### 1. Version Catalog Configuration (`gradle/libs.versions.toml`):
```toml
[versions]
kotlinx-datetime = "0.8.0"

[libraries]
kotlinx-datetime = { module = "org.jetbrains.kotlinx:kotlinx-datetime", version.ref = "kotlinx-datetime" }
```

### 2. Dependency Declaration in Shared Module (`shared/build.gradle.kts`):
```kotlin
kotlin {
    sourceSets {
        commonMain.dependencies {
            implementation(libs.kotlinx.datetime)
        }
    }
}
```

### 3. Web Target Support (npm `@js-joda/timezone`):
JavaScript and WebAssembly environments require standard IANA time zone data via npm:
```kotlin
// webApp/build.gradle.kts
kotlin {
    sourceSets {
        webMain.dependencies {
            implementation(npm("@js-joda/timezone", "2.25.2"))
        }
    }
}
```
Update lockfiles:
```bash
./gradlew kotlinUpgradeYarnLock kotlinWasmUpgradeYarnLock
```
In `webApp/.../main.kt`:
```kotlin
import kotlin.js.ExperimentalWasmJsInterop
import kotlin.js.JsModule

@OptIn(ExperimentalWasmJsInterop::class)
@JsModule("@js-joda/timezone")
external object JsJodaTimeZoneModule

private val jsJodaTz = JsJodaTimeZoneModule
```

---

## 2. Time Zone Calculations & Format Builder

```kotlin
import kotlinx.datetime.LocalTime
import kotlinx.datetime.TimeZone
import kotlinx.datetime.format
import kotlinx.datetime.format.char
import kotlinx.datetime.toLocalDateTime
import kotlin.time.Clock

fun currentTimeAt(location: String, zone: TimeZone): String {
    // Custom time format builder
    val timeFormat = LocalTime.Format {
        hour()
        char(':')
        minute()
        char(':')
        second()
    }

    val instant = Clock.System.now()
    val localTime = instant.toLocalDateTime(zone).time

    return "The time in $location is ${localTime.format(timeFormat)}"
}
```

---

## 3. Shared Resources in Compose Multiplatform

Compose Multiplatform provides a unified resource management library:
* **Directory:** `shared/src/commonMain/composeResources/`
  * `drawable/` (images: PNG, WEBP, SVG, XML vector drawables)
  * `values/` (strings, plurals)
  * `fonts/` (TTF, OTF)
* **Code Generator:** The Gradle plugin automatically generates a type-safe `Res` class under the package `<group>.<module>.generated.resources.Res`.

### Example: Consuming Flag Images in a Dropdown

```kotlin
package compose.project.demo

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlinx.datetime.TimeZone
import org.jetbrains.compose.resources.DrawableResource
import org.jetbrains.compose.resources.painterResource

// Generated resource imports
import composedemo.shared.generated.resources.Res
import composedemo.shared.generated.resources.eg
import composedemo.shared.generated.resources.fr
import composedemo.shared.generated.resources.id
import composedemo.shared.generated.resources.jp
import composedemo.shared.generated.resources.mx

data class Country(
    val name: String,
    val zone: TimeZone,
    val image: DrawableResource
)

fun defaultCountries() = listOf(
    Country("Japan", TimeZone.of("Asia/Tokyo"), Res.drawable.jp),
    Country("France", TimeZone.of("Europe/Paris"), Res.drawable.fr),
    Country("Mexico", TimeZone.of("America/Mexico_City"), Res.drawable.mx),
    Country("Indonesia", TimeZone.of("Asia/Jakarta"), Res.drawable.id),
    Country("Egypt", TimeZone.of("Africa/Cairo"), Res.drawable.eg)
)

@Composable
fun App(countries: List<Country> = defaultCountries()) {
    MaterialTheme {
        var showCountries by remember { mutableStateOf(false) }
        var timeAtLocation by remember { mutableStateOf("No location selected") }

        Column(
            modifier = Modifier
                .padding(20.dp)
                .safeContentPadding()
                .fillMaxSize()
        ) {
            Text(
                text = timeAtLocation,
                style = MaterialTheme.typography.titleMedium,
                modifier = Modifier.fillMaxWidth()
            )

            Row(modifier = Modifier.padding(top = 10.dp)) {
                DropdownMenu(
                    expanded = showCountries,
                    onDismissRequest = { showCountries = false }
                ) {
                    countries.forEach { (name, zone, image) ->
                        DropdownMenuItem(
                            text = {
                                Row(verticalAlignment = Alignment.CenterVertically) {
                                    Image(
                                        painter = painterResource(image),
                                        contentDescription = "$name flag",
                                        modifier = Modifier.size(40.dp).padding(end = 8.dp)
                                    )
                                    Text(name)
                                }
                            },
                            onClick = {
                                timeAtLocation = currentTimeAt(name, zone)
                                showCountries = false
                            }
                        )
                    }
                }
            }

            Button(
                onClick = { showCountries = !showCountries },
                modifier = Modifier.padding(top = 10.dp)
            ) {
                Text("Select Location")
            }
        }
    }
}
```

---

## 4. Official Reference Links
* [Compose Multiplatform Resources](https://kotlinlang.org/docs/multiplatform/compose-multiplatform-resources.html)
* [kotlinx-datetime GitHub Repository](https://github.com/Kotlin/kotlinx-datetime)
