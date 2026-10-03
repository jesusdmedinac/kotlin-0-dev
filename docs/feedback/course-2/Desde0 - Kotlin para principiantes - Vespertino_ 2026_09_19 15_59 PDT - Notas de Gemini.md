# **📝 Las notas**

> [!NOTE]
> **Processing Status:** ✅ Analyzed & Mapped
> **Analyzed Date:** 2026-09-23
> **Tracker Reference:** [docs/feedback/FEEDBACK_TRACKER.md](../FEEDBACK_TRACKER.md)
> **Linked Issues:** [#17](https://github.com/jesusdmedinac/kotlin-0-dev/issues/17), [#18](https://github.com/jesusdmedinac/kotlin-0-dev/issues/18)

sept 19, 2026

## **Desde0 \- Kotlin para principiantes \- Vespertino**

Archivos adjuntos [Desde0 - Kotlin para principiantes - Vespertino](https://calendar.google.com/calendar/event?eid=MzNxZTh0bXJvdnJnc2MzbHA2OXY2bGs2cjlfMjAyNjA5MTlUMjMwMDAwWiBqZXN1cy5kYW5pZWwubWVkaW5hLmNydXpAbQ)

Registros de la reunión [Transcripción](https://docs.google.com/document/d/1oN1oc_4NwjAOGMcAFQL8GhCEu5TuqFtindX7T37VINI/edit?usp=drive_web&tab=t.eh39ywg3moyq) 

### **Resumen**

Revisión de Kotlin y planificación para futuras clases.

**Ajuste de horario para clases**  
Cambio al turno matutino acordado para la próxima semana.

**Fundamentos de Kotlin**  
Resumen de conceptos de Kotlin y seguridad de nulos.

**Proyectos y comunidad**  
Presentación de la herramienta Magister y planificación de la siguiente sesión.

### **Próximos pasos**

- [ ] \[Jesús Daniel Medina Cruz, Mar Cabrera\] Cambiar horario clase: Programar la próxima clase de Kotlin para el horario de la mañana en lugar de la tarde. Asegurar la asistencia de todos los participantes en el nuevo horario acordado.

- [ ] \[Mar Cabrera\] Probar laboratorio: Instalar y ejecutar el laboratorio de Kotlin en el entorno de desarrollo local. Verificar que la configuración permita ejecutar el código del proyecto adecuadamente.

- [ ] \[Jesús Daniel Medina Cruz\] Compartir notas: Enviar las notas y transcripciones de la sesión actual. Proporcionar los recursos y materiales adicionales discutidos durante la clase.

- [ ] \[Mar Cabrera\] Practicar laboratorio: Dedicar al menos 2 horas durante la semana para repasar el código visto en la clase y practicar los conceptos de Kotlin.

- [ ] \[Jesús Daniel Medina Cruz\] Revisar notas C Sharp: Consultar sus notas previas para preparar analogías con Kotlin para la próxima clase.

- [ ] \[Jesús Daniel Medina Cruz\] Enviar enlaces: Compartir la información y los recursos mencionados durante la sesión.

- [ ] \[Mar Cabrera\] Asistir a clase: Participar en la sesión programada para la siguiente semana a la 1:00 PM.

### **Detalles**

* **Ajuste de horario para futuras clases**: Jesús Daniel Medina Cruz señala que la sesión cuenta únicamente con la participación de Mar Cabrera debido a la cancelación previa de otra persona. Mar Cabrera indica que en su ubicación actual son las 8 de la noche, mientras que Jesús Daniel Medina Cruz menciona que el horario habitual para el resto de los estudiantes es a las 9 de la mañana. Tras analizar una diferencia de 4 horas, Mar Cabrera acuerda cambiar al turno matutino la próxima semana para integrarse con los demás integrantes del grupo ([00:03:12](#00:03:12)).

* **Revisión de conceptos previos sobre Kotlin**: Mar Cabrera comparte un resumen de su lectura previa sobre Kotlin, estableciendo paralelismos con tecnologías de Microsoft. Mar Cabrera identifica que Kotlin es un lenguaje orientado a Android similar a Java, donde los archivos con extensión \`.kt\` equivalen a clases \`.cs\`, los archivos \`.kts\` operan como scripts de configuración, la máquina virtual Java (JVM) funciona como el tiempo de ejecución, y Gradle actúa como el sistema de compilación y automatización. Jesús Daniel Medina Cruz expresa su sorpresa y valida la exactitud del resumen presentado por Mar Cabrera ([00:05:07](#00:05:07)).

* **Estructura del curso y capacidades multiplataforma de Kotlin**: Jesús Daniel Medina Cruz explica que el curso combina teoría con un laboratorio práctico para construir un chat de inteligencia artificial en la línea de comandos, el cual forma parte de una serie de cinco cursos que abarcan desde el nivel principiante hasta el desarrollo multiplatforma. Jesús Daniel Medina Cruz detalla la historia de la máquina virtual Java, creada inicialmente por Sun Microsystems y adquirida por Oracle, y cómo JetBrains desarrolló Kotlin en 2011 como una alternativa. Se detalla que Kotlin compila para múltiples plataformas como la máquina virtual Java, iOS nativo (Objective-C y Swift), web (JavaScript y WebAssembly), escritorios (macOS, Windows, Linux) y Android, manteniendo un núcleo agnóstico con adaptaciones nativas específicas ([00:08:33](#00:08:33)).

* **Declaración de variables con bar y val**: Jesús Daniel Medina Cruz introduce el concepto de seguridad ante nulos diseñado para evitar excepciones de puntero nulo heredadas de lenguajes anteriores. Jesús Daniel Medina Cruz explica los dos tipos de variables en Kotlin: \`bar\` para variables mutables con tipos inferidos automáticamente por el compilador, y \`val\` para referencias de solo lectura. Ante una consulta de Mar Cabrera sobre la inmutabilidad, Jesús Daniel Medina Cruz aclara que aunque \`val\` impide reasignar un valor nuevo a la variable, permite modificar elementos internos mutables, tales como agregar o quitar ítems de una lista mutable ([00:15:20](#00:15:20)).

* **Manejo de variables opcionales y operadores de seguridad nula**: Jesús Daniel Medina Cruz explica el manejo de variables opcionales en Kotlin mediante el uso de un signo de interrogación en el tipo para permitir valores nulos, comparando este comportamiento con el valor \`undefined\` en JavaScript. Para gestionar valores nulos en tiempo de ejecución, Jesús Daniel Medina Cruz detalla herramientas como las validaciones mediante estructuras \`if\`, las llamadas seguras con el operador \`?.\`, el operador Elvis (\`?:\`) utilizado para asignar valores por defecto o ejecutar retornos anticipados y excepciones, y la aseveración de no nulidad (\`\!\!\`) descrita por Mar Cabrera como una forma de "gritarle al compilador" para omitir las advertencias de seguridad ([00:23:35](#00:23:35)).

* **Interoperabilidad con Java y tipos de datos con nulabilidad incierta**: Jesús Daniel Medina Cruz aborda la interoperabilidad total entre Kotlin y Java, lo que permite utilizar librerías existentes de Java sin inconvenientes. Sin embargo, dado que Java carece de seguridad ante nulos, Jesús Daniel Medina Cruz explica que el entorno de desarrollo marca estas propiedades con un signo de exclamación (\`String\!\`) para indicar que su nulabilidad es desconocida en tiempo de compilación. Como recomendación técnica, Jesús Daniel Medina Cruz aconseja tratar siempre estas variables provenientes de Java como si fueran nulas para prevenir fallos de ejecución ([00:33:26](#00:33:26)).

* **Entornos de desarrollo y configuración de Gradle para el laboratorio**: Debido a que Mar Cabrera menciona no contar con una computadora a mano en ese momento, Jesús Daniel Medina Cruz demuestra de manera práctica los entornos de desarrollo compatibles, incluyendo IntelliJ IDEA, Android Studio y Visual Studio Code (a través del fork Antigravity). Jesús Daniel Medina Cruz explica la configuración de Gradle mediante los archivos \`build.gradle.kts\`, especificando el uso de la versión de Java 17 y la versión de Kotlin. Asimismo, Jesús Daniel Medina Cruz detalla que en Kotlin no es obligatorio declarar una clase explícita para la función principal (\`main\`), ya que el compilador genera automáticamente una clase basada en el nombre del archivo (como \`MainKt\`), y muestra cómo visualizar el código de bytes de Kotlin en IntelliJ IDEA ([00:35:59](#00:35:59)).

* **Entrada de consola, validaciones y sugerencias del compilador**: Jesús Daniel Medina Cruz explica la función de impresión \`println\`, la cual utiliza la palabra clave \`actual\` para adaptarse a múltiples plataformas (como \`System.out.println\` en la máquina virtual Java o \`console.log\` en entornos web). Para la lectura de datos, Jesús Daniel Medina Cruz demuestra el uso de \`readline or null\`. Mar Cabrera sigue la explicación mientras Jesús Daniel Medina Cruz muestra cómo implementar validaciones de texto en blanco mediante funciones como \`isNotBlank\` y \`isNullOrBlank\`, detallando cómo el entorno de desarrollo IntelliJ IDEA ofrece sugerencias automáticas de refactorización para estructurar correctamente el programa interactivo de consola ([00:45:54](#00:45:54)).

* **Configuración de Gradle y manejo de entradas de usuario**: Jesús Daniel Medina Cruz explica que al ejecutar ciertos comandos directamente a través de Gradle sin un entorno de desarrollo integrado, la terminal carece de un flujo de entrada (\`input stream\`), lo que impide leer la entrada del usuario. Mar Cabrera compara esta situación con la ejecución de NPM y el levantamiento de puertos. Jesús Daniel Medina Cruz señala que entornos como IntelliJ IDEA agregan instrucciones automáticamente, mientras Gradle requiere configuración explícita, concluyendo que esta configuración permite ejecutar el programa localmente en Visual Studio o IntelliJ.

* **Planificación de la práctica semanal y dinámica de la próxima clase**: Jesús Daniel Medina Cruz evalúa el ritmo acelerado de la sesión debido a que Mar Cabrera aún no tiene el entorno instalado localmente. Jesús Daniel Medina Cruz pregunta si Mar Cabrera puede practicar durante la semana, a lo que Mar Cabrera se compromete a dedicar un par de horas semanales. Para evitar saturar a Mar Cabrera, Jesús Daniel Medina Cruz decide pausar la introducción de nuevos conceptos para que Mar Cabrera afiance temas fundamentales como \`val\`, \`var\` y \`null safety\`. Finalmente, Jesús Daniel Medina Cruz invita a Mar Cabrera a la sesión grupal de la semana siguiente, indicando que avanzarán al ritmo de la persona con más dudas y animando a interrumpir cuando sea necesario.

* **Reflexiones sobre el aprendizaje de Kotlin y la comunidad de la academia**: Mar Cabrera comparte su perspectiva sobre el aprendizaje de Kotlin y el repaso de conceptos tras casi dos años sin empleo formal, mencionando dificultades iniciales con nombres propios del ecosistema de Java y Kotlin, pero valorando la comprensión del compilador y la seguridad contra nulos (\`null safety\`). Jesús Daniel Medina Cruz comparte su experiencia docente y su visión de construir una academia y comunidad para el crecimiento mutuo, señalando que todo el contenido en \`desdejesdemmedinasc.com\` y en el sitio de Kotlin es gratuito. Además, Jesús Daniel Medina Cruz detalla que existen cursos futuros sobre frontend, backend, integración continua (\`CI/CD\`) y pruebas unitarias, mientras que Mar Cabrera detalla su experiencia previa con C++, C\#, SQL, Firebase, Angular, React y Blazor.

* **Motivación del contenido gratuito y retribución en la comunidad**: Jesús Daniel Medina Cruz expone los motivos detrás de ofrecer cursos y asistencia personalizada de forma gratuita, recordando experiencias previas enseñando a jóvenes de familias de bajos recursos para mejorar sus oportunidades de vida. Jesús Daniel Medina Cruz aclara que no busca retribución económica, sino que solicita como contraprestación la participación activa en la comunidad, compartir conocimientos y asistir a las clases para brindar retroalimentación. Mar Cabrera responde con humor y agradecimiento ante el modelo gratuito de la academia.

* **Presentación de la herramienta Magister y proyectos de escritura**: Jesús Daniel Medina Cruz presenta "Magister", una herramienta de chat con inteligencia artificial desarrollada con estudiantes de preparatoria para responder dudas sobre el contenido de la academia. Mar Cabrera manifiesta interés en realizar charlas y escribir publicaciones para la academia, compartiendo una anécdota sobre una editorial de Inglaterra que contactó a Mar Cabrera para escribir un libro sobre .NET aplicado a inteligencia artificial. Jesús Daniel Medina Cruz planea compartir enlaces a través de Medium y el blog de la academia, y programa la próxima clase para la semana siguiente a la 1:00 PM (hora de Mar Cabrera) con otros estudiantes y uso de cámara opcional. Finalmente, Jesús Daniel Medina Cruz y Mar Cabrera acuerdan mantenerse en contacto mediante WhatsApp.

*Revisa las notas de Gemini para asegurarte de que sean precisas. [Obtén sugerencias y descubre cómo Gemini toma notas](https://support.google.com/meet/answer/14754931)*

*Cómo es la calidad de **estas notas específicas?** [Responde una breve encuesta](https://google.qualtrics.com/jfe/form/SV_5bXzKQfylMIhSXc?confid=cFg2G0hdhWj4yAvDUhfaDxIWOBEQAjIGCIoCIAAYAQg&detailLevel=standard&hasImages=False&entryPoint=footerMain&isGoogler=False) para darnos tu opinión; por ejemplo, cuán útiles te resultaron las notas.*

# **📖 Transcripción**

sept 19, 2026

## **Desde0 \- Kotlin para principiantes \- Vespertino \- Transcripción**

### **00:03:12** {#00:03:12}

**Jesús Daniel Medina Cruz:** Hola. Hola. ¿Me escuchas?

**Mar Cabrera:** Hola, Jesús, ¿cómo estás? Todo bien.

**Jesús Daniel Medina Cruz:** Todo bien. Todo bien.

**Mar Cabrera:** Me alegro mucho. Estamos nosotros dos solos.

**Jesús Daniel Medina Cruz:** En este caso sí había programado para otra persona que se iba a conectar a la clase, este, pero la persona me canceló. Entonces, vamos a estar tú y yo solos en en la clase y quería platicarte de eso porque los estudiantes que tengo ahorita todos están en la mañana que sería como a las 9, pero no sé qué horario es para ti ahorita, por ejemplo.

**Mar Cabrera:** Eh, son las 8 de la noche. Sí, capaz me conviene hacerlo más temprano.

**Jesús Daniel Medina Cruz:** Okay.

**Mar Cabrera:** Sí, sí, sí.

**Jesús Daniel Medina Cruz:** Sí, definitivamente, porque ahí ya estarías con los demás también. Este, tenemos ahorita tres personas más. Eh, iban a ser 2 en de la mañana y 2 en la tarde, pero una persona se movió a la mañana y pues quería ver tomar la clase ahorita contigo, que ya nos programamos a esta que sea la primera vez y preguntarte si te convendría mejor este más temprano.

### **00:04:15**

**Mar Cabrera:** Sí, por supuesto. Sí, sí, sí. De una.

**Jesús Daniel Medina Cruz:** Perfecto. Eh, hacemos la clase este así y la siguiente semana intentamos en la mañana, entonces,

**Mar Cabrera:** Dale, perfecto.

**Jesús Daniel Medina Cruz:** aunque no sé qué qué tan temprano es para ti mañana, en realidad es para en la tarde para ti, ¿no?

**Mar Cabrera:** Eh, entiendo que son 4 horas de diferencia, o sea, ahora son las 4 para vos.

**Jesús Daniel Medina Cruz:** Sí,

**Mar Cabrera:** Eh,

**Jesús Daniel Medina Cruz:** sí,

**Mar Cabrera:** sí, si es a las 9 para vos, eh, bueno, capaz si es un poco temprano,

**Jesús Daniel Medina Cruz:** sí, son las este será como la 1 para ti, ¿no?

**Mar Cabrera:** ¿eh?

**Jesús Daniel Medina Cruz:** Creo que sí.

**Mar Cabrera:** Sí, entiendo que sí.

**Jesús Daniel Medina Cruz:** Ah,

**Mar Cabrera:** Bueno, igual está bien,

**Jesús Daniel Medina Cruz:** ya.

**Mar Cabrera:** está bien. Sí, me sumo a la mejor así estamos con los demás.

**Jesús Daniel Medina Cruz:** Perfecto. Sí. Y pues la el curso, déjame te comparto pantalla.

**Mar Cabrera:** Sí.

### **00:05:07** {#00:05:07}

**Jesús Daniel Medina Cruz:** pues tuviste tiempo para ver un poquito, este, evidentemente comentaste, pero no sé qué tanto viste. Entonces me preguntaba si eh quieres que empecemos desde el principio para tratar de ponerte al nivel o tuviste tiempo de leer. cuéntame.

**Mar Cabrera:** Eh, sí, estuve leyendo un poquito. digamos, te dejo un machete de de va, como le llamamos nosotros, un chuleta, creo que le dicen ustedes,

**Jesús Daniel Medina Cruz:** Oh, no,

**Mar Cabrera:** como un un ayudamoria,

**Jesús Daniel Medina Cruz:** no sé, no sé. en muchas partes de México.

**Mar Cabrera:** por así decirlo. E bueno,

**Jesús Daniel Medina Cruz:** Ok.

**Mar Cabrera:** nada, entiendo que estamos viendo Kotlin,que es como una especie de Java y que es para Android, que se maneja todo lo que es mobile. E entiendo que la extensión Pun KT sería el código de Kotlinnormal que en mi mundo de Microsoft es como un punto CS,

**Jesús Daniel Medina Cruz:** Mhm.

**Mar Cabrera:** o sea, una clase. Eh, punto kts sería un script de Kotline que básicamente,

### **00:06:13**

**Jesús Daniel Medina Cruz:** Yeah.

**Mar Cabrera:** bueno, se usa como scripting o para configuración. Después, como lo que sería el cld.net, Eh, entiendo que tenemos el JBM o JBM, no sé cómo se dice,

**Jesús Daniel Medina Cruz:** Hm.

**Mar Cabrera:** eh, que bueno, no es nada, básicamente es el RAM Time, eh, la máquina virtual que se usa para correr Kotlin.

**Jesús Daniel Medina Cruz:** Ah.

**Mar Cabrera:** Bueno, después está Gradle, que sería básicamente el sistema de build, configuración, automatización, sería como una especie de C project en net con un DNET cli una cosa así, o sea,

**Jesús Daniel Medina Cruz:** H.

**Mar Cabrera:** no como que no hay una equivalencia exacta, pero eh entiendo que es eso, como una especie de npm en eh React JS, más o menos. Yo trato de llevarlo a mi mundo, si no corregime.

**Jesús Daniel Medina Cruz:** Perfecto.

**Mar Cabrera:** Okay.

**Jesús Daniel Medina Cruz:** Algo más que que que tengas,

**Mar Cabrera:** Después sí estuve estuve prestando

**Jesús Daniel Medina Cruz:** tienes bastante, bastante más de lo que esperaba.

**Mar Cabrera:** atención, cosa de caer ya con la primera clase más o menos sabida.

### **00:07:24**

**Mar Cabrera:** E tengo el el TL, no sé cómo se dice, tm,

**Jesús Daniel Medina Cruz:** Sí.

**Mar Cabrera:** que sería bueno el formato de de configuración como si fuese un Jason o un Yaml. E después está el version catalog, que es para centralizar versiones o dependencias, el target, que es para qué es la, o sea, para qué plataforma es o para qué runtime se compila. Eh, después creo que hablaron de Platform Agnostic, puede ser.

**Jesús Daniel Medina Cruz:** Sí.

**Mar Cabrera:** Eh, entiendo que no está atado específicamente a Windows, a Android, etcétera. Eh,

**Jesús Daniel Medina Cruz:** Mm.

**Mar Cabrera:** por ahí no entiendo del todo qué es. Y bueno, eso sería más o menos. Después creo que hablaron del inela, que es como el ID donde escribís y corre scotlin como si fuese un visual estudio. Y después no sé si hay algo más que por ahí me comí cosas, es muy probable.

**Jesús Daniel Medina Cruz:** No, definitivamente hiciste un un resumen muy bueno. Este, ya de ahí este hay como varias cuestiones que me gustaría como denotar.

### **00:08:33** {#00:08:33}

**Jesús Daniel Medina Cruz:** La primera y la más importante,

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** eh como cualquier entorno eh de desarrollo, lo más importante es poner en práctica los conceptos porque pues como tener la analogía o la comparativa de, bueno, en otras herramientas este es el equivalente, no termina de hacer que comprendas el concepto hasta que lo pones en en uso, ¿no?

**Mar Cabrera:** Claro. Gracias.

**Jesús Daniel Medina Cruz:** Pero si es como que el proceso a veces inicial que ayuda a otros a integrarse. Y este curso está diseñado con la intención de que sí tienes conocimiento de programación, necesitas conocimiento de programación para tomar el curso, pero voy explicando todo alrededor del lenguaje para que eh se convierta en un lenguaje que puedes empezar a utilizar.

**Mar Cabrera:** Perfecto.

**Jesús Daniel Medina Cruz:** La intención del curso es que al finalizar el curso en paralelo vamos a estar tomando cada lección y durante la lección vamos a estar trabajando en definir ciertos conceptos y adicional a eso trabajar en el laboratorio, que no sé si tuviste tiempo de ver el laboratorio. Está muy chiquito por ahora la lección uno y dos, ahorita te lo puedo mostrar.

### **00:09:41**

**Jesús Daniel Medina Cruz:** No sé si tuviste tiempo de echarle un vistazo al laboratorio.

**Mar Cabrera:** No lo vi todavía, pero entiendo que es vamos a crear un chat con AI.

**Jesús Daniel Medina Cruz:** Es correcto, pero en la línea de comandos. Vamos a hacer como un un CLI.

**Mar Cabrera:** Uy, qué buena onda. Me encanta.

**Jesús Daniel Medina Cruz:** Sí. Entonces, eh la intención es irlo construyendo línea por línea, pero que se lleven como de tarea el experimentar y jugar un poco con el entorno de desarrollo para

**Mar Cabrera:** Ok.

**Jesús Daniel Medina Cruz:** que salgan las preguntas. Como este curso es nuevo, es la primera vez que lo estoy impartiendo, todo el feedback que me dan ustedes con las preguntas que me van dejando los estudiantes, yo lo voy a ir este pues digamos alimentando y voy a ir proponiéndoles cada vez más recursos. Pero también quiero añadir que este es un curso de una serie de cinco cursos, que ahorita no tengo el curso para no programadores eh con Kotlin,pero después del curso para principiantes podemos ir directamente a Kotlinpara desarrolladores Android, luego desarrollo móvil que es Android y iOS para terminar en Kotlinpara cualquier plataforma.

### **00:10:46**

**Mar Cabrera:** Perfecto.

**Jesús Daniel Medina Cruz:** Por eso decía que el curso es agnóstico, porque tengo estudiantes que vienen de de web o tengo otro estudiante que es desarrollador Android. tengo este una estudiante que se dedica más a temas de gobernanza en ingeniería y en tu caso que que tienes más experiencia en Punnet me dan una perspectiva bastante amplia de si enseñarles Kotlinles puede hacer sentido a todos y trato de hablar el lenguaje que todos hablan para que entonces el lenguaje Kotlinse convierta en todo el curso, no en algo específico para el que sepa más Android va a saber más, no. Vamos a todos, vamos a todos a emprender el lenguaje.

**Mar Cabrera:** Okay, perfecto. Sí, me encanta.

**Jesús Daniel Medina Cruz:** Ah, mencionaste algo también del JBM, el JVM. El JBM eh pues fue creado, ¿no?, por el Oracle eh para no fue creado por Oracle, fue creado por Smicrosystem, si no me equivoco, se llamaba la empresa que luego Oracle compró para poder ejecutar eh un solo código en muchas computadoras, pero pues a través de la máquina virtual.

### **00:11:54**

**Jesús Daniel Medina Cruz:** Entonces se creó el lenguaje Java, el Bite Code y todas estas cuestiones. que hacen que Java no se ejecute directamente en la máquina, sino pues en esta máquina virtual. Sin embargo, con la llegada de Kotlin,este, en 2011, aproximadamente se empezó a a a publicar Kotlin.E lo que se proponía es que como se había dejado de actualizar Java por muchos años, no se le daba mantenimiento porque Oracle lo abandonó de cierta manera, se Jetrace, que es la empresa que desarrolló Kotlin,propuso una alternativa a Java para ejecutar en el JBN, es decir, compilar Kotlina JBN. Entonces parecería como una evolución de Java, pero en realidad es un lenguaje distinto que puede compilarse de diferentes maneras. Actualmente tenemos Cotlink que compila para JBM evidentemente, pero también tenemos Cotlink que compila en lenguaje nativo para iOS y en este caso es objective C y están trabajando para que se compila Swift. Tenemos Kotlintambién para este web con JS o también con web assembly.

### **00:13:04**

**Jesús Daniel Medina Cruz:** No sé si estás familiarizada con Web Assembly.

**Mar Cabrera:** Sí. Ok.

**Jesús Daniel Medina Cruz:** Hm. Entonces, Kotlintambién puede compilar a Web Assembly. Y tenemos Cotlin para desktop, que sería eh macOS, Windows, Linux. Y creo que eso es todo. No sé si se me está pasando algún otro compilador por ahí. Y bueno, evidentemente Cotlin para Android, que no es exactamente lo mismo que Cotlin para el JBM. Eh, ¿qué significa esto? El mismo lenguaje puede compilarse dependiendo del compilador que uses y la plataforma a la que la quieras distribuir puede compilarse a todas estas plataformas. Sin embargo, sí habrá features específicos de las plataformas que no estén disponible en otras plataformas. También, por ejemplo, features específicos del eh procesador en el que estés ejecutando Kotlin,que vas a necesitar considerar al momento de ejecutar esos features específicos. O sea, que la mayoría del lenguaje es agnóstico a la plataforma, pero va a haber partecitas en donde podemos incluso adaptarnos y ejecutar código 100% nativo, no necesariamente con Cotlin.

### **00:14:10**

**Jesús Daniel Medina Cruz:** No estoy seguro si es posible ejecutar este desde Kotlincódigo de de C\#ARP, pero hasta donde sé podemos hacer puentes para ejecutar código de C y C++ desde Kotlin.Este curso está lejos de llegar a ese punto, entonces nos vamos a quedar solamente en Cotlin. ¿Te parece?

**Mar Cabrera:** Okay, dale.

**Jesús Daniel Medina Cruz:** Excelente. Eh, vale. Entonces, yo creo que estamos bastante bien para empezar con elección dos sin ningún problema. Así este vas al mismo nivel la siguiente clase con con los demás.

**Mar Cabrera:** Dale, perfecto.

**Jesús Daniel Medina Cruz:** Y lo que yo te voy a invitar es eh que trates de ir a tu propio ritmo. La intención es terminar la lección, la intención es que te quedes sin dudas, ¿vale?

**Mar Cabrera:** Bien,

**Jesús Daniel Medina Cruz:** Sí,

**Mar Cabrera:** perfecto.

**Jesús Daniel Medina Cruz:** ves que hay un tema que no te quedó muy claro, lo vamos a estar dando vueltas hasta que quede claro y primero vamos a empezar a ver los diferentes temas que tengo preparado, pero eventualmente si nos alcanza el tiempo vamos a ir al eh entorno de desarrollo y vamos a intentar este trabajar con el laboratorio para eh poner a prueba un poquito lo que aprendimos en la clase.

### **00:15:20** {#00:15:20}

**Jesús Daniel Medina Cruz:** ¿Te parece?

**Mar Cabrera:** Dale, perfecto.

**Jesús Daniel Medina Cruz:** Excelente. Entonces, veo veo que tienes aquí Mar Cabrera, pero no sé si deciste Marianela o Mar. ¿Cuál prefieres?

**Mar Cabrera:** Como vos quieras, eh, me pongo mar porque es más corto y es como me dicen, así que si te parece me puedes decir mar, no tengo ningún problema.

**Jesús Daniel Medina Cruz:** Mar. Va, me voy a quedar con Mar. Te puedes quedar con este Daniel,

**Mar Cabrera:** Dale.

**Jesús Daniel Medina Cruz:** si te parece.

**Mar Cabrera:** Okay. Dale.

**Jesús Daniel Medina Cruz:** Excelente. Entonces, bueno, hablando de Kotlin,tenemos variables, tipos y un concepto que en Kotlinse introduce, que Java no no tienen llamado null safety o seguridad ante nulos.

**Mar Cabrera:** Ok.

**Jesús Daniel Medina Cruz:** No sé si estés familiarizada con eh el Null Pointer Exception. Seguramente que sí.

**Mar Cabrera:** Eh, puede ser que sí.

**Jesús Daniel Medina Cruz:** En Java tenemos un problema que básicamente cuando se desarrolló el lenguaje ah, si no me equivoco eh este problema existe desde que se inventó eh la referencia nula, se se diseñó e digamos los lenguajes anteriores allá Java y C++ diseñaron el nul, pues como una forma de poder eh crear variables que no tuvieran valor, ¿no?

### **00:16:52**

**Jesús Daniel Medina Cruz:** Al parecer pensaron que era una buena idea tener variables sin valor y pues nos en e con el paso del tiempo este muchos sistemas, el un gran porcentaje de estos sistemas tenían un fallo constante de que los desarrolladores no entendían este pues cómo manejar adecuadamente si una variable eh tenía o no tenía valor. Habría había que revisar cada variable antes de usarla para ver si tenía o no tenía valor. Y como era un mucho trabajo estarse acordando de revisar cada variable en el código, terminábamos teniendo sistemas que seca caían por esta excepción que te comentaba, el null pointer exception. Esto viene de,

**Mar Cabrera:** Bien,

**Jesús Daniel Medina Cruz:** te digo, lenguajes anteriores a Java y a C++ que estos mismos lenguajes fueron heredando. El problema pues es que tener una variable con un nul hace que el sistema pues deje de funcionar y esto es lo que intenta dice este resolver Kotlineste desde cero para Volverlo lo propone de esta

**Mar Cabrera:** Oh. Yeah.

**Jesús Daniel Medina Cruz:** manera.

### **00:18:01**

**Jesús Daniel Medina Cruz:** Evidentemente estás familiarizada con el concepto de variables, pero aquí yo quiero introducir un concepto extra que es el tema de las literales. En eh matemáticas o en álgebra se se utiliza el término literal para referirse tanto a un eh término que puede cambiar de valor como a un término que no necesariamente sabemos su valor, pero ese valor no cambia. Esto no significa que sea constante,

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** pero sí significa que una vez que sabemos su valor, su valor ya no va a cambiar. Entonces, tenemos dos conceptos en Cotlin para crear literales a las que normalmente la gente le va a seguir llamando variables porque es como extraño decirle literal a lo que conocemos como variable.

**Mar Cabrera:** Sí,

**Jesús Daniel Medina Cruz:** Exacto.

**Mar Cabrera:** totalmente.

**Jesús Daniel Medina Cruz:** Entonces,

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** lo que vamos a a ver es que tenemos dos opciones para crear variables en Kotlin.Y lo digo así porque la primera es bar, que viene de variable.

**Mar Cabrera:** Sí,

### **00:19:03**

**Jesús Daniel Medina Cruz:** Básicamente es la variable de toda la vida. Bar. En JavaScript existe el bar, no funcionan exactamente igual,

**Mar Cabrera:** sí.

**Jesús Daniel Medina Cruz:** pero digamos que en Kotlines esa la idea. Tú defines bar, le pones el nombre de la variable y le pones el igual para definir el valor. No tienes que ponerle tipo porque Kotlininfiere el tipo de prácticamente todos los valores. Si tú pones un 25 aquí, Kotlindice, "Bueno, esto es un entero,

**Mar Cabrera:** Sí,

**Jesús Daniel Medina Cruz:** le voy a poner int." Al momento de compilarlo se se define el tipo,

**Mar Cabrera:** claro.

**Jesús Daniel Medina Cruz:** pero a partir de aquí este siempre va a ser del mismo tipo, no puede no puedes asignarle de repente un string a a este que ya le asignaste un entero.

**Mar Cabrera:** Okay. Entonces, con lo que decías de que el valor no cambia, pero que no es constante, te referís a que vos podés cambiar ese 25 por cualquier otro número, pero no le puedes poner ponerle, no sé, un decimal.

### **00:19:57**

**Jesús Daniel Medina Cruz:** En este caso tiene más que ver con la inferencia del compilador. El compilador dice,

**Mar Cabrera:** Okay.

**Jesús Daniel Medina Cruz:** "Esto ya es así y se queda la etiqueta puesta en todas las siguientes eh veces que use esa variable." No es a eso lo que me refería,

**Mar Cabrera:** Okay.

**Jesús Daniel Medina Cruz:** sino a lo siguiente, que es el tema del val. Y este es un un tema un poquito complejo, ¿okay? Pero vamos a ir por parte y yo creo que sí va a quedar muy claro. Lo primero para para responder eso que comentas, si te fijas, la sintaxis es muy parecida, solamente es a val, pero la diferencia fundamental de val versus bar es que vale solo lectura. ¿Qué significa?

**Mar Cabrera:** Ah, okay,

**Jesús Daniel Medina Cruz:** Le asigno un valor, pero no lo puedo modificar.

**Mar Cabrera:** okay. Bien.

**Jesús Daniel Medina Cruz:** Pero que que sea val, o sea, que sea de solo lectura, no hace que el valor interno sea inmutable. No es lo mismo que sea de solo lectura ser inmutable.

### **00:21:01**

**Jesús Daniel Medina Cruz:** ¿Qué significa esto? Eh, no sé cómo funciona el string en otras plataformas, pero hasta donde yo tengo entendido, los strings en prácticamente todos los lenguajes son inmutables, ¿cierto?

**Mar Cabrera:** Sí, correcto.

**Jesús Daniel Medina Cruz:** Tú creas un stream, quieres crear un nuevo string, necesitas hacer un tercer stram y luego juntar ambos, ¿no?

**Mar Cabrera:** Claro, con catenar dos.

**Jesús Daniel Medina Cruz:** Claro. Entonces, eh en definitiva, si tú le asignas un string a esta variable, eh al momento de utilizar el operador de igual para asignarle un nuevo string, no te va a dejar. Pero si tú tuvieras la capacidad de modificar el string que ya está dentro este de aquí, sí podrías modificarlo.

**Mar Cabrera:** Okay. Bien.

**Jesús Daniel Medina Cruz:** ¿Cómo se ve reflejado esto en en la práctica? Como comento, aunque val define nuestra variable como solo lectura, lo que sí podemos hacer es modificar algo que sea inmutable, que esté dentro de nuestra variable. Por ejemplo, una lista mutable. Si tenemos una lista mutable asignada en un val, no podemos asignarle otra lista mutable a la variable, pero cuando interactuemos con la lista, sí podemos modificar la lista, agregarle elementos, quitarle elementos, etcétera.

### **00:22:27**

**Jesús Daniel Medina Cruz:** ¿Tiene sentido?

**Mar Cabrera:** Sí, sí, sí, sí.

**Jesús Daniel Medina Cruz:** Entonces, el valvierte como eh en un una propiedad de solo lectura en donde tenemos el getter y también podríamos modificarlo a tener un custom

**Mar Cabrera:** Ok.

**Jesús Daniel Medina Cruz:** getter, pero no tiene un setter. El set está como privado, por decir, más bien no no existe el set. En el caso de las ah variables valve, nosotros podríamos crear nuestro propio getter y hacer que ese comportamiento se modifique con Kotlin,que no lo vamos a ver todavía, pero que sepamos que el digamos la la particularidad de val es que sea de solo lectura.

**Mar Cabrera:** Bien, perfecto.

**Jesús Daniel Medina Cruz:** ¿Alguna duda?

**Mar Cabrera:** No, hasta ahora no. Es más, si me escuchaste claro es porque estoy tomando notas.

**Jesús Daniel Medina Cruz:** No, no, está super bien. También si sientes que voy muy rápido, te puedes tomar el tiempo para tomar notas. De todos modos, esta sesión eh se está este transcribiendo con con Gemina y te puedo pasar igual las notas.

### **00:23:35** {#00:23:35}

**Jesús Daniel Medina Cruz:** Sería interesante que aparte de tomar tus notas, puedas hacer comentar en voz alta y se va a poder grabar para también yo pasarte esas notas más adelante.

**Mar Cabrera:** Okay, perfecto. Dale de una.

**Jesús Daniel Medina Cruz:** Excelente. Entonces, eh tenemos bar y tenemos valve, como otros lenguajes que se manejan. nulos. Cotle nos da una herramienta extra, es una capa adicional para determinar si nuestras variables pueden o no tener valores nulos. Esto eh en Cotlin se interpreta como variables opcionales. ¿Qué significa? que cuando yo defino en Cotlin un tipo, le tengo que poner después de la variable, el nombre de la variable, le pongo dos puntos y el tipo, automáticamente esto se vuelve de este tipo. Después le asigno el valor y por más que esto sea variable, no le puedo asignar un valor nulo. o dicho de otra manera, no le puedo quitar un el valor que ya tiene. Le puedo cambiar por otro string, pero no le puedo poner nul.

### **00:24:54**

**Jesús Daniel Medina Cruz:** Esto el compilador me va a decir no se puede. Sin embargo, si yo explícitamente le digo a mi variable con este símbolo de interrogación en el tipo que va a ser posiblemente nulo, se vuelve opcional. Sí, aunque sea de tipo string, le puedo asignar un nul. Aquí yo tengo una pregunta eh para ti bastante sencilla, pienso yo. Eh sería eh si podemos diferenciar entre diferentes nulos. Se oyó rara la pregunta. Si podemos diferenciar entre un nul y otro nul. Esa sería la pregunta.

**Mar Cabrera:** No te sé responder, sinceramente.

**Jesús Daniel Medina Cruz:** Está super bien, pero te gustaría como intentar equivocarte, o sea, alguna idea que se te venga a la mente Sí.

**Mar Cabrera:** E a ver, se me ocurre que sí, porque algo en mi cabeza me dice undefined, pero no sé, no sé,

**Jesús Daniel Medina Cruz:** Interesante. O sea, el undefined existe también en CP o es solo de

**Mar Cabrera:** no,

**Jesús Daniel Medina Cruz:** JavaScript.

### **00:26:21**

**Mar Cabrera:** pero lo llevo a JavaScript.

**Jesús Daniel Medina Cruz:** Claro, vamos a existe, o sea, tú puedes diferenciar entre unfine y otro un defined.

**Mar Cabrera:** No, ahí ya no creo que no.

**Jesús Daniel Medina Cruz:** Claro, porque si si tú dices, tengo dos valores undefined, claro que tienes dos variables undefined,

**Mar Cabrera:** Claro,

**Jesús Daniel Medina Cruz:** pero realmente tienes dos valores undefined o es el mismo valor?

**Mar Cabrera:** o sea, sería sí sería el mismo el mismo undefined, o sea, es como un único valor primitivo.

**Jesús Daniel Medina Cruz:** Es es una es una buena forma de verlo. Me gusta cómo lo aterrizaste. Yo pensé. estaría que eh ondefine nace con ese mismo propósito, es la ausencia de valor representada en undefined.

**Mar Cabrera:** Claro.

**Jesús Daniel Medina Cruz:** Es lo mismo con el nul, no hay múltiples nul. No puedes multiplicar un nul, no puedes sumar un nul, no puedes comparar un nul con otro nul,

**Mar Cabrera:** Ok.

**Jesús Daniel Medina Cruz:** pero puedes verificar si algo es nulo para entonces evitar usarlo. En este caso, si algo es nulo, el mismo compilador no te deja usarlo.

### **00:27:31**

**Jesús Daniel Medina Cruz:** Vamos a ver eso. Entonces, en Cotlin tenemos muchas formas de evitarle al eh lenguaje que ejecute en que en tiempo de ejecución intente utilizar un nulo, porque si un nulo llega en tiempo de ejecución a intentarse utilizar, va a fallar nuestro programa. Pero Cotlin en el compilador puede detectar estos escenarios y prevenir que el programador se le escape algún nulo en tiempo de ejecución.

**Mar Cabrera:** Uy, qué buena onda.

**Jesús Daniel Medina Cruz:** La Exacto.

**Mar Cabrera:** Me soluciona la existencia.

**Jesús Daniel Medina Cruz:** La primera sería, me encanta. La primera es eh directamente si tú tienes una variable que definimos aquí mismo, ¿no? Nullable name, si ya la definiste como nul, el compilador te dice, "Bueno,

**Mar Cabrera:** Ar.

**Jesús Daniel Medina Cruz:** a este y tú le pones un if y dices, es diferente de nul." A partir de aquí el alcance que tiene las llaves del if para la variable siempre va a ser no nula. Esta variable deja de ser nula, deja de ser opcional y se convierte en directamente string, como si se le quitara el signo de interrogación.

### **00:28:50**

**Jesús Daniel Medina Cruz:** ¿Por qué? Porque ya hicimos una validación en tiempo de ejecución y el compilador ve esto y entiende que dentro esta variable nunca va a ser nula. ¿Queda claro esto?

**Mar Cabrera:** Excelente. Sí, sí, sí, sí. Te sigo. Te sigo.

**Jesús Daniel Medina Cruz:** Voy. Entonces, eh, ¿qué pasa si no validamos una variable que puede ser nula? El mismo compilador, cuando intentemos utilizar alguna propiedad o atributo de nuestra variable, por ejemplo, queremos saber la longitud del string, nos va a decir que como esta variable es nula, le agreguemos un símbolo de interrogación antes del punto para hacer la llamada a lengthura. ¿Qué significa esto? Es como si automáticamente el lenguaje tuviera un if y dijera sí, if. Vamos a poner así, nulable name, que es lo que tenemos aquí, ¿no? Nulable name es diferente que nulo, ejecuta el punto leng, pero si es nulo, toda esta llamada va a regresar un nul.

### **00:30:05**

**Jesús Daniel Medina Cruz:** Por lo tanto, nuestro length aquí va a ser nul entero, en este caso, el mismo tipo que va a estar del length.

**Mar Cabrera:** Bien,

**Jesús Daniel Medina Cruz:** directamente el compilador define que esto también podría ser un nulo. Y finalmente tenemos un operador que me encanta a mis eh

**Mar Cabrera:** tenemos

**Jesús Daniel Medina Cruz:** mis operadores favoritos en C lo uso todo el tiempo. Se le llama Elvis operator porque parece como una figurita de Elvis Presley, no sé si te da la impresión o no.

**Mar Cabrera:** sí.

**Jesús Daniel Medina Cruz:** Tiene como el copetito ahí,

**Mar Cabrera:** Sí, sí, sí, sí. Me encanta.

**Jesús Daniel Medina Cruz:** ¿eh? En en este caso es para asignarle un valor por defecto a una variable en caso de que sea nula. ¿Qué significa? Si yo quiero usar nulable name y guardarlo en final name, pero eh no sé si es nulo o no, le agrego el elvis superhero para que en caso de que sea nulo, se asigne este valor de aquí.

### **00:31:08**

**Mar Cabrera:** Okay. Bien.

**Jesús Daniel Medina Cruz:** Eso está muy interesante porque esto me sirve para asignar valores por defecto, pero también me sirve para ejecutar código. Significa que si yo en lugar de poner un valor por defecto quisiera que mi aplicación este terminara de procesar algo, pudiera poner un early return aquí directamente return para que se deje de ejecutar las líneas siguientes. O podría incluso ejecutar una excepción, un throw. Throw exception. El esto es nulo y termina la ejecución aquí directamente. Más adelante vamos a entrar más a los detalles de todo esto.

**Mar Cabrera:** Okay,

**Jesús Daniel Medina Cruz:** Por ahora elvis operator lo vamos a considerar como asignar valores por defecto a nuestras variables que opcionalmente nulas.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Después tenemos el not nul assertion. Vale, entonces Kotlinnos empieza a tratar de ayudar con el compilador a eh garantizar o asegurar que no vamos a utilizar un nul. Pero si el programador es tan terco que dice, "No, es que yo estoy seguro que nunca va a ser nulo." Eh,

### **00:32:19**

**Jesús Daniel Medina Cruz:** Kotlinnos da esta opción.

**Mar Cabrera:** Ah.

**Jesús Daniel Medina Cruz:** tú directamente le dices al compilador que no te moleste, que esta variable no va a ser nula, le pones doble signo de exclamación para que automáticamente tome el valor como si no fuera nulo.

**Mar Cabrera:** O sea,

**Jesús Daniel Medina Cruz:** Pero evidentemente,

**Mar Cabrera:** básicamente le grito al compilador.

**Jesús Daniel Medina Cruz:** exactamente, eh, nadie me había dicho esa analogía, pero me encantó. Pero eh eventualmente el que te va a gritar es el programa, pues porque pues aquí simplemente no va a fallar en tiempo de ejecución. el N pointerception.

**Mar Cabrera:** Claro. Yeah.

**Jesús Daniel Medina Cruz:** te lo te lo brincas. Entonces, todas las herramientas que acabamos de ver las ignoras y simplemente programas como te dé la gana, ¿no? Entonces, pobre compilador, ya le hasta le gritamos y todo, eh,

**Mar Cabrera:** y no quiero igual.

**Jesús Daniel Medina Cruz:** me encanta, me encantó. Entonces, entre todos estos ejemplos de, vamos a llamarle de seguridad ante nulos, no sé si tengas alguna duda.

### **00:33:26** {#00:33:26}

**Mar Cabrera:** No, estamos bien. Estamos bien.

**Jesús Daniel Medina Cruz:** Excelente. Entonces, con todo esto, hay un último punto que me gustaría que revisemos y es el tema de cómo el mismo compilador hace uso de el entorno de desarrollo para darnos advertencias, porque anteriormente este pues Java no manejaba los nulos de forma adecuada, por lo tanto Cotlin y Java al ser interoperables, que significa que tú puedes ejecutar código desde Cotlin, código escrito en Java y desde Java puedes ejecutar código escrito en Kotlin.Son completamente interoperables.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Esto hace que todas las librerías existentes de Java las puedas usar en Cotlin sin ningún problema. Pero como en Java no existe el Null

**Mar Cabrera:** Esper

**Jesús Daniel Medina Cruz:** Safety, eh, cuando tú quieres tomar una propiedad de Java en Cotlin, Cotlin directamente este va a entender que no puede descifrar si esa propiedad no es nula. Entonces, el mismo entorno de desarrollo nos genera una definición de tipo como string con un signo de exclamación, que básicamente significa este valor viene de Java y no sé su nolabilidad en tiempo de compilación.

### **00:34:57**

**Jesús Daniel Medina Cruz:** Entonces,

**Mar Cabrera:** Okay.

**Jesús Daniel Medina Cruz:** te deja utilizarla,

**Mar Cabrera:** Acá como que lo obligas a decirle, esto es string sí o sí,

**Jesús Daniel Medina Cruz:** ¿no? En este caso no es una variable que tú que tú defines. Es decir, no puedes escribir esto en Cotrin.

**Mar Cabrera:** pero lo hace solo, digamos, el mismo entorno.

**Jesús Daniel Medina Cruz:** El el entorno de desarrollo te lo pone como una advertencia.

**Mar Cabrera:** No.

**Jesús Daniel Medina Cruz:** Cuando tú tratas de ver qué tipo de dato es tu variable, aunque tú le dijiste que es un stream, el el entorno te dice, mira, el compilador no encontró si esto es o no es nulo.

**Mar Cabrera:** O sea, no le cierra básicamente y te lo dice. Listo.

**Jesús Daniel Medina Cruz:** Eh, y lo que yo recomendaría como experto es estas variables que veían en de Java, hay que utilizarlas siempre como si fueran nulos. Así nos evitamos el tener que estar adivinando.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Excelente. Ahí es la lección sobre variables valv null safety y todo lo que hay alrededor del null safety.

### **00:35:59** {#00:35:59}

**Jesús Daniel Medina Cruz:** en Kotlin.Lo que me gustaría que hagamos ahora entonces es ver eh el laboratorio y tratar de ver si lo puedes ejecutar en tu entorno. No sé qué entorno tengas y si tienes eh la capacidad de ejecutar el laboratorio. ¿Te parecería que revisemos eso?

**Mar Cabrera:** Eh, sí, podríamos invitar. Eh, lo que sí no tengo una compu a mano acá ahora,

**Jesús Daniel Medina Cruz:** Okay.

**Mar Cabrera:** pero lo puedo probar de última más tarde.

**Jesús Daniel Medina Cruz:** Ahorita no tienes computadora. sin ningún problema. Si vamos a tomar la clase así, yo no tengo ningún problema. Eh, igual estás tomando notas, está super bien. Entonces,

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** lo que voy a hacer es yo mismo mostrarte eh con los detalles en mi entorno cómo se vería cuando tú lo intentes. De todos modos,

**Mar Cabrera:** Dale,

**Jesús Daniel Medina Cruz:** las instrucciones de lo que vamos a hacer van a estar en las lecciones e igual en el repositorio de el laboratorio.

### **00:36:51**

**Jesús Daniel Medina Cruz:** ¿Okay?

**Mar Cabrera:** perfecto. Vale.

**Jesús Daniel Medina Cruz:** Entonces, cuando tú vengas al laboratorio, más adelante vas a ver en cada lección una plantilla de inicio y una plantilla de resuelto en donde directamente vas a poder ya sea tú misma el seguir el paso a paso en la lección para crear el chat que vamos a ir creando lección por lección o ver el código resuelto. Vale,

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** lo que voy a hacer entonces es primero abrir mi entorno. En la lección uno hay instrucciones sobre los diferentes entornos que puedes usar. Yo lo que voy a hacer es abrir los tres entornos en donde lo puedes usar y mostrarte un poquito las diferencias. Esces no has trabajado nunca con Intelliga, Android Studio o bueno, Visual Studio Code, me imagino que sí.

**Mar Cabrera:** Sí, el Visual Studio Code. Sí, que tiene el el Intellij, creo que es, o algo parecido.

**Jesús Daniel Medina Cruz:** Sí. Eh, voy a compartir entonces mi pantalla para mostrarte estas diferencias que comento.

### **00:38:05**

**Jesús Daniel Medina Cruz:** A ver,

**Mar Cabrera:** Vale.

**Jesús Daniel Medina Cruz:** ¿dónde está pantalla completa? Aquí está. Primero, eh, el que ya tienes familiaridad. En este caso, yo tengo el Antigravity, que es un fork de Visual Studio.

**Mar Cabrera:** Sí, si yo lo uso, lo conozco.

**Jesús Daniel Medina Cruz:** Entonces, ah, aquí mismo yo ya tengo el proyecto. Si tú lo abres con Antigabiriy,

**Mar Cabrera:** Bueno,

**Jesús Daniel Medina Cruz:** no hay mucho problema. puedes correr en la terminal o directamente eh vas a tener como hay extensiones para gradol donde puedas ver las diferentes tareas que tienes disponible, pero este lo que lo que vamos a hacer ahorita es eh revisar aquí el proyecto Yeah. ¿Cómo se va a ver el proyecto? Y si abres la terminal para ejecutar el comando se utiliza punto diagonal gradle y se hace run.

**Mar Cabrera:** Vean.

**Jesús Daniel Medina Cruz:** Entonces ahorita lo que hace es inicializar y bueno, ejecuta este nuestro código. Ahorita te voy a mostrar el código.

### **00:39:23**

**Jesús Daniel Medina Cruz:** Hm. Ahí está. Entonces, eso es el programa cómo está funcionando y bueno, tiene este tiempo de ejecución que ahorita vamos a resolverlo. Voy a cancelar por aquí.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Si abrimos Intelis ID, eh, si clonaste el proyecto, pues puedes abrirlo directamente. Es chat click

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** y aquí es un entorno más avanzado, como dijiste es un como un Visual Studio en donde tenemos varias herramientas, entre ellas tenemos la terminal igualmente, pero también tenemos las herramientas de gradle más adaptadas. a lo que necesitamos.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Curso rápido de gradol, ¿vale? Serings.

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** Gradle es donde definimos el nombre del proyecto. Esto de aquí si lo cambio, se cambia esto de aquí y el proyecto en cada

**Mar Cabrera:** Okay.

**Jesús Daniel Medina Cruz:** módulo va a tener su propio bill.grad gradel, que este es casi el equivalente al package.jonj para que

**Mar Cabrera:** Sí.

### **00:40:33**

**Jesús Daniel Medina Cruz:** nuestra aplicación funcione como una aplicación de terminal de Java, aparte de definir el plugin de Kotlincon el JBM en esa versión para que utilice esta versión, pero esta versión es de Kotlin,¿okay? Esta es la versión de Kotlin.

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** También tenemos que definir un plugin de application para que podamos ejecutar nuestra aplicación en este archivo que está aquí.

**Mar Cabrera:** Okay. El main que sería como el program CS nuestro, algo así.

**Jesús Daniel Medina Cruz:** Sí, sí es correcto.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Ahora, esto viene heredado de de Java. El application es más como de de Java, pero ha evolucionado a Cotlin a tal punto que el main class, aunque dice class, eh, en realidad nosotros estamos definiendo en Cotly una clase, solo definimos una función.

**Mar Cabrera:** Aha.

**Jesús Daniel Medina Cruz:** Eh, pero el compilador automáticamente lo que va a hacer es crear una

**Mar Cabrera:** crear esa clase.

**Jesús Daniel Medina Cruz:** clase equivalente al nombre del archivo. Main punkt kt se convierte a main k mayúscula t.

### **00:41:49**

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Esto si nosotros no creamos la clase, porque efectivamente sí podemos crear la clase,

**Mar Cabrera:** M.

**Jesús Daniel Medina Cruz:** podríamos hacer nosotros CL main y poner nuestro main

**Mar Cabrera:** No.

**Jesús Daniel Medina Cruz:** function acá y agregarle eh los argumentos que se le tienen que agregar para que se detecte como una función principal. Creo que esto era todo. Y así ya tendríamos que aquí mismo ya no sería main cat, sino sería main directamente o si lo pongo hola,

**Mar Cabrera:** Claro,

**Jesús Daniel Medina Cruz:** no sé, cualquier cosa.

**Mar Cabrera:** perfecto.

**Jesús Daniel Medina Cruz:** Entonces, en Cotlin no es necesario crear una clase para ejecutar nuestro programa con una función, en este caso función de alto nivel se le llama porque está fuera de cualquier clase. En mismo nivel del archivo podemos porque el compilador automáticamente va a crear la clase que necesitamos en el main class.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** También tenemos el como el paquete del proyecto, en este caso el grupo versión, los repositores de dónde vamos a descargar nuestras dependencias, definición de dependencias y configuración del entorno de testing.

### **00:43:18**

**Jesús Daniel Medina Cruz:** Esto todo eso se agrega por defecto en un proyecto de de Cotlin. Este, ¿qué más? Ah,

**Mar Cabrera:** M.

**Jesús Daniel Medina Cruz:** y aquí tenemos la configuración de Kotlinpara definir qué versión del JBM vamos a utilizar. En este caso, la 17 yo estoy utilizando.

**Mar Cabrera:** Okay.

**Jesús Daniel Medina Cruz:** Mm, no sé si me pase algo. Bueno, eso por el lado de Gradle. Si cambias algo del Gradle, te va a aparecer como para en Intelishía una opción para sincronizar. Entonces, le puedes dar aquí sincronizar o en el elefante le puedes ficar acá sincronizar y se sincroniza el proyecto. Es como ejecutar otra vez todo el proyecto.

**Mar Cabrera:** Perfecto.

**Jesús Daniel Medina Cruz:** Ah, entonces eh estoy compartiendo, ¿verdad?

**Mar Cabrera:** No, ahora no.

**Jesús Daniel Medina Cruz:** Ahí está. En Android,

**Mar Cabrera:** Ahora sí.

**Jesús Daniel Medina Cruz:** en Android Studio tenemos una interfaz similar, es muy parecida a la de Intelish Idea, solo que está más orientado a Android, entonces van a cambiar algunas pequeñas cosas, pero en general va a ser una versión de teléis.

### **00:44:39**

**Jesús Daniel Medina Cruz:** Eh, aquí tenemos el elefante y pues bueno, todo lo demás se ve muy similar.

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** Por ahora me voy a enfocar en y me voy a ir al archivo de main. Una cosa importante que quiero que notemos en el proyecto es que tenemos en Intel una opción opción para eh aquí en Intelish tenemos una opción para el archivo de Cotlin. Si le das clic en Tools Cotlin Show Cotlin Bitecode, te va a aparecer como esta herramienta en donde pues puedes ver el Btecode de Cotlin que si lo descompilas puedes ver la el equivalente del código de Cotlin que tienes en Java.

**Mar Cabrera:** Okay. Aéase la conversión.

**Jesús Daniel Medina Cruz:** Sí, así puedes saber eh lo que hay detrás del código de codlink que estás compilando. Esto para el compilarlo para el JBM porque pues hablamos de que hay diferentes compiladores, entonces hay que tomar eso en cuenta. Otros compiladores pues van a mostrar un una compilación distinta. Por ahora que está configurado con el JBM se queda ah para eso va.

### **00:45:54** {#00:45:54}

**Mar Cabrera:** Perfecto.

**Jesús Daniel Medina Cruz:** Entonces, en Cotlin tenemos para imprimir un mensaje en la terminal utilizamos un print ln. Internamente el print ln es lo mismo que en Java utilizar el system.out.printline es el equivalente.

**Mar Cabrera:** Sí. Ok.

**Jesús Daniel Medina Cruz:** Ahora, aquí hay algo muy interesante. Si tú ves internamente le das command click en el caso de Mac o control click en el caso de Windows a la función. Vamos a ver que internamente está ejecutando la misma función que tenemos acá.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Dependiendo del tipo va a haber una sobrecarga de la función y van a haber diferentes print de llns para cada tipo. Pero lo que más interesante me parece que no vamos a entrar todo completamente en los detalles por ahora, pero hay varias palabras aquí medio raras, ¿cierto?

**Mar Cabrera:** Sí,

**Jesús Daniel Medina Cruz:** Una de ellas es la palabra actual, que significa que esta función en esta plataforma ejecuta esta línea de código.

**Mar Cabrera:** o sea,

**Jesús Daniel Medina Cruz:** Cotlin,

**Mar Cabrera:** sea como el dis Microsoft, algo así o en JavaScript

### **00:47:09**

**Jesús Daniel Medina Cruz:** ese no me lo sé. Ahí me me agarraste en curva.

**Mar Cabrera:** también.

**Jesús Daniel Medina Cruz:** Ah,

**Mar Cabrera:** Okay, okay,

**Jesús Daniel Medina Cruz:** te lo te lo voy a poner así.

**Mar Cabrera:** ya te escucho. Vos sos el que sabe.

**Jesús Daniel Medina Cruz:** Lo que lo que pasa es que como Cotlink puede ser multiplataforma, más bien es un lenguaje multiplataforma, tú podrías como había dicho,

**Mar Cabrera:** Ajá.

**Jesús Daniel Medina Cruz:** querer ejecutar código distinto en cada plataforma. Entonces el system.out. Tu printline funciona en el JBM,

**Mar Cabrera:** Aha.

**Jesús Daniel Medina Cruz:** pero eh si estás en quieres ejecutar tu programa y eh por ejemplo en Android, en Android no tenemos esto.

**Mar Cabrera:** Okay,

**Jesús Daniel Medina Cruz:** Si lo quieres ejecutar en web, por ejemplo, sería un consol.log.

**Mar Cabrera:** claro. Tak.

**Jesús Daniel Medina Cruz:** Entonces este actual termina eh definiéndose como en Esta plataforma actual se ejecuta así. Si yo compilara mi mismo programa, esta línea ejecutaría un código distinto dependiendo de la plataforma.

### **00:48:12**

**Jesús Daniel Medina Cruz:** Entonces yo desde Cotlin no me tengo que preocupar por la plataforma porque la librería estándar de Cotlin tiene varias funciones multiplataforma.

**Mar Cabrera:** Bien, Bien.

**Jesús Daniel Medina Cruz:** Entonces, esta es la función consol. Que tenemos disponible en este Cotlin. Otra cosa interesante de Kotlines que nos permite definir metadatos. Eh, ¿estás familiarizado con las anotaciones?

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** ¿Va? Entonces, como Kotlinte mencionaba que no necesitamos definir clases,

**Mar Cabrera:** Ok,

**Jesús Daniel Medina Cruz:** todas estas funciones están directamente en el archivo como funciones de alto nivel, no están dentro de una clase. Pero para que sea más fácil utilizar estas funciones desde Cotlin y que se defina en Java la clase, se puede personalizar el nombre del archivo directamente como console cated para no confundir con otros console que ya existen.

**Mar Cabrera:** perfecto.

**Jesús Daniel Medina Cruz:** Sin embargo, a pesar de que esto eh lo puedo encontrar en Java como conso KT, si yo abro un archivo de Java, voy a abrir este que tengo aquí, por ejemplo, nada más para escribir consol KT, tengo acceso a algunas funciones, pero estas funciones que dicen cotin internal inline only no son accesibles desde Java por esta anotación.

### **00:49:47**

**Mar Cabrera:** Ok.

**Jesús Daniel Medina Cruz:** Pero hay otras funciones, como había mostrado ahorita, eh, que sí, como el readline, esta sí está aquí, no tiene esa regla.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Entonces, eh del console. Okay. Después tenemos a nuestros mensajes de consola. El print ln significa este pues que va a ser un salto de línea, va a imprimir y va a ser un salto de línea cuando termine de escribir el mensaje. Tenemos tres líneas aquí y si hacemos un print sin ln se va a imprimir. Digamos que si hiciéramos dos print, este se va a poner uno a la izquierda y el otro a la derecha,

**Mar Cabrera:** Uno atrás del otro.

**Jesús Daniel Medina Cruz:** básicamente como la misma línea.

**Mar Cabrera:** Ja.

**Jesús Daniel Medina Cruz:** Esto lo hacemos así porque lo que queremos después con este programa es leer eh lo que el usuario va a escribir. En ese caso estamos programando como el chat para que nos ponga el nombre el usuario. OTL nos brinda varias funciones para leer eh datos del usuario.

### **00:51:09**

**Jesús Daniel Medina Cruz:** Una de ellas es el R line, que sería este de aquí, RLINE,

**Mar Cabrera:** S

**Jesús Daniel Medina Cruz:** pero eh lo que recomienda el compilador directamente es que lo reemplacemos por readline or nul. Es el que yo tenía ahorita directamente.

**Mar Cabrera:** S.

**Jesús Daniel Medina Cruz:** R line on nul. nos deja crear una variable que podría ser un string o podría ser nulo. Yo lo pongo explícitamente aquí para que sea más fácil de leerlo.

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** Y después digamos que qué pasaría si yo quiero leer el

**Mar Cabrera:** Esperen.

**Jesús Daniel Medina Cruz:** input y este imprimirlo en la terminal, pero es nulo. En principio, el printline, aunque utilice una variable que es nula, eh va a convertir ese nulo a un string.

**Mar Cabrera:** Ah.

**Jesús Daniel Medina Cruz:** Pero si yo quiero interactuar con ese este input, es decir, no, si el usuario no escribe nada, no me gustaría que se quede como eh hola nada, ¿no? Hola y luego un espacio vacío.

### **00:52:24**

**Mar Cabrera:** Claro.

**Jesús Daniel Medina Cruz:** Extraño, ¿no? en principio para nuestro programa. Entonces, ¿cómo le podemos hacer para validar? Lo que yo propuse en este ejemplo es primero definir todo esto que te voy a mostrar no es completamente obligatorio de esta manera, pero por fines pedagógicos nos va a servir.

**Mar Cabrera:** Ok.

**Jesús Daniel Medina Cruz:** Definimos un valve que es string, no es nulable, pero quiero que notes lo siguiente. No le estoy asignando un valor todavía. Pero sí le estoy asignando el valor más adelante.

**Mar Cabrera:** Mhm.

**Jesús Daniel Medina Cruz:** En principio parecería contraintuitivo porque no es un bar, pero lo que permite el compilador es que, bueno, si es un val, ¿no? Puedes cambiarle el valor más adelante, pero como no le has puesto ningún valor todavía, te da permiso de ponerle ese valor después.

**Mar Cabrera:** Okay, bien.

**Jesús Daniel Medina Cruz:** Esto solamente aplica porque estamos en el mismo alcance de la función.

**Mar Cabrera:** Claro, si lo pones afuera ya no.

**Jesús Daniel Medina Cruz:** Es correcto.

### **00:53:40**

**Jesús Daniel Medina Cruz:** El compilador dice, "Bueno, username lo vas a inicializar después y lo inicializas aquí." Si yo lo yo quitara esto de aquí, el compilador sí me diría, bueno, nunca inicializaste esto, no lo puedes usar.

**Mar Cabrera:** Claro.

**Jesús Daniel Medina Cruz:** Ahora ya está inicializado, pero si solo inicializo uno de los casos El if o el también me daría el mismo error porque no es exhaustivo. Tengo que garantizar que ese valor antes de usarlo.

**Mar Cabrera:** Perfecto.

**Jesús Daniel Medina Cruz:** ¿Por qué? Porque porque no es nulo. Si yo le pusiera esto aquí, evidentemente aún que le ponga esto, me dice, "Oye, no sé si tiene valor o no, pero ponle por lo menos un nul. No me deja.

**Mar Cabrera:** Sí o sí tiene que tener algo aunque sea nul.

**Jesús Daniel Medina Cruz:** Es correcto esto para que el compilador sepa qué quieres hacer con esto, ¿no? Porque si tú le dices que va a ser nulo, pero nunca le pones un nul, el compilador dice, "Bueno, bueno, ponte de acuerdo, ¿no?" Y esto es para que el programador eh sepa qué es lo que está

### **00:54:48**

**Jesús Daniel Medina Cruz:** programando todo el tiempo. Hay cosas que el compilador infiere, como son los tipos, como lo vimos, pero va a haber otras cosas que el compilador no tiene forma de inferir. tendría como intentar adivinar qué está tratando de hacer el programador.

**Mar Cabrera:** Claro.

**Jesús Daniel Medina Cruz:** Aquí algo que me gusta mucho es el Smartcast, que te lo muestro aquí está como seleccionado como verde, ¿vale? para que veamos cómo va evolucionando esto.

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** Lo voy a hacer este paso a paso. Lo primero es que si yo quisiera asignar el username directamente con el input, eh pasaría algo como esto. El input es nulo, pero el username no. Entonces no me deja. Una opción que me da es rodearlo con el nul check. Agregamos un if.

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** Si es diferente que nulo, lo asigno. Todavía me falta el, entonces lo podemos agregar. Userame igual a invitado.

### **00:56:00**

**Jesús Daniel Medina Cruz:** Ya se vuelve exhaustivo. Sin embargo, no estamos garantizando qué va a pasar si el usuario no escribe nada, porque no es lo mismo nula no escribir nada.

**Mar Cabrera:** Claro,

**Jesús Daniel Medina Cruz:** ¿Qué tal si escribe un espacio? ¿Qué tal si escribe algo que no sea alguna letra? No,

**Mar Cabrera:** claro.

**Jesús Daniel Medina Cruz:** para eso es la siguiente validación. Ahora, supongamos que yo digo, bueno, yo quiero validar directamente que no sea un texto en blanco.

**Mar Cabrera:** Sí,

**Jesús Daniel Medina Cruz:** Aquí me lanza una alerta.

**Mar Cabrera:** Listo.

**Jesús Daniel Medina Cruz:** Solo puedes usar un safe call, una llamada segura o agregando el signo de interrogación o directamente eh gritarle al compilador, que no va a ser nulor para que el compilador te deje en paz, ¿no? Digamos que yo le pongo un safe call, todavía no es suficiente. ¿Qué está pasando aquí? Yo ya le dije al compilador, ejecuta. Esta función is not blank, solo si el input no es nulo,

### **00:57:05**

**Mar Cabrera:** Es

**Jesús Daniel Medina Cruz:** pero el if directamente dice, "Okay, yo como if solamente funciono con buleanos, true or false.

**Mar Cabrera:** force.

**Jesús Daniel Medina Cruz:** Si si tú me das un buleano que puede ser nulo, ya me estás dando tres escenarios: true,

**Mar Cabrera:** Claro,

**Jesús Daniel Medina Cruz:** false y nul. Ya no sé qué hacer. Entonces,

**Mar Cabrera:** ya no sentí.

**Jesús Daniel Medina Cruz:** Cotlin, sí, Cotlin nos obliga a validar una vez que ya tengamos seguro que el buliano existe, si es verdadero o falso. ¿Cómo podemos hacer eso? directamente podríamos compararlo con true. Esta es la forma, digamos, segura de hacer la llamada, pero aquí el compilador, tenemos un montón de ayudas del compilador este en todo tiempo en el Intelisa, nos da una opción aquí que dice leave assignment out of. Entonces, si yo hiciera esto, esto no lo vamos a estudiar a profundidad, pero si te fijas, lo que está haciendo es moviendo la asignación, en lugar de tener dos asignaciones del username, pone al if como si fuera una función, como si fuera una ternaria.

### **00:58:27**

**Jesús Daniel Medina Cruz:** Creo que en C\#ARP existen las ternarias.

**Mar Cabrera:** Sí, sí, correcto.

**Jesús Daniel Medina Cruz:** en Kotlin,no. Tristemente este sería el equivalente de una ternaria en Kotlin.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Ahora, este ejemplo que tenemos aquí es si queremos usar el safe call para ejecutar la función, pero Cotlin previene esto para que no tengas que escribir esto aquí como diciendo, obviamente que quieres revisar si esto es verdadero o falso. Para qué tener que escribirle igual a true. Es como decir este si true es igual a true. Está como raro,

**Mar Cabrera:** Claro.

**Jesús Daniel Medina Cruz:** ¿no?

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** Entonces, para poder tener algo como esto, Kotlinnos ofrece una alternativa de función que is nul or blanca. Sí,

**Mar Cabrera:** Bien, perfecto.

**Jesús Daniel Medina Cruz:** aquí ya te fijas no me marca error, pero aquí sigue habiendo otro problema que es el mismo compilador me dice, bueno, sí, ya validaste que no va a ser nul blank.

### **00:59:38**

**Jesús Daniel Medina Cruz:** Vamos a ponerle el símbolo de negación para que digamos cuando no sea nul por blank, ya lo podemos usar.

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** Todo esto que estás viendo aquí es lo mismo que primero hacer input diferente que nul He. Input is not blank.

**Mar Cabrera:** Bien,

**Jesús Daniel Medina Cruz:** El mismo compilador nos dice, pues podrías hacer esto directamente, reemplazarlo con is blank.

**Mar Cabrera:** claro, te lo resume.

**Jesús Daniel Medina Cruz:** Step. Todo el tiempo vamos a estar viendo estas sugerencias del compilador dentro del Intellish Idea.

**Mar Cabrera:** Excelente.

**Jesús Daniel Medina Cruz:** Están intentando hacer lo mismo en Visual Studio Code con la extensión que te voy a recomendar que es de Jetace oficial. No sé cuándo la van a tener al mismo nivel, pero bueno, están trabajando en eso. Eventualmente puede ser que podamos hacer cosas muy parecidas desde Visual Studio.

**Mar Cabrera:** Perfecto.

**Jesús Daniel Medina Cruz:** Por ahora está muy limitada, entonces eh lo ideal sería que pudieras trabajar con Intelis para tener todas estas ayudas, pero si lo haces desde viso del estudio, creo que vas a a forzarte a aprender un poquito más.

### **01:00:54**

**Mar Cabrera:** Bien. Sí, me gusta, me gusta.

**Jesús Daniel Medina Cruz:** Ahora, con todo esto que te acabo de mostrar, lo que tenemos construido es es esto. Si yo ejecuto desde aquí el main gaten, tenemos una terminal interactiva, si la estás viendo desde la parte de abajo.

**Mar Cabrera:** Sí,

**Jesús Daniel Medina Cruz:** Welcome to a chat, por favor, introduce tu nombre, Daniel. Y bueno, ya terminó el input sale en verde,

**Mar Cabrera:** perfecto.

**Jesús Daniel Medina Cruz:** en este caso lo terminal y ya dice, ¿no? Hola, Daniel, ¿en qué te puedo ayudar? Por ahora se termina y es todo lo que hace nuestro programita. Si tú quisieras ejecutarlo desde la terminal de cualquier lado en el proyecto, este, como lo hice aquí, podrías hacer cread run y sale esto que te había mencionado, pero sale como medio feo que salga esto aquí como ejecutando y contando los segundos. Entonces,

**Mar Cabrera:** Okay.

**Jesús Daniel Medina Cruz:** hay un comando que nos permite ejecutar directamente el comando sin todo ese ruido de la consola.

### **01:02:05**

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** Ahí se los dejo de todos modos en la en la página. Aquí voy a poner aquí. Voy a cerrar. Si ejecuto esto. Gradle run console plane y luego gu se pone más interesante, supongo yo. Y ya está.

**Mar Cabrera:** Ahora sí salió más prolijo. Bien.

**Jesús Daniel Medina Cruz:** Sí. Eh, ¿qué me falta? Bueno, hay un punto que que yo tenía agregado acá que me lo solté para que nos enfocáramos en el laboratorio y es que cuando ejecutas el run directamente eh pasa pasa algo. Lo voy a quitar. de aquí. Esto, esto de aquí, este está. Si yo le doy sync, no creo que tarde tanto.

**Mar Cabrera:** Ok.

**Jesús Daniel Medina Cruz:** Ya está. Entonces, si ejecuto esto mismo que ya vimos, no me deja escribir en la terminal.

**Mar Cabrera:** Ajá. Esto esto es muy real. Cuando corres el NPM y levantar los puertos es lo mismo.

### **01:03:41**

**Jesús Daniel Medina Cruz:** Sí,

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** sí.

**Mar Cabrera:** O sea, si tocas algo,

**Jesús Daniel Medina Cruz:** Lo que hace es correcto,

**Mar Cabrera:** cortas la ejecución, No.

**Jesús Daniel Medina Cruz:** lo que lo que hace Intellish Idea es agregar directamente eh instrucciones adicionales a lo que vas a ejecutar desde el entorno de desarrollo. Te resuelve algunas cosas que cuando tenemos que empaquetar una aplicación de terminal, no sé si alguna vez has creado una, pero tienes que agregarle ciertas instrucciones adicionales. Una de ellas en Gradle tenemos que decirle que nuestra tarea de Ron también debe de tener como método de entrada de datos, como inputs, este objeto que se hereda de Java directamente, es el input stream. Si en esto nuestra terminal no tiene un input stream, por lo tanto, cuando le pedimos que lea, perdón, sí, que lea el input del usuario, ni siquiera lo intenta. Ah, no, no, yo aquí no estoy para estas cosas, ¿no? Y se salta. Yo creo que se sale porque le gritamos,

### **01:04:45**

**Mar Cabrera:** Bien.

**Jesús Daniel Medina Cruz:** ¿no? Entonces, mejor ya no hace nada.

**Mar Cabrera:** Bien, perfecto.

**Jesús Daniel Medina Cruz:** Esto es todo lo que necesitamos para poder ejecutar también con este comandito sencillo nuestro programa. Eventualmente esto va a evolucionar a un chat. Por ahora es solamente esto y vas a tener todo tu entorno este disponible desde Visual Studio o eh si ya te animas a usar el Intellij, vas a tener un poquito más de herramientas como el Cotlin Bode.

**Mar Cabrera:** Perfecto.

**Jesús Daniel Medina Cruz:** Hasta este punto, ¿alguna duda? ¿Algo en lo que te gustaría profundizar?

**Mar Cabrera:** No está todo super claro, la verdad. Me me está encantando, te juro.

**Jesús Daniel Medina Cruz:** Excelente. Nos fuimos bastante rápido, pero este principalmente es porque no como tú no lo tienes en tu computadora, pues no puedes hacer las pruebas que requeriríamos.

**Mar Cabrera:** Claro.

**Jesús Daniel Medina Cruz:** Lo que yo te preguntaría este por el tema de la de la velocidad en la que estamos yendo, este seguramente que cuando lo practiques te van a salir más más dudas.

### **01:05:56**

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** ¿Tienes este pensado poderlo practicar en la semana, este, para que no llegues a la siguiente clase sin haberlo practicado o no vas a poder practicarlo todavía.

**Mar Cabrera:** Eh, voy a tratar de meterle un par de horitas a la semana. Sí.

**Jesús Daniel Medina Cruz:** Va, lo que te comento es para saber si seguirte agregando cosas o mejor dejarle hasta aquí la clase para que no eh saturarte con un montón de cosas que tengas que practicar.

**Mar Cabrera:** Dale,

**Jesús Daniel Medina Cruz:** porque eventualmente el proyecto se puede empezar a poner un poquito complejo y pues mejor que vayas, tengas un poquito de tiempo para ir aterrizando los conceptos y practicarlos.

**Mar Cabrera:** dale. Perfecto.

**Jesús Daniel Medina Cruz:** Eh, hasta aquí sería como mi aportación sobre el tema ya con todo esto que vimos, aparte que te falta nada más practicarlo, obviamente, pero con todo esto que ya te expliqué, técnicamente estarás al mismo nivel que los demás. La única invitación es de la siguiente semana que te conectes. Eh, esta misma dinámica va a ser un poquito menos este digamos directa que va a haber otros estudiantes, pero es la misma dinámica.

### **01:07:07**

**Jesús Daniel Medina Cruz:** Nos vamos a estar esperando y vamos a ir al ritmo del que tarde más en entender los conceptos. Entonces,

**Mar Cabrera:** Okay,

**Jesús Daniel Medina Cruz:** no tengas eh no te limites a interrumpir o a preguntar cada vez que lo necesites. ¿Te parece?

**Mar Cabrera:** perfecto. Dale. Sí, sí, sí, sí.

**Jesús Daniel Medina Cruz:** Pues dejaría la clase hasta aquí, a menos que tengas alguna duda o algún comentario.

**Mar Cabrera:** Eh, dudas, no está todo supercaro, de hecho. Bueno, sí, comentarios sí, me gustó bastante. Super agradezco por esto, porque hace rato que quiero aprender aunque sea algo parecido por el lado de Java y la verdad que Cotlin lo vienen pidiendo bastante,

**Jesús Daniel Medina Cruz:** Ok.

**Mar Cabrera:** así que me viene de 11 aprender una tecnología nueva y de paso ir repasando conceptos que,

**Jesús Daniel Medina Cruz:** Así.

**Mar Cabrera:** bueno, en los casi dos años sin laburo, por más de que fui haciendo cositas, eh, me preguntas algo y me quedó en blanco. Así que al principio por ahí me costó un poco porque hay muchos conceptos y nombres propios del ecosistema de Java y de Cotlin que yo nunca había usado.

### **01:08:05**

**Mar Cabrera:** Entonces, aunque algunas ideas me resultaban familiares desde punto net, no necesariamente las reconocía con esos nombres, pero a medida que fuimos viendo el código y comparándolo con cosas que ya conozco, ahí ya empecé a caer a tierra, me empezó a a cerrar un poco más y también me sirvió que no fuera solamente esto se escribe así, sino entender qué hace el compilador por detrás y por qué Cotlin toma ciertas decisiones, sobre todo, por ejemplo, con el LOL Safety. Y creo que ahora que lo que más me faltaría si sería sentarme a jugar con el lab y practicarlo hasta que me quede porque la práctica hace al maestro.

**Jesús Daniel Medina Cruz:** Yo yo lo que siempre le digo a mis estudiantes, porque tengo ya varios años enseñando, este, practicando cómo enseñar, lo que siempre les digo es que luego este me dicen,

**Mar Cabrera:** Mhm.

**Jesús Daniel Medina Cruz:** "Oye, es que ah, tú lo haces parecer muy fácil." Le digo, "Sí, pero es que tengo un si te si Si te mostrara la cantidad de líneas de código que he escrito, no me vas a creer. O sea,

### **01:09:04**

**Mar Cabrera:** Es que sí es práctica.

**Jesús Daniel Medina Cruz:** no si no es que sea muy inteligente y que me lo sepa todo de memoria, es que he escrito muchísimas líneas de código y a lo mejor es tengo como ese para algunas personas

**Mar Cabrera:** Claro.

**Jesús Daniel Medina Cruz:** sería una virtud, para mí es un defecto porque es en lugar de relajarme a veces me la paso escribiendo código. Entonces, nada, para mí es una forma todos estos cursos, porque este es uno de los cursos que estoy dando, pero ya he dado otros y estoy como creando mi propia academia de desarrollo, estoy tratando de crear como una comunidad en donde en principio yo soy el que enseña porque tengo ahorita la disposición de compartir, pero eventualmente me gustaría empezar a hacer como escenarios en donde podamos compartir los unos con los otros y poder crecer como comunidad todos juntos. Entonces, por ahora eh quiero como resumir y rescatar los conceptos que sí o sí te tienen que quedar claros. Es eh Decotlin que sería que existe bar y el null safety.

### **01:10:02**

**Jesús Daniel Medina Cruz:** Todas las cosas adicionales se van a ir dando poquito a poquito conforme los practiques y algunas cosas que te expliqué hoy las vamos a profundizar más adelante. Entonces, no hay ninguna prisa. Con que te quede claro val bar y el null safety estamos bien.

**Mar Cabrera:** Perfecto, perfecto. Tí,

**Jesús Daniel Medina Cruz:** Entonces hay muchos sí hay muchas palabras medio raras, pero eso poquito a poquito lo vamos a ir viendo. Y me llevo a una tarea que que me que me gustó que me retaras de esta manera. Voy a profundizar más porque yo he hecho se charm antes, pero ya no me acuerdo de muchas cosas y ahorita que las fuiste comentando me como que me acordaba y decía, "Okay, voy a voy a revisitar mis notas de Charp y yo creo que voy a venir con un poquito más de analogías de Charp con los ejemplos que voy a ir dando en las siguientes clases. ¿Te parece?

**Mar Cabrera:** estaría Sería genial. Dale.

### **01:10:51**

**Mar Cabrera:** Sí, sí, sí, sí. No, aparte también porque yo siempre estuve atada al ecosistema de Microsoft, empecé con C+ más, después me pasé a CARP por la facultad más que nada y ya después cuando empecé a laborar bosquedé eso y bueno, un poco de base de datos con SQL, tanto relacionales como no relacionales. Me fui a Firebase, tipo, terminé haciendo cosas que nada que ver. También mezclé con frontend, tengo un poco de Angular, un poco de React JS. Eh, nada, también tengo un poco de blazer, que es básicamente se Pero en el front e todo un quilombo de cosas tengo en la

**Jesús Daniel Medina Cruz:** Sí, sí, sí,

**Mar Cabrera:** cabeza.

**Jesús Daniel Medina Cruz:** sí. que comprendo completamente eh la idea. Eh, cada cada uno tiene su como su carrera y va resolviendo como puede. Te comento que Cotrin a mí nunca me lo enseñaron en la universidad, es algo que aprendí por mi cuenta y y creo que nos nos pasa a todos, ¿no? Que luego hay tecnologías que queremos, que necesitamos, que nos dicen y tenemos toca aprenderlas, ¿no?

### **01:11:50**

**Mar Cabrera:** Sí,

**Jesús Daniel Medina Cruz:** Entonces,

**Mar Cabrera:** tal cual.

**Jesús Daniel Medina Cruz:** eh eso es en parte lo que lo que busco. este digamos curso es completo ente enfocado en Cotlin. Pero si más adelante este pues sigues en la comunidad, lo que yo busco también es ir formando a las personas. Eh, por ejemplo, tengo cursos para no programadores, para principiantes, convertirlos en junior e incluso con el stack personalizado irles dando este una guía sobre ciertos conceptos como de diseño y arquitectura, incluso frontend, backend, si no han hecho algunas integraciones con CICD, test unitarios y también tengo un curso que estoy preparando sobre ingeniería y bueno, un curso de contro que lo tengo todavía pendiente. Entonces, ah, hay mucho todavía que que compartir en la comunidad y para mí es crear el contenido y todo el contenido tanto en esta página de desdejjesdemmedinasc.com como en la de Kotlinque ya te compartí,

**Mar Cabrera:** Ceck.

**Jesús Daniel Medina Cruz:** el contenido está gratis, o sea, no hay nada que pagar si quieres echar un vistazo y leer a todo lo que haya, ¿vale?

### **01:13:00**

**Jesús Daniel Medina Cruz:** Ya después cuando haya cursos, la ventaja que tiene como viste estar en el curso, este, aparte de que aparentemente soy bueno dando clases, doy la asistencia personalizada y eso eh le da un valor todavía mayor a a los cursos, porque leerlos funciona bastante bien para algunos, pero ya con la comunidad vamos a aprender cosas que a lo mejor a ti no se te ocurre preguntar durante la clase o leyendo del documento tú sola.

**Mar Cabrera:** Sí, totalmente de acuerdo. Totalmente de acuerdo en todo. Es más, me me pone nerviosa que lo estés haciendo gratis. No seas eso. Te tengo que retar.

**Jesús Daniel Medina Cruz:** Claro. Yo tengo haciendo esto gratis desde hace muchos años porque sé que hay una necesidad real de las personas de aprender tecnología y esto a veces cambia sus eh pues oportunidades eh digamos ah de clase, especialmente. Tengo experiencia con estudiantes a los que les di clases cuando ellos tenían 17 años. Yo tenía 22 en aquel entonces y luego terminaron dedicándose a esto

### **01:14:05**

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** y prácticamente venían de familias pobres y pudieron salir de la pobreza. Eh, yo yo no estoy muy seguro cuál es tu situación y no quisiera entrar en los detalles porque pues en realidad la relación que quisiera tener contigo es de profesor a alumno en este caso. Eh,

**Mar Cabrera:** Mhm.

**Jesús Daniel Medina Cruz:** y el dinero que te estoy transfiriendo tampoco tiene ninguna intención de yo poder recibir algo. Eventualmente, tristemente no todos recibimos ayuda, pero a veces como que existen ese tipo de personas que nos ayudan en la vida y yo soy de las personas que cree que este si vas a ayudar a alguien tiene que ser sin pedir nada a cambio porque entonces ya no suena este como que estás haciendo participando de alguna manera. Por mi parte, este, es para mí lo más interesante este que pudieras hacer para retribuir, o sea, si quisieras sentirte que Retri. de alguna manera sería por un lado este animarte a participar en la comunidad cada vez que se pueda con lo que tú sepas.

### **01:15:05**

**Jesús Daniel Medina Cruz:** Eventualmente a lo mejor preparar alguna charla o algo para compartir con los demás. ya lo platicaremos y sobre todo no faltar a las clases porque a mí me sirve mucho el feedback

**Mar Cabrera:** Mhm.

**Jesús Daniel Medina Cruz:** porque esto ahorita lo estoy haciendo todo este eh creo el contenido para eventualmente llegar a más personas y seguir dando cursos, pero creo el contenido también gratis porque de esta manera pues puedo ayudar también a muchas otras personas que nunca van a tener para pagar un curso de estos. Entonces, te lo voy a decir así, el contenido que que estoy haciendo completamente gratis, eh yo he pagado muchos eh cursos para llegar a tener ciertos niveles avanzados y luego me doy cuenta de lo costoso que es pagar estas formaciones y digo, ni, o sea, esto no es para cualquiera. ¿Por qué por qué no es por qué no es gratis? No, y sí, sí hay mucho contenido gratis, este, pero luego, claro, ah,

**Mar Cabrera:** Es es lo que vos decís.

### **01:16:07**

**Jesús Daniel Medina Cruz:** es como que mucho en España.

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** ¿Me decías algo?

**Mar Cabrera:** No, no digo que es lo que vos decís también de que nada, no. Por un lado, decirte que lo que te estaba diciendo antes es a modo de chistecito, o sea,

**Jesús Daniel Medina Cruz:** Hm.

**Mar Cabrera:** obviamente que si lo estás haciendo es de corazón y está buenísimo porque realmente a gente como yo, por ejemplo, que no tiene ni p\*\*\* idea qué c\*\*\*\*\* era Cotlin, eh le estás abriendo un mundo nuevo. Y por el otro lado, bueno, nada, eh, qué sé yo. E sí, obviamente que que me encantaría el día de mañana poder hacer una charla. Soy medio del pánico escénico, pero bueno, me estaría bueno desbloquear esa parte mía también,

**Jesús Daniel Medina Cruz:** o también escribir,

**Mar Cabrera:** así que sí me recontraprendo también.

**Jesús Daniel Medina Cruz:** ¿no? Podría ser. Yo yo tengo pensado abrir un blog dentro de la misma academia, no lo he hecho pues porque no he tenido quien se anime a escribir, pero pero por ahí por ahí este lo lo voy a hacer.

### **01:17:04**

**Jesús Daniel Medina Cruz:** Me olvidaba de de mostrarte una última cosa,

**Mar Cabrera:** Sí,

**Jesús Daniel Medina Cruz:** este si todavía tienes tiempo.

**Mar Cabrera:** es Sí, sí, sí.

**Jesús Daniel Medina Cruz:** Eh estoy trabajando en una herramienta que le pusimos por nombre Magister. Es un proyecto de alumnos de preparatoria. Me los trabajé con ellos, pero ahora lo estoy volviendo a traer a la realidad. La idea es que se convierte en un asistente, es una herramienta, es un chat de inteligencia artificial muy sencillo al que le puedes hacer preguntas sobre todo el contenido que tengo en la academia. Entonces, si tú vienes aquí a Magister, ahorita no necesitas crear cuenta, le puedes este preguntar, por ejemplo, este cualquier cosa que que tengamos aquí eh y y te va a intentar responder de esta manera, ¿no?

**Mar Cabrera:** Me encanta.

**Jesús Daniel Medina Cruz:** Y te y te hace preguntas también para que se convierta en una conversación y no nada más en una consulta directa a al contenido. Entces te va como retando. un poquito este por si tienes alguna duda.

### **01:18:02**

**Jesús Daniel Medina Cruz:** Actualmente solamente funciona para eh hacer el chat con inteligencia artificial y se borra, pero voy a ir trabajándolo un poquito. Tengo algunas herramientas muy interesantes que luego les voy a mostrar que que van a ayudar mucho a que la comunidad vaya este creciendo y que poco a poco tengamos eh pues más espacio para pues no quedarnos solamente en aprender un lenguaje que bueno, a mí me gusta mucho Cotle, pero mi intención es ver si podemos de alguna manera cambiar nuestras condiciones materiales, en este caso oportunidades laborales,

**Mar Cabrera:** Ha.

**Jesús Daniel Medina Cruz:** eh haciendo contactos también si alguien en algún punto necesitan una referencia por una empresa o este tipo de cosas, que la academia también les sirva como para decir, bueno, este, yo aprendí esto acá y aquí este es mi profesor o compartirnos contactos también no estaría nada mal.

**Mar Cabrera:** La verdad, excelente idea. Sí, sí, sí. Y con lo que decías antes de escribir, de hecho, en mi en mi trajín de querer inventar cosas nuevas, me contactaron de una editorial de de Inglaterra y me dijeron,

### **01:19:12**

**Jesús Daniel Medina Cruz:** Hm.

**Mar Cabrera:** "Che, ¿te gustaría escribir un libro para lo que es punto neto con e, o sea, aplicado a IA?" Y les dije que sí y quedó ahí y me quedó haciendo ruido en la cabeza. Y ahora que vos me lo recordá, bueno, también lo podríamos hacer para esto. A mí me encantaría hacerlo. Eh, de hecho, no tengo ningún problema en hacerlo gratuitamente. Eh, tengo, o sea, estoy enfocada a lo mismo que vos, por más de que yo siempre jodo con la plata y qué sé yo. E ayudar a la gente también está bueno. Entonces, nada, si te pinta podemos empezar a escribir cosas de lo que sea, no tengo ningún problema.

**Jesús Daniel Medina Cruz:** Vamos, vamos a irlo planeando más adelante para aterrizar cosas que cuando las escribes también terminas aprendiendo, que eso es a mí lo que más me encanta,

**Mar Cabrera:** Totalmente

**Jesús Daniel Medina Cruz:** que tengo un aprendizaje y digo, si lo comparto me termina quedando de maravilla. Te te te comparto también tengo te voy a compartir varios links, este, pero ahorita a la mano tengo el blog.

### **01:20:12**

**Jesús Daniel Medina Cruz:** Jesús deinac.com. Tengo un blog en medium donde escribo varias cosas. Pues me gustaría este empezar a traerme cosas de estas a te digo, a la academia. Por ahora estando medium, no sé si medium siga siendo buena idea mejor linkearlo desde la academia para acá o no sé, luego revisamos bien. Este, pero sí me encantaría empezar a a ver qué qué podemos ir escribiendo. definitiva.

**Mar Cabrera:** Dale, perfecto. Ça.

**Jesús Daniel Medina Cruz:** Te te compartiré entonces la la info y la intención es seguir en contacto, por eso te pedí el WhatsApp, no te voy a estar molestando, más que nada pues para trabajar con la academia y con estos temas de lo que te he estado este compartiendo cada dos semanas. Te digo, no hay nada que retribuir ahí. Este, si de algo sirve, pues que bueno. Si eventualmente no tengo los medios, obviamente te lo voy a hacer saber este con toda la pena, pero va la idea es mantenerse en contacto.

### **01:21:09**

**Jesús Daniel Medina Cruz:** Te presento.

**Mar Cabrera:** Sí, me encantaría, me encantaría, la verdad que sí a todo. ¿Qué quieres que te diga?

**Jesús Daniel Medina Cruz:** Me encanta, me encanta. Perfecto. Pues ya no te quito más tiempo. Este, la idea es siguiente semana, este, sería como a la 1 de la tarde para ti. Y nada,

**Mar Cabrera:** Sí.

**Jesús Daniel Medina Cruz:** te presento a a los demás. No es necesario que prendas tu cámara, no te preocupes, pero este ahí siéntete libre. Los demás creo que sí la van a prender, así que nada más te lo comento. Yo siempre la aprendo por respeto, pues porque soy el profe, pero bueno, siéntete libre. Va,

**Mar Cabrera:** Sí, en ese sentido también te te quería pedir disculpas en algún momento por no haber puesto la cámara. La verdad estoy hecho una crota, pero lo voy a considerar para las próximas veces.

**Jesús Daniel Medina Cruz:** la intención es que te conectes. Si el tema de la cámara es un impedimento para unirte la clase, ni lo tomes en cuenta. Es aquí el tema es este la comunidad de la cámara.

**Mar Cabrera:** No, no,

**Jesús Daniel Medina Cruz:** Eso es completamente opcional.

**Mar Cabrera:** para nada. Olédate.

**Jesús Daniel Medina Cruz:** Ya estás. Pues nada, me dio mucho gusto el tenía rato que no hablaba con una persona este Argentina y me me me marcó mucho estar escuchando tu acento. Este ya luego platicaremos de de de ese tipo de cosas. Este, me gusta mucho hablar sobre cultura y nada,

**Mar Cabrera:** Dale,

**Jesús Daniel Medina Cruz:** este, estamos en contacto.

**Mar Cabrera:** dale. Perfecto. Bueno, muchísimas gracias, Daniel por todo, por todo, por la ayuda, por esta clase magnífica, por dejar esto gratis para la gente. De verdad, estoy super agradecida y un gustazo conocerte.

**Jesús Daniel Medina Cruz:** gusto también que estés

**Mar Cabrera:** Chao. Ciao.

### **La transcripción finalizó después de 01:22:47**

*Esta transcripción editable se generó por computadora y puede contener errores. Los usuarios también pueden cambiar el texto después de que se cree.*