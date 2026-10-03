# **📝 Las notas**

> [!NOTE]
> **Processing Status:** ✅ Analyzed & Mapped
> **Analyzed Date:** 2026-09-23
> **Tracker Reference:** [docs/feedback/FEEDBACK_TRACKER.md](../FEEDBACK_TRACKER.md)
> **Linked Issues:** [#17](https://github.com/jesusdmedinac/kotlin-0-dev/issues/17), [#18](https://github.com/jesusdmedinac/kotlin-0-dev/issues/18), [#19](https://github.com/jesusdmedinac/kotlin-0-dev/issues/19)

sept 19, 2026

## **Desde0 \- Kotlin para principiantes \- Matutino**

Archivos adjuntos [Desde0 - Kotlin para principiantes - Matutino](https://calendar.google.com/calendar/event?eid=NWJucG5wcWYwbjBrcml1MTE0bGxpcnZzNzVfMjAyNjA5MTlUMTYwMDAwWiBqZXN1cy5kYW5pZWwubWVkaW5hLmNydXpAbQ)

Registros de la reunión [Transcripción](https://docs.google.com/document/d/1ymWPFzGnc1yf5NupSfnNqI-t4GbueqOBhsv1BSbidlw/edit?usp=drive_web&tab=t.h1jd80jdyh1j) 

### **Resumen**

Revisión sobre Kotlin y manejo de nulos y configuración.

**Conceptos de Kotlin**  
Discusión sobre variables y tipos y seguridad contra nulos.

**Configuración de entorno**  
Solución de problemas de JDK 17 y configuración de Gradle.

### **Próximos pasos**

- [ ] \[El grupo\] Revisar lecciones: Revisar las 16 lecciones del curso nuevamente para asegurarse de que no se haya omitido información importante.

- [ ] \[El grupo\] Continuar laboratorio: Continuar practicando con los ejercicios del laboratorio para aplicar los conceptos de Kotlin aprendidos.

- [ ] \[Martin Amaro\] Configurar Java: Configurar la versión 17 de Java en el entorno de desarrollo para asegurar la compatibilidad con el proyecto.

- [ ] \[Martin Amaro\] Ajustar build.gradle: Ajustar el archivo build.gradle.kts para incluir el plugin de aplicación y definir la clase principal para habilitar la ejecución del proyecto.

- [ ] \[Martin Amaro\] Implementar captura de nombre: Implementar la lógica de captura de nombre de usuario en el archivo main del proyecto mediante el uso de la terminal.

- [ ] \[Estudiante\] Mostrar configuración: Mostrar las acciones realizadas en la configuración del proyecto para estar preparado en la siguiente sesión.

- [ ] \[Jesús Daniel Medina Cruz\] Investigar excepción Kotlin: Analizar los cambios específicos que ocurrieron con la clase de excepción de Kotlin mencionada durante la clase.

- [ ] \[Estudiante\] Leer recomendaciones: Consultar las lecturas recomendadas sobre la historia de las referencias nulas y el error del billón de dólares.

### **Detalles**

* **Resumen de la semana pasada y análisis de bytecode**: Jesús Daniel Medina Cruz y Martin Amaro repasan los temas abordados en la sesión anterior, incluyendo la presentación del curso, el funcionamiento de la Java Virtual Machine (JVM) y la forma en que los archivos de código se compilan según el lenguaje, diferenciando los archivos punto java, punto class para el bytecode de Kotlin, y punto KT, además de repasar la distinción conceptual entre anotaciones como metadatos y decoradores que alteran el comportamiento de las funciones ([00:07:17](#00:07:17)).

* **Introducción a las variables, tipos y antecedentes de la referencia nula**: Jesús Daniel Medina Cruz introduce el contenido de la lección número dos sobre variables, tipos y la seguridad contra nulos (\*Null Safety\*), recordando que en 1965 el científico de la computación Sir Tony Hoare introdujo el concepto de referencia nula al diseñar el lenguaje Algol W, un error al que posteriormente denominó su error del billón de dólares debido a la cantidad de fallas de sistema y vulnerabilidades provocadas en lenguajes como Java y C++, lo cual motivó el diseño desde cero de Kotlin para mitigar este problema ([00:10:25](#00:10:25)).

* **Evolución y propósito de los nuevos lenguajes de programación**: Martin Amaro y Jesús Daniel Medina Cruz debaten sobre la necesidad de crear nuevos lenguajes de programación para elevar el nivel de abstracción y reducir la cantidad de código necesario frente a lenguajes de bajo nivel como C++ o Java, señalando que los lenguajes evolucionan, pero eventualmente acumulan vicios técnicos que hacen necesario reiniciar el desarrollo con nuevos aprendizajes, tal como ocurrió con la creación de Kotlin por JetBrains frente a las limitaciones de Java ([00:13:22](#00:13:22)).

* **Definición de variables como literales en Kotlin**: Jesús Daniel Medina Cruz explica que en Kotlin las variables se manejan bajo un concepto matemático de literales, el cual hace referencia a términos con un valor específico dentro de un alcance determinado, estableciendo las bases conceptuales antes de abordar la declaración formal de propiedades en el código ([00:16:53](#00:16:53)).

* **Distinción operativa entre val y bar**: Jesús Daniel Medina Cruz detalla la diferencia práctica entre \`bar\`, que permite reasignar su valor en cualquier momento mediante un descriptor de establecimiento (\*set\*), frente a \`val\`, que representa un valor de solo lectura sellado desde su inicialización y que cuenta únicamente con un descriptor de recuperación (\*get\*) ([00:20:29](#00:20:29)) ([00:23:00](#00:23:00)).

* **Inmutabilidad y comportamiento interno de val y bar**: Jesús Daniel Medina Cruz y Martin Amaro analizan que el uso de \`val\` garantiza que la referencia o literal no pueda ser reasignada, pero esto no implica que el objeto contenido internamente sea inmutable si se trata de una estructura mutable (como listas mutables u objetos con métodos de modificación), concluyendo que como buena práctica recomendada para quienes comienzan a programar en Kotlin se debe utilizar \`val\` por defecto a menos que el compilador exija explícitamente el uso de \`bar\` ([00:27:50](#00:27:50)) ([00:32:41](#00:32:41)).

* **Manejo de la seguridad contra nulos y variables opcionales**: Jesús Daniel Medina Cruz explica que el mecanismo de \*Null Safety\* en Kotlin no elimina por completo la existencia de nulos, sino que exige al compilador declarar explícitamente cuándo una variable puede aceptar un valor nulo mediante el uso de un signo de interrogación en la definición de su tipo, convirtiéndola en opcional, a diferencia de Java donde las variables son opcionales por defecto en tiempo de ejecución, lo cual permite detectar errores de puntero nulo directamente en tiempo de compilación ([00:37:07](#00:37:07)).

* **Naturaleza del valor nulo y uso de marcas inteligentes (Smart Casts)**: Martin Amaro y Jesús Daniel Medina Cruz discuten la ausencia de valor que representa el nulo y cómo el compilador de Kotlin efectúa marcas inteligentes (\*Smart Casts\*) cuando se valida una propiedad contra nulo mediante un condicional \`if\`, permitiendo que dentro de ese alcance específico el compilador asuma que la variable ya no es nula y pueda ser utilizada de forma segura sin requerir operadores adicionales ([00:45:29](#00:45:29)) ([00:51:36](#00:51:36)).

* **Llamadas seguras y alternativas de validación de nulos**: Jesús Daniel Medina Cruz y Martin Amaro abordan el uso de llamadas seguras (\*safe calls\*) empleando el operador de interrogación y punto (\`?.\`) para acceder a propiedades o comparar objetos opcionales, explicando cómo los tipos opcionales se propagan a lo largo de cadenas de llamadas, y comparando este comportamiento con enfoques de retorno temprano (\*early returns\*) en Kotlin frente al concepto de guardia (\*guard\*) utilizado en otros lenguajes como Swift ([00:55:09](#00:55:09)).

* **Validaciones y manejo de nulos en Swift y Kotlin**: Jesús Daniel Medina Cruz explica cómo se manejan las validaciones y los nulos utilizando construcciones como \`guard\` en Swift o equivalentes en Kotlin mediante \*smart casts\* y retornos tempranos ([01:02:01](#01:02:01)). Asimismo, se aborda el uso del operador Elvis (\`?:\`) para asignar valores por defecto o realizar ejecuciones condicionales complejas, como retornos anticipados o lanzamientos de excepciones ([01:04:36](#01:04:36)).

* **Aserción de no nulo y interoperabilidad básica**: Jesús Daniel Medina Cruz detalla el funcionamiento de la aserción de no nulo (\`\!\!\`) en Kotlin, la cual instruye al compilador a asumir que una propiedad opcional no es nula, bajo el riesgo de provocar excepciones de puntero nulo (\*Null Pointer Exception\*) en tiempo de ejecución si la aserción falla ([01:05:58](#01:05:58)). También se introduce el concepto de interoperabilidad con Java, señalando que las librerías escritas en Java carecen de seguridad nativa contra nulos a menos que se utilicen anotaciones específicas ([01:09:51](#01:09:51)).

* **Tipos de plataforma y advertencias del compilador**: Jesús Daniel Medina Cruz explica los conflictos que surgen al utilizar funciones de Java sin anotaciones desde Kotlin, lo que genera los denominados tipos de plataforma (representados en el entorno de desarrollo con un signo de exclamación, como \`String\!\`). El compilador actúa bajo la advertencia de que no puede determinar la anulabilidad en tiempo de compilación, lo que puede desencadenar excepciones de puntero nulo ([01:13:13](#01:13:13)).

* **Enfoque pedagógico sobre la lógica de programación**: Jesús Daniel Medina Cruz destaca la importancia de razonar sobre el código y consultar la documentación oficial en lugar de limitarse a memorizar sintaxis o depender únicamente de la ejecución práctica ([01:14:33](#01:14:33)). Posteriormente, se realiza un breve repaso sobre las anotaciones de Java como \`@NotNull\` y cómo influyen en el comportamiento del compilador de Kotlin ([01:16:34](#01:16:34)).

* **Retiro de Martin Amaro y preparación para el laboratorio**: Martin Amaro avisa que debe abandonar la sesión anticipadamente debido a compromisos personales, acordando revisar la transcripción y notas posteriormente. Jesús Daniel Medina Cruz se compromete a compartir las notas y procede a compartir su pantalla para iniciar con el ejercicio práctico de laboratorio ([01:18:45](#01:18:45)).

* **Configuración inicial del entorno y discrepancias en Gradle**: Jesús Daniel Medina Cruz y Martin Amaro intentan configurar el entorno de desarrollo en IntelliJ IDEA y Android Studio, encontrando problemas con las versiones de Java (JDK 26 frente a la versión requerida) y diferencias en la estructura generada por el asistente del proyecto respecto al archivo \`build.gradle.kts\` ([01:21:19](#01:21:19)) ([01:33:38](#01:33:38)).

* **Ajuste de la versión de JDK y configuración del archivo Gradle**: Jesús Daniel Medina Cruz guía en la resolución de problemas técnicos, actualizando la versión de Java a JDK 17 mediante la configuración de la terminal en macOS (archivo \`.zshrc\`) y modificando el archivo \`build.gradle.kts\` para incorporar el plugin de aplicación (\*application\*) y declarar explícitamente el paquete principal (\`org.example\`) y la clase de entrada (\`main.kt\`) ([01:36:05](#01:36:05)) ([01:39:16](#01:39:16)).

* **Práctica de laboratorio sobre entrada por consola y propiedades de clases**: Jesús Daniel Medina Cruz reanuda la sesión individual, demostrando la captura de entradas mediante funciones como lectura de líneas ([01:52:09](#01:52:09)). Además, se analiza la compilación de código Kotlin a código intermedio (\*bytecode\*) de Java para comparar el comportamiento de las variables inmutables (\`val\`) frente a las mutables (\`var\`) dentro de ámbitos locales y como atributos de clases (\`final\`) ([01:56:45](#01:56:45)).

* **Tipos de datos, constructores y nulidad en Kotlin y Java**: Jesús Daniel Medina Cruz explica la aplicación del modificador final en Java para asegurar que los valores se asignen exclusivamente a través del constructor sin permitir cambios posteriores, así como la ausencia de métodos set para propiedades específicas como la edad ([02:01:27](#02:01:27)). Asimismo, se detalla el uso de anotaciones de no nulidad en objetos frente a tipos primitivos y cómo el compilador de Kotlin interpreta y convierte funciones provenientes de Java manteniendo la compatibilidad con valores nulables ([02:02:46](#02:02:46)).

* **Evolución y descontinuación de las excepciones de nulidad en Kotlin**: Jesús Daniel Medina Cruz analiza el cambio histórico en el manejo de excepciones de nulidad dentro del entorno de desarrollo, indicando que a partir de la versión 1.4 la clase KotlinNullPointerException fue descontinuada. Se explica que esta unificación bajo la excepción estándar de la Máquina Virtual de Java (JVM) responde a propósitos de optimización del código de bytes mediante herramientas como R8 de Android y consistencia general, aunque se mantiene activa la excepción UninitializedPropertyAccessException ([02:09:15](#02:09:15)).

* **Configuración de Gradle para la entrada de datos por terminal**: Jesús Daniel Medina Cruz identifica un problema técnico donde la ejecución estándar mediante el comando run no permite la interacción para ingresar datos en la terminal de desarrollo ([02:11:26](#02:11:26)). Como solución, se indica modificar el archivo build.gradle para agregar una nueva tarea de tipo JavaExec denominada run que sobrescriba la existente y permita el ingreso de datos, validando su funcionamiento tras sincronizar el proyecto ([02:12:49](#02:12:49)).

* **Diferencias entre variables val y var, inicialización y compilación**: Jesús Daniel Medina Cruz detalla el comportamiento de las declaraciones con val y var, la inicialización de variables y el funcionamiento de las conversiones inteligentes (SmartCast) ([02:14:20](#02:14:20)). Se establece que, a diferencia de var, una variable declarada con val no puede ser reasignada una vez que ha sido inicializada, generando un error directo en tiempo de compilación que impide la generación de código de bytes erróneo ([02:19:55](#02:19:55)).

* **Validación de entradas, operadores seguros y cierre de la sesión**: Jesús Daniel Medina Cruz explica los métodos para validar que los datos ingresados no sean nulos ni blancos utilizando funciones específicas, llamadas seguras (safe calls) y la asignación de valores por defecto como "Hola, invitado" ante entradas vacías ([02:22:34](#02:22:34)) ([02:29:04](#02:29:04)). Adicionalmente, se comparte un comando de Gradle parametrizado con opciones para suprimir las barras de estado del demonio y se concluye la clase recomendando lecturas especializadas sobre referencias nulas y el error histórico del valor nulo ([02:30:43](#02:30:43)).

*Revisa las notas de Gemini para asegurarte de que sean precisas. [Obtén sugerencias y descubre cómo Gemini toma notas](https://support.google.com/meet/answer/14754931)*

*Cómo es la calidad de **estas notas específicas?** [Responde una breve encuesta](https://google.qualtrics.com/jfe/form/SV_5bXzKQfylMIhSXc?confid=Q7nX16V3SJQFuaDaRA-PDxIOOBEBMgUIigIgABgBCA&detailLevel=standard&hasImages=False&entryPoint=footerMain&isGoogler=False) para darnos tu opinión; por ejemplo, cuán útiles te resultaron las notas.*

# **📖 Transcripción**

sept 19, 2026

## **Desde0 \- Kotlin para principiantes \- Matutino \- Transcripción**

### **00:02:28**

**Martin Amaro:** ¿Qué tal, Daniel? Buenos días.

**Jesús Daniel Medina Cruz:** ¿Qué onda, Martín? ¿Cómo sigues?

**Martin Amaro:** Ya vi bien aquí vivo. Ay, no.

**Jesús Daniel Medina Cruz:** Okay.

**Martin Amaro:** Parchado.

**Jesús Daniel Medina Cruz:** No sabía si te ibas a conectar. Estoy seguro que que vas a poder con la clase, ¿no?

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Prefieres descansar.

**Martin Amaro:** No, no. El golpe fue un golpe aquí en la frente, prácticamente entre la ceja.

**Jesús Daniel Medina Cruz:** Sí. Sí, me sí, vi la foto que me mandaste Hola.

**Martin Amaro:** Me quedó el puro estilo Harry Potter.

**Jesús Daniel Medina Cruz:** Yo lo tengo por acá, pero no se me por el pelo. Ah, no, sí tengo uno acá también en donde están los lentes.

**Martin Amaro:** No, sí, aquí yo aquí fue como estuvo estuvo duro el golpe.

**Jesús Daniel Medina Cruz:** Como me tomo las cosas literales y me dices que te pegaron o algo así. O qué me preocupas.

**Martin Amaro:** Este, no estaba aquí en mi casa, estaba jugando, este, estábamos jugando con mi esposa y este se se tiró de la cama, este, haciendo el drama, ¿no?

### **00:03:41**

**Martin Amaro:** Este, y en eso como que se resbaló y me jaló y me me

**Jesús Daniel Medina Cruz:** Okay.

**Martin Amaro:** vine a la esquina de de un mueble que tengo. Me pegué en la pura esquina del mueble que está al lado de la cama y f como que, oh, sí, sí, estuvo estuvo bueno el golpe.

**Jesús Daniel Medina Cruz:** Momento,

**Justin Martinez:** ¿Qué te pasa?

**Jesús Daniel Medina Cruz:** ¿qué es?

**Justin Martinez:** Repetición. Repetición.

**Jesús Daniel Medina Cruz:** No se lo perdió porque no llegó tiempo a Glas. Ni modo.

**Martin Amaro:** Le estaba contando a Daniel que ayer estaba jugando con mi esposa, este, y haciendo el drama, ¿no?, de que se cayó este de la cama y como que se resbaló y me jaló. Entonces yo me vine contra la esquina de un mueble,

**Justin Martinez:** ya

**Martin Amaro:** contra la pura esquina donde de hecho sobre el escritorio que en el que tengo la la com justo aquí y pues me fui así de de de frente y pues me abrí todo esto.

**Justin Martinez:** Hala,

**Martin Amaro:** Este parece como un rayo.

### **00:04:40**

**Justin Martinez:** te consiguieron, No.

**Martin Amaro:** Sí, de hecho no sé ni por qué tengo esta cosa puesta. No, ya se me viene, ya se me cayó.

**Jesús Daniel Medina Cruz:** Sí, creo que no necesitas tenerla este más que al principio.

**Martin Amaro:** Y me la puso bien.

**Jesús Daniel Medina Cruz:** H

**Martin Amaro:** Esta parte sí. Ay, no. No más que pues sí dolió.

**Justin Martinez:** Si se ve que dolió.

**Martin Amaro:** Me cosieron, de hecho. Sí, me cosieron. Me pusieron dos puntos. Tengo uno arriba y uno abajo. Ahí tengo el video de cuando me está cosciendo el doctor.

**Jesús Daniel Medina Cruz:** es raro que pongan dos puntos. Casi siempre dicen que mínimo tres.

**Justin Martinez:** Tiene fuerza esposa.

**Martin Amaro:** No sé cómo cómo fue con mi peso,

**Justin Martinez:** Tiene fuerza tu esposa.

**Martin Amaro:** me jaló y yo me caí y pues me fui de pura frente.

**Justin Martinez:** Ay, ay.

**Martin Amaro:** Entonces pueso que no me di el ojo, ¿sabes? Porque los ojos los necesitas, ¿no, hombre? Y luego estaba con el doctor y se le cayó jabón con el que me lavó la herida.

### **00:05:52**

**Martin Amaro:** se le cayó el jabón y me entró este ojo y salí con salí con la cabeza cosida de este lado y este

**Justin Martinez:** No.

**Martin Amaro:** ojo Lo tengo rojo, rojo,

**Jesús Daniel Medina Cruz:** ¡Uf\!

**Martin Amaro:** rojo. Me lo tengo que andar lubricando cada rato.

**Justin Martinez:** No, no fue tu día.

**Martin Amaro:** No, ayer, ayer sí no fue mi día.

**Jesús Daniel Medina Cruz:** Esa planta que tienes atrás es de verdad.

**Martin Amaro:** No es el

**Jesús Daniel Medina Cruz:** Me confundió por un momento. No me acordaba que la tenías.

**Martin Amaro:** Ay, no. Y hoy andan en lugares diferentes o igual.

**Jesús Daniel Medina Cruz:** Estamos aquí no más que Justin está en su habitación.

**Martin Amaro:** Okay, okay, okay.

**Justin Martinez:** Ayer, ayer tuvimos una experiencia muy grata de trabajo.

**Jesús Daniel Medina Cruz:** Pues yo me la pasé bien, pero Justin pues era que le tocó mucho trabajo pues a Justin.

**Justin Martinez:** Voy echando las manos con unas revisiones de algo.

**Martin Amaro:** Aha.

**Justin Martinez:** Nos cayó la madrugada.

**Martin Amaro:** No manches.

**Justin Martinez:** Sí.

**Jesús Daniel Medina Cruz:** Bueno, pues le le damos entonces, perdón, le damos entonces.

### **00:07:17** {#00:07:17}

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Okay, voy a voy a compartir mi pantalla. Este, creo que aquí deberían de estar viendo. Sí, pueden ver en pantalla, ¿verdad?

**Martin Amaro:** M. Sí.

**Jesús Daniel Medina Cruz:** Este, antes de empezar, este, ¿qué tal un resumen de lo que de lo que vimos la semana pasada? ¿Se acuerda más o menos que vimos la semana pasada? Lo de como de compilar una clase la J. Algo que quieras agregar, Martín.

**Martin Amaro:** M. Pues de la semana pasada, aparte de que por qué Java y Kotlinson diferentes y por qué este Kotlinsigue usando Java, bueno, por debajo este se sigue usando la JBM y que dependiendo para lo que quieras programar, este es la forma en que se va a compilar. Este, no, nada más fue muy interesante la clase pasada, la verdad, bastante. C'est

**Jesús Daniel Medina Cruz:** que les voy compartiendo entonces eh algunas otras notas Eh, la semana pasada básicamente, ¿no? Temos la presentación del curso. Eh, hicimos el análisis del del byte code, como comentaron, y la configuración de del proyecto.

### **00:09:07**

**Jesús Daniel Medina Cruz:** También vimos cuáles van a ser las 16 lecciones. Entonces, este, hay que echar un vistazo otra vez si se les pasó. También hablamos sobre la metodología de del curso que vamos a estar con el laboratorio también a la mano. Eh, por cierto, no sé si este pudieron ejecutar y jugar con con el laboratorio. Eh, vamos a continuar con eso. lo que comentaron del B code de Kotliny mencionar pues que eh como tal el B code que estamos analizando es para la JBM, pero que dependiendo de el compilador sería el que define de qué manera se va a compilar el archivo de Cotlin, ¿no? Por ejemplo, el BCODE es con archivos punto class. Eh, las las los archivos de Java o las clases de Java son con punto Java

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** y pues los archivos de Cotlin son punto KT, a menos que sean archivos de Cotlin para gradolts. También hablamos sobre la diferencia entre anotaciones y metadatos.

### **00:10:25** {#00:10:25}

**Jesús Daniel Medina Cruz:** No sé si se acuerdan este la diferencia, perdón, entre anotaciones y decoradores. Decoradores, este decoradores, los decoradores decoran. Los decoradores decoran. Ándale. Este, no, que las que los decoradores cambian el funcionamiento, bueno, el comportamiento de la función y las anotaciones metadatos, información.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Excelente. Y pues eso. Ah, vamos a empezar entonces con la clase número dos, lección número dos, variables y tipos y la verdad sobre el null safety. E todos estamos familiarizados con el nul nul po interception. NUL en otros lenguajes se llama nil. Eh, tiene su propósito el hecho que exista, pero no sé si sabían quién lo inventó. Vale, les voy a leer lo que lo que tengo aquí apuntado porque va a ser interesante que lo tenga este en el radar Gemini.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** En 1965, el científico de la computación, Sir Tony, no me acuerdo cómo se pronuncia, introdujo el concepto de la referencia nula.

### **00:11:57**

**Jesús Daniel Medina Cruz:** nul. Al diseñar el lenguaje algo al W. Decadas después, él mismo se disculpó públicamente llamándole su error del billón de dólares porque ha causado incontables caídas de sistema, vulnerabilidades y horas de depuración en lenguajes como Java y C++. El famoso null pointer reception ocurre cuando intentas interactuar con algo que creías que existía, pero en realidad está vacío. Imagina intentar encender un auto, pero el motor literalmente no existe dentro del chasil. Cotlin fue diseñado desde cero para solucionar este problema de raíz. que antes de continuar eh quiero que reflexionemos un poco en por qué el por qué existe la necesidad de crear nuevos lenguajes de programación. ¿Por qué no quedarnos con los lenguajes que ya existen? Reflexión, o sea, ¿qué se les ocurre?

**Martin Amaro:** Pues es que cada vez hay que llevar a lo más al más alto nivel que que se pueda, ¿sabes? Este, yo recuerdo que al inicio cuando recién aprendí este apenas estaba que saliendo Python y ese tipo de cosas.

### **00:13:22** {#00:13:22}

**Martin Amaro:** Bueno, o sea, ya existía, pues, pero apenas est agarrando como que fuerza y pues la gente decía que no,

**Jesús Daniel Medina Cruz:** Hm.

**Martin Amaro:** o sea, Python, para qué eso es eso cómo vas a enseñar gente en Python. No, tienes que enseñarle bajo nivel, este, como con semas más o Java, que fue lo que unos profes enseñaban en la prepa. Este, y digo, de cierta manera aprender el bajo nivel te hace un buen programador, pero por otro lado este el alto nivel te da esa ventaja de que con dos tres líneas de código haces lo que con 20 de de bajo nivel. Entonces digo yo que es más como una una un enfoque hacia el el code, o sea, el menos el escribir menos código,

**Jesús Daniel Medina Cruz:** Okay.

**Martin Amaro:** inclusive ya ya hay soluciones no code este de drag and drop este las piezas y así. Entonces yo creo que va más por ese lado, ¿no? Este que sea lo más sencillo posible.

**Jesús Daniel Medina Cruz:** ¿Algún pensamiento tu tu tu micro?

**Justin Martinez:** De acuerdo, Martín.

### **00:14:27**

**Jesús Daniel Medina Cruz:** Recuerdo. Bueno, no sé si escuchaste a Justin Martín.

**Martin Amaro:** No, no, no, no se escucha muy

**Jesús Daniel Medina Cruz:** Sí, sí, estoy de acuerdo con lo que dice eh creo que hay hay algo que que me gusta mucho agregar siempre que se habla sobre lenguajes de programación y es el tema de de la dialéctica que es conforme se van encontrando problemas en cada lenguaje se proponen soluciones. los lenguajes. por sí solos tienen versiones. Entonces, cada lenguaje va evolucionando. Pero llega un punto en el que el lenguaje empieza a contener demasiados vicios que en su momento parecía que tenían sentido como funcionalidades para lenguaje, pero eventualmente se vuelven imposibles de resolver y lo que se termina haciendo es volviendo a empezar, pero con todo el aprendizaje que se tenía anteriormente. Este es el caso de Cotlin. Cotlin veía muchos de los problemas que Java tenía y como no le estaban dando mantenimiento a Java, no estaba evolucionando como lenguaje, se propuso crear un nuevo lenguaje.

### **00:15:37**

**Jesús Daniel Medina Cruz:** Jetblains no fue la única empresa que hizo esto. Hubieron muchas otras empresas que propusieron dejar de usar Java. Eh, también hay que considerar que todos los lenguajes evolucionan, pero no necesariamente evolucionan en un alto nivel, eh, como es el caso de Rust. Rust es un lenguaje que en cierta manera eh no se podría considerar de tan alto nivel como Kotlin.Sin embargo, precisamente por ese eh bajo nivel te exige que tengas más cuidado con cosas que Cotlin hace automáticamente, pero a costas de la memoria de la computadora. Entonces, usar Cotlin, aunque puedas usarlo de forma nativa en sistemas embebidos, quizás no sea la mejor forma para aprovechar los recursos de un sistema embebido. Entonces, Cotlin, aunque yo vendo la idea de que Cotlin lo puedes usar en cualquier plataforma, no lo puedes usar literalmente en cualquier parte. Eh, lo que trato de decir entonces es que efectivamente cada lenguaje viene con una propuesta para resolver problemas que otros lenguajes no han podido, pero eventualmente todos, y esta es la parte que a mí me pone más triste, eventualmente todos los lenguajes son superados.

### **00:16:53** {#00:16:53}

**Jesús Daniel Medina Cruz:** ¿Cuándo le tocará Cotlin? No sé, por ahora sigue creciendo en popularidad, cada vez se usa mucho más y no solo en Android. Pero Kotlineh uno de los grandes problemas que intentó resolver es el Null Poin Reception. Pregunta para los más informados. Cotlin resolvió el null pointer exception.

**Martin Amaro:** No.

**Jesús Daniel Medina Cruz:** Pues sí, no, en teoría era lo que se implicaba, ¿no? Pero eh se sigue se sigue ocupando, o sea, puede tenemos la opción de declarar una variable como nula. Es es un buen punto. Ahora, lo que vamos a a ver en esta clase entonces es cómo responder esa pregunta de forma más eh confiada, porque ahorita están ustedes, ¿no?, bueno, según yo no, pero ¿qué argumento utilizo para decir si sí o si no?

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** ¿Cómo sé si se resolvió o no se resolvió? Va, vamos a empezar con el val. y bar. Eh, cuando hablamos de variables, muchas veces pensamos que la que todos entienden muy bien lo que es una variable.

### **00:18:09**

**Jesús Daniel Medina Cruz:** En Cotlin se trata a las variables más con un término matemático al que le llamamos literales. ¿Han escuchado ese término? literales. En matemáticas,

**Martin Amaro:** No.

**Jesús Daniel Medina Cruz:** una literal es un término, en este caso, por ejemplo, a lo que le llamamos variable, más bien sería como un e cuando hablamos, por ejemplo, de un una letra que tiene un valor desconocido, sería como una, ¿cómo le llamamos? incógnita tiene un nombre en álgebra, una variable, no,

**Martin Amaro:** tiene una variable.

**Jesús Daniel Medina Cruz:** no es que el término variable significa que puede variar su valor, pero lo que yo trato de decirles es que existen términos que siempre va a ser el mismo valor, constante,

**Martin Amaro:** Ajá. una

**Jesús Daniel Medina Cruz:** pero no necesariamente son constantes, sino que en esa función ese es su valor.

**Martin Amaro:** sí los nombres, ¿no? como X, Y, Z, A, B, C, M.

**Jesús Daniel Medina Cruz:** Y por ejemplo,

**Martin Amaro:** Este,

**Jesús Daniel Medina Cruz:** hablo de un scope, algo así.

### **00:19:20**

**Jesús Daniel Medina Cruz:** Bueno, tú ya estás hablando un poquito de términos que se acercan mucho al al lenguaje de programación, pero eh por ejemplo cuando estamos hablando de de álgebra existen este la las máquinas. En álgebra, una máquina es como una función que dependiendo del valor de de x, por ejemplo, va a tener una curva, ¿no? Se dibuja una parábola o se dibuja otra cosa dependiendo de cómo abordemos el valor de x. Ahí en ese caso la variable eh es X, pero también existen eh definiciones de

**Martin Amaro:** Ah, mira. Dominio.

**Jesús Daniel Medina Cruz:** de dominio en

**Martin Amaro:** Dominio o argumento. Ajá.

**Jesús Daniel Medina Cruz:** Okay.

**Martin Amaro:** argument Momento.

**Jesús Daniel Medina Cruz:** No no estoy tan familiarizado con con el término de esa manera, pero lo que sí vamos a ver en en sitios oficiales de Jet Race es se les refiere al val y bar como literales. Okay. Y diríamos que val es una variable inmutable, pero no tiene sentido decir que algo que es variable sea inmutable.

### **00:20:29** {#00:20:29}

**Jesús Daniel Medina Cruz:** No sé si me están siguiendo. Que varice variable.

**Martin Amaro:** Porque tienes Ajá. Porque tienes una variable que no puede variar, ¿sabes?

**Jesús Daniel Medina Cruz:** una variable que no puede variar no tiene sentido, ¿no? Pero lo que sí tiene sentido es porque exista val y bar. En en esencia la definición de bar es que le podemos cambiar su valor en cualquier momento y val que es un valor que no va a cambiar. Yeah. Cuando se define, a partir de ahí ya no cambia. Entonces, eh en una caja normal que el que es que de la que estamos acostumbradas, le ponemos un dato este y lo podemos leer, ¿no? Y le podemos después cambiar lo que hay adentro. Eso es muy sencillo. Eh, una variable de toda la vida. El compilador, en este caso Cotlin, eh lo que va a hacer es una vez que le asignamos un valor, si no le pusimos tipo de dato, lo va a inferir.

### **00:21:39**

**Jesús Daniel Medina Cruz:** Están familiarizados con ese concepto de inferencia.

**Martin Amaro:** va a asumir que es, no sé si le pusiste un numérico, te va a poner un entero.

**Jesús Daniel Medina Cruz:** Esto solamente si el compilador es capaz de eh

**Martin Amaro:** Escribiste en este detectar qué tipo. Ajá.

**Jesús Daniel Medina Cruz:** Exacto. Ahora bien,

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** eh un en el caso de del bal, que sería una literal también lo lo que en realidad sucede y esta es la parte como curiosa para mí cuando lo descubrí se me hizo muy raro. Eh, me decía que Val era inmutable, ¿cierto? Val inmutable, pero no es exactamente inmutable. Lo que sí es que es como una variable, pero no es una variable. Ajá. No tengo duda porque estuve probando con la variable. Sí, puse dos números y compilé a observos y después lo compilé. Este, y me aparecían, o sea, me parecían que las dos eran un tigre, o sea, barbar estaba en una en un public.

### **00:23:00** {#00:23:00}

**Jesús Daniel Medina Cruz:** Bueno, bueno, esa era la función de main, esa es la función de main y ahí contenía los valores, ¿no? Eh, como se declara en Java, que era el tipo de dato, ¿no? La variable, ¿no? Este, pero no había como ni una diferencia visible en el Vamos a a a revisarlo. Excelente.

**Martin Amaro:** H

**Jesús Daniel Medina Cruz:** O sea, un val y un bar, ¿cómo cómo podríamos determinar que eh se compilarían en Java, no? ¿Cuál es la verdadera diferencia? Eh, lo primero que hay que entender es que valente verdaderamente inmutable. ¿Okay? Lo que sí es es que cuando yo le asigno un valor a Valal, una vez que tiene un valor como que se sella y no me permite cambiarlo. El término es de retono. Lectura. ¿Qué significa?

**Martin Amaro:** Hm.

**Jesús Daniel Medina Cruz:** le puedo asignar un valor al principio cuando la declaro, Pero después ya no puedo escribir.

### **00:24:01**

**Jesús Daniel Medina Cruz:** Imaginemos como que los valan una propiedad que tiene un get, pero no tiene un set. Ah, okay. Okay.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Y que cuando creamos en el constructor le damos un valor, ese valor puede salir, pero ya no puede entrar otro nuevo para reemplazarlo. Eso es lo que se crea. Eh, a ver, no, aquí no la estoy viendo.

**Martin Amaro:** Ah,

**Jesús Daniel Medina Cruz:** Dime, dime, Martín. ¿Puedes

**Martin Amaro:** sería sería como por ejemplo cuando val podría ser este, no sé, un ejemplo muy muy así, ¿no? Este, tienes una tienes una promesa, llamas a una API y y el resultado se lo asignas a una variable de tipo val que será solo lectura porque

**Jesús Daniel Medina Cruz:** volver a decirlo? Me perdí.

**Martin Amaro:** Okay. Es que digamos tienes una promesa, ¿no? Este, y la respuesta este se la das este a un bar en vez de un bal, bueno, perdón, a un bal que porque pues es solo lectura, como dices, ¿no?

### **00:25:03**

**Martin Amaro:** O este o se la

**Jesús Daniel Medina Cruz:** No, pero estás Sí, me gustó el ejemplo porque estás confundiendo cosas muy distintas. Vamos a ir por partes. Empezas empezaste a meter cosas de asincronía. ¿Estamos de acuerdo?

**Martin Amaro:** Sí, sí, sí, sí. No,

**Jesús Daniel Medina Cruz:** Intentaría dejar el tema de sincronía un poquito fuera.

**Martin Amaro:** no.

**Jesús Daniel Medina Cruz:** Sin embargo, dijiste la respuesta.

**Martin Amaro:** Ah, o sea, la ya se no sé, una función matemática de suma o multiplicación, el resultado lo tienes que guardar en una en una variable,

**Jesús Daniel Medina Cruz:** Claro,

**Martin Amaro:** ¿no?

**Jesús Daniel Medina Cruz:** pero ahí es en donde yo trato de hacer como como un un este digamos scope. ¿Cómo se dice scope en español? Pero puedo puedo ¿Cómo se dice scope en español? Un alcance. El alcance.

**Martin Amaro:** Ajá.

**Jesús Daniel Medina Cruz:** Okay, voy a voy a tratar de separar porque nos estamos saliendo a algo más complejo.

### **00:25:53**

**Jesús Daniel Medina Cruz:** Okay, entonces ahí este este por ejemplo es como un cotlin, ¿no? Cuando tienes puedes tener un un bal de una clase, pero internamente él él puso el ejemplo de la promesa, ¿no? Pero pues por ejemplo en una clase tiene sus propios eh por ejemplo tenemos el punto copy, ¿no? para cambiar los atributos eh del del objeto, ¿no? Pero, ¿cuál? ¿Pero de cuál objeto? Del que declaramos como val. Mm, es que otra vez estamos metiéndole más cosas a algo que es más sencillo todavía. Metieron metieron data clases y promesas y no estamos hablando de ninguna de esas dos cosas. Vamos a quedarnos en lo más simple que podamos. Okay, voy a a a separar por parte el tema de la promesa y me parece bien interesante la promesa en Typescript, en este caso es eh un objeto que tiene funciones, que tiene diferentes este comportamientos internos y te puede regresar un objeto que luego tienes que este digamos M. desenvolver, desenvolver, no sacar de la caja.

### **00:27:04**

**Jesús Daniel Medina Cruz:** La promesa es un una cosa que eventualmente te va va a tener un valor, pero no necesariamente lo tiene todavía. Entonces, pues lo de cierta manera este lo puedes observar, ¿no? Algo algo así. Pero todas estas complejidades es necesario que la entendamos ahorita.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Lo que sí entendería yo es, ¿qué pasa una vez que ya tengo el valor? Lo voy a guardar como dice Martín en una variable. Entonces, deja de ser una promesa. Entonces, meter el el concepto de promesa aquí no tiene ningún sentido para las variables. No sé si tiene sentido lo que acabo de decir, Martín.

**Martin Amaro:** Sí, pues sí, yo mi ejemplo era más como que el resultado,

**Jesús Daniel Medina Cruz:** Claro,

**Martin Amaro:** No.

**Jesús Daniel Medina Cruz:** claro, claro. Sí, te entendí esa parte y quería hacer el énfasis de que podemos sacar el término promesa por ahora y enfocarnos en el resultado que vamos a guardar es este de un tipo, ¿no?

### **00:27:50** {#00:27:50}

**Jesús Daniel Medina Cruz:** Entonces, e el caso de de val, cuando yo guardo un valor ahí ya este lo puedo seguir leyendo, pero ya no puedo asignarle un nuevo valor. Este, pero es muy importante que lo entendamos, que esto no significa que el valor que está dentro no puede cambiar. Voy a intentar empujar un poquito bajo esta línea para que pensemos más a profundidad qué diantes estoy tratando de decir. O sea, si yo meto algo adentro, lo que está adentro no necesariamente se vuelve inmutable. Solamente que mi literal valo asignar otro valor. Digamos la caja se cierra. Puedo ver de forma transparente la caja, pero trae espejo, cristal, ¿no? Puedo ver lo que hay adentro, pero no puedo cambiar lo que hay adentro. Sin embargo, lo que está adentro sí puede cambiar. Vamos. Imaginamos la caja, ¿no? Está abierta al principio para que le metamos un valor. Le meto el valor,

### **00:29:12**

**Martin Amaro:** Hm.

**Jesús Daniel Medina Cruz:** cierro la caja. La caja es transparente. Puedo ver lo que hay, pero ya no puedo abrirla. la sello así literal quedó cerrada la caja. Pero adentro hay algo que en memoria para el, en este caso, la máquina virtual eh sigue siendo variable. Okay. Okay. Sí, sí. Cuando yo intento acceder a este dato a través de mi literal val, no lo puedo cambiar, no le puedo dar otro value,

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** pero si de alguna manera tengo forma de manipular el valio que ya está dentro, podría cambiarlo. ¿Se les ocurre alguna forma? Yeah.

**Martin Amaro:** con con el string, ¿no? Pero con el bueno, es en el texto que tienes ahí dice que si guardas una lista este sí puedes modificar los objetos que tiene la lista, ¿no? como tal la lista, a la lista no le puedes meter más, es lo que yo entendí, ¿no?

### **00:30:20**

**Martin Amaro:** lista a lo mejor.

**Jesús Daniel Medina Cruz:** Si la lista es inmutable, no puedes manipularla, pero si la lista es mutable, podría Bueno,

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** yo yo Yo lo entendí así, ¿no? Como que en esencia lo que está dentro es una variable, ¿no? Pero hay como está la caja que es como lo que agrega ese esa esa esa, ¿cómo se dice? Esa palabra específica, ¿cómo se dice?

**Martin Amaro:** es froze.

**Jesús Daniel Medina Cruz:** esa sintaxi de agrega esa protección, ¿no? Esa caja, ¿no? Entonces,

**Martin Amaro:** Mm.

**Jesús Daniel Medina Cruz:** en no hay apuntadores en este caso en en Kotlin.Pero si tuviéramos eh la opción de ver de tener esa referencia del es tener esa referencia en memoria, este, podríamos cambiarla. estás cerca de lo que estás diciendo. No cambiarías la referencia en la memoria, obviamente cambiarías el valor al que apunta la referencia. lo que estamos tratando de decir no es algo tan literal como este vamos a manipular los apuntadores y este tipo de cosas porque pues ni Java ni Kotlinnos dejan hacer eso.

### **00:31:29**

**Jesús Daniel Medina Cruz:** Este claro, pero es que sí hay algo más simple accesible para el programador. Es decir, primero tenemos eh la diferencia entre B y bar, como tú preguntaste al principio, va a ser, imaginémonos, ¿no? Cuando hacemos un pollo en en Java, tenemos atributos getters y setters.

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Si hago un bar en Kotlinen Java se va a hacer un atributo con un get y un set, pero si hago un val no va a tener set.

**Martin Amaro:** H

**Jesús Daniel Medina Cruz:** Y la pregunta, ¿y dónde le asigno el valor? pues en el constructor. El problema es que este ejemplo que acabo de decir aplica para los objetos. ¿Qué pasa con una propiedad que no tiene clase?

**Martin Amaro:** Ya, ya creo que ya entendí un poco este, por ejemplo, ahí de nuevo el texto que tienes como que da la respuesta, ¿no?

**Jesús Daniel Medina Cruz:** Sí,

**Martin Amaro:** Este,

**Jesús Daniel Medina Cruz:** pero adelante.

**Martin Amaro:** este, como no tengo un set, puedo tener como dices un custom get.

### **00:32:41** {#00:32:41}

**Martin Amaro:** Ahí dice este,

**Jesús Daniel Medina Cruz:** Ah.

**Martin Amaro:** entonces me imagino una lista con una lista de números, ¿no? Entonces la lista no la puedo como tal alterar, no la puedo modificar, pero sí puedo alterar cómo la voy a obtener de nuevo. Por ejemplo,

**Jesús Daniel Medina Cruz:** Hm.

**Martin Amaro:** esa lista, cuando hago un custom, un custom ga este, puedo hacer que esté se multiplique, no sé, por cinco, ¿no? La lista entera se multiplique por cinco. Entonces, de cierta manera ya cambió el valor.

**Jesús Daniel Medina Cruz:** diste un ejemplo un poquito exagerado, pero hay un hay un ejemplo muy interesante que podemos tomar en cuenta, que es como por ejemplo eh el en la en las listas mutables eh podemos hacer, por ejemplo, eh hay funciones que cuando agarras un valor lo saca de la lista de luego Tienes cinco valores y quieres el último, haces como un tipo de drop y ahora te quedan cuatro.

**Martin Amaro:** Un pop. No creo que es un pop.

**Jesús Daniel Medina Cruz:** Ajá. Gracias por recordarlo.

### **00:33:37**

**Jesús Daniel Medina Cruz:** El ejemplo de la lista es muy interesante porque lo que lo que tenemos que ver es lo siguiente. Si yo guardo un objeto en un val y el objeto es inmutable, no puede cambiar su valor. Entonces el término mutable e inmutable radica en la naturaleza o cómo programamos el objeto. Lo voy a decir de otra manera. Y pregunta para para ambos, la clase string, ¿okay? En este caso en Kotlin,como todo es un objeto, el objeto string es o no es mutable. Yo diría que no es mutable. Okay, Martín.

**Martin Amaro:** Mm. No, según yo no.

**Jesús Daniel Medina Cruz:** Entonces, si yo le asigno un string a un val, ya no puede cambiar.

**Martin Amaro:** No,

**Jesús Daniel Medina Cruz:** Existe el mutable string, un string mutable.

**Martin Amaro:** sí. Según yo. Sí, sí, sí, sí, sí. Lo he visto.

**Jesús Daniel Medina Cruz:** Ah, recuerdo que sí si había algo para

**Martin Amaro:** Yo sí, yo sí lo he visto.

### **00:34:52**

**Jesús Daniel Medina Cruz:** Okay. Entonces, si si metiéramos ese string mutable, como nosotros tenemos acceso al a la variable al val en este caso, eh lo que podemos hacer es el objeto, digamos username punto y las funciones que tengan para mutar el stream,

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** pero no puedo, lo único que no me va a dejar hacer el val es username igual a igual. Ah,

**Martin Amaro:** igual ah,

**Jesús Daniel Medina Cruz:** ya te Pero todo lo que tenga acceso dentro se va a poder modificar.

**Martin Amaro:** como es un objeto,

**Jesús Daniel Medina Cruz:** Sí, sí,

**Martin Amaro:** como como es un objeto,

**Jesús Daniel Medina Cruz:** exacto.

**Martin Amaro:** puedo acceder a las propiedades que tiene el objeto.

**Jesús Daniel Medina Cruz:** Si tienes si tienes un gather, vas a poder cambiar.

**Martin Amaro:** Ajá.

**Jesús Daniel Medina Cruz:** Exactamente.

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Exactamente. Llegamos a donde quería. Eh, ahora ya pueden dominar la diferencia, ¿no? Var rival. La pregunta también es importante decidir cuándo vale la pena usar uno y otro.

### **00:35:56**

**Jesús Daniel Medina Cruz:** En lo más sencillo es pensar que bar es cuando quiero volver a usar el igual.

**Martin Amaro:** al resignarlo,

**Jesús Daniel Medina Cruz:** Pero aquí sí,

**Martin Amaro:** no me imagino que creo que esa es la palabra resignar.

**Jesús Daniel Medina Cruz:** claro, aquí la clave es en la gran mayoría de veces, y ese es un consejo de un experto en Kotlinpara los que están empezando, la gran pinche Sí, la gran mayoría de veces no es necesario usar barra.

**Martin Amaro:** Bar o val.

**Jesús Daniel Medina Cruz:** Si necesitas V a R es menos

**Martin Amaro:** Okay. Okay.

**Jesús Daniel Medina Cruz:** necesario por defecto usen val. Si el compilador les dice que lo tienen que cambiar, lo cambian, pero duden, a lo mejor no deberían de cambiarle el valor. Sí, pero cuando la gente les diga, "Es que va Kotlinpermite crear propiedades inmutables, por eso tiene bar y val, eso no tiene que ver con la inmutabilidad, eso tiene que ver con la eh lo eh, ¿cómo se dice? Se dice, ay, se me fue la palabra.

### **00:37:07** {#00:37:07}

**Jesús Daniel Medina Cruz:** que no tenga set, que solamente tenga el get.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** ¿Cómo se le dice ese término, accesibilidad? No, no, no es accesibilidad de acceso, algo así. Luego lo lo me acordaré el término. Eh, pasamos a lo siguiente. ¿Alguna duda, comentario extra sobre los val y bar? Excelente. Y todavía no vemos el código. Entonces, eh el Null Safety de Kotlintiene como ah un diseño básicamente a a encima de lo que existía con el NUL de Java. Esto no significa que Cotlin intenta resolver el problema del nul, sino que intenta darnos una herramienta extra para prevenirlo. ¿Tiene sentido?

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Lo que trata de hacer Kotlines, "Okay, el nul existe, no desaparece, vas a seguirlo usando, pero ahora si lo vas a usar, úsalo con precaución. ¿Por qué Java no puede hacer esto? Primero, cuando tú creas una variable en Java, el compilador nunca sabe si es nula o no.

### **00:38:36**

**Jesús Daniel Medina Cruz:** ¿Por qué no sabe? Porque cuando tú creas la variable, no es hasta el tiempo de ejecución que se le asigna a esa variable un lugar en memoria. ¿Tiene sentido?

**Martin Amaro:** Por eso las apps tronaban cuando se ejecutaban y no cuando las compilaban. Yeah.

**Jesús Daniel Medina Cruz:** Exactamente. Entonces, en tiempo de ejecución, el el programa intenta utilizar todo lo que tú le dijiste que había, pero cuando no puede, en lugar de e, vamos a decirle a fallar, manejar, me gustó la palabra hoy manejar eh esos escenarios, vamos a llamarle esas excepciones, las aventaba en la cara, ¿no? En ese caso explotó el programa. Lo que me gusta de Kotlincon el Null Safety es que no es que lo resuelve, no resuelve el problema del null porque te deja seguir usando nul, pero te el compilador te exige que declares cuando algo puede tener un valor nulo. Sonó raros un valor nulo. Cuando una variable, voy a decirles literales, ¿cuándo una literal podría no tener valor?

### **00:39:59**

**Jesús Daniel Medina Cruz:** Esa es la representación del nul. Si una literal no tiene valor, entonces es nul. Pero aquí el punto clave es la opción.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Las literales se vuelven opcionales. Si yo le digo a una literal, por ejemplo, var name,

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** que es string y no le asigno el signo de interrogación, le puedo poner todos los strings que yo quiera. El igual, el signo de igual sigue estando porque es un bar, entonces tiene un set. Le puedo cambiar el valor, pero no le puedo quitar el valor. No le puedo asignar nunca un nul. El compilador directamente me lo prohíbe. Esto, ¿qué ventaja tiene? ¿Vas a preguntar algo? Sí. Entonces, se puede decir que Java ah Java puede definir una variable como nula desde el inicio. Entonces, y por ejemplo en Kotlines, o sea, opcional que sea nulo.

### **00:41:10**

**Jesús Daniel Medina Cruz:** El el término de opcional también existe en Java. Okay. Te diría que por defecto todas las variables son opcionales en Java. Mm. ¿Qué significa? Que todas podrían tener nul. Mm. Sí. Sí. Aquí lo que evoluciona en Kotlines que tenemos que declarar explícitamente el opcional. Si tú no le dices que es opcional en Kotlin,el compilador asume que es ese esa variable, en este caso el name nunca va a tener nul. Pero no es que no se pueda, es que cuando estés compilando el programa y en alguna parte encuentra una variable que le dijiste que es igual a nul, va a fallar. Eso es importante que lo que lo tengamos en cuenta, ¿no? el concepto de el tiempo de no,

**Martin Amaro:** opcional.

**Jesús Daniel Medina Cruz:** tiempo de compilación y tiempo deción, ¿no? El null safety de Kotlines en tiempo de compilación

### **00:42:13**

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** y encuentro una manera de crear una variable que se suponía que no fuera nulo, pero si es nulo, en tiempo de ejecución va a seguir existiendo nul pointer excepción. Sí, lo que vamos a ver es que existen ahora dos tipos del null pointer exception. Se agregó uno nuevo, está el clásico de Java Null Pointerception y está un cotlinter exception. ¿Cuál es la diferencia? Ahorita vamos a analizarla, pero volvamos entonces al bar. Cuando tenemos un bar, lo que en realidad es tenemos que declarar es el tipo. Y una vez que declaramos el tipo, si decimos que el tipo explícitamente es un string, si no le pongo el signo de interrogación, el compilador asume que yo nunca le voy a asignar un nul. Aquí hay algo raro. Por ejemplo, si yo no le pongo el string y e infiere el tipo, se hace un string opcional o explícito. No, explícito porque por efecto es no sé.

### **00:43:33**

**Martin Amaro:** Ajá. Sí, explícito.

**Jesús Daniel Medina Cruz:** Eso es muy importante. Entonces, directamente al declarar un una propiedad e inferir su valor, el compilador va a decir, "Este nunca puede ser nulo." La única forma de dejar una propiedad opcional es asignándole signo de interrogación como lo tenemos al

**Martin Amaro:** Al tipo.

**Jesús Daniel Medina Cruz:** trifo

**Martin Amaro:** Ah, okay. O sea, no puedes no tener el tipo declarado.

**Jesús Daniel Medina Cruz:** para un opcional. No

**Martin Amaro:** Ah, para un opcional, o sea, para que en caso de que sí pueda ser nul, este, a fuerzas tiene que estar el tipo y el signo de interrogación.

**Jesús Daniel Medina Cruz:** es correcto.

**Martin Amaro:** No puede hacer como que no le ha el name dos puntos sig interrogación igual al string, ¿no?

**Jesús Daniel Medina Cruz:** Pues literalmente la sintaxis es lo que cambia. Lo que tú acabas de decir es una sintaxis distinta para representar lo mismo. O sea,

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** ¿a quién estamos a quién estamos haciendo opcional?

### **00:44:33**

**Jesús Daniel Medina Cruz:** pues a la propiedad. Pero, ¿cómo decimos que la propiedad es opcional?

**Martin Amaro:** Mm.

**Jesús Daniel Medina Cruz:** Declarando el tipo opcional.

**Martin Amaro:** Oké. Ok.

**Jesús Daniel Medina Cruz:** O sea, es es lo mismo. En realidad nuestra propiedad es la que se vuelve opcional. Sí.

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Es como si automáticamente decimos, esto puede ser un string o puede ser nulo. Porque la pregunta aquí es, ¿qué tipo de dato es el nulo? Es que no es vacío. No, tampoco no es vacío. Refieres al void, ¿no? Por ejemplo,

**Martin Amaro:** No, según yo nulo sí tiene un valor como tal.

**Jesús Daniel Medina Cruz:** cosa no es un empty list. El empty list ya es un objeto, ¿no? Ajá. Es diferente. Porque te digo, está así o no. Es como bueno, el emptilist tampoco es vacío.

### **00:45:29** {#00:45:29}

**Jesús Daniel Medina Cruz:** Okay. No, sí, sí, sí, porque el empty string tampoco es vacío. No sería como que no existe algo así que no se le de un valor. Hay un pelito extra que nos falta mencionar sobre el sobre el nul. Si el nul existe, yo les pregunto, ¿hay forma de saber la diferencia entre un nul y otro nul?

**Martin Amaro:** Según yo sí, porque tiene una referencia, según yo,

**Jesús Daniel Medina Cruz:** ¿Quién tiene la el nulo o la

**Martin Amaro:** este, la la variable,

**Jesús Daniel Medina Cruz:** variable?

**Martin Amaro:** la variable tiene la referencia

**Jesús Daniel Medina Cruz:** Claro, pero entonces, ¿cómo sé si dos nul son diferentes? Yo estoy hablando de la variable, el valor nul.

**Martin Amaro:** He.

**Jesús Daniel Medina Cruz:** ¿Cómo sé que un nul es diferente a otro nul? Entonces, no se puede preguntar. O sea, si lo pensamos por un momento que es nul, decimos, tiene tipo de dato, es un dato, podría ser la ausencia de datos.

### **00:46:50**

**Jesús Daniel Medina Cruz:** aencia de dato un valor. Yo lo que diría es, y esta es la forma en la que yo lo interpreto, ¿vale? No significa que así sea. El nul es la es en en cualquier parte de la aplicación siempre es el mismo, no hay diferentes nuls.

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** El nul vendría siendo la representación de la ausencia de valor. No representa un valor como tal. No puedo hacer operaciones con él. Si lo comparo con otro no me dice que son iguales. No es un objeto porque si yo le digo nul punto algo, no va a poder hacer nada. Sí,

**Martin Amaro:** dudas.

**Jesús Daniel Medina Cruz:** dale.

**Martin Amaro:** Entonces, con lo que me estás diciendo, si yo tengo este un bal este, no sé, name este este con un string opcional y lo inicializo el nulo. Y abajo tengo otro val que sea, no sé, edad este de tipo este entero, este opcional, inicializado el nulo.

### **00:48:13**

**Martin Amaro:** Y hago una comparación de que si a es igual este a b, eso sería true o sería false?

**Jesús Daniel Medina Cruz:** La la pregunta es, ¿puedes comparar dos valores antes de saber si son nulos?

**Martin Amaro:** No sé. Ay, sí, no sé. No, no sé. Yo tengo esa duda.

**Jesús Daniel Medina Cruz:** Es que yo

**Martin Amaro:** Si si el nul es el mismo en todo este siempre este en teoría si tengo una variable de tipo stram que es nula y otra variable de tipo entero que es nula, si las comparo me tiene que dar true.

**Jesús Daniel Medina Cruz:** claro, pero lo que tú estás asumiendo es que puedes usar una variable nul. Sí. O sea,

**Martin Amaro:** Mhm. Sí.

**Jesús Daniel Medina Cruz:** como tiene ausencia de valor y dijo que no se podía hacer eh no podía hacer sumas tampoco aplica lo mismo en los operadores lógicos, ¿no? Como de valor no vas a poder eh hacer eso. Okay. Operadores lógicos. Ya entramos en otro tema también, pero en voy a voy a como como jalarlos otra vez para acá.

### **00:49:12**

**Jesús Daniel Medina Cruz:** Los operadores lógicos en como en Kotlin,acordémonos de ese concepto, todos son objetos. Entonces, antes de poder interactuar con algo en Cotlin, vamos a interactuar con el objeto que envuelve algo. Para responder a la pregunta, el ah, cuando yo creo las variables, lo primero que va a hacer el compilador es revisar si son opcionales o no.

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** Entonces, me va a dejar hacer la comparación en tiempo de compilación, pero en tiempo de ejecución, cuando e la primer variable se detecte como nula, automáticamente ya no va a ejecutar la comparación. Va a decir, "Esto es nulo, no puedo hacer ninguna operación con esto porque es nulo." ¿Tiene sentido?

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Claro, porque ahí te saltaría el error que el depende de cómo lo escribamos, podríamos reproducir ese error. Va a ser complicado que lleguemos a reproducir ese error. Luego les voy a enseñar, pero es muy importante que tratemos de separar la las cosas. Lo primero es la definición de opcional.

### **00:50:26**

**Jesús Daniel Medina Cruz:** Si yo defino que dos propiedades son opcionales, ¿las puedo comparar? La pregunta es, ¿cómo? No sé si puede, ¿cómo las compararías? Entonces, como no estamos viendo el código, va a ser un poquito más enredoso, pero lo que tenemos que pensar es, ¿qué pasa cuando yo utilizo una propiedad nula opcional y le pongo punto y quiero hacer algo, acceder a una función? automáticamente el compilador me va a decir que esta propiedad a la que estoy intentando acceder su valor Es opcional. Sí, ¿no podrías mostrarlo el código? Sí, podría mostrarlo,

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** pero a eso es a donde íbamos. Solamente quiero que quede claro este término que estoy aquí terminando. El, en este caso, la variable, ¿okay?, es tiene que ser declarada directamente como opcional. Pero aquí, si se fijan, no estamos hablando todavía de val. Okay, solo estamos hablando de bar.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Si le pongo que es opcional, después le puedo poner un nul.

### **00:51:36** {#00:51:36}

**Jesús Daniel Medina Cruz:** Ahora, lo primero que tenemos que revisar para ir viendo poquito a poquito lo del código, ¿sí? Es cómo validamos la anulabilidad. El clásico if, diferente que nul. Yo les decía, si yo comparo una propiedad con un nul, ambos se pueden ser iguales. ¿Tiene sentido lo que acabo de decir? No. Va, vamos aquí. ¿Cómo es posible que yo pueda comparar mi nulable name con un nul? Pues no se puede, ¿no?

**Martin Amaro:** No, no.

**Jesús Daniel Medina Cruz:** Sí se puede. O sea, ya lo has hecho un montón de veces. ¿Estás de acuerdo? Igual a es igual a diferente. Igual diferente que nul. Estás comparando tu propiedad con un nul. ¿Cómo es posible? Para el compilador lo único que estamos haciendo es un check. Sí.

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** Esto para el compilador directamente le hace entender que a partir de ese, ¿cómo dijimos que scope?

### **00:52:53**

**Jesús Daniel Medina Cruz:** el cáncer. En a partir de ese alcance entre las llaves, el nulable name va a ser nulo. Okay. Okay. Dentro de las llaves de if nulable name no es nulo. Okay. Okay. Si entramos el en tiempo de ejecución ya sabe que este nunca puede ser nulo. que por definición lo hayamos declarado como opcional, ¿no? Por definición lo declaramos para el compilador como opcional,

**Martin Amaro:** M.

**Jesús Daniel Medina Cruz:** pero una vez que el compilador encuentra un if, dice dentro de estas llaves, el el compilador, no el tiempo de ejecución, el ró en tiempo de ejecución eh vamos a poder usarlo sin problema, pero él desde el compilador Cotlin ya nos deja decir, si puse un if y puse llaves y le dije que era diferente que nul, dentro de esto no puede haber un nulo de este.

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** tiempo de compilación. En tiempo de compilación se define tiene que esto ya no puede ser nulo.

### **00:54:01**

**Jesús Daniel Medina Cruz:** Ojo, sí se puede todavía producir el nul pointer exception, pero con condiciones muy específicas que no vamos a ver todavía. Lo único que nos les trato de decir es que el compilador puede a través del eh compararlo contra un nul saber si una propiedad es nula o no. Sí. Y a esto se le llama Smart Cuts. A partir de ahí la propiedad ya no es opcional. Marcas está nada más a los nul, ¿no? Para todos los tipos. Okay. Cuando ya terminé el tipo de algo, se vuelve smartcast. Quiere decir a partir de ese alcance ya. A partir de ese alcance ya no tenemos que evaluar qué tipo de dato es la propiedad que estamos usando. Quiero que noten como en la línea del printline no estamos utilizando el símbolo de Podemos

**Martin Amaro:** Eh, de ah, de de preguntas.

**Jesús Daniel Medina Cruz:** usar Sí,

**Martin Amaro:** Sí, creo creo que esto es igual que en Charp, ¿no?

### **00:55:09** {#00:55:09}

**Martin Amaro:** Este, por ejemplo,

**Jesús Daniel Medina Cruz:** sí.

**Martin Amaro:** tienes validas este si es nulo, este, entonces si sí es nulo, dentro de las llaves lo manejas como un nul. Y si no es nulo, fuera de de ese alcance, este ya tiene un valor a fuerzas, ya no puede ser nulo.

**Jesús Daniel Medina Cruz:** Es correcto. A a esto es a lo que le llamamos safe call, una llamada segura. Es lo que estaba diciendo yo ahorita. Si una propiedad es opcional, efectivamente tengo que sí o sí utilizar el símbolo de interrogación antes de utilizar cualquier propiedad. Esto es para responder,

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** por ejemplo, Martín, a tu pregunta. Si yo tengo una propiedad y la quiero comparar con otra, en medio para la comparación, lo que hacemos en Kotlines utilizar una función. Tú dirías, "No, pero voy a utilizar el símbolo de igual igual, un operador. Los operadores en Kotlinson funciones." ¿Sí? Entonces, para poder hacer la comparación entre dos objetos que son opcionales, voy a tener que sí o sí utilizar el operador de la llamada segura.

### **00:56:17**

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** tendría que hacer ah objeto opcional uno símbolo de

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** pregunta punto equals objeto opcional dos.

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** Entonces la llamada al equal se va a omitir si el primero es nulo. ¿Tiene sentido? Sí. Sí. No sé si voy muy rápido o o si está sirviendo los ejemplitos de código. No sirviendo. Sí, no nos hemos metido al al código para moverle porque cuando ya nos metamos a moverle van a ser muchas más preguntas. Entonces, quiero ir en orden a ver si podemos responderlas más que podamos con lo que les tengo aquí de ejemplos.

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** Okay. El es equivalente al primero al al Smart Card. Buena pregunta. Oh, uf, nunca me la habían hecho. A ver, es equivalente.

**Martin Amaro:** Listo.

**Jesús Daniel Medina Cruz:** Cuando dices equivalente, ¿te refieres a que a partir de aquí deja de ser nullo?

### **00:57:24**

**Jesús Daniel Medina Cruz:** Ah. Ajá. Ándale. Ajá. Sí, dice alcance. No, no, porque si tú usas un símbolo de interrogación y accedes a un objeto, en este caso la propiedad es leng, entonces directamente te regresa algo, pero supongamos que accedemos a otro. Todo en la cadena de punto punto que uses tiene que tener símbolo de interrogación. Okay. Okay. No se vuelve más fácil.

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** Sería símbolo de interrogación punto y digamos que el punto, el leng te regresa algo que no es nulo. Se vuelve nulo porque el el anterior era nulo. Se vuelve opcional, perdón, porque el anterior era opcional. ¿Tiene sentido? Va a ser símbolo de interacción punto objeto o propiedad. Símbolo de interacción punto propiedad. Símbolo de interrogación punto propiedad símbolo de interrogación símbolo de interrogación infinitas veces porque el primero, okay, si el primero ya te condiciona que los demás, o sea, okay, okay, aunque no sea nulo.

### **00:58:27**

**Jesús Daniel Medina Cruz:** Aquí el término es opcional. Opcional puede o no ser nulo.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** No sabemos. Como el primero puede o no ser nulo, todos los demás podrían o no ser nulos. Okay. Okay. Sí, sí. que el objeto internamente esté claro, como no sea opcional internamente el objeto. Exacto, exacto. Sí. O sea, a fuerzas como si fuera opcional porque el el objeto que lo contiene el objeto sí sí.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** ¿Cómo lo resolvemos? ¿Cómo evitamos tener que usar signo signo de interrogación? En toda la cadena

**Martin Amaro:** con un smart case al inicio, no me imagino válido que

**Jesús Daniel Medina Cruz:** hay dos formas. Haces el if, que este sería el formato clásico, o haces un guard. Ah, guarda,

**Martin Amaro:** Ajá.

**Jesús Daniel Medina Cruz:** como hacer el if al revés y le pones un return para que se salte.

### **00:59:31**

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** ¿Tiene sentido? Sí. Early, un de todo, ¿no? Ajá, exacto. Es que en Kotlinno existe el guard. En Swift sí existe el Guard. No sé si conoces el Gard en algún otro lenguaje, Martín.

**Martin Amaro:** Este, pues sí. Bueno, ¿a quién te refieres con Gar?

**Jesús Daniel Medina Cruz:** Mira, voy a voy a voy a abrir una página porque me gusta mucho ese eh cómo lo hace Swift Swift Cart. Yeah. En Swift explícitamente defines eh la validación. Kotlinse llama early return, ¿no? Elly return es cuando es un return antes de llamar algo, pero se le dice guard cuando primero haces un if y luego el lly return. La combinación del if y el lly return se hacen un guard en Kotlin.Tiene sentido el Ah, caray. Este no era este, este, este este en Swift existe algo como esto.

### **01:00:31**

**Jesús Daniel Medina Cruz:** Eh, digamos que para evitar tener que hacer esto que estoy mostrándoles en vez a hacer un montón de anidaciones de validaciones if y luego este if infinitos se hace algo.

**Martin Amaro:** Un haduken, no se llama un haduken.

**Jesús Daniel Medina Cruz:** Exacto.

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Yo tengo yo tengo un artículo de eso, pero para compost, luego se los muestro. Esto también funcionaría lo que estamos viendo aquí con el early return es Sí, sí, sí, sí, estamos de acuerdo. Entonces, no es la validación y luego el retorn, pero en eh Swift se propone el término card, que efectivamente es como un if, pero lo único que hace como función es ejecutar directamente un error y hacer el early return cuando se necesite, asegurando que este código nunca va a ser alcanzado. Si no se cumple con la condición, tiene tiene sentido, ¿no? O sea, a diferencia del if que tenemos aquí, lo revisamos de forma positiva y luego forzamos el return, esto no nos va a garantizar que cuando llegue al otro lugar después el valor ya esté eh que no sea empty.

### **01:02:01** {#01:02:01}

**Jesús Daniel Medina Cruz:** Ah,

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** pero pero el Gard, el Gard aquí si nos va a garantizar, por ejemplo, en este caso, el name es opcional y aquí yo creé un name que no es opcional. Si llega a ser este nulo o Nil, en este caso, se va a ejecutar esto, pero ya el compilador automáticamente sabe que aquí este nunca va a ser nulo por el GL. Mm.

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** Esto es en Swift. Ya vamos a salirnos de Swift porque nos vamos a confundir con otros términos que no son no aplican en como que luego hacemos un curso de Swift.

**Martin Amaro:** M.

**Jesús Daniel Medina Cruz:** Sí, es una forma de de de garantizar, pero esto lo lo interesante es que se pueden este combinar los guards en Swift, entonces podemos hacer ob combinaciones de devalidaciones muy complejas Ok. en forma de ejecución sea muy simple validar todo en tiempo de compilación. Lo que pasa es que muchas veces estas validaciones se hacen en tiempo de ejecución.

### **01:03:10**

**Jesús Daniel Medina Cruz:** Sí, esas son variables, ¿no? El G se ocupa con variables y con funciones. Eh, ya es Swift, es mucho swift, mucho Swift.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Y no quiero terminarles dando una clase de su que regres regresando a Kotlineste que meemos, no sé si sabían, pero ST es mi segundo lenguaje favorito. Este si pudiera hacer lo mismo que con Kotlin,yo creo que usaría mejor Swift. Entonces aquí para no tener que hacer estos safe call infinitamente tendría que hacer un smartcast, validar primero que sea uno nulo, ya sea con un if o con un if y un early return que se le conoce como G. Sí, perfecto. Luego llegamos a mi operador favorito, el Elvis operator, que se puede combinar con un early return, pero les doy tiempo de revisarlo. ¿Alguna duda? Todavía no empezamos a ver los ejemplos, ¿no? Todo tranquilo. Esto lo único que hace es asignar un valor por defecto.

### **01:04:36** {#01:04:36}

**Jesús Daniel Medina Cruz:** Si el valor de izquierda es nulo, le pongo el valor de la derecha. Pero también nos permite ejecutar código.

**Martin Amaro:** es

**Jesús Daniel Medina Cruz:** Si el valor de la izquierda es nulo, puedo hacer una ejecución de algo.

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** Entonces, podría directamente hacer un return. después del Elvis y todas las demás líneas ya no se ejecutarían. Me parece un degenerado el Elvis por lo versátil que es, pero bueno, muchos desarrolladores que que vienen de otros lenguajes se confunden bien rápido con el Elvis porque no es muy común verlo, pero no es Kotlinno inventó, o sea, el símbolo de Elvis operero lo inventaron en Kotlin,pero nunca ocupo el reto, o sea, siempre digo, este para un valor corde por defecto como que la mente también podrías hacer un trow. Sí, sí, sí, sí. podías imprimir algo, podías llamar cualquier función que me abriste la Entonces,

**Martin Amaro:** Yeah.

**Jesús Daniel Medina Cruz:** eh lo último muy importante, esta acerción de not nul es decirle al compilador que aunque este es opcional, yo digo mis experiencias.

### **01:05:58** {#01:05:58}

**Martin Amaro:** M.

**Jesús Daniel Medina Cruz:** Ya lo grabó el Gemini. Estoy tratando de que no grabe ese tipo de cosas por mis experiencias que esta propiedad nunca va a ser nul. Y a partir de aquí el compilador dice, "Bueno, entonces todo lo demás en la cadena no va a ser nulo, pero es bajo tu propio riesgo." Y aquí es en donde se puede reproducir también el nul pointer reception. Si le ponemos el not nul assertion.

**Martin Amaro:** Okay. Duda, entonces en Cotlin es que para mí el doble signo de de de exclamación es como una doble negación.

**Jesús Daniel Medina Cruz:** En este caso no es aquí es como decirle al

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** compilador, estoy seguro, seguro,

**Martin Amaro:** Bien seguro.

**Jesús Daniel Medina Cruz:** estoy bien seguro. Es un doble seguro, pero es el compilador exigiéndole al programador que se asegure que esto no es nulo. Entonces, como con un signo de interrogación no le puedes asegurar nada, te obliga a poner símbolo de interrogación cada vez que agregas nuevo punto en la cadena.

### **01:07:27**

**Jesús Daniel Medina Cruz:** Sí. O sea, por ejemplo,

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** si ese nula B fuera un objeto que te diera dentro de otro objeto y le pones al primer objeto, le pones el doble signo, dices de aquí para adelante, estoy seguro que nada va a ser nudo y ya no necesitas esta primer punto interrogación. Punto inter no punto interrogación.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Ahora, bien interesante. Si el primer objeto es opcional y regresa una propiedad cuyo objeto podría ser opcional, aunque le puse al primero, al segundo también le tengo que poner.

**Martin Amaro:** Vamos a ver.

**Jesús Daniel Medina Cruz:** Okay. Sí. El símbolo. Sí, esto que decimos de poner el símbolo de interrogación a cada uno aplica siempre cuando el primero

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** es opcional. Pero cuando el primero no es opcional, no descarta que haya otros nulos en medio. Entonces es bien importante esto. Esto es decirle al compilador, deja de estar revisando si esto es nulo o no.

### **01:08:25**

**Jesús Daniel Medina Cruz:** Pero evidentemente en tiempo de ejecución todavía existe el pointer reception, entonces nos puede explotar en la cana. Sí.

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Ahora, aquí hay un punto que me gusta mucho de Cotlin y la máquina virtual y es que aunque Cotlin tiene el nul safety, como les decía desde un principio, no te garantiza S. que no tengas el un point de exception. Ya vimos un ejemplo como este, pero aquí es culpa del programador, ¿no? O sea, literalmente le dijo el compilador, "Oye, ¿qué pedo?" No error, pero eh dado que Cotlin y Java son interoperables y estamos compilando Cotlin para Java en el Btecode, nosotros todavía podemos seguir utilizando Java en Cotlin. Pero no no de compilé Java a Kotlin,no no utilizamos al mismo tiempo Java y Kotlin.Puedo llamar una función desde Cotrin que se haya escrito completamente en Java y puedo llamar una función de Cotrin desde Java que se haya escrito completamente en Cotrin. No hay ningún problema para hacer ambas llamadas.

### **01:09:51** {#01:09:51}

**Jesús Daniel Medina Cruz:** Los dos lenguajes, como lo decimos, es son interoperables. Sí, pero esto,

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** ¿qué es lo que causa? Si una librería está escrita en Java y la usamos desde Cotlin, no existe el NF. ¿Tiene sentido?

**Martin Amaro:** Y pues está programada en Javasm.

**Jesús Daniel Medina Cruz:** Claro, en Java existe el not nul, una anotación que le dice al compilador que una eh función puede, por ejemplo, podemos en las propiedades agregarle el no nun la anotación a las propiedades de una función y decir, "Estas propiedades no van a ser nulas." Y esto es nada más para decirle al programador que no envíe valores nulos, pero sí puede enviarlos. El compilador no se lo prohíbe, funciona más como un linder. Entonces, si estás tienes una propiedad en Kotlinque es opcional, que no es que no es opcional. No es opcional. y se la mandas a esa función, a una función que está en Java.

### **01:11:19**

**Jesús Daniel Medina Cruz:** Mm. Entonces, en el parámetro de Java de la función tendríamos ese esa anotación not nul. Entonces, te saltaste un paso.

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** La respuesta sería no porque el paso que te saltaste, pero creo que quisiste decir algo y te voy a intentar responder, pero dándote la guía. Si la función la escribiste en Java, debiste haberle puesto un note nulo al principio, pero supongamos que la escribiste en Cotle y la función no recibe nulos, ¿cómo se vería en Java? No te estoy preguntando. Sí, pero si me ves vas siguiendo el ejemplo. creas una creas una función en C. Ajá. No recibe nulos. Ajá.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Cuando la vayas a ver compilada en Java, ah, va a tener nul. Va a tener las anotaciones no cada propiedad de la función. Entonces, cuando la quieras usar en CDL, esta función no te va a aceptar los nulos.

### **01:12:15**

**Jesús Daniel Medina Cruz:** Ahora, si la escribiste en Java, el ejemplo que te di quedó claro. Si la escribes en Java, no sé si te perdiste, siguendo. Va. Si escribes la función en Java. y no le pones ninguna anotación, va a haber un problema en Kotlin.Ahorita vamos a ver eso. Pero supongamos que si le pones una anotación not nul en Kotlinno te va a dejar ponerle un nul. Sí, sí, sí,

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** porque en Java le pusiste not. Okay. Pero si se lo quitas en Java el not nul y le mandas eh algo, le mandas algo que puede ser nulo, ah, te va a dar error, no no te vas de mandarlo porque la Java no tiene la anotación. No, pero si no se lo pones en Java, en Clin sí te deja. Es que no tiene forma de saber porque acá no le pusiste si es o no es nulo.

### **01:13:13** {#01:13:13}

**Jesús Daniel Medina Cruz:** Okay. Okay. Por defecto, todo lo que no tiene nada de definición en Java porque no pues no tiene en Cotlin es un posible nulo. En código lo vas a ver en el ID algo como esto. Sí, es platform type stream y el símbolo de exclamación. Okay. Te está diciendo que este valor viene de Java directamente y no sabe si es nulo nulo. En tiempo de compilación no tiene forma de terminar que en una propiedad que viene de Java es nula o no. Entonces, relaja las reglas. y te dice, "La vamos a usar en Cotlin, pero que sepas que podría lanzar un pointer exception. Okay. Okay, porque viene de lado. Pero en Kotlinno podemos escribir un tipo como string y símbolo de exclamación. Esto nada más es una advertencia del del compilador, en el entorno de desarrollo diciéndote, "Ten cuidado, esta propiedad viene de Java y no puedo determinar si es nula o no." ¿Tiene sentido lo que

### **01:14:33** {#01:14:33}

**Jesús Daniel Medina Cruz:** acabo de decir?

**Martin Amaro:** Sí, sí,

**Jesús Daniel Medina Cruz:** Ya vamos al laboratorio.

**Martin Amaro:** sí.

**Jesús Daniel Medina Cruz:** Quiero que quiero que quede esto así como estamos discutiendo, eh, es el nivel en el que en el que me gusta desenvolverme cuando trato de hablar de los lenguajes, porque cuando me voy al código lo único que aprendo es a escribirlo, pero no a razonarlo, porque el código me da las respuestas en lugar de intentar ayudarme a llegar Yeah. a ellas a través de lo que sé. Aquí el curso quiero que lo que lo tengan de esta manera. La idea del curso no es darles las respuestas, sino enseñarles cómo yo en este caso como experto en Gotlin he intentado llegar a las respuestas. Ha sido mucho jugando con el código, pero la verdad mucho más leyendo documentación. Y es así como me voy dando cuenta de todas estas cosas, que veo algo que no entiendo y voy a la documentación y trato de ver qué significa, pero también se vale así con estas conversaciones que estamos teniendo.

### **01:15:30**

**Jesús Daniel Medina Cruz:** Es decir, entiendo que estamos aprendiendo y a programar, pero para mí la programación también tiene una parte de eh lógica, ¿no? Entonces, la lógica no se aprende programando, tristemente se aprende y proponiendo eh soluciones a los problemas. Lo digo porque es mucho de a veces los problemas que ya están resueltos vale la pena pensar por qué se resolvieron de esa manera y no nada más usarlos. ¿Tiene sentido lo que acabo de decir? Sí, que luego no sé si los voy a perder. Va. Entonces, estamos en la misma página. ¿Alguna duda antes de ir al laboratorio o vamos directo al laboratorio?

**Martin Amaro:** No estoy sin dudas.

**Jesús Daniel Medina Cruz:** Excelente. Yo entendí lo último. Lo último no lo entendiste. Vamos a repasarlo una última vez y si no te queda claro, ahora sí vamos a va para que no no nos quedemos dando vueltas este y creemos frustración. Diisco.

### **01:16:34** {#01:16:34}

**Jesús Daniel Medina Cruz:** Lo primero que hay que entender es eh, espérate, ¿vo voy desde el principio o nada más lo último? No, esto del del principio. Perfecto. Eh, tenemos la interoperabilidad. Eso quedó claro, ¿no? Entonces, cuando tú escribes algo en cotlin, lo puedes usar en Java. Aquí el problema es al revés, cuando escribes algo en Java y lo usas en Clin. Si tú tienes una clase en Java que tiene propiedades, esas propiedades por defecto pueden ser nulos. Sí, en Java no hay nada que te lo impida, pero le puedes ayudar al compilador agregando @not. Pero aquí es muy importante aclarar, aunque le pongas not nul puede ser nulo en Java. Sí,

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** el not nul no te impide, solamente te advierte. Sí, pero el not nul es importante porque si le pones not nul en Kotlinautomáticamente va a decir, "Esto no es nulo. Entonces,

### **01:17:35**

**Jesús Daniel Medina Cruz:** de preferencia pues que le pongamos nulable. Y entonces en Kotlinva a decir, "Esto es opcional." Sí,

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** eso por Entonces, ¿qué pasa si quiero usar una propiedad de Java que no tiene anotaciones? Kotlinautomáticamente me va a decir, "Oye, esto ya lo que vamos a ver es este valor viene de Java y no sé suabilidad en tiempo de compilación. Entonces, relaja las reglas, no te dice que estrictamente le tengas que poner un símbolo de interrogación o algo. Actúa como si no fuera nulo, pero podría serlo. Y este símbolo que puse aquí es lo puse porque en Android Studio o en Intellish Idea te va a aparecer, pero no lo puedes utilizar en COD, no puedes subir string y símbolo de no puedes, pero ahorita que vayamos a al al entorno de desarrollo vamos a ver cómo se ve.

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** Sí,

**Martin Amaro:** Si es como que el ID este diciéndote, ¿no?, que eso viene de Java, no lo puedes usar.

### **01:18:45** {#01:18:45}

**Jesús Daniel Medina Cruz:** sí.

**Martin Amaro:** te está diciendo, esto viene de acá y no sé si es, no sé si es no nuleable o si es nuleable.

**Jesús Daniel Medina Cruz:** Lo que yo les diría es es el compilador recomendándote que cheques, revises la anulabilidad antes de usarlo. Podemos podríamos usar un smartcast, por ejemplo. Okay. Okay. No laboratorio.

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** Laboratorio. Listo, Martín.

**Martin Amaro:** Mhm. Sí, de hecho,

**Jesús Daniel Medina Cruz:** Voy

**Martin Amaro:** Dani, yo creo que ahorita ya me voy a tener que bajar. Yo ocupo ir a hacer algo ahorita. Este, ya no quiero alcanzar, la verdad, a regresar para la final de la clase, pero pues igual se está grabando la la transcripción, ¿no? Pues lo puedo checar al final.

**Jesús Daniel Medina Cruz:** yo les voy a compartir después las notas para que le echen un vistazo. Okay,

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** no te preocupes. Tómate tu tiempo.

### **01:19:44**

**Martin Amaro:** Bye bye.

**Jesús Daniel Medina Cruz:** V, Martín.

**Martin Amaro:** Justin.

**Jesús Daniel Medina Cruz:** Adiós, Martín.

**Martin Amaro:** Vale.

**Jesús Daniel Medina Cruz:** Listo. Entonces te comparto pantalla, o sea, aprovechar mejor la clase en uno a uno otra vez. Nos vamos a perder los buenos comentarios de Martín. Sí, sí, sí. Porque ahí, ¿cómo se dice? Cuando tienes ideas y empiezas a debatir y te llega un conocimiento más mejor o bien más mejor más mejor. Me pasa, me pasa. Se le ocurren se ocurren. El sigue grabando, ¿eh? que sí que si vas a decir algo, ¿no te acuerdas que alguien no está grabando? No encuentro el airían con el spotlight. Yeah. Okay, estoy abriendo varios entornos para probar en varios lugares. Voy a compartir mi pantalla. Pantalla completa. Está está viendo mi pantalla. Okay.

### **01:21:19** {#01:21:19}

**Jesús Daniel Medina Cruz:** Ah, no te he mostrado el kmp click, ¿verdad? Está bien padre. A ver, ¿dónde está esto? Open recent. ¿Dónde está? No lo tengo aquí. Mira, no está. Vamos a abrir el curso. Laboratorio Open. De tu lado. Este, tienes el laboratorio de la mano. Mira qué tanto le moví. ¿Qué? Tengo aquí varios cambios que no se grabaron, pero me los cancelo. A ver, laboratorio. Aquí está. Mira qué curioso funciona. Está fallando el buscador. A lo mejor ya me está pidiendo que actualice la ma. Este no es. Sí, que lo tenía abierto. Ahí está. a descarta changes y eh vamos a irnos al L2 Start.

### **01:23:39**

**Jesús Daniel Medina Cruz:** No me dejó. ¿Dónde? L2. El el laboratorio. No, capturando el input. Espérame, me está fallando. No me deja moverme. Problemas técnicos. Sí, abrir. Ahí está. De nada. 00\. Okay. Entonces, e el laboratorio dudas ahí de podamos ver cuál es la diferencia en la compilación de de una variable y una val. Sí, vamos, vamos a ir por partes. Okay. Primero, este, como vamos a hacer el en en el laboratorio, este, lo primero que vamos a hacer es ah trabajar un poquito con la terminal. Si si te vas, ¿estás viendo en pantalla? Tienes el Intelis día abierto este me hacer algo que no me deje agarrar directamente la le digo le digo checkout y luego dice que sí, pero luego me aparece como que no sabes como que se cuatrapea, no sé si porque están están en el mismo commit las dos tags.

### **01:25:44**

**Jesús Daniel Medina Cruz:** C4p. ¿Sabes a qué me refiero? Está raro. Bueno, si estás en el L1 done es lo mismo que el L2 start. ¿Tiene sentido? Voy a hacer vamos a tardar más. Pero no tenías desde donde tú lo tenías o lo borraste o qué hiciste o qué pedo. No, desde el inicio no cloné nada porque yo quería hacer todo No clonaste. Ah, okay, okay. A ver, vamos viendo lo que tendrías que tener. Okay. Yo te diría que que estaría bien empezar desde ahí, pero este lo primero que tenemos que tener, ¿quieres compartirme tu pantalla y te voy diciendo mejor? Sí, sí, sí, sí. Cre. A ver. Okay. Ah, tienes un montón de cosas ya. Okay. Entonces, tienes el settings gradable, ya definiste en series grad y definiste el nombre del proyecto, los por tienes plugins ahí.

### **01:27:24**

**Jesús Daniel Medina Cruz:** Tengo plugin por el proyecto. Pero, ¿por qué? No venía. Interesante. Luego investigamos que que usaste el el creaste el proyecto con Intellig, le pusiste el wizard de Cotlin y todo ese tipo de cosas. Okay, curioso, pero bueno. Eh, entonces ya yo te iba a decir más cosas, pero tienes un proyecto con el main, entonces nos podemos quedar con eso. En la podrías usar el mismo main, pero si quieres ahí otra vez es que lo quieres separar por clases, por archivos, como son funciones, podría separar por comit en lugar usar archivos diferentes, hacer tus propios comits. Pues sí, también podría hacer. Vamos ahorita hacerlo así. Sí, sí, sí. Me gusta. Eh, yo estoy dando comentarios, pero es como a ti te funciona. Si te funcionan aquí, pues como tú quieras. Ah, voy a compartir en pantalla entonces, ¿te parece?

### **01:28:27**

**Jesús Daniel Medina Cruz:** Y si te pierdes me sigues. Vamos poniendo pausas. Entonces, si estás viendo mi pantalla, eh lo primero que vamos a trabajar es en main. Deberíamos de tener algo parecido a esto. Sí. Puedes seguir entonces el laboratorio. Si te vas directamente aquí, puedes ver la etiqueta L2 Start con eh el Ritmi del proyecto y en el L2 don lo que vamos a construir. Falta eh falta. No, no, no. Aquí, aquí están las instrucciones. En el paso uno, lo que vamos a hacer es pedir el nombre de usuario. Cuando vemos el proyecto, tenemos los prints. Sí. Si ejecutamos esto, creo que ya lo hemos ejecutado la última vez, pero va a aparecer la terminal, los tres print ln, los print ln a básicamente es imprimen el mensaje y por esto me deja no me deja quitarlo. Voy a poner acá este me aparece esto así, ¿no?

### **01:30:29**

**Jesús Daniel Medina Cruz:** Salto de línea. Entonces si queremos ah imprimir un mensaje que no salte de línea, en principio solamente no le agregamos el ln. Esto en la terminal nos va a permitir entonces capturar texto. Podríamos poner varios mensajes así y van a salir uno al lado del otro. Okay. Sí, sí, sí, sí. Pero esto es muy muy parecido a lo que ya este tenemos. Si agregamos el introduce tu nombre, nos va a aparecer aquí. Pero todavía no nos deja escribir nada, ¿no? Sí. Entonces, eh para nosotros poder interactuar con la consola, esto es interesante, eh dependiendo de cómo ejecutes el proyecto, si no estás en el Android Studio, esto, ah, la misma terminal nos permite ejecutar esto, cre. Si yo voy aquí a la terminal y creo el run este eh, espérame que no me sale curioso. No recuerdo que me haya pasado esto antes.

### **01:31:52**

**Jesús Daniel Medina Cruz:** A ver, inténtalo. A ver, voy la terminal del Android y tampoco me dejó. No me deja. A ver, ¿y si le doy sincronizar? No está sincronizado el proyecto. Ah, le borré el gradle. No estaba sincronizado con el gradle. Curioso. No está sincronizado el proyecto. Sorry. Ahora sí. Gr. Por cierto, para que funcione Radle Run, este, tienes tienes que tener gradera esto automáticamente en el entorno. Sí. Eh, ahí está. lo genera automáticamente. Sistema como tu pantalla. No estoy entendiendo bien qué te sale. A ver, ya estás compartiendo, de hecho no dejaste compartir. ¿Qué te sale? El great. ¿Qué corrige? El main. Tienes dos mains. A ver, abre la otra de la clase.

### **01:33:38** {#01:33:38}

**Jesús Daniel Medina Cruz:** No, es el la clase. Ah, okay. Le pusiste un nombre diferente a la función. Ábreme. Eh, y dice a restricted method in java. Lag system has been called. Pero no lo estás llamando, ¿no es cierto? Dice, pero esto es un warning, esto no es el error. Y el error dice run not found in root project. curso básico. Ah, okay, okay. Abre tu bill. Poquito arriba, abajo del ignor. Okay. Okay. No, ¿sabes qué? Se me hace que es la versión de Java. Eh, no sabes qué versión de Java tienes, ¿verdad? Pon en la terminal. Escribe en la terminal este Java espacio guion guion versión. Tienes la 26 y no sabes cómo cambiar de versión, ¿cierto?

### **01:35:07**

**Jesús Daniel Medina Cruz:** Sí, no, como en Android Studio. Eh, no, pero eso es para cambiar la versión de Android Studio, ¿no? La versión que tienes en el sistema. ¿Tienes otras versiones? Eh, para ver las versiones de Java que tienes instaladas. Bueno, si en Android Studio si podemos ver las versiones. No, no se hace. Ah, sí, no, no, no te deja. En en Android Studio, sí, sí tienes porque no lo instalaste de otra manera, ¿verdad? Métete al Intellig ahí en settings y vas a irte a donde dice hay una forma más fácil. Mejor cierral esto. No, te voy a te voy a decir el método más fácil. Ciérralo. Cancel. Abre el gradol en la parte de la derecha donde está el elefantito. No, el gradol eh acá en la parte de la derecha tienes varias herramientas.

### **01:36:05** {#01:36:05}

**Jesús Daniel Medina Cruz:** Eh, este, Ajá. Y vas a picarle ahí y cre settings y te abre directamente y podemos ver qué versiones tienes instaladas. Solamente tienes la 26\. Dale en download JDK y selecciona la 17\. Vamos a trabajar con la 17, ¿no? En la parte de arriba, versión 17\. 17 por ahora y este tranquilo, tienes prisa. Dale. Cancelar, cancelar otra vez. Vamos. No, ahí no es. Prisa, tranquilo. Ahíale settings. Settings. Perfecto. Eh, la parte de abajo vas a seleccionar en download JDK. Seleccionas la 17\. Y eh yo te recomendaría utilizar ya sea la de este la de Amazon Coreto o directamente la de Jetins. Jets. ¿Cuál es? Eh, a ver, yo no sabía que había dos. Pues usa la que quieras. Okay, dale download y dale okay.

### **01:37:25**

**Jesús Daniel Medina Cruz:** Okay. Eh, y para seleccionar la versión de Java en tu terminal, no estoy seguro si lo podemos hacer desde abre settings en tu en tu este Mac. Ahí la manzanita le puedes picar a settings igual y te vas hasta abajo. No tienes Java. Entonces eh se puede definir tú utilizas ZSH. No estoy seguro cuál es. Si le pones eh si abres este settings y este y buscas terminal. Acá no sirve el buscador. El tuyo. Sí. No, mejor abre la terminal. Abre la aplicación de terminal. y le vas a dar. Sí, dices sh. Sí, ZSH, ¿no? ZH. Entonces puedes abrir el archivo. SHRC eh lo puedes abrir con el Visual Studio si quieres. Puede ser. Ah, listo. El archivo.

### **01:39:16** {#01:39:16}

**Jesús Daniel Medina Cruz:** Eh, no le puedes poner. Tiene escribe aquí. No, ya lo ceraste. Escribe este shift desde Visual Studio Code, shift Command P y puedes escribir este shell S H e L. Dale ahí pistol, obviamente. P administrador. Okay, ahora sí abre una nueva terminal. y vas a escribir C o D E code espacio cer no C o D Ah sí eh punto zsh RC enter open. Okay. Este es este tu terminal y para seleccionar la versión de Java puedes hacer algo como esto que voy a pegarte en el chat. Aquí lo puse. Puede bastar con que lo cambies en Android Studio. Este, pero esto garantiza que se va a seleccionar la versión cada vez que abres la terminal. No tienes el Java Home. Aquí está. Se me hace que es todo.

### **01:41:00**

**Jesús Daniel Medina Cruz:** Si yo digo que es todo, casi seguro, pero tienes que guardarlo. E tranquilo, tranquilo. Ah, también. Y ahora es la terminal. Muchos pasos, ¿no? Sí. Eh, en la terminal ya vas a poder hacer este source zshrc. ZS HRC. Listo. Eh, si das Java espacio y version otra vez. Eh, pegado 17\. Y en el Android, el Intellig intenta ejecutar otra vez el grade run. Okay. Ah, sigue como que tenemos, a ver, aquí ejecuta el Java Versión. Hm. Ejecuta el Java Versión desde esta terminal. A lo mejor lo vas a tener que cerrar version. Sí. Eh, haz el source sin cerrarlo. Vamos a probar source. Source un eh punto Z. Ah, no, pero tienes que ponerle el No, no. Primero es el símbolo.

### **01:42:36**

**Jesús Daniel Medina Cruz:** Ah, ya de la ñ, luego diagonal, símbolo de diagonal punto, no, diagonal punto y ya otra vez el Java version. Sí, vas a tener que cerrar el ID el Sí, ciérralo. O sea, pero completamente muchas cosas. Se va directo a las notas del Gemini. Eh, abre la terminal. Esta es la clase uno. Tienes que abrir el proyecto del otro, ¿no? Curso básico. Y escribe ahí en la versión. Wow, no te deja seleccionar la versión 17\. A ver, ahora otra vez el gradual settings. Ah, tienes el el 26 aquí todavía en el Cotlin JBM Toolchain en la línea 37\. 37\. Ponle 17 por ahora 17\. Y dale sincronizar el proyecto ahí arriba. Ajá. ¿Quién es? Okay. Vamos a ver qué hace. Son más pasos de los que recordaba. No sé por qué la terminal no te deja hacer el source de la versión.

### **01:44:30**

**Jesús Daniel Medina Cruz:** Intento correr otra vez. Oye, pero no cerraste. Sí, lo cerraste completamente. No, quit. No, no jala porque sigues usando otra versión de Java. Es que el error, si te fijas, ya no sale igual. Pero pero abre el acá la clase con esto. No. Este, si tienes todo seleccionado, sí, está perfecto. Dale, cancelar. Abre aquí en el en donde está el grado. Ya es que di una carpetita que dice tasks, abre la que dice no está. No está la de Ron. Pero, ¿qué pasó? Tiene que haber uno que dice application. ¿Sabes qué? El problema va a ser ese plugin que tienes. Abre el settings. Ya, ya, ya me acordé. Perdóname, ya me acordé. A ver, es que todo el proyecto que tienes está configurado diferente, entonces yo estoy pensando que tienes el mismo proyecto que yo y te estoy dando instrucciones sobre el mismo proyecto.

### **01:45:59**

**Jesús Daniel Medina Cruz:** Cierra esto. Todo lo que hiciste, ¿okay? Sirve lo del Java, instalarlo, todo eso te sirve, ¿okay? Hacerlo de la terminal también sirve. Okay. No sé por qué lo de la terminal no cambia la versión de Java, pero eso lo resolvemos después. Quizás todo lo que hicimos no era necesario. Okay. Pero, ¿por qué? Porque tu proyecto es diferente que el mío. Vamos primero a settings de grad. Sí, settings.gadle, perdón, perdón, perdón, perdón. Archivo de settings.gad.kts. Exacto, exacto. Y vamos a borrar los plugins. Solo deja la línea del root project. Okay. Punto número un settings. Nada más necesitamos root project.ne. Y si te vas a el bill.kts, kts. Aquí nos falta el plugin de application.

### **01:46:54**

**Jesús Daniel Medina Cruz:** Agrega application literalmente debajo de esa línea. Exacto. Dentro de plugins escribe application y eh aparte de grupo, versión y repositorios, Maven Central y el test baja un poquito, tienes la versión y hasta abajo vas a escribir algo que no tienes porque el wizard no te lo generó. Application, así literal igual. y luego espacio llaves y este pues prácticamente eso que te está generando el Gemini es main class. Ahorita te teo main class. Entonces, le pusiste doble punto y le pones paréntesis. La vas a ejecutar desde main, ¿no? Entonces va a ser main kt, así literal. Main con la K mayúscula T. y dale sincronizar. Esto es lo que te va a generar el run que no tienes. No me acordaba que no tenías el el mismo proyecto. ¿Por qué no sale por el main punkt? Lo vimos la clase pasada porque va a ocupar el va a ocupar el la JBM va a ocupar el B. Siempre va a ocupar el B. No es la respuesta.

### **01:48:30**

**Jesús Daniel Medina Cruz:** Exactamente. ¿Te acuerdas? Segundo intento de la clase pasada. No, la desventaja de no tener notas. El compilador cuando no generas una clase en Kotlinpara el Begitas generar una clase automáticamente. Ah, sí, sí, sí, porque era una función de era una función de alto nivel la clase porque no tenemos clase. Si tuviéramos la clase sería es el nombre de la clase que usaríamos. Ah, okay. Perfecto. Entonces, ya tienes el Ron. Enéndelo. Magia. Magia. Eh, no, esto ya es de la versión otra vez, ¿no? ¿Qué dice? Eh, eh, command finish with encuentro la clase, dice, no la genero correctamente. A ver, abre tu main cat, eh. Eh, hay algo que nos faltó. Algo nos faltó. Una cosita que se me está olvidando.

### **01:49:59**

**Jesús Daniel Medina Cruz:** Claro, claro, claro. Es que tú lo metiste dentro de un paquete pack. Example. Tenemos que agregar. Vete al bill.gradle.kts. Build.kts. kts y antes el nombre del paquete. Aquí en el main class conc mayúscula.s antes del main KT dentro del string, ¿no? Dentro del string, antes del main KT agrega el nombre del paquete. Como tú le pusiste un paquete es org. Digo tú, pero en realidad es el wizard el que te agregó el paquete automáticamente, ¿no? Sample con una M en lugar de P. Digo M. Todo revuelto. Ajá. Ahora sincronizar otra vez. Wow. Ya. Sí. Ya. Dale, corre. Listo. Obviamente tú no estás imprimiendo nada en tu consola. Ahora podemos ir a tu consola otra vez y me sigues.

### **01:51:06**

**Jesús Daniel Medina Cruz:** Sí, voy a compartir mi pantalla. Wow, qué viaje. Se nos fue casi la ¿Quieres que le sigamos hasta que terminemos o o a las 11 que nos quedan 8 minutos? ¿Cómo tienes tiempo? Yo tengo tiempo. Vamos a intentar terminar entonces. Este es una un buen paréntesis que hicimos ahí. Eh, entonces después de este paréntesis en donde se nos olvidó la configuración completa de Gradle, por un lado, el settings, que tenías un plugin extra y por otro lado este agregar el plugin de application para que podamos generar cuál es el entry point. Ahora ya podemos ejecutar nuestro main. Solo agregando una anotación, tú tienes un paquete. Si lo quieres quitar, lo puedes quitar, pero yo yo no lo tengo. El paquete es opcional, por así decirlo. El paquete acá arriba en tu archivo main.kt tienes packageespaciogorg.example. Si lo quitas vas a tener que quitarlo también del greó, ¿verdad?

### **01:52:09** {#01:52:09}

**Jesús Daniel Medina Cruz:** Es que creaste el proyecto con el wizard de Intelliga, pero no sé qué proyecto exactamente seleccionaste. ¿Me explico? Entonces, no sé, había varias cosas que no corresponden a un application y luego me enseñas qué hiciste para para ya estar más preparado para la próxima aquí. Entonces, lo único que te pediría es que tengas este de aquí. Sí. Entonces, por ejemplo, si yo voy a la terminal, supongamos que uso este Visual Studio y voy a la terminal y escribo punto creado. run este no no espera nada. Exacto. Entonces, en algunos este sistemas lo que vamos a ver que tenemos directamente la pestaña run para ejecutar la aplicación, si tenemos el proyecto configurado correctamente, pero este cuando queremos poder escribir en la en la terminal, por ejemplo, vamos a a agregar El punto número dos, capturar el el input. Se utiliza una función read line or nul. Okay, puede ser re sin el, pero ahorita vamos a ver, ¿no?

### **01:53:57**

**Jesús Daniel Medina Cruz:** eh directamente la función devuelve un estulable, entonces podría fallar si no lo no lo revisamos. Podemos hacer aquí leer y lo guardamos en una variable. Si vemos, a ver, te espero. Val input, dos puntos string, símbolo de interrogación. Este, puedes activar la Ah, sí, cierto. Déjame ver tu pantalla. Déjame ver tu pantalla. Y este estás en Intelisa, entonces ve a settings y vas a buscar este uni Uni, un Uni, eh. Eh, caray, no le pusiste June, Junie. Ahí está. Píale ahí. Y y estas no son las que estaba buscando. Qué curioso. Dale, cerrar. Entonces es en el AI assistant. Dale. No, ahí abajo tienes assistant. No, tampoco. Entonces busca code compion. No sé bien cómo buscarlo.

### **01:55:35**

**Jesús Daniel Medina Cruz:** El Android Studio es un poquito diferente. Code. Completion inline inline. Eh, ándale. Esa es una popup. A ver el popup. Eh, son muchas configuraciones. Ahí está, mira. Comand abajo, command completion y yo creo que ya no ya no eh no no estamos muchas configuraciones. Estaron. Sí, sí, sí. Excelente. Eh, entonces me perdí en qué estamos. Ah, voy a compartir mi pantalla. Estaba mencionando, me estabas haciendo como varias preguntas, ¿no? Oye, pues, ¿cómo cómo se va a ver esto, aquello? Lo otro. Eh, vamos a hacer primero el bar. Hacemos los dos de una vez, ¿te parece? Sí, sí. Input uno, input dos. El primero es bar y el otro es bar.

### **01:56:45** {#01:56:45}

**Jesús Daniel Medina Cruz:** Ya el compilador me está advirtiendo, ¿no? Para qué lo quiero en bar. Ahorita revisamos pues qué sentido tiene. Entonces me voy a tools cotlin show cotlin code de compile y listo. Ponemos side by side y tenemos ¿Qué pasa entonces? Sin duda. Me encontré cuando lo compilé. Claro, pero este hay una diferencia, ¿no? Cuando tú haces lo siguiente. Input uno eh stream. Sí. Y si quieres hacer esto, ni siquiera lo puedes compilar. no se puede compilar. Tiene sentido lo que estamos haciendo. Sí, sí. En principio, cuando son variables creadas dentro del mismo alcance scope, no te va a dejar compilarlo, ¿no? Pero, ¿qué pasaría con este ejemplo? Vamos a quitar esto de aquí. Vamos a dejar este val. ¿Qué pasaría si yo tuviera una clase person?

### **01:58:19**

**Jesús Daniel Medina Cruz:** Sí. Este, el nombre así, sí. Mm. Si una propiedad es bar y la otra val, lo que vamos a ver es esto. Efectivamente, solo porque la propiedad ahora son atributos dentro de una clase. Ajá. No le puse data class. Fíjate, no es data class. Es una clase. Sin embargo, a pesar de ser una clase normal, el la propiedad se pone como not nul cuando es bar, porque no le puse nulo, pero a este tampoco le puse nulo. Pero este se puso como final, no se puso como no nulo. Para empezar porque el int no te permite poner nulos. Okay. Sí. ¿Entienden la diferencia? Vamos a abrir un archivo de Java. Okay. Vamos a ir a Java y vamos a hacer lo mismo, pero en Java. En Java.

### **01:59:35**

**Jesús Daniel Medina Cruz:** Este Java, no person Java. Si quisiéramos hacer lo mismo, eh public class, eh las clases en Clin por defecto son finales. Esto es esto impide que puedan extender de la clase. Entonces podemos definir un privat final int. Eh, aquí el compilador en Java me dice que no, pues este tiene que ser inicializada si le pongo final. Por ejemplo, si le quito el final, no me da problemas. Pues si le pongo final, sí. Pero si te fijas acá no me dio problema porque cuando agrego el constructor public person y le agrego el hte y hago bis.h \= h. Entonces el final sí lo permite por el constructor. Pero esta es la parte interesante. Si yo le quisiera poner aquí a este que es este un int, un nulo, me dice requiere int. Mm. Sí. Ahora eso lo vamos a dejar así. Ahora si hago lo mismo, lo mismo mismo, pero con un privat string name, vamos a decirle final, nos da el error.

### **02:01:27** {#02:01:27}

**Jesús Daniel Medina Cruz:** String name, le ponemos this name igual a name. Ya no nos da problema, ¿no? Sí, si le quito el final, pues obviamente porque puede ser variable. Si te fijas, el bar le quita el final, el bar le pone el final. El bar val el finalme. ¿Para qué? Para que solamente pueda ser asignado a través del constructor, pero en su valor ya no pueda cambiar. Ah, okay. Y aparte le quitamos el set. No hay un set para el H. No hay. No, ahora te decía, ¿no? ¿Qué pasa si le pongo al string? Le pongo un nul. Mira, deja a ver si le quito los final, le pongo nul. Como este es un dato primitivo, el intere dejaría. Sí, me deja porque los objetos pueden ser nulos, pero los valores primitivos no. En Java.

### **02:02:46** {#02:02:46}

**Jesús Daniel Medina Cruz:** Por lo tanto, como esto de aquí no puede ser nulo, no necesita el not nul. Pero este como sí todos los objetos le agregan el not nul. Yeah. Sí, perdón. Y más o menos así es como queda el pollo. Faltan los getes y serers obviamente, pero si no los agrego y yo quisiera crear un objeto de person igual a person de Cotlink, solamente tengo que hacer esto. Este, eh voy a ponerle Daniel 29, no, pero si quiero hacer lo mismo. Polo. Igual a persono. En principio parece lo mismo, pero para la persona, el nombre y asignarle otro nombre, pero no puedo asignarle otra edad. M y en este ni siquiera puedo acceder a las propiedades hasta que le ponga get y set. Lo curioso es que si le pongo un get, eh, por ejemplo, aquí ya me sugirió los gets y le pongo aquí no hay get name, me dice que es name directamente la propiedad, ¿no?

### **02:04:25**

**Jesús Daniel Medina Cruz:** El compilador me convierte la función de Java. Y si te fijas, me agrega el not null. O sea, si le quito el not null, eh, bueno, aquí me hace la referencia de, ¿cómo se dice? Que viene de de Java. Mm, ¿cómo era? Así no me está poniendo el valor. Ahí está. Aquí está, mira. Si ves ese símbolo. Ah, sí, cierto. Entonces, el name efectivamente viene de Java. Si yo si yo asigno este name, este no me dice que viene de Java. Sí, este es de Cotlin. Ajá. Pero cuando viene de Ya. Ah, sí, es cierto. Estamos hablando pues yo pudiera ponerle aquí stream directamente. Sí, pero igual puede ser nulo, ¿no? Aunque Pero igual podría ser nulo. Exactamente.

### **02:05:51**

**Jesús Daniel Medina Cruz:** De hecho, lo podemos reproducir aquí. O sea, se supone que aquí el name tiene que regresar el string, pero si regresa Esto no, ya me está diciendo este que le diga que puede ser nulable, ¿no? Entonces aquí el name ya lo puede poner como nulable, pero si le quito esto, quitamos me dice que el cot lo ejecutamos. Vamos a quitar todo este ruido. Okay. Y vamos a ejecutar nada más esto sin esto. No, esto tampoco lo necesitamos. Solo queremos de hecho esto. Sí. Entonces, mm, espérame. Algo me falta para que pueda encontrar la clase, eh, pero pero ¿qué me falta? ¿Qué me faltó para que encuentre la clas? Ah, lo tengo que poner a fuerzas en Java. Se me hace que hacerlo así a fuerzas. Tu package tiene que estar en un paquete a fuerzas. Eh, no me deja, no me dejó.

### **02:07:39**

**Jesús Daniel Medina Cruz:** Okay, acá el pollo. Sí. A ver otra vez. Ahora sí. Eh, eh, ¿qué es lo que no falló? El name. Ah, ¿por qué no lo estoy usando? Perdón, es que pues si me regresó el nulo, pero no lo usé. Perdón, se supone que es un string, ¿no? Entonces, si le hago un punto leng eh ¿Dónde está el error? Mm, no lo veo. Acá está. No interception. Mira, no lo genera como directamente como Java reception. Genial. Lo habrán reemplazado el cotlin. Te debo la la investigación de qué pasó con el cotlince. M. Pero bueno, pudimos reproducir el contra antes de Cotlin a pesar de que se supone que esto no es. Ah, espérame, tengo una una una sospita de qué pasa. Val eh name dos puntos string.

### **02:09:15** {#02:09:15}

**Jesús Daniel Medina Cruz:** Sí, name length. Ver. Ah, ya dijimos que aquí no. Ah, sigue siendo como Java. Curioso. Me quitaron el códil en el puente excepcio. Buscamos rápido. Vamos a ver qué le pasó al Colin Nul Exception. Así directamente a ver si encuentra a partir de la versión 1.4 la clase fue descontinuada. Mira, no, yo no sabía, no me enteré. Bueno, para que veas que sí existía. No estoy mintiendo. Tu memoria fue tu imaginación. Mira, mira, mira. Originalmente Cron utilizaba excepciones propias en su tiempo de ejecución. Estas tres. Exacto. Para reportar fallos específicos de las comprobaciones de nulidad, como cuando forzabas un valor con el operador. Ja, exacto. Antes era una excepción diferente. Jetfs unificó estas excepciones bajo nul pointer exception debido a las siguientes razones.

### **02:10:32**

**Jesús Daniel Medina Cruz:** Optimización del byte code para no tener que generar más. Al usar la excepción estándar de la máquina virtual de JBM, tanto el compilador de Cotlin como herramientas de optimización externas. Ajá. Exacto. El el R8 de Android pueden realizar mejores optimizaciones de código, ¿cierto? Y consistencia. Evita confusiones. Pues sí, todas las cosas que que yo te estaba explicando ya no tienen sentido porque ya arreglaron el la confusión, pues es más fácil, ¿no? Pero los veteranos nos vamos a acordar de que existió alguna vez esa mala práctica. Por ejemplo, también estaba un inicialize property accession. Mm. Esta se sigue utilizando, ¿no? Sí, sí, sí. Dice que sigue. Ajá. Excelente. Entonces ya no hay cotl reception. Le mentí a Martín también cara y no me di cuenta.

### **02:11:26** {#02:11:26}

**Jesús Daniel Medina Cruz:** No, a ver, una cosa es mentir y otra cosa es este no estar al día, ¿no? Eh, pero efectivamente te mentí sin estar al día. Eh, lo actualizaron y a partir de la 14\. Fíjate que ni me fijé en cuándo lo quitaron. Tenía rato que no lo veía. Ahora ya no hay forma de darte cuenta si la excepción es por un problema de Java o no, pero bueno, pudimos pudimos aprender eso nuevo. Excelente. Seguimos con la clase. Entonces, teníamos eh que guardar el name de read or nul. Vamos a guardar en un string que puede ser nulo, ¿cierto? Si tú ejecutas esto, te debe de permitir escribir tu nombre. Eh, no, ¿qué no deja? M, o sea, escribes, ¿no te sale así, verd? A ver, déjame ver tu pantalla. Sí. Ah, claro, es que tú lo estásando la terminal.

### **02:12:49** {#02:12:49}

**Jesús Daniel Medina Cruz:** Van dos cosas que es la nota que agregué. Comparto pantalla otra vez. Eh, si vemos aquí agregué una nota porque efectivamente el run no te deja este pues escribir en la terminal, no te deja agregar datos. El input si lo haces directamente desde el desde el Android. Okay. Sí. Sí, te deja como yo lo hice, pero vamos, voy a hacerlo como tú lo hiciste ahorita y efectivamente no me dejó. Pues vamos a agregar esta partecita que está aquí. Sí, nos vamos a ir al B. Gradle, lo podemos agregar este hasta abajo. Vamos a agregar task. Vamos a crear una tarea nueva de Java Exec. llamada Ron para sobreescribir la que existe y permitirle el input de datos. Le damos sincronizar y una vez que sincronice lo puedes probar. Okay. Sí, funcionó. Sí, funcionó. Sí. Excelente.

### **02:14:20** {#02:14:20}

**Jesús Daniel Medina Cruz:** Entonces ahí ya podemos este escribir nuestro nombre. queda como medio raro, pero bueno. Ahora, ya que escribimos nuestro nombre para poder utilizarlo, ¿cómo? Ah, te sale tu nombre. Claro. Eh, ¿por qué me sé es emocionante para mí también? Eh, claro, si si quisiéramos usar el input, si si lo usamos directamente eh internamente el print ln tiene una función para recibir nulos. Sí. Entonces aquí no no es no nos da problemas, pero si nosotros declaramos una función como username que no es nula, tendríamos que primero revisar que no sea nulo para luego guardarlo en la variable. y poner podemos ponerle un valor por defecto. Esto sería como la forma explícita de de hacerlo. Es decir, voy a ponerlo. si estás siguiendo mi pantalla, digamos que tenemos el input y entonces creamos un este lo podemos hacer como val username stram.

### **02:16:15**

**Jesús Daniel Medina Cruz:** Sí. Ahora si yo quiero directamente, o sea, username igual a input, obviamente no me va a dejar. Sí, dice que el tipo del input es string opcional, pero debería ser string normal, estricto. Entonces, una forma, como te había comentado, es si input es diferente de nul, podemos hacer ahora sí username igual a input. Aquí está el SmartCast. SmartCast toclin. String. Sí, sí, sí, sí, eso sí lo entiendo. Perfecto. Sí, lo entiendo. Pero, pero, ¿por qué te está dejando asignar otro valor si es un valor? Buena pregunta. Tu pregunta es muy buena, sin embargo, la respuesta sí la sabes. Acabamos de ver, ¿no? Por lo que habíamos dicho, ¿no? de la de que eh está usando, o sea, es un no estoy primitivo, entonces es un objeto, entonces está cambiando el valor del del objeto, lo que habamos visto hace rato, ¿no?

### **02:17:56**

**Jesús Daniel Medina Cruz:** Voy a ir un poquito para atrás. Sí. Yo hago esto, fijas, no me exige que le ponga valor, ¿no? Ajá. Entonces tú dirías, "Bueno, pero acá lo estoy cambiando, ¿no? Ah, no, no, ya ya te entendí. ¿Qué entendiste? Es que no estaba inicializado, ¿no? Ajá. Sí, sí, sí, sí. Pero entonces, eh, ¿estamos cambiándolo o no lo estamos cambiando? no estamos cambiando. Entonces, la eh tanto el bar como el B le podemos poner un valor inicial en la misma línea, pero la diferencia del val es que eh en cierta manera no va a existir hasta que lo inicializas. Ah, okay. Okay. Entonces, el bar el bar la fuerza se tiene que inicializar siempre. Vamos a ver eso. Mira, si yo pusiera el username uno y username 2 y uno fuera bar, no no me no me exige.

### **02:19:07**

**Jesús Daniel Medina Cruz:** ¿Cuál es la diferencia entre uno y el otro? Entonces, pues lo que habíamos hablado, ¿no? Que después ahora sí, una vez que se inicializado, esa es la clave. Una vez inicializado, el BAL no puede cambiar el valor. El B no puede cambiar el valor. ¿Por qué es el buena pregunta? Lo vamos a ver después. Es para una clase futura, ¿te parece? Sí, sí, sí, sí, sí, sí, sí. Vamos bien, que ya si metemos el lad nos vamos a terminar otra hora de clase. Internamente está mandando llamar el constructor de internamente está mandando a llamar el constructor de Vamos a ver qué está haciendo internamente porque aquí no estamos en una clase, necesitamos que te acuerdes que estamos en una función. Sí, sí, sí, sí. Entonces, como no estamos en una clase, no funcionan las redes exactamente igual. Sí, sí, sí.

### **02:19:55** {#02:19:55}

**Jesús Daniel Medina Cruz:** Entonces vamos otra vez a esto. En el de compilado, esto es lo único que está sucediendo. Extraño, lo sé, pero esto es lo que está sucediendo. Inicializa. No, no, no pasa eso de no te lo separan. El el punto el punto clave aquí es que no existe el val en Java. Ajá. Sí, sí, sí. En principio no estamos haciendo nada. Sí, aquí directamente el Smarcat Smartcast tampoco existe. Entonces, si yo hago si yo hago la validación, lo único que va a suceder, ¿okay?, es que en la validación esto que estoy haciendo no cambia cómo funciona mi código. Entonces, mi código así como está, no está haciendo nada diferente entre B y bar. Sí, pero la clave del bar y val está en Kotlin,que si yo vuelvo a asignarle un valor al bar, no hay problema. El compilador lo va a mostrar de esta manera.

### **02:21:19**

**Jesús Daniel Medina Cruz:** Eh, acá no salió, no lo dejé compilar. Ah, mira, lo omite directamente el compilador, como no le puse otro valor, pero déjame ponerle otro valor. Okay, ahora sí. Ahí está. No, pero si fuera un este val, pues no me va a dejar, no me deja compilarlo. Mira, back and error. Compilador dice que hay un error. Val canot reassigned. Es una ventaja a en tiempo de compilación. entiendo que a veces como que da la tentación decir, ¿cómo se vería esto en Java? No se puede. Y esa es la ventaja que es como que Kotlines una capa encima de Java, no es así porque Kotlines una capa encima del compilador en el que estás trabajando. Como tenemos el compilador de Java, no me deja ni siquiera ver el BC. Sí, sí, sí. Los errores de compilación impiden que se compile, por lo tanto, no hay BC que revisar.

### **02:22:34** {#02:22:34}

**Jesús Daniel Medina Cruz:** ¿Tiene sentido? Es clave eso con estos ejemplos. Creo yo que podemos eh entonces continuar con lo que estábamos haciendo, que era el username como un bar al que le cambiamos el valor a input, sabiendo que no va a ser nulo. Podríamos agregar otra validación que no sea un texto vacío. Ahora, aquí lo que hace esta función es directamente validar que no sea pero tampoco que sea este diferente blan. No, no sé, pero quiero este mostrarte aquí. Ah, sí, ya me acordé. El compilador me da la sugerencia de que esta función utiliza el char sequence para determinar si es blanco o no, pero eh también podríamos estar usando la función que directamente hace la validación del nulo. Así nos ahorramos tener que hacer esto. Aquí nos da la opción, ¿no? Siamos option enter encima del input diferente que nul. Yeah. Hacemos replace with nul or blank.

### **02:24:02**

**Jesús Daniel Medina Cruz:** Sí, sí, diferente. Si es diferente nul or black, lo guardamos. Ya no tener eso habría que hacerlo de en este caso si queremos acceder a una propiedad tenemos que hacer lo del safe. Ahí está. Vamosos hacer eso. ¿Te refieres a esto? Sí, no safe call. Ahí está. Ahí está el safe call. Eh, no, pero yo aquí no termina la lección. El safe call. En efecto, nos lo tenemos que usar si no usamos la valiación primero, pero esto que no que tenemos aquí en realidad nos está devolviendo un nulo. Sí. Okay. Si como es un opcional, digamos, bueno, si es nulo, pues todo esto no se va a ejecutar, por lo tanto, no hay nada que validar. Entonces ahí lo que sí tenemos que hacer es compararlo. Si esto okay, es verdadero.

### **02:25:26**

**Jesús Daniel Medina Cruz:** Okay. Sí, sí, sí. Así ya concatenamos ambas validaciones. ¿Tiene sentido? Seguro. Okay. Lo primero es que hay que entender qué nos devuelve esto de aquí. Ajá. nos regresa un buleano, pero que puede ser nulo. Ah, okay. Entonces, ese buleano lo tendríamos que primero validar como si ese buleano y luego ya lo podemos usar sin problemas. Sería algo como esto. Sí, sí, pero directamente nos podemos saltar esto si comparamos esto aquí con Mira como nos dice. Bueno, ya no necesitas esto porque este ya este ya no va a ser nulo nunca. Pero si quitamos esto, pues ahora sí hay que validarlo. Okay. Okay. Primero valida ese eso lo primero input, el input interrogación te puede regresar un uno, ¿no? Sí. Entces regresan nulo es no es igual a true.

### **02:27:02**

**Jesús Daniel Medina Cruz:** Exacto. Okay, okay, okay. No es igual a true. Okay, okay. Ya, ya, okay. Pero si no es nulo, entonces no es is not blank. Vas bien, vas bien. Sigue, sigue, sigue. Not blank. Pues sí, te va a regresar un buleano, ¿no? Entonces ya va a ser comparable con true. Sí, sí. Okay. No estamos comparando el true con el nulo. Sí, sí. No, no. Una vez que ya sabemos que no es nulo, ahora sí lo comparamos con tr. Esto lo único que hace es forzar al compilador a saltarse, digamos, la asunción de que la función es not blank, solamente regresa true o false, porque tú dirías, bueno, es un buleano, pero va a regresar un buleano. No, hay tres escenarios.

### **02:27:54**

**Jesús Daniel Medina Cruz:** true, false. Es ahí es donde está en donde radica la diferencia de por qué tenemos que de alguna manera ayudar a la inferencia de tipos en el compilador. Aquí el compilador con esto si se lo quito, pues dice, "Oye, entiendo que quieres usar en el if el buano, pero en el if solamente puedes usar true o false." True false. Sí, tienes tres casos, ¿no? Exacto. Ya, ya teí. Entonces dice condition type mismch infer type is bulean interrogación pero debería de ser bulean. Ah, sí, sí, sí. No se ejecuta nada más. Exacto, exacto. Por eso se inventó directamente el is nul or blan y ya podemos negarlo. Simplifica. Sí, pero no vamos a hacer eso. Pero no vamos a hacer eso. Entonces, como estamos en un curso de Kotlindiferente que nul y input eh is not blank.

### **02:29:04** {#02:29:04}

**Jesús Daniel Medina Cruz:** ¿Cómo harías el is not blank? con el blan se valida con estas condiciones. Okay, no vamos a hacer nada de eso, no vamos a tardar un buen rato, así que nos quedamos con esto. Sin embargo, aquí lo que tendríamos que hacer es asignar un valor por defecto al username. Este le podemos poner de esta manera. tenemos el valor que el usuario ingresó y si no ingresa un valor directamente le ponemos uno por defecto y pues ya imprimimos eh el nombre que nos asignó. En lugar de imprimir el input, que podría ser nulo, ya lo validamos y le ponemos el valor que queremos. Okay, este LN lo podemos tener aquí o pudieras utilizar un print ln eh print no me deja print ln vacío. Y con esto ya tenemos el username validado. Entonces si lo ejecuto desde aquí como que est un poquito más a veces compilando. Okay. Entonces aquí, por ejemplo, si no hago nada le doy enter.

### **02:30:43** {#02:30:43}

**Jesús Daniel Medina Cruz:** Hola, invitado. Ya tenemos la primera parte de de nuestro este laboratorio. Y esto, por ejemplo, cuando lo lo ejecutamos en la terminal, se ve algo como esto. Sí. Entonces, para eso es este comando que te estoy compartiendo, este de aquí. ¿Ves la diferencia? Sí. Hola, hola, hola. ¿En qué puedo ayudar? Este es el comando. Entonces, te lo comparto por acá si lo quieres copiar directamente de ahí. Gradle run guion console igual lane y luego guion Q. Sí. en vez de pues básicamente suprime las las barras del estado del demonio del del gradle del demon. Sí, en vez de poder hacer todas comprobaciones podemos ocupar el el visoperator y así nositamos el estás adelantando, pero sí estás adelantando, pero sí me gusta, me gusta. Ya empiezas a ver como todas las opciones que hay y entonces ya cuando ves el Alviso Pereiro no dices, "Bueno, ¿qué qué madre es esto? ¿Qué está haciendo? Pues lo que está haciendo el elvis superior es esto. Literalmente está difícil, difícil. Sí, sí. Okay. O sea, imagínate como de cuántos desarrolladores Android están haciendo Android sin haber visto todo esto. Sí, pues básicamente aquí terminamos la la clase. Eh, vimos Bvar y todas las formas de revisar el NT. Sí, hay unas lecturas recomendadas que están, la verdad, muy divertidas. Ahí te las dejo. Le eches un vistazo. Una de mis favoritas, Null Reference, de Billion Dollar Mistake. Aquí es en donde habla sobre Tony H de cuántos millones seon porque los sistemas estaban caídos, pues que se sigan callando, o sea, hay muchas cosas así todavía sucediendo. Perfecto. Pues estamos primera la clase. Excelente.

### **La transcripción finalizó después de 02:33:35**

*Esta transcripción editable se generó por computadora y puede contener errores. Los usuarios también pueden cambiar el texto después de que se cree.*