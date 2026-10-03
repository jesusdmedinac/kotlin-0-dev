# **📝 Las notas**

sept 12, 2026

## **Desde0 \- Kotlin para principiantes \- Vespertino**

Archivos adjuntos [Desde0 - Kotlin para principiantes - Vespertino](https://calendar.google.com/calendar/event?eid=MzNxZTh0bXJvdnJnc2MzbHA2OXY2bGs2cjlfMjAyNjA5MTJUMjMwMDAwWiBqZXN1cy5kYW5pZWwubWVkaW5hLmNydXpAbQ)

Registros de la reunión [Transcripción](https://docs.google.com/document/d/1C3dggSP4oLww9bBbvn0F_KKK3JFdRKDoTN2_OX3Dcbc/edit?usp=drive_web&tab=t.i1eadaa299r1) 

### **Resumen**

Curso de Kotlin con interoperabilidad y bases técnicas avanzadas

**Introducción a Kotlin y Java**  
Fundamentos y compilación multiplataforma explicados.

**Interoperabilidad y entornos**  
Configuración de herramientas y compilador de código.

**Uso de inteligencia artificial**  
Dominio técnico previo requerido para IA.

### **Próximos pasos**

- [ ] \[Samantha Enriquez\] Instalar Git: Instalar Git en la computadora para resolver los problemas de control de versiones y ejecutar el proyecto.

- [ ] \[Samantha Enriquez\] Actualizar herramientas: Actualizar las herramientas de línea de comandos en la computadora para asegurar la correcta funcionalidad del entorno de desarrollo.

- [ ] \[Samantha Enriquez\] Configurar proyecto: Clonar el repositorio del curso y abrirlo en el editor de código, preferiblemente en Visual Studio Code dada la baja memoria del sistema.

- [ ] \[Samantha Enriquez\] Instalar extensión Kotlin: Descargar e instalar la extensión oficial de Kotlin de JetBrains en el editor de código.

- [ ] \[Samantha Enriquez\] Probar configuración: Validar la ejecución del proyecto Kotlin en la computadora local antes de la próxima sesión.

- [ ] \[Samantha Enriquez\] Enviar feedback: Proporcionar comentarios sobre el contenido del curso y los recursos de aprendizaje.

- [ ] \[Jesús Daniel Medina Cruz\] Compartir enlaces: Publicar las ligas de acceso a la clase de las 9:00 AM en Discord.

- [ ] \[Jesús Daniel Medina Cruz\] Coordinar encuentro: Enviar un mensaje de texto para organizar una reunión el próximo sábado.

### **Detalles**

* **Introducción al curso y experiencia previa con Kotlin**: Jesús Daniel Medina Cruz y Samantha Enriquez iniciaron la sesión verificando la conexión y comentando sobre la experiencia previa de Samantha Enriquez con el lenguaje Kotlin, la cual era nula ([00:01:27](#00:01:27)). Jesús Daniel Medina Cruz compartió su pantalla para mostrar la plataforma del curso y las lecciones disponibles, solicitando a Samantha Enriquez que configurara su entorno de desarrollo con Discord e IntelliJ ([00:04:52](#00:04:52)).

* **Historia, objetivos y origen de Kotlin frente a Java**: Jesús Daniel Medina Cruz explicó que Kotlin fue desarrollado por JetBrains a partir del año 2011 como un lenguaje de programación de más alto nivel alternativo a Java, el cual se había estancado temporalmente en la versión 8 sin recibir actualizaciones continuas. Jesús Daniel Medina Cruz detalló que el propósito de Kotlin era ofrecer una alternativa más potente y menos compleja que otros lenguajes existentes como Scala ([00:06:23](#00:06:23)).

* **Funcionamiento de la máquina virtual de Java y compilación a bytecode**: Jesús Daniel Medina Cruz explicó el problema de la compatibilidad de ejecutables entre diferentes plataformas y cómo la máquina virtual de Java (Java Virtual Machine) permite ejecutar programas en cualquier computadora mediante un empaquetador común ([00:07:57](#00:07:57)). Jesús Daniel Medina Cruz indicó que el compilador de Kotlin traduce el código fuente a bytecode de Java (archivos \`.class\`), haciendo que Kotlin sea un lenguaje agnóstico a la plataforma ([00:09:28](#00:09:28)).

* **Kotlin Multiplatform y la evolución tecnológica en Android**: Jesús Daniel Medina Cruz expuso que el equipo de JetBrains desarrolló Kotlin Multiplatform para generar compiladores específicos por plataforma, detallando la evolución de las máquinas virtuales en Android desde el sistema inicial Dalvic hasta el motor Android Runtime desarrollado por Google ([00:11:10](#00:11:10)). Samantha Enriquez preguntó sobre el incentivo de usar Dalvic, a lo que Jesús Daniel Medina Cruz respondió que permitía escribir aplicaciones una sola vez sin requerir conocimientos específicos de cada sistema operativo móvil ([00:12:40](#00:12:40)).

* **Soporte de Kotlin para múltiples plataformas y servidores**: Jesús Daniel Medina Cruz indicó que Kotlin permite desarrollar aplicaciones para Android, iOS, sistemas de escritorio (Mac, Linux, Windows), servidores utilizando frameworks como Spring Boot y GraphQL, y aplicaciones web mediante JavaScript o Web Assembly ([00:14:23](#00:14:23)). Samantha Enriquez expresó interés en estas tecnologías, y Jesús Daniel Medina Cruz confirmó la versatilidad del lenguaje en diversos entornos de desarrollo ([00:17:12](#00:17:12)).

* **Configuración de repositorios en GitHub y resolución de problemas técnicos en macOS**: Jesús Daniel Medina Cruz explicó que el curso incluye un repositorio en GitHub con etiquetas (\*tags\*) para marcar el inicio y fin de los laboratorios de cada lección ([00:18:33](#00:18:33)). Debido a problemas de rendimiento en el equipo de Samantha Enriquez y fallas con el control de versiones Git, Jesús Daniel Medina Cruz solicitó y guió a Samantha Enriquez para actualizar las herramientas de línea de comandos (\*command line tools\*) en macOS y abrir el proyecto en Visual Studio Code ([00:22:29](#00:22:29)).

* **Estructura del proyecto mediante Gradle y Kotlin DSL**: Jesús Daniel Medina Cruz explicó la estructura del proyecto basada en Gradle, indicando que el archivo \`settings.gradle\` define la configuración general y \`build.gradle.kts\` utiliza Kotlin DSL para gestionar plugins, repositorios y dependencias ([00:33:52](#00:33:52)). Samantha Enriquez comparó las dependencias con llamadas de API o paquetes de Node, y Jesús Daniel Medina Cruz aclaró que funcionan como gestores de paquetes externos equivalentes a npm, especificando que las dependencias pueden configurarse exclusivamente para pruebas (\*testing\*) ([00:37:14](#00:37:14)).

* **Estructura de aplicaciones Kotlin y análisis del bytecode generado**: Jesús Daniel Medina Cruz explicó que, a diferencia de Java donde cada archivo requiere obligatoriamente una clase o interfaz, Kotlin permite definir funciones directamente sin clases, compilándose de todos modos hacia una aplicación de Java compatible con la máquina virtual de Java ([00:41:47](#00:41:47)). Jesús Daniel Medina Cruz demostró mediante herramientas de desarrollo cómo el compilador genera automáticamente una clase basada en el nombre del archivo principal y gestiona la función \`main\` ([00:44:48](#00:44:48)).

* **Comparación con Python y el concepto de sobrecarga de funciones**: Samantha Enriquez sugirió similitudes con Python respecto a la declaración de funciones, y Jesús Daniel Medina Cruz aclaró las diferencias entre un lenguaje interpretado como Python y un lenguaje compilado como Kotlin ([00:49:17](#00:49:17)). Posteriormente, Jesús Daniel Medina Cruz introdujo el concepto de sobrecarga de funciones (\*overloading\*), explicando cómo el compilador gestiona argumentos y funciones principales múltiples ([00:51:53](#00:51:53)).

* **Funciones de impresión en consola e interoperabilidad entre Kotlin y Java**: Jesús Daniel Medina Cruz explicó el uso de la función de impresión en consola \`print ln\` (proveniente de la librería estándar de Kotlin que ejecuta internamente \`system.out.print ln\` de Java), detallando que el sufijo \`ln\` corresponde al salto de línea ([00:54:53](#00:54:53)). Finalmente, Jesús Daniel Medina Cruz demostró que la interoperabilidad permite ejecutar código de Java desde Kotlin y viceversa ([00:57:30](#00:57:30)).

* **Compilación de Kotlin y uso de anotaciones**: El problema abordado es comprender cómo el compilador traduce archivos de Kotlin a clases de Java y cómo se configuran las reglas de visibilidad. Jesús Daniel Medina Cruz explica que Kotlin genera automáticamente una clase de Java con el nombre del archivo terminado en una K mayúscula, pero este comportamiento se puede personalizar mediante anotaciones. Asimismo, Jesús Daniel Medina Cruz detalla que las anotaciones funcionan como metadatos para el compilador, permitiendo aplicar restricciones como el acceso exclusivo en línea (\*inline-only\*), lo cual restringe el acceso desde Java mientras se mantiene público en Kotlin. Samantha Enriquez participa siguiendo la explicación y reconociendo los conceptos presentados, concluyendo en un entendimiento mutuo sobre la interoperabilidad y el funcionamiento del compilador.

* **Interoperabilidad de lenguajes y filosofía del curso**: Se discute el propósito principal del curso de programación en relación con el funcionamiento profundo de Kotlin en comparación con otros lenguajes. Jesús Daniel Medina Cruz señala que Kotlin y Java son totalmente interoperables y que las distintas plataformas emplean implementaciones reales específicas. En cuanto a la perspectiva pedagógica, Jesús Daniel Medina Cruz enfatiza que el objetivo no es meramente memorizar sintaxis, sino comprender qué realiza el compilador detrás de cada función, diferenciando a los desarrolladores comunes de aquellos que realmente entienden la tecnología. Samantha Enriquez coincide y colabora en la conversación sobre el aprendizaje de conceptos técnicos complejos, estableciendo el consenso de que el curso priorizará las bases de compilación multiplataforma.

* **Entornos de desarrollo y solución de errores locales**: El problema gira en torno a la ejecución de proyectos de Kotlin en diferentes entornos de desarrollo integrado y la resolución de fallas técnicas en equipos personales. Samantha Enriquez pregunta sobre las diferencias entre utilizar Visual Studio Code frente a IntelliJ o Android Studio. Jesús Daniel Medina Cruz detalla los métodos de ejecución para cada herramienta, como usar los botones directos en IntelliJ o ejecutar comandos en la terminal como la compilación de Kotlin junto con extensiones específicas en Visual Studio Code. Samantha Enriquez reporta un error de versión en su software, lo que lleva a que Jesús Daniel Medina Cruz comente sobre la rápida evolución tecnológica y la frecuencia de actualización de las herramientas. Como decisión final, Samantha Enriquez decide pausar el avance hacia la segunda lección para poder probar y ejecutar el laboratorio actual de forma local en su computadora.

* **Preferencias de hardware y equipos informáticos**: Se examinan las necesidades de hardware para el desarrollo de software y la durabilidad de las computadoras portátiles. Jesús Daniel Medina Cruz explica que, para el desarrollo móvil, las computadoras Mac son indispensables al ser la única alternativa para compilar aplicaciones de iOS, compartiendo que adquirió un chip M1 por aproximadamente 45,000 pesos (unos 2,600 dólares en su momento) durante una oferta en Costco. Jesús Daniel Medina Cruz manifiesta su preferencia por contar con sistemas operativos Linux, Windows y Mac para realizar pruebas multiplataforma completas. Por su parte, Samantha Enriquez reflexiona sobre la situación de su propio equipo de trabajo y evalúa sus opciones futuras de hardware, sin tomar decisiones definitivas más allá de reconocer los costos y la utilidad de las herramientas.

* **Retroalimentación del curso y organización de la agenda**: El problema central es la gestión del tiempo y la revisión del contenido del curso en medio de múltiples proyectos simultáneos. Jesús Daniel Medina Cruz solicita a Samantha Enriquez que proporcione comentarios sobre la plataforma del curso y reporte cualquier anomalía, mencionando que maneja diversos materiales de enseñanza y cursos para principiantes destinados a familiares. Samantha Enriquez acepta enviar sus observaciones. Además, discuten la organización de sus actividades para el fin de semana: Samantha Enriquez menciona su asistencia a servicios religiosos dominicales a las 9 de la mañana y la realización de pendientes, mientras que Jesús Daniel Medina Cruz coordina sus tareas domésticas de limpieza y sus horarios de enseñanza, logrando alinear sus agendas para futuros encuentros.

* **Aplicación de inteligencia artificial en el desarrollo de software**: Se aborda el problema de cómo utilizar correctamente herramientas de inteligencia artificial en las tareas de programación. Jesús Daniel Medina Cruz comparte una experiencia reciente colaborando con Justin mediante el uso de la herramienta Devin, argumentando firmemente que la inteligencia artificial solo debe emplearse cuando la persona usuaria comprende al 100% el trabajo que se debe realizar. Jesús Daniel Medina Cruz sostiene que utilizar IA sin conocer la lógica subyacente genera errores graves, detallando que tuvo que corregir el plan generado por la herramienta y explicar los pasos de implementación directamente a Justin. Samantha Enriquez concuerda con esta postura, estableciendo el consenso de que el dominio técnico previo es un requisito indispensable antes de delegar tareas a asistentes inteligentes.

* **Coordinación de clases matutinas y planificación de próximos pasos**: El tema principal es la organización de los horarios de clase y las sesiones prácticas venideras. Jesús Daniel Medina Cruz menciona las actividades matutinas con estudiantes como Martín y Justin, explicando que las lecciones no tienen un límite de tiempo estricto para permitir la resolución de errores en vivo durante los laboratorios. Samantha Enriquez confirma que prefiere y puede adaptarse a las sesiones matutinas a las 9 de la mañana para el futuro. Finalmente, Jesús Daniel Medina Cruz se compromete a enviar el enlace de acceso a través de la plataforma Discord y coordinan la posibilidad de un encuentro presencial durante el fin de semana si las agendas lo permiten.

*Revisa las notas de Gemini para asegurarte de que sean precisas. [Obtén sugerencias y descubre cómo Gemini toma notas](https://support.google.com/meet/answer/14754931)*

*Cómo es la calidad de **estas notas específicas?** [Responde una breve encuesta](https://google.qualtrics.com/jfe/form/SV_5bXzKQfylMIhSXc?confid=3ImBaoVEnIYbug3KbsCrDxIWOBEQAjIGCIoCIAAYAQg&detailLevel=standard&hasImages=False&entryPoint=footerMain&isGoogler=False) para darnos tu opinión; por ejemplo, cuán útiles te resultaron las notas.*

# **📖 Transcripción**

sept 12, 2026

## **Desde0 \- Kotlin para principiantes \- Vespertino \- Transcripción**

### **00:01:27** {#00:01:27}

**Jesús Daniel Medina Cruz:** ¿Me escuchas? Ya no te escucho. Está pasando ya unos segundos.

**Samantha Enriquez:** Ahora sí.

**Jesús Daniel Medina Cruz:** Yeah.

**Samantha Enriquez:** All H

**Jesús Daniel Medina Cruz:** Esto escuchas. A ver esto. ¿Cómo?

**Samantha Enriquez:** What?

**Jesús Daniel Medina Cruz:** Ups. Eh, estoy contacté a Marianela, es la otra estudiante que se iba a conectar, pero no me ha respondido. No tengo no tengo su número directo y pues nada más la contacto por LinkedIn.

**Samantha Enriquez:** Mm.

**Jesús Daniel Medina Cruz:** Entonces este y ahí tengo su correo, pero pues no me respondió, entonces no sé si se va a conectar este, pues entonces le damos, ¿qué te parece?

**Samantha Enriquez:** Sí,

**Jesús Daniel Medina Cruz:** ¿Cómo andas?

**Samantha Enriquez:** ando media cansada, pero todo tranquilo,

**Jesús Daniel Medina Cruz:** Cansada de estudiar, cansada de la vida.

**Samantha Enriquez:** ¿no? Ah, es que tuve mi half marathon hoy en la mañana.

**Jesús Daniel Medina Cruz:** Oh,

**Samantha Enriquez:** Estaba el solazo, ¿no, hombre? Entonces, ahorita me eché un cuetito, pero bien.

**Jesús Daniel Medina Cruz:** ¿cómo te fue? Nunca he corrido un maratón.

**Samantha Enriquez:** Yo tampoco, pero pues la meta es eventualmente llegar a ese punto ya.

### **00:04:52** {#00:04:52}

**Jesús Daniel Medina Cruz:** Ya. Ay, no sé si me dan ganas de de andar corriendo. Va, voy a convertirte mi pantalla. ¿Qué se supone?

**Samantha Enriquez:** Va.

**Jesús Daniel Medina Cruz:** Se supone que puedes. Ahí está. Ahí está. Ahí debería de estar viendo mi pantalla, ¿cierto?

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Okay. Eh, vale. El curso te había pasado el link, te pongo aquí otra vez, vas a encontrar aquí tienes el el curso. Si te vas aquí a explorar cot para principiantes, eh,

**Samantha Enriquez:** Hm.

**Jesús Daniel Medina Cruz:** aquí aparece el panel para que te registres y ya la lección uno sería esta de aquí. E no sé si leíste lo que te mandé, si tuviste tiempo de configurar, conéctate a Discord. Creo que sí te conectaste, ¿no?

**Samantha Enriquez:** Sí, sí, sí, sí.

**Jesús Daniel Medina Cruz:** Discord y que instalaste.

**Samantha Enriquez:** También instalé en Intel.

**Jesús Daniel Medina Cruz:** Mm. Perfecto. Entonces vamos por acá. Eh, primero que nada hablamos de tu experiencia con Kotlin. ¿Qué sales de Kotlin?

### **00:06:23** {#00:06:23}

**Samantha Enriquez:** Nada.

**Jesús Daniel Medina Cruz:** es el lugar indicado. Entonces, vale, mira, pues Kotlin en realidad e es un lenguaje de programación que ya tiene desde el 2011, si no me equivoco, tiene bastantes años,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** o demasiados, pero ya tiene su tiempo y nace con el objetivo de eh digamos no reemplazar Java, sino ser un lenguaje de más alto nivel, pues Java había quedado eh se había dejado de mantener de llegaron hasta la versión 8o en su momento en Java y dejaron de tener

**Samantha Enriquez:** Hm.

**Jesús Daniel Medina Cruz:** actualizaciones. Ya en los últimos años Java ha tenido bastantes actualizaciones interesantes, pero el propósito de Kotlin nace como una alternativa a Java. los lenguajes que existían en ese momento también era escala, era otra alternativa,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** pero era un lenguaje bastante complicado y no era tan potente. Entonces, Jetrains empezó a desarrollar Kotlin con el propósito de generar un lenguaje que permitiera compilar eh código bytecode. Ahorita vamos a ver qué es el Bittecode. No sé si estás has familiarizada con ese concepto.

**Samantha Enriquez:** No, pero sí vi que lo mencionaste en la página.

**Jesús Daniel Medina Cruz:** Sí. Eh, pues como cualquier programa de computadora, tienes tu ejecutable, ¿no?

### **00:07:57** {#00:07:57}

**Samantha Enriquez:** Hm.

**Jesús Daniel Medina Cruz:** En Windows sería como un punto exe, pues el X.X Excel, no lo podrías utilizar en Mac y o o en un iOS o en Android,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** pero este pues cada plataforma tiene su propio eh digamos empaquetador y ejecutador. Lo que Java propuso es que como en cada plataforma tenías que utilizar lenguajes este específicos para la plataforma, aunque programaras con C o C++, tenías que aprender las variantes de cada plataforma para hacer tu propio programa. Entonces,

**Samantha Enriquez:** Ja.

**Jesús Daniel Medina Cruz:** con la máquina virtual de Java, tú nada más tenías que tener instalado el JBM, Java Virtual Machine, y podías ejecutar cualquier programa en cualquier computadora a través de la máquina virtual. Eh, está muy interesante porque pues si tú quieres hacer un programa solamente necesitas este hacerlo para el JBM y ya no no lo tienes que escribir varias veces. Entonces, si tuvieras que hacer una aplicación, digamos, que quisieras hacer el chat, por ejemplo, que vamos a hacer en el curso, eh tendrías que escribirlo la cantidad de veces que sea necesaria para cada plataforma y por eso es que ya va a estar interesante. Y Kotlin como evolución de Java en su momento propuso aprovechar lo que ya estaba sobre Java, pero luego fue evolucionando a un lenguaje, un ecosistema muchísimo más robusto, por ejemplo.

### **00:09:28** {#00:09:28}

**Jesús Daniel Medina Cruz:** Y piensas en Cotling, en realidad, eh, cuando tú escribes código en Cotling, ese código no se va a ejecutar directamente eh en Java, ¿no? Lo que se hace es tomar ese lenguaje y traducirlo al lenguaje que Java, JBM entiende. Para eso se utiliza un compilador que arrolló el equipo de Jetra que

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** convierte el código de Kotlin a Java Bit. Ahorita vamos a ver más a detalle de eso.

**Samantha Enriquez:** Okay, that makes sense.

**Jesús Daniel Medina Cruz:** Entonces, si quieres hacer un un sistema eh para la JBM, lo que se genera es un byte code y el sistema que tenga instalado la máquina

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** virtual va a leer este Btecode, no va a leer Kotlin. ¿Vale?

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Entonces, eh Cotlin termina siendo agnóstico a la plataforma. No es que Kotlin eh sea específico para cada plataforma, sino que tienes Kotlin. Sin importar la plataforma, tu programa en Kotlin y dependiendo del compilador, en este caso el compilador de Kotlin para el JBM, te va a generar un archivo ejecutable que puedas ejecutar en la plataforma que tú quieres, ya sea punto Excel o lo que sea. En el caso de Cotabm, el compilador de Kotlin, que es Cotrin C, Cotrin compiler, va a leer el código de Cotrin y va a generar archivos punto class.

### **00:11:10** {#00:11:10}

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** ¿Qué class son los archivos que la JBM utiliza para leer tu programa?

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Y eso es interesante porque no importa, se lo puedes estar en Mac, en Windows, en Linux y va a funcionar tu BCOD en cualquier plataforma.

**Samantha Enriquez:** Ha.

**Jesús Daniel Medina Cruz:** Pero en este punto e el equipo de Jetrains en el presente tiene todo un ecosistema un ecosistema llamado qu multiplatform en esencia e en lugar de solamente tener un compilador para el BCO, tienes un compilador para e Android, que en este caso anteriormente no sé si estás familiarizado con Android, pero cuando nace Android utilizaba un JBM M. como el de Java, pero se llamaba Dalvic, que estaba adaptado para Android. Entonces, el mismo código que escribías en Java te podría servir en un Android y por eso el primer lenguaje

**Samantha Enriquez:** Aha.

**Jesús Daniel Medina Cruz:** de programación para desarrollar aplicaciones en Android era Java.

**Samantha Enriquez:** Hm.

**Jesús Daniel Medina Cruz:** Entonces cuando nace Cotlin, como Cotlin se podía compilar a Bitcot y Android tenía el Dalvic, que era la máquina virtual de Android, empezaron a a darse cuenta que podían utilizar Kotlin para aplicaciones en Android y con el BE code que tú generabas podías ejecutar tu código también en Android con el Dalvic. Hoy ya no se usa Dalvic.

### **00:12:40** {#00:12:40}

**Jesús Daniel Medina Cruz:** El equipo de Google desarrolló un nuevo eh motor para ejecutar eh bytecode en Android que se llama Android Rountime, eh que es muchísimo más potente que el Dalvic en su momento y que dime

**Samantha Enriquez:** Y una pregunta, este, entonces cuando ellos empezaron a usar Dalbic, el incentivo era para que pues lo escribieran una vez y ya lo podrían como sería más flexible compilar en otras plataformas, ¿verdad?

**Jesús Daniel Medina Cruz:** Lo que pasa es que cuando nace eh Android nace como una pequeña empresa que propone que pueda podamos tener eh el como un sistema operativo que funcione en casi cualquier dispositivo, porque los dispositivos móviles cada uno tenía que hacer su propio sistema operativo. Tenías el sistema de este Blackberry, tenías el sistema de Nokia y luego eh y nace el sistema de iOS y empiezan a ver como un montón de sistemas operativos. Entonces, cada compañía tenía que desarrollar su propio sistema y Android propone esto. Después Google compra Android, no sé si lo sabías, pero Google no desarrolló Android,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** entonces lo compran y el experimento era básicamente como un sistema operativo, un sistema operativo tipo Linux que internamente tenía eh Dalvic. De esta manera, aunque tú eh tuvieras una variante de este sistema operativo, internamente tus aplicaciones solamente tenían que estar escritas en Java

**Samantha Enriquez:** Hm.

### **00:14:23** {#00:14:23}

**Jesús Daniel Medina Cruz:** y no tenías para para hacer aplicaciones, no no era necesario que supieras programar en cada sistema operativo. Internamente solamente tenías que hacer aplicaciones para para Java. Esa fue como la la revolución de los dispositivos móviles, en este caso inteligentes, ¿no?, que era la propuesta que eventualmente iban a ser inteligentes y ahorita se volvieron este digamos peligrosos de lo inteligente que se

**Samantha Enriquez:** Yeah.

**Jesús Daniel Medina Cruz:** volvieron. Entonces, no sé si me alcancé como responder tu pregunta. M.

**Samantha Enriquez:** Ja.

**Jesús Daniel Medina Cruz:** y y ese es como que el proceso que fueron eh evolucionando. Ya el Dalv que en algún punto llegó a ser eh poco eficiente para los nuevos dispositivos, no aprovechaba bien el uso de la memoria y por eso propusieron el Android,

**Samantha Enriquez:** Hai

**Jesús Daniel Medina Cruz:** pero sigue utilizando el byte code. Entonces, en Android se genera un bitec para el nuevo Android y el equipo de JBS empezó a desarrollar diferentes compiladores para todas las plataformas, lo que hizo que ahora puedes utilizar Kotlin en Android, iOS, eh desktop, puede ser para Mac, Linux, Windows. Eh, también puedes usar para web con JavaScript o Web Assembly. ¿Conoces Web Assembly?

**Samantha Enriquez:** No.

### **00:15:44**

**Jesús Daniel Medina Cruz:** Web Assembly es como una tecnología en la que eh tú digamos que creas una aplicación y se genera un byecode, pero este byte code es pues digamos que cercano a ensamblador y aunque es una aplicación web,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** tu navegador la puede ejecutar, pero eh tu aplicación se comunica casi directamente con tu máquina, lo que hace que en lugar de funcionar en el navegador funciona como si fuera una aplicación instalada en tu computadora.

**Samantha Enriquez:** Ah, ok.

**Jesús Daniel Medina Cruz:** Eso quiere decir que puedes acceder a cualquier recurso de la computadora. ¿Tiene sentido?

**Samantha Enriquez:** Yeah. Aha.

**Jesús Daniel Medina Cruz:** Lo que pasa con los navegadores es que tienen un motor de JavaScript que ejecuta todo el código de JavaScript.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Entonces, si el navegador no está bien, digamos, diseñado, eh, pues ejecutar JavaScript en el navegador, dependiendo de cada navegador se va a ejecutar diferente. Pero con Web Assembly, pues si el navegador lo soporta y tu computadora tiene ciertos recursos, puedes hacer aplicaciones eh que no dependan del navegador para funcionar completamente.

**Samantha Enriquez:** C

**Jesús Daniel Medina Cruz:** Y con Kotlin puedes hacer aplicaciones de web assembly, lo cual está bastante bien. O las puedes hacer, puedes hacer aplicaciones de Kotlin que se compilen a JavaScript también, que eso es algo medio extraño, pero también se puede.

### **00:17:12** {#00:17:12}

**Jesús Daniel Medina Cruz:** Y el último que quería mencionar es que también puedes utilizar Cotlin para servidores. No sé si sabías, pero pues eh lo que sea que se hace en servidores con Java se puede hacer con Cotlin. Entonces, supongamos, por ejemplo, en W utilizan Java, si quisieran pudieran utilizar Cotlin en lugar de Java y los mismos

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** eh los mismos frameworks. Por ejemplo, creo que usan Springwood, ¿no? Y también utilizan Graph QL en WSP. Entonces, en lugar de escribir todo el código de Java que hacen, podrían hacerlo con Cotrin sin ningún problema gracias a eh el compilador de Cotrin para eh Java. hasta aquí. ¿Alguna duda?

**Samantha Enriquez:** No, interesting. Ya todo bien,

**Jesús Daniel Medina Cruz:** No voy demasiado rápido.

**Samantha Enriquez:** ¿no? Está bien.

**Jesús Daniel Medina Cruz:** Entonces, Cotlin eh es un solo lenguaje y para cada plataforma podrías intentar adaptarlo eh si tuvieras la necesidad, pero también este es muy versátil porque pues muchas de las cosas que puedas hacer con Coting te van a funcionar en prácticamente cualquier plataforma. Entonces, para aprender Codlin en este curso, yo estoy asumiendo que ya sabes programar, ¿vale?

**Samantha Enriquez:** Mhm.

### **00:18:33** {#00:18:33}

**Jesús Daniel Medina Cruz:** Pero eh no necesitas tener conocimiento de Kotlin. Lo que sí vamos a hacer es que la idea es que vayamos cada lección dando este estudiando un poquito sobre el lenguaje como lo estamos haciendo, pero también que vayas intentando poner en práctica lo que vamos aprendiendo. Para eso diseñó un laboratorio.

**Samantha Enriquez:** Yeah.

**Jesús Daniel Medina Cruz:** Vamos a hacer eh un chat de de ya que vas a encontrar en este sitio. Si vas aquí directamente y le das clic en código inicial, te va a abrir el repositorio y te va a salir una etiqueta. No sé si has trabajado con TAX en GitHub.

**Samantha Enriquez:** Sí. Ah,

**Jesús Daniel Medina Cruz:** Pues okay,

**Samantha Enriquez:** no los hag no.

**Jesús Daniel Medina Cruz:** el tag es como decirle a un comit que va a tener un nombre para recordarlo. En lugar de tener un el número del comit que es un sha,

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** tienes un una palabra que puedas recordar. Se utilizan como para los releases también.

**Samantha Enriquez:** Ah, okay. Senso. Es como un park, ¿no?

**Jesús Daniel Medina Cruz:** Sí, básicamente. Entonces, lo que vas a encontrar en cada lección es un tag que te apunta al inicio del laboratorio, dónde empieza la lección y un tag para dónde termina.

### **00:19:54**

**Jesús Daniel Medina Cruz:** Si quieres revisar cómo empezó la lección, te vas al start,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** puedes trabajarla,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** eh,

**Samantha Enriquez:** Ya.

**Jesús Daniel Medina Cruz:** seguir la lección y cuando termine, si quieres ver si lo que tú hiciste se parece a lo que yo hice, entonces puedes ir directo al don para revisar si te faltó algo, por si no funciona o te pierdes.

**Samantha Enriquez:** Okay.

**Jesús Daniel Medina Cruz:** Entonces, ya clonaste el repositorio. Sí, porfa. dice que el último comit, este comit lo hice hace 3 meses, no me acordaba que hace 3 meses empecé a trabajar en esto.

**Samantha Enriquez:** Wow. Así porque estoy viendo el sag es de junio.

**Jesús Daniel Medina Cruz:** Es un curso vivo. Estoy trabajando en tiempo real.

**Samantha Enriquez:** A ver, entonces, ah, ¿quieres que lo abra yo en Intellig?

**Jesús Daniel Medina Cruz:** Sí,

**Samantha Enriquez:** H

**Jesús Daniel Medina Cruz:** Lo aplonas y lo abres. Cuando lo abras, a ver, voy a moverme para acá. Cuando ya lo tengas,

**Samantha Enriquez:** I can creo que necesito hacer un este una limpia de mi computadora.

**Jesús Daniel Medina Cruz:** eh, Eh, ¿quieres compartir tu pantalla para que te ayude?

### **00:22:29** {#00:22:29}

**Samantha Enriquez:** No, ahorita lo estoy haciendo es que my computer slow

**Jesús Daniel Medina Cruz:** Okay. Okay. Hay prisa, ¿eh?

**Samantha Enriquez:** mandé.

**Jesús Daniel Medina Cruz:** No hay prisa, tío, no te preocupes.

**Samantha Enriquez:** Ah.

**Jesús Daniel Medina Cruz:** H Lo que yo comento en el en el curso es que se puede utilizar este Intellish Idea, ese que recomiendo para ejecutar Cotlin.

**Samantha Enriquez:** Aha.

**Jesús Daniel Medina Cruz:** También puedes usar Android Studio, perdón,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** no, no hay ningún problema si dices Android Studio, va a ver un poquito diferente. Y e también puedes utilizar e visual Studio Code o o el editor basado en Visual Studio Code que más te guste.

**Samantha Enriquez:** M.

**Jesús Daniel Medina Cruz:** Yo utilizo antigra casi todo el tiempo para miss.

**Samantha Enriquez:** Entonces, entonces no tengo que usar Intellity.

**Jesús Daniel Medina Cruz:** No es obligatorio o es porque tienes poca memoria.

**Samantha Enriquez:** Maybe funciona mejor en BCO. Let me try that.

**Jesús Daniel Medina Cruz:** Sí, porque se pone pesado. Lo abres en Visual Studio.

**Samantha Enriquez:** Ya. Y luego después veo con lo de Intell porque está atrasando.

**Jesús Daniel Medina Cruz:** Si no te mira, si lo si lo abres en Visual Studio, vas a ver algo como esto.

### **00:24:52**

**Jesús Daniel Medina Cruz:** En mi caso tengo Antigaby de Google. Y si te vas aquí al eh L1 Start,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** este, cuando lo abres con Intellish Idea, te sale eh un local pun properties por donde está el SDK, pero lo puedes este ignorar. El proyecto va a tener un ritm y va a tener un kit ignor. Entonces, eh lo que vamos a hacer para el proyecto es generar eh un un archivo main para ejecutarlo. Nada más que te voy a recomendar que descargues una extensión que se llama se llama, ¿cómo se llama? Kotlin. Ya está. Esta extensión es oficial de Jetrains para poder ejecutar

**Samantha Enriquez:** Ah, okay.

**Jesús Daniel Medina Cruz:** código de Java y Cotlin. Puede ser interesante que la eh instales.

**Samantha Enriquez:** Va,

**Jesús Daniel Medina Cruz:** Pudiste abrir el proyecto.

**Samantha Enriquez:** ahorita lo estoy diciendo. Es que tuve que abrir Visual Studio. Es que me está saliendo falla de G, que no tengo G. ¿Cómo no voy a tener G? Ah.

**Jesús Daniel Medina Cruz:** Ya no tienes que

**Samantha Enriquez:** get the version control

**Jesús Daniel Medina Cruz:** eh Pero, ¿dónde te sale esa valla?

**Samantha Enriquez:** en en los dos en en Visual Studio Code y en en en Intellig.

### **00:26:54**

**Jesús Daniel Medina Cruz:** ¿Cómo te sale esa falla? utilizando

**Samantha Enriquez:** Si eso es lo que no entiendo. Entonces, ahorita lo estoy tratando de instalar.

**Jesús Daniel Medina Cruz:** instalar Git,

**Samantha Enriquez:** Ya,

**Jesús Daniel Medina Cruz:** pero revisaste y si lo tienes instalado o no lo tenías instalado.

**Samantha Enriquez:** sí, es que sí, o sea, sí me está saliendo. Sí, sí, o sea, sí lo lo he instalado.

**Jesús Daniel Medina Cruz:** Entonces, no lo encontró.

**Samantha Enriquez:** Not sure.

**Jesús Daniel Medina Cruz:** ¿Quieres compartir tu pantalla?

**Samantha Enriquez:** Sí. Ah, no más es que a ver cuál sería. Ha. Han Maybe no recuerd.

**Samantha Enriquez:** No. Ah, se parece como que si todas las configuraciones de mi computadora se hayan como refrescado porque tuve que darle permiso.

**Jesús Daniel Medina Cruz:** Okay.

**Samantha Enriquez:** Okay. Can you see my screen now? Entonces, Entonces this este es intellig Y dice que is notando

**Jesús Daniel Medina Cruz:** Okay, pero no es eso. El tema es que no tienes instaladas el Code Select Tools. Ahí tienes el comando para instalarlas. Eh, no sé por qué se pone de esa manera, pero creo que no lo necesitas así. Puedes abrir tu terminal.

### **00:30:31**

**Jesús Daniel Medina Cruz:** Bueno, ahí en el visto terminal donde

**Samantha Enriquez:** de ver. Ah.

**Jesús Daniel Medina Cruz:** sea.

**Samantha Enriquez:** This is J.

**Jesús Daniel Medina Cruz:** Ahí en la terminal, eh, caray. Tienes el chat ahí abajo. Está raro.

**Samantha Enriquez:** Sí, no sé cómo quitarlo.

**Jesús Daniel Medina Cruz:** Tal trata de hacerles hasta abajo, ¿no? En la parte de arriba del donde sale el asco pilot. Intentar arrastrarlo. No te deja. ¿Qué? Dale escape.

**Samantha Enriquez:** There we Vamos.

**Jesús Daniel Medina Cruz:** Escribe aquí el git espacio guion guion version. Mm. Es ¿Qué es eso? No tienes el las estas cosas. Ah, aquí te dice cómo resolverlo, pero puedes abrir tus configuración de Max. No me acuerdo si viene por aquí,

**Samantha Enriquez:** Pero es que sería en el sería en el um finder.

**Jesús Daniel Medina Cruz:** ¿no? A la settings. En settings, te vas a software update.

**Samantha Enriquez:** Oh my gosh.

**Jesús Daniel Medina Cruz:** Ahí lo tienes a la derecha. ¿Por qué?

**Samantha Enriquez:** Ya valió.

### **00:32:28**

**Jesús Daniel Medina Cruz:** Ah, updates command light tools. Aquí puedes darle update a esto.

**Samantha Enriquez:** Ah,

**Jesús Daniel Medina Cruz:** ¿Por qué dice un to install? ¿Verdad? Agrece.

**Samantha Enriquez:** ya veremos. un ciego.

**Jesús Daniel Medina Cruz:** Sí, te voy mostrando entonces mientras te va instalando.

**Samantha Enriquez:** Ya Sí,

**Jesús Daniel Medina Cruz:** No sé cuánto va a tardar en instalar eso.

**Samantha Enriquez:** sí, sí, así lo hacemos.

**Jesús Daniel Medina Cruz:** Va, mira,

**Samantha Enriquez:** Y ya,

**Jesús Daniel Medina Cruz:** tengo que

**Samantha Enriquez:** ya, ya para la próxima pues ya veo que que cuál fue el problema.

**Jesús Daniel Medina Cruz:** Ah, te explico el problema, ¿vale? Antes que nada,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** eh Mac lo que hace es que es un sistema operativo tipo Unix, ¿no? Entonces,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** para poder utilizar la terminal adecuadamente tiene una eh interfaz que en este caso se llama command eh ay, ¿cómo se llama? se llama Command Line Tools Go,

**Samantha Enriquez:** Hm.

**Jesús Daniel Medina Cruz:** pero básicamente te permite eh a ejecutar comandos de Unix.

**Samantha Enriquez:** Sí,

**Jesús Daniel Medina Cruz:** Unix es básicamente cómo se construyen todos los sistemas operativos tipo

**Samantha Enriquez:** sí.

### **00:33:52** {#00:33:52}

**Jesús Daniel Medina Cruz:** Linux. Eh,

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** y sin esto, pues aunque tengas instalado no sé qué cosa de cualquier herramienta en la terminal, no te va a dejar porque en un sistema operativo has utilizado sistemas operativos de Linux,

**Samantha Enriquez:** Muy breve.

**Jesús Daniel Medina Cruz:** va. en realidad pues son bastante personalizables,

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** entonces es la Mac no es tan personalizable y ya es básicamente

**Samantha Enriquez:** Yeah.

**Jesús Daniel Medina Cruz:** eso. Entonces tienes que tener instalado en Windows, si quieres ejecutar eso, comandos de Unix, tienes que instalar PowerSellare en Windows. Y bueno, en Linux no tienes que instalar nada. Esa es la explicación por ahora. Ahora te voy a compartir mi pantalla. Eh, si estás viendo mi pantalla. Vale,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** me voy a mover al la etiqueta de don. Ay, no me deja. Hazme caso. Ahí está. Vas a ver que en el proyecto hay en don este archivo main.T. En en esencia, este es un proyecto de Gradle. ¿Estás familiarizada con Gradle?

**Samantha Enriquez:** Sí.

### **00:35:19**

**Jesús Daniel Medina Cruz:** Este no es un curso de Gradle, pero brevemente te comento, Gradle sería como nuestro manejador de paquetes equivalente a eh

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** npm en Node.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Bueno, en web el settings.gadle define eh configuración del

**Samantha Enriquez:** Ya.

**Jesús Daniel Medina Cruz:** proyecto. Por ahora solamente tenemos el nombre del proyecto. Si yo cambio esto de aquí, cambia esto de aquí,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** como se llama el proyecto. Y tenemos el bill.grad que define entre varias cosas. Este no está sincronizado, no sé por qué se desincronizó. Ah. entre varias cosas define pues plugins que en este caso son librerías para grade saber qué hacer con nuestro proyecto. Lo que definimos primero es la el plugin de JBM, pero el JBM de Cotlin. Esto de aquí en realidad es como si hiciéramos aquí ID eh org.jetbrains Jet Brains punto Ya se me olvidó, se me olvidó como el Android Studio si me lo voy a completar, creo. Jet está algo así.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Los plugins tienen ids y cada plugin tiene su versión, pero para los plugins de Cotlin, para no tener que escribir todo esto, se hizo esta librería que te acabo de mostrar, que simplemente ejecutas la función Cotlin paréntesis y le mandas el JBM.

### **00:37:14** {#00:37:14}

**Jesús Daniel Medina Cruz:** está sincronizado y el

**Samantha Enriquez:** C

**Jesús Daniel Medina Cruz:** application está disponible en el en el proyecto donde utilizamos Bill Gradle con Cotlin. Todo esto que estás viendo es un archivo de KTS, que KTS significa Cotlin DSL. En realidad antes con Gradle se utilizaba el lenguaje Gruby para varios proyectos, incluyendo los proyectos de Java. Se sigue utilizando Ju este Gruby en en su mayoría. Pero para proyectos con Cotlin también podemos utilizar Cotlin en Gradle, por lo tanto queda algo como lo que estás viendo. Tienes entonces todas las ventajas de Cotlin para configurar tu proyecto. Y acá tenemos el grupo o este caso el como el nombre del paquete del proyecto. Tenemos la versión, los repositorios de dónde vamos a descargar las dependencias. Podemos agregar varios repositorios. Después definimos las dependencias. Aquí nada más tenemos la test y aquí aplica lo mismo. Cotlin sería como org.cotlin.test.

**Samantha Enriquez:** Mm.

**Jesús Daniel Medina Cruz:** Todo eso.

**Samantha Enriquez:** Pero las dependencias son como llamadas de API,

**Jesús Daniel Medina Cruz:** Las dependencias son como llamadas de API. ¿Puedes expandir tu pregunta?

**Samantha Enriquez:** o sea, es ese es el formato.

### **00:38:48**

**Samantha Enriquez:** O sea, en sí la línea 14 es una es un es un API. Oh no.

**Jesús Daniel Medina Cruz:** No.

**Samantha Enriquez:** Ok.

**Jesús Daniel Medina Cruz:** en los proyectos cuando trabajas en un proyecto, por ejemplo, tienes este qué otros proyectos has trabajado, has hecho aplicaciones con Note, ¿no?

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Eh, en Node nosotros tenemos un package.jonj.

**Samantha Enriquez:** Ajá. Ya

**Jesús Daniel Medina Cruz:** Dentro de ahí defines las,

**Samantha Enriquez:** es un son.

**Jesús Daniel Medina Cruz:** no sé si se llaman dependenci también.

**Samantha Enriquez:** Entonces son como other package dependenci, entonces.

**Jesús Daniel Medina Cruz:** En este caso solamente es eso,

**Samantha Enriquez:** Ah, okay.

**Jesús Daniel Medina Cruz:** son dependencias,

**Samantha Enriquez:** Es que yo estaba, me puse yo a investigar cómo, o sea, cómo se parecería el al sensax. Entonces, por eso cuando vi dependenci, pero tal vez vi algo como equivocado.

**Jesús Daniel Medina Cruz:** pero dependen si se en qué contexto lo viste.

**Samantha Enriquez:** En N este como other package dependencies,

**Jesús Daniel Medina Cruz:** Okay.

**Samantha Enriquez:** o sea, en en de otros paquetes.

**Jesús Daniel Medina Cruz:** M Okay.

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** Sí, lo que lo que pasa es que eh en el caso de Cotlin utilizamos gradol y ese sería como el equivalente.

### **00:40:14**

**Jesús Daniel Medina Cruz:** ¿Quieres utilizar otros proyectos de para que tu código pueda utilizarlos, acceder a esa lógica a ese código? Para eso son estas dependencias y se define como implementación para para en el caso de Crador es como una implementación de una dependencia.

**Samantha Enriquez:** Hhm.

**Jesús Daniel Medina Cruz:** lo que no es solamente que eh vas a descargar la externa library y aquí vamos a ver todas las las librerías que está utilizando el proyecto, sino que pues para el caso de diferentes eh entornos se puede definir, por ejemplo, en este caso que esta dependencia solamente va a estar disponible para test para testing nada más.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Si lo si quiero acceder a el código de testing en un archivo que no es de testing, no me va a dejar. ¿Tiene sentido?

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** Eso es más básicamente. Y luego podemos personalizar tareas. Si yo quiero tener una tarea para un caso de uso, puedo crear mi propia tarea y hacer ejecutar alguna automatización o algo. En este caso solamente es una tarea para poder ejecutar las pruebas. Después tenemos configuración de Cotlin, que anteriormente era solamente configuración de Javas, pero ahora podemos configurar hasta qué compilador queremos utilizar de Cotlin o la versión de Java que vamos a utilizar cuando compilemos de Cot en la Java.

**Samantha Enriquez:** Mhm.

### **00:41:47** {#00:41:47}

**Jesús Daniel Medina Cruz:** Y finalmente el application que curiosamente tiene un main class y definimos esto de aquí main KT. Esto es muy importante. que lo tomamos en cuenta, una application, nos referimos a application de Java. ¿Okay? Entonces, como es una aplicación de Java, pero su lenguaje principal es Cotlin, lo que va a hacer el compilador es compilar nuestra aplicación de Cotlin a el JBM, pero va a seguir siendo una aplicación de Java. ¿Qué quiere decir? que cuando lo quiera ejecutar en cualquier máquina que tenga instalado el JBM va a poder funcionar mi aplicación. Entonces, ¿cómo podemos eh ver nuestra aplicación? Si nosotros nos vamos aquí al archivo, tenemos srcotlin,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** vamos a ver que hay un archivo main.kt. ¿Alguna vez es programado en Java?

**Samantha Enriquez:** Sí. Pero hace uh pero sí me acuerdo de lo quiero decir que me acuerdo de lo básico.

**Jesús Daniel Medina Cruz:** Bático sería que te acuerdes eh cuál es la función principal en Java. ¿Te acuerdas de cómo se escribía esa función principal?

**Samantha Enriquez:** No, no me acuerdo bien, pero yo creo que difference oriented programming, ¿no? Entonces le das como un tipo le das este pues sí, como un tipo, ¿no?

### **00:43:19**

**Samantha Enriquez:** Un una clasificación.

**Jesús Daniel Medina Cruz:** No se le dice clasificación, pero va por ahí. Eh, en este caso se le da la clase más que más que clasificación es un

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** modelo, define una estructura de datos.

**Samantha Enriquez:** Aha.

**Jesús Daniel Medina Cruz:** Eh, vale. En Java, y esto va a ser muy interesante, en Java, eh, todos los archivos tienen que tener o una clase o una interfaz o una clase abstracta, pero no puedes tener una función como lo estoy teniendo aquí sin antes definir una clase.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Entonces, cada archivo de Cotlin tiene que tener una clase. Perdón, cada archivo de Java tiene que tener una clase. En Cotlin no. En Cotlin no necesitas clases.

**Samantha Enriquez:** Okay.

**Jesús Daniel Medina Cruz:** Puedes tener como lo estoy mostrando aquí una función.

**Samantha Enriquez:** Aha.

**Jesús Daniel Medina Cruz:** En Java tendrías que escribir algo como public class y luego la función public static, void,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** main, string, array, args y llaves. Esto sería como lo que tendrías que hacer en Java.

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** En Cotlin no hacemos nada de eso, hacemos simplemente phone main, luego paréntesis, llaves y ya con eso tenemos una aplicación lista para funcionar.

### **00:44:48** {#00:44:48}

**Jesús Daniel Medina Cruz:** Obviamente esto se tiene que compilar. Entonces,

**Samantha Enriquez:** Hm.

**Jesús Daniel Medina Cruz:** cuando se compila, ¿qué pasa? Para eso vamos a irnos aquí a una herramienta que tiene Android Studio o Intellish Idea. que se llama en Tools Cotlin Show Cotlin Bitcode.

**Samantha Enriquez:** Oh, wow.

**Jesús Daniel Medina Cruz:** Muestra el cotlincode que obviamente no se entiende nada,

**Samantha Enriquez:** Mhm. Mhm.

**Jesús Daniel Medina Cruz:** pero si lo de si lo descompilas aquí decompile te

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** muestra un archivo de main.ddecompile.jva decompile. Java, que representa el código, cómo sería el equivalente de tu código en Cotlin, pero en Java.

**Samantha Enriquez:** Got it. Ok.

**Jesús Daniel Medina Cruz:** Entonces, en Java, esto de aquí de Cotrin se va a ver como public class KT.

**Samantha Enriquez:** Uhuh. Uh.

**Jesús Daniel Medina Cruz:** El KT se genera automáticamente porque nosotros en COD no definimos ninguna clase, ¿te fijas?

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** Como no hay ninguna clase, entonces el compilador automáticamente crea una clase con inspirándose en el nombre del archivo main, le borra el punto y le pone la K mayúscula. Esto va a ser muy importante.

### **00:46:01**

**Samantha Enriquez:** Y si y si fueran fueron a ver varias funciones

**Jesús Daniel Medina Cruz:** Dime, dime.

**Samantha Enriquez:** en el main KT esas se representarían como, o sea, estarían dentro de la misma clase.

**Jesús Daniel Medina Cruz:** Sí, de hecho lo puedes hacer así. Si tú ves esto,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** nos vamos al compile dan. Es el mismo archivo, no hay ninguna clase,

**Samantha Enriquez:** Ya.

**Jesús Daniel Medina Cruz:** pero el archivo compilado,

**Samantha Enriquez:** Mm.

**Jesús Daniel Medina Cruz:** descompilado, perdón,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** te este muestra esto, ¿no? Vas a Okay, ahora quiero que si puedo guardar esto. Ya no me deja guardarlo. Eh, quiero que intentes resolver algo aquí. Okay, te muestro estos dos archivos y por alguna razón este tiene un main, dos main, dos funciones main.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** ¿Por qué crees que sea? ¿Por qué el archivo de Coting solamente tiene una función main y el de Java tiene

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** dos? ¿Qué se te ocurre?

**Samantha Enriquez:** Mm. porque tiene que definir qué es lo que se está reprodujendo en la en el main,

**Jesús Daniel Medina Cruz:** No entendí.

### **00:47:47**

**Samantha Enriquez:** o sea, ah, se está con el segundo main está como declarando ahí que es un string, No.

**Jesús Daniel Medina Cruz:** Eh, esto es un eh parámetro

**Samantha Enriquez:** Mm.

**Jesús Daniel Medina Cruz:** famizar con los parámetros en funciones.

**Samantha Enriquez:** Sí. Mm.

**Jesús Daniel Medina Cruz:** Es es un parámetro. Eso eh está cerca de la respuesta, pero no es exactamente el por qué tiene que haber dos. Otro intento.

**Samantha Enriquez:** ¿Tiene algo que ver con ser sintético? sea lo que signifique.

**Jesús Daniel Medina Cruz:** Sí, tiene que ver con ser sintético, pero no creo que te ayude a encontrar la respuesta.

**Samantha Enriquez:** No, ver cuál es.

**Jesús Daniel Medina Cruz:** En Java, la función principal para ejecutar una aplicación de Java tiene que sí o

**Samantha Enriquez:** Mm.

**Jesús Daniel Medina Cruz:** sí ser una función estática de la clase public static. void, que tiene que ser una función vacía, que no regrese ningún valor y eh recibir como argumentos

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** eh un array. Esos argumentos se pueden mandar en la terminal, ya ves que en la terminal puedes mandar cosas.

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** Entonces, nuestra función main de Cotlin no recibe nada, tampoco regresa nada y el compilador automáticamente dice,"Bueno, él tiene una función main." Sí,

### **00:49:17** {#00:49:17}

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** pero pero no tiene argumentos, por lo tanto, voy a crear otra que sí tenga argumentos. Le voy a poner el nombre main y voy a ejecutar la función main desde main.

**Samantha Enriquez:** Ya es como lo mismo con Python, ¿no?

**Jesús Daniel Medina Cruz:** A ver, cuéntame. Yo no sé de eso.

**Samantha Enriquez:** Porque en Python tienes que declarar la la función y luego

**Jesús Daniel Medina Cruz:** Oh,

**Samantha Enriquez:** tienes

**Jesús Daniel Medina Cruz:** ya me que me acordaba de algo. Yo estuve en una clase en un curso que me dijeron que eso no era necesario en Python, pero que era altamente utilizado,

**Samantha Enriquez:** Mm.

**Jesús Daniel Medina Cruz:** pero en Java sí es necesario.

**Samantha Enriquez:** Bueno, a ver, a ver, a ver. Lo que yo iba a decir era de que, o sea, lo declara similar de que tienes el function y luego

**Jesús Daniel Medina Cruz:** Sí,

**Samantha Enriquez:** digamos que es un function de que hello world, ¿no?

**Jesús Daniel Medina Cruz:** sí.

**Samantha Enriquez:** Pero tienes en lugar para que de lo que yo he practicado es que en lugar para que si se produzca eso, tienes que declarar la función, o sea, como en línea 18 tendrías que como que pedir la función, no sé si se dice función, pedir como el el acto, por decir.

### **00:50:42**

**Jesús Daniel Medina Cruz:** Yo veo que estás confundiendo un poquito porque me parece que Feron no es exactamente así como lo lo dices y si nos sobra tiempo al final de la clase lo podemos este poner a prueba si te

**Samantha Enriquez:** No, está bien.

**Jesús Daniel Medina Cruz:** parece para porque me dejaste con la duda porque experto

**Samantha Enriquez:** No, no estaba segura si si había, o sea,

**Jesús Daniel Medina Cruz:** Okay.

**Samantha Enriquez:** si tenías Es experiencia con Python.

**Jesús Daniel Medina Cruz:** Yo he estudiado cursos de Python, ¿vale?

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** Y según yo eso que estás diciendo no es completamente así,

**Samantha Enriquez:** Okay.

**Jesús Daniel Medina Cruz:** porque hasta donde yo sé, Python es un lenguaje eh interpretado, igual que JavaScript,

**Samantha Enriquez:** Vamos.

**Jesús Daniel Medina Cruz:** que significa que yo puedo ejecutar código de Python, por ejemplo, asignar una variable sin crear funciones,

**Samantha Enriquez:** Mm.

**Jesús Daniel Medina Cruz:** solo ejecutando el archivo de Python.

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** Pero si creas una función y la quieres ejecutar, la tienes que mandar a llamar. Eso sí tendrías que hacerlo,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** pero es lo es lo mismo eh eh en casi cualquier lenguaje. El el problema aquí Cotlin como es un lenguaje compilado, efectivamente yo no podría hacer esto. Si yo quisiera ejecutar la función main aquí no me va a dejar, pero Python sí.

### **00:51:53** {#00:51:53}

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** Eso te referías tú.

**Samantha Enriquez:** Ajá. Sí.

**Jesús Daniel Medina Cruz:** Qué buena pista.

**Samantha Enriquez:** Ok.

**Jesús Daniel Medina Cruz:** Pero no es por eso que tenemos la función main acá. En el caso de de de Java, la razón es que el compilador está buscando una función que sea pública, estática, void, y que reciba un arreglo de strings, literalmente. Por eso, por ejemplo, si yo aquí mismo en esta función recibiera, no importa el nombre, solamente con que sea un arreglo de strings,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** entonces el compilador va a decir,"Okay, ya tiene su función main, por lo tanto no voy a generar una nueva. Mira,

**Samantha Enriquez:** Ya.

**Jesús Daniel Medina Cruz:** solamente hay una." Otro dato curioso es que el

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** compilador detecta que mi función este es

**Samantha Enriquez:** Ok.

**Jesús Daniel Medina Cruz:** no nula. Esto lo vamos a estudiar en una lección más adelante, pero cuando en Cotlin algo no es nulo, se agregan anotaciones de Java, porque en Java sí todo puede ser nulo. Entonces, aquí trata de checar el compilador que no sea nulo, porque si le envías nulo te va a lanzar un error en tiempo de ejecución.

### **00:53:10**

**Jesús Daniel Medina Cruz:** Pero no nos adelantemos tanto, hasta ahí el esa es la razón por la que el la función se hace doble. No es una función doble en realidad, solamente no sé si estás famizado con el concepto de sobrecarga de funciones.

**Samantha Enriquez:** como de cuando tienes muchas ah muchas este funciones en una cierta clase. Sí, una una sola.

**Jesús Daniel Medina Cruz:** No, no es overloading. escuchar ese concepto en programación funcional cuando tienes ah perdón En programación orientada objetos. Me confundí. En programación orientada objetos. Cuando tienes una eh función que puedas comportarse de forma distinta, eh para diferenciar esas funciones, las puedes poner el mismo nombre, pero puedes recibir argumentos diferentes. Entonces, si tú recibes diferente cantidad de argumentos, por cada argumento distinto se crea una función distinta. ¿Tiene sentido lo que acabo de decir?

**Samantha Enriquez:** No. Why it back?

**Jesús Daniel Medina Cruz:** Va, aquí, por ejemplo, Java me deja tener dos funciones main, aunque se llamen igual,

**Samantha Enriquez:** Aha.

**Jesús Daniel Medina Cruz:** porque una tiene un argumento diferente.

**Samantha Enriquez:** Yeah.

**Jesús Daniel Medina Cruz:** Una no recibe nada y la otra sí. Sí, en Cotlin luego lo vamos a revisar más adelante. Eh, esto se puede hacer de forma distinta, ¿no?

### **00:54:53** {#00:54:53}

**Jesús Daniel Medina Cruz:** No necesitamos hacerlo. Eh, así podemos hacer overloading eh con la misma función, pero lo vamos a ver más adelante. Hasta aquí. ¿Tienes alguna duda?

**Samantha Enriquez:** hasta aquí sin incluir lo de overloading.

**Jesús Daniel Medina Cruz:** Lo de overloading lo vamos a ver más adelante, no te preocupes.

**Samantha Enriquez:** Okay.

**Jesús Daniel Medina Cruz:** No tienes,

**Samantha Enriquez:** No.

**Jesús Daniel Medina Cruz:** no estamos haciendo nada de overloading. Si empiezo a decir muchos conceptos es porque estoy tratando de ver hasta qué punto

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** este podemos profundizar sin sin perdernos de nada.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Si te fijas, ni siquiera hemos programado prácticamente nada y estamos tratando de estudiar lo más profundo que se pueda sobre esto que está

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** aquí.

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** Ahora, como tú no te acuerdas muchas cosas de Java, no sé si te acuerdas de cómo se imprimían mensajes en la consola. En Java se utiliza un eh una librería que es Java IO, input output, que eh nos permite ejecutar mensajes en la consola con print line o print ln. Eh,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** en realidad tenías que utilizar la clase system y tenías en esa clase system un e una propiedad llamada out para como output y luego tenías la función print ln que es como esta función que está aquí.

### **00:56:17**

**Jesús Daniel Medina Cruz:** Entonces escribes system.out.printline print ln.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** El ln es para salto de línea. Eh, ¿cómo se dice en inglés salto de línea? L N que es line line line what. ¿Alguna idea? La N.

**Samantha Enriquez:** like next line.

**Jesús Daniel Medina Cruz:** Ah, puede ser next line. ¿Por qué sería line next? ¿Qué les pasa a los ingenieros? Bueno, puede ser. Luego investigamos. Nunca lo había pensado. Ah, se me olvidó. ¿Qué te iba a decir? Ah, sí. Entonces, eh tenemos estas funciones print ln, ¿qué es lo que hace? Imprime un mensaje y hace el salto de línea cuando termina de escribirlo. Sencillo, ¿no?

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Si tú le das command click en eh Intelis o Android Studio, vas a darte cuenta que es una función. Si le le das click, command click, o sea, dejas aplastado la tecla command y luego le das click,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** te va a mostrar qué es lo que está ejecutando la función.

### **00:57:30** {#00:57:30}

**Jesús Daniel Medina Cruz:** Entonces, en realidad esta función de aquí existe como parte de de la librería estándar de Cotlin. Cuando usas Cotlin tienes directamente acceso a esta función y internamente

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** dependiendo de la plataforma en donde ejecutes tu código, esta configuración va a ser distinta. Por ejemplo, esta de aquí recibe un any y utiliza system.out.printline, le manda el mensaje y con eso funciona. No es necesario que entiendas todas las palabras que están aquí, que hay un montón de palabras, ¿vale? Pero lo importante es que la función esta de aquí es una función de cotlin que

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** ejecuta una función de Java.

**Samantha Enriquez:** Uhhuh.

**Jesús Daniel Medina Cruz:** ¿Qué significa esto? Que desde Java de, perdón, desde Cotlin podemos ejecutar código de Java y también

**Samantha Enriquez:** Got it. Ok.

**Jesús Daniel Medina Cruz:** podemos hacerlo al revés. Eso está bien curioso. Por ejemplo, ¿cómo podríamos hacerlo al revés? Así como está el código de Cotlin aquí,

**Samantha Enriquez:** Uhuh.

**Jesús Daniel Medina Cruz:** eh, si yo tuviera un archivo de Java, vamos a hacerlo aquí rápidamente. Eh, voy a poner mi función print, una clase, perdón, print y voy a eh, ¿qué dice?

### **00:58:59**

**Jesús Daniel Medina Cruz:** Java file is outside of Java. Ah, eso está muy curioso. Para el propósito del ejemplo, no importa este mensaje, si,

**Samantha Enriquez:** Aha.

**Jesús Daniel Medina Cruz:** pero te lo explico porque es interesante o al menos a mí me interesa. Eh, si te fijas, aquí dice Cotlin,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** antes eh cuando programáamos en Java decía eh Java.

**Samantha Enriquez:** Ah ya.

**Jesús Daniel Medina Cruz:** Esta carpeta se llamaba Java, pero propuso la carpeta Cotlin porque no tiene sentido que escribas código de Cotlin dentro de la carpeta Java.

**Samantha Enriquez:** Aha.

**Jesús Daniel Medina Cruz:** El problema es que antes mezclabas los archivos de Java y Cotrin en la misma carpeta y ahora ya te está básicamente recomendando que lo separes.

**Samantha Enriquez:** Hm.

**Jesús Daniel Medina Cruz:** Está muy curioso, pero bueno, no es necesario que lo separemos para el ejemplo. Creo que sí me va a dejar. De hecho, en Java tengo que escribir el nombre del paquete. Package. Bueno, no es necesario, al parecer no me no me impide. Vamos a probar qué pasa. Eh, digamos que yo quiero ejecutar esta función de aquí,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** desde acá.

### **00:59:58**

**Samantha Enriquez:** Yeah.

**Jesús Daniel Medina Cruz:** Entonces, yo voy a tener una función public static eh print eh el Entonces, claro, eh si te fijas esta función está en un archivo que se llama consol en Java.

**Samantha Enriquez:** Aha.

**Jesús Daniel Medina Cruz:** Para encontrarlo tendría que escribir conso KT, si te fijas cómo lo encuentra.

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** Punto. Y ahí hay varios este varias funciones. Voy a importarla primero. Importcling.io es el nombre del paquete este que está aquí.

**Samantha Enriquez:** M. Ya. Ya. Ya.

**Jesús Daniel Medina Cruz:** Y el nombre este de aquí, consolt es el nombre de la clase, pero aquí no hay ninguna clase.

**Samantha Enriquez:** Aha.

**Jesús Daniel Medina Cruz:** Busco class, no hay.

**Samantha Enriquez:** Ah.

**Jesús Daniel Medina Cruz:** Java asume que como tu archivo es de Kotlin y no le definiste ninguna clase, va a generar un archivo de para Java con una clase llamada como el nombre del archivo quitándole el punto y agregándole la K mayúscula. Es el nombre del archivo,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** pero también podemos personalizar el nombre de la clase que Java debe de generar cuando se compile.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Aquí les puedes personalizar el nombre. Entonces, si yo cambiara esto de aquí, por ejemplo, acá en lugar de main KT, le puedo poner hola y en el compile.

### **01:01:38**

**Jesús Daniel Medina Cruz:** Ay, pues no necesitaba imprimirlo, pero si te fijas aquí me sale hola. por esta anotación de aquí.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** ¿Estás familiarizada con las anotaciones?

**Samantha Enriquez:** I think so. Es que trying to keep up learning in Spanish.

**Jesús Daniel Medina Cruz:** I can seeing this if you don't mind.

**Samantha Enriquez:** No, está bien. O sea, no está bien. Estás bien. Es que me dices una cosa y digo, o sea, yo lo traduzco. Entonces, si me lo explicas, tal vez pues ya te digo que sí o si no.

**Jesús Daniel Medina Cruz:** I was a little bit in English and I will tell you one thing that is helping me to learn in in English is that um I was all of the time trying to translate every word I I learn and then I am asking people to explain me that specific

**Samantha Enriquez:** Hm.

**Jesús Daniel Medina Cruz:** concept in in in English instead of learning the Spanish version of that uh

**Samantha Enriquez:** Ajá. Ya.

**Jesús Daniel Medina Cruz:** concept I'm trying to learn in the same concept but because even if you are able to translate everything um we are not using or we don't use the same words or same phrases uh in different cultures even if we use the same language

**Samantha Enriquez:** Yeah.

### **01:02:53**

**Jesús Daniel Medina Cruz:** right so uh is sometimes hard but Yeah. Since we are learning sorry we are studying programming we would be seeing both concepts in English and Spanish it would be mostly the same so I will be trying

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** to switch between both uh because at the end uh it will be very helpful when you search for that concept it will be easier for you just to search for that concept uh this is for example for annotations. Are you familiar with annotations?

**Samantha Enriquez:** Um, I'm not sure. Can you review it?

**Jesús Daniel Medina Cruz:** Yes. So uh if you see here we are using y

**Samantha Enriquez:** Uhuh. Uhuh.

**Jesús Daniel Medina Cruz:** this or here at file.

**Samantha Enriquez:** Yeah. Yeah.

**Jesús Daniel Medina Cruz:** Those are annotations. What the notation does in adding metadata. Do you know do you know that concept also?

**Samantha Enriquez:** Wait, sorry. What was the first part?

**Jesús Daniel Medina Cruz:** I meta data

**Samantha Enriquez:** No, no. Before metadata.

**Jesús Daniel Medina Cruz:** annotations uh metadata to the

**Samantha Enriquez:** Oh, I think I thought I heard something else.

**Jesús Daniel Medina Cruz:** C not so I will explain again um in use annotations those annotations are just basically adding metadata to your

**Samantha Enriquez:** Aha.

### **01:04:19**

**Jesús Daniel Medina Cruz:** code in this for the file. If you want to change the class that will be generated by the compiler, you can add this annotation so that the compiler will understand that this metadata is helping the compiler to understand that you will be asking the class this way.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** This is information for the compiler. So annotations are basically information for the compiler. You can tell the compiler for example that this is only

**Samantha Enriquez:** Yeah.

**Jesús Daniel Medina Cruz:** a uh internal in line only. What happens if I want to use that function here? Uh I cannot access that function. You see those functions are not reachable because of this annotation. So the compiler is not letting me the function. Even if I write it the compiler says has private access in C. KTP inline only.

**Samantha Enriquez:** Got it. Ok.

**Jesús Daniel Medina Cruz:** So private private access that you see here public. So it's public for cling but not for Java.

**Samantha Enriquez:** Mhm. Ya no sense.

**Jesús Daniel Medina Cruz:** And it it makes sense because you have in Java direct access to system. Print line. So why you want to access um coffling line to call a Java code does not make sense but that's

### **01:06:06**

**Samantha Enriquez:** Ya.

**Jesús Daniel Medina Cruz:** why but we can we can directly access also our main kt and call our main function here without a problem.

**Samantha Enriquez:** Ya,

**Jesús Daniel Medina Cruz:** So um what I'm trying to say is that cotle and Java are interoperable. You can use both in both languages.

**Samantha Enriquez:** ya, ya. Ajá.

**Jesús Daniel Medina Cruz:** C from from Java and Java vice versa etc. And this also applies for all platforms but it depends on each platform you will see different configurations. Here for example we are using a actual function. This basically means this is the actual implementation for this platform. It means other platforms printing on the terminal or on the console will look differently. Not the same way to print something terminal each platform.

**Samantha Enriquez:** Mhm. Mm.

**Jesús Daniel Medina Cruz:** This is only for Java Java applications

**Samantha Enriquez:** Car, ya sí.

**Jesús Daniel Medina Cruz:** switch to Spanish. va a ser interesante también que practiques el español,

**Samantha Enriquez:** No, estuvo bien. Gracias.

**Jesús Daniel Medina Cruz:** pero este para la para la clase me voy a mantener un poquito en español porque diseñé curso en español, pero eh me quedé pensando ayer ayer este que voy a diseñar el curso en inglés a ver si empiezo a vender cursos ahí en el trabajo.

### **01:07:33**

**Samantha Enriquez:** Uh,

**Jesús Daniel Medina Cruz:** No estaría mal.

**Samantha Enriquez:** no, pero siento que que, o sea, sí, ya ahora sí no más depende de tu de tu paciencia porque, o sea, si tienes lo que dices, tienes razón, ¿no? O sea, puede ser que en cuestión de programación cosas sean más fáciles para, o sea, si traducir, ¿no? Pero no más yo creo que no me abrumo tantito, pero going.

**Jesús Daniel Medina Cruz:** Yo soy muy paciente y te estás dando cuenta con el curso.

**Samantha Enriquez:** Ok.

**Jesús Daniel Medina Cruz:** Entonces este yo no creo que tenga mucho problema con con eso. Me a mí quien me desespera es este la gente que tiene dinero y abusa de la gente. Eso sí me desespera, pero la gente no me desespera. Entonces hasta aquí te voy a intentar un poquito resumir lo que hemos visto para que no te me pierdas

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** tanto. Eh,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** lo primero que vimos es la configuración de grador. No es un curso de grador, por lo tanto, no te preocupes si no te aprendiste nada de eso de memoria. Por eso me salté tan rápido y estoy tardando tanto en estas cuatro líneas cinco de código.

### **01:08:43**

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Okay, esto es importante. Estoy ignorando lo del cómo hacer escribir comentarios en Kotlin porque pues ahí está el ejemplo y no necesitas este eh quedarte mucho en eso,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** pero mi enfoque es que te sientas eh Kom. con profundizar en qué hay detrás del simple código que estoy escribiendo. Si tú te quedas con esto, técnicamente dices,"Bueno, ya aprendí kotlin, ya sé cómo se escribe una función main." Sí, pero lo que yo te estoy enseñando es qué pasa con esa función, qué hace el compilador con esa función,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** por qué lo hace de esa manera y poquito a poquito profundizar hasta donde se pueda.

**Samantha Enriquez:** Sí. Mhm.

**Jesús Daniel Medina Cruz:** Es muy complejo eh llegar hasta lo más profundo, pero yo soy así, así me empiezo a meter lo más que puedo y no quiero terminarte metiendo en todo porque nos podemos perder porque hay conceptos que eh vamos a estudiar y otros no y eventualmente vamos a llegar a eso. Pero por ejemplo, si yo me sigo metiendo aquí, la función de Java luce de esta manera. El printline de Java es esto. Esto es código de Java.

**Samantha Enriquez:** Mhm.

### **01:09:58**

**Jesús Daniel Medina Cruz:** Entonces es como muy interesante ver qué hay detrás de todo. A mí me gusta irle picando y metiéndome cada vez más profundo, pero para propósitos del curso no vamos a llegar tanto a ver línea por línea cómo funciona Java, pero sí vamos a intentar ver línea por línea cómo funciona Cotlin cuando se compila. Tiene sentido.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Eso va a ser la diferencia entre eh un desarrollador que sabe utilizar Kotlin y un desarrollador que entiende cómo funciona Kotlin. Va.

**Samantha Enriquez:** Yes.

**Jesús Daniel Medina Cruz:** Eh, me parece muy interesante matizar aquí que aunque estamos aprendiendo Cotlin y bastantes ejemplos van a terminar explicando cómo funciona Cotlin en Java, en realidad eh el BC code es e como como lo estamos estudiando nos va a ayudar a entender en la mayoría de los casos cómo funciona Kotlin en cualquier plataforma.

**Samantha Enriquez:** Yeah.

**Jesús Daniel Medina Cruz:** Pues estamos viendo cosas genéricas de Kotlin que no y no porque estamos viendo cómo funciona en Java significa que en otra plataforma esto no va a funcionar, sino que va a funcionar un poquito distinto, pero sí va a seguir funcionando prácticamente igual. Eh, en este caso, este sería como la aplicación para empezar. Como no lo estás este ejecutando en tu computadora, pues este avanzamos un poquito más rápido, pero eh no sé si e quieras que avancemos hasta la siguiente lección o te quieras quedar hasta aquí para que no este tengas tiempo para poder ejecutarlo en tu computadora.

### **01:11:45**

**Samantha Enriquez:** Sí, yo Ajá. Yo creo que sería mejor este solo no avanzar con el segund con la segunda lectura solo para que también yo juegue tantito con él. Um, en Esta aplicación que estás usando no es intellig, ¿verdad?

**Jesús Daniel Medina Cruz:** Este es el Andro Studio.

**Samantha Enriquez:** Es este.

**Jesús Daniel Medina Cruz:** Este es el eh como visual estudio y este es el inteligente.

**Samantha Enriquez:** Ajá. Ah, okay. Entonces, en cuestión de usar CEN, ¿no? O sea, digamos para avanzar con el curso no hay como ninguna, de, o sea, no más es preferencia personal, ¿no?

**Jesús Daniel Medina Cruz:** Sí, el curso, la lección, si te vas aquí a la lección, eh, lo escribí asumiendo que tenías el inteligent, entonces asumí algunas cositas.

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** Este lo voy a adaptar, no lo adapté completamente para que funcionara en cualquiera, pero aquí explico un poquito que este si utilizas Intelij,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** ¿okay? Al final eh Android o IntelJ te permiten ejecutarlo directamente con el botón que te mostré. Aquí sale el botón,

**Samantha Enriquez:** Ja.

**Jesús Daniel Medina Cruz:** pero en si usas Visual Studio, en mi caso Autant Anti Gravity, nada más tienes que ejecutar esto de aquí.

### **01:12:56**

**Samantha Enriquez:** Hm.

**Jesús Daniel Medina Cruz:** Y si tienes el archivo configurado, puedes ver en el repositorio lo del don. Puedes directamente puedes instalar esta esta extensión. Si no la instalas,

**Samantha Enriquez:** Ah, sí,

**Jesús Daniel Medina Cruz:** digamos que te vas a dar la terminal.

**Samantha Enriquez:** deja.

**Jesús Daniel Medina Cruz:** Mira, te muestro que si escribes esto en tu terminal te debe de ejecutar el proyecto compile kotlin y ya terminó. Y aquí vas a ver que es lo primero que sale es esto.

**Samantha Enriquez:** M. Ok.

**Jesús Daniel Medina Cruz:** Pero si te si abres el archivo en Visual Studio, este de aquí y tienes la extensión instalada, este tarda poquito, pero luego salen este botón de aquí, mira que dice como run. Aquí,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** si lo ves,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** y le das click.

**Samantha Enriquez:** Mm.

**Jesús Daniel Medina Cruz:** Y aquí te va a salir en la terminal, en la parte de abajo, ¿eh?

**Samantha Enriquez:** Ok.

**Jesús Daniel Medina Cruz:** Eh, ahí está. Eh, ahí está, ya terminó. Un montón de cosas. Luego luego les voy a enseñar cómo limpiar todo eso, pero bueno, por ahora eso es lo único que tienen que hacer. Si quieres correr el proyecto, esto es lo único que tendrías que tener.

### **01:14:11**

**Samantha Enriquez:** Yeah. Nice. Okay. Si deja. Wait. Java by intelliga.

**Jesús Daniel Medina Cruz:** Sí, deja te muestro otra vez. Aquí lo tengo.

**Samantha Enriquez:** Sí. M.

**Jesús Daniel Medina Cruz:** Está tiene que ser jet brains aquí.

**Samantha Enriquez:** Porque va, sí, sí se está. Okay. Es que está saliendo queja de que tengo la versión incorrecta de Code.

**Jesús Daniel Medina Cruz:** Versión incorrecta.

**Samantha Enriquez:** No sé,

**Jesús Daniel Medina Cruz:** ¿Hace cuánto que no usas esa compo?

**Samantha Enriquez:** es que ya no es que sí. que no es que es lo que no entiendo por No, o sea, yo me acuerdo que mínimo en el me acuerdo que en el año pasado estaba yo haciendo como prácticas básicas y yo pude usar I guess not that deep, pero computer.

**Jesús Daniel Medina Cruz:** me e me me me me hace como un poquito de ruido porque entiendo que un año no es mucho,

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** pero en la tecnología pensar que un año sin practicar, o sea, porque como tienes la compo del trabajo y estás trabajando, pues haces cosas en la compo del trabajo,

**Samantha Enriquez:** Ajá. Sí, sí.

**Jesús Daniel Medina Cruz:** obviamente,

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** pero o sea, creo que yo nada más no uso mi compo un día a la semana y ahora ahora la voy a usar todos los días porque estoy dando cursos.

### **01:15:50**

**Jesús Daniel Medina Cruz:** Entonces,

**Samantha Enriquez:** Ya no.

**Jesús Daniel Medina Cruz:** se

**Samantha Enriquez:** Y yo estoy completamente de acuerdo porque pues como dices, o sea, si ya estamos, o sea, si tenemos mucha accesibilidad para las herramientas del trabajo, pues ahí están, ¿no? Pero ah, pero, o sea, yo yo estoy tratando de razonar porque digo yo, no puede ser que haya sido tanto tiempo para que me esté tirando tantas ah tantas fallas, entonces tengo que

**Jesús Daniel Medina Cruz:** que yo te estoy diciendo como en la otra parte, la otra parte es que sí puede ser Porque yo todos los días como estoy viendo cómo está evolucionando, me doy cuenta lo exagerado de la evolución.

**Samantha Enriquez:** Ah,

**Jesús Daniel Medina Cruz:** ¿Sí me explico? O sea,

**Samantha Enriquez:** ya.

**Jesús Daniel Medina Cruz:** son son los desarrolladores son unos desquiciados que todo el tiempo están pidiendo que actualices. Entonces, yo estoy últimamente actualizando mi computadora este prácticamente cada una semana, dos, hablo mucho, eh,

**Samantha Enriquez:** Oh, wow.

**Jesús Daniel Medina Cruz:** y porque me gusta ver que se rompe y si puedo si puedo encontrar algún problema, reportarlo lo antes posible. Me gusta hacer eso. No siempre lo hago, no siempre me me toca ver este tipo de cosas,

**Samantha Enriquez:** Yeah.

**Jesús Daniel Medina Cruz:** pero es divertido.

### **01:16:55**

**Jesús Daniel Medina Cruz:** De hecho, la computadora, me acuerdo, la compré cuando apenas estaban saliendo las M1. ni siquiera había pasado un año, yo tenía mi computadora y empecé a probar este empecé a probar cómo ejecutar Android en las M1 y tenían errores. Entonces yo encontré un error y lo publiqué y publiqué cómo resolverlo en caso de que a alguien le pasara

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** y me gusta eso, pues poder ser de los early adopters, este, pero no siempre se puede,

**Samantha Enriquez:** Nice.

**Jesús Daniel Medina Cruz:** es como encuentra,

**Samantha Enriquez:** Ya.

**Jesús Daniel Medina Cruz:** no es lo mismo encontrar un error a encontrar la solución y que eso es como complicadísimo.

**Samantha Enriquez:** Sí, pero o sea, ¿cuál es tu perspectiva en cuestión de computadora? Porque yo conozco mucha gente que prefieren usar Mac. O sea, tú piensas que como que a largo plazo vas a permanecer con esa misma computadora o

**Jesús Daniel Medina Cruz:** El detalle es que yo soy mobile dead, o sea, principalmente soy mobile. Entonces,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** para mobile la Mac es la mejor y para iOS todavía sigue siendo la única alternativa. O sea,

**Samantha Enriquez:** Há

**Jesús Daniel Medina Cruz:** Hay alternativas que te permiten compilar tu aplicación eh usando GitHot Actions, por ejemplo, pero no puedes ejecutar tu aplicación de iOS en una computadora que no se lia Mac. Entonces, como yo soy mobile, ah,

### **01:18:17**

**Samantha Enriquez:** ya.

**Jesús Daniel Medina Cruz:** podría programar todo en cualquier computadora, pero para programar en iOS o para programar cualquier aplicación de Apple, tener una MAC es necesario.

**Samantha Enriquez:** Sí,

**Jesús Daniel Medina Cruz:** Entonces, no diría que sería Dime,

**Samantha Enriquez:** pero digamos que como por ejemplo porque yo sé que

**Jesús Daniel Medina Cruz:** dime.

**Samantha Enriquez:** con con Nex es como muy como dijiste, ¿no? pues tiene la habilidad de ser muy lo puedes You can customize it.

**Jesús Daniel Medina Cruz:** Claro.

**Samantha Enriquez:** Entonces yo en, o sea, sí entiendo lo que estás diciendo. Entonces, en el en la perspectiva de como digamos, bueno, es que pues yo iba a decir vida personal, pero igual eso es lo que esos son digamos que es como lo las habilidades más particulares que prácticas o las más las habilidades más que más practicas y obviamente vas a necesitar el ma, ¿no? Yeah.

**Jesús Daniel Medina Cruz:** Sí, yo te diría que eh para mí que en los en la mayoría de los casos de uso termino con el ecosistema de Mac, moverme a una alternativa, o sea, yo no yo no descartaría si tuviera el dinero este tener yo lo que quisiera, te voy a decir así es tener una computadora Windows, una de Linux y otra Mac. En la de Linux hacer destrozos.

**Samantha Enriquez:** Aha.

### **01:19:49**

**Jesús Daniel Medina Cruz:** En la de en la de Windows, probar cosas de Windows, literalmente, y pues en la de Mac hacer el trabajo del carro mobile, que es casi siempre hago.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Eh, no descartaría eso. Me gustaría tener casi cualquier sistema operativo porque con Cotle Multiplatrom puedo probar el Mac. Entonces, si quiero compilar mi aplicación para iOS, pues me sirve. Para Android también, eh, pero ya cuando quiero probar mi aplicación en Windows, pues no tengo Windows,

**Samantha Enriquez:** Ya.

**Jesús Daniel Medina Cruz:** entonces ya no sé si Cot si me va a funcionar igual y quiero jugar con todo eso. Entonces,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** yo yo no te diría que prefiero Mac, eh, yo sí te diría que sí le saco mucho provecho a la Mac.

**Samantha Enriquez:** Ok.

**Jesús Daniel Medina Cruz:** Sí, le saco mucho, mucho provecho, pero solamente vale la pena si la si le vas a sacar el provecho. O sea, si tienes una Mac y para mucha gente que he visto, por ejemplo, se compran una Mac es que es muy cara, o sea, es muy cara y no siento que le saquen provecho. Entonces, como pagar un montón de dinero para una computadora que te va a durar mucho tiempo, pero que no la usas para todo lo que podrías usarla.

### **01:20:57**

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** No sé,

**Samantha Enriquez:** M.

**Jesús Daniel Medina Cruz:** yo estar compu, digamos, a mí me costó, no me acuerdo cuánto sería en dólares eso en su momento y el dólar estaba caro. Bueno, te lo voy a decir en pesos. En pesos me salió como 45000\. Eh, sería con el dólar de hoy sería como 2600,

**Samantha Enriquez:** Yeah.

**Jesús Daniel Medina Cruz:** 2600 por ahí.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Eh, ¿qué qué? A ver, estoy diciendo las cosas mal. A ver, entran curioso. Entonces estaba bien caro el dólar. Entonces, ¿por qué no estaba tan ¿Cómo ha subido

**Samantha Enriquez:** Entonces,

**Jesús Daniel Medina Cruz:** el Sí,

**Samantha Enriquez:** ¿lo compraste a buen momento?

**Jesús Daniel Medina Cruz:** de hecho la compré en oferta en Costcro

**Samantha Enriquez:** Porque ahorita hubiera sido más cara, ¿no? Bueno, es que también

**Jesús Daniel Medina Cruz:** esta está barata, pero o sea esta versión este este chip que es el M1 si compro la de las compos más nuevas

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** pues se dio idealmente,

**Samantha Enriquez:** Ah, sí.

**Jesús Daniel Medina Cruz:** por ejemplo, Justin compró la suya.

### **01:22:13**

**Jesús Daniel Medina Cruz:** Este es creo que es M4, no me acuerdo. El chiste que le salió muy barata que la compró usada, entonces se la compró alguien que no que ya no la necesitaba y pues

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** salió bien, o sea, le salió bastante bien. Está muy buena la comu que él tiene una muy buena. De hecho, creo que es la misma que la del trabajo. Creo que tiene Sí, creo que es el mismo chip, pero el trabajo que le dieron, él se compró una igualita.

**Samantha Enriquez:** Ah, bueno, pues entonces esa es mi tarea.

**Jesús Daniel Medina Cruz:** A mí me dieron

**Samantha Enriquez:** Voy a tener que ver qué hago con mi computador.

**Jesús Daniel Medina Cruz:** ahí, este, actualizar un poquito. Ah,

**Samantha Enriquez:** Mm.

**Jesús Daniel Medina Cruz:** te pasé un un este uno de los links que te pasé es el de Magister. No sé si lo pudiste usar.

**Samantha Enriquez:** Este, esa fue la que me diste para calar en tu teléfono, ¿no?

**Jesús Daniel Medina Cruz:** No me acuerdo,

**Samantha Enriquez:** Creo que estamos en el café.

**Jesús Daniel Medina Cruz:** no me acuerdo de eso y no me acuerdo, pero luego lo calas en tu compo.

**Samantha Enriquez:** Ajá. Sí, sí, sí.

### **01:23:17**

**Jesús Daniel Medina Cruz:** Este,

**Samantha Enriquez:** Aquí tengo el link.

**Jesús Daniel Medina Cruz:** sí. Y lo último, voy a terminar la clase, si te parece, por hoy con lo siguiente.

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** Eh, estoy compartiendo mi pantalla. Ah, de voy a dejar al final de cada cada clase este una parte por si quieres dejar como tu feedback.

**Samantha Enriquez:** Okay.

**Jesús Daniel Medina Cruz:** Este está como muy sencillo, entonces estará interesante, como es un curso que apenas estoy trabajando, me ayudaría mucho escuchar tu feedback.

**Samantha Enriquez:** Yeah.

**Jesús Daniel Medina Cruz:** También te dejé algunos recursos por acá para checar. Entonces,

**Samantha Enriquez:** Va. Okay.

**Jesús Daniel Medina Cruz:** dale un vistazo si encuentras algo roto también me dices por ahí, no sé si rompe algo.

**Samantha Enriquez:** Okay. No creo que haya algo.

**Jesús Daniel Medina Cruz:** digo, es que como estoy trabajando entre el curso, eh estoy haciendo ese curso y luego el laboratorio del curso y luego estoy haciendo

**Samantha Enriquez:** Ya son varios pedazos.

**Jesús Daniel Medina Cruz:** el curso para no programadores,

**Samantha Enriquez:** Ya.

**Jesús Daniel Medina Cruz:** que por cierto ya y las clases también esas y este mi mamá y mi hermana están en ese curso, el de no programadores.

**Samantha Enriquez:** Reunión familiar.

**Jesús Daniel Medina Cruz:** Y si y qué te iba a decir también este eh estoy trabajando en otros proyectos personales, entonces como que entre tantas cosas me se me van algunos detallitos y últimamente estado confiando mucho en la guía y cuando digo confiar es leyendo todo lo que hace porque hace un desastre si la dejó.

### **01:24:47**

**Jesús Daniel Medina Cruz:** Entonces, a veces es difícil que no se me vaya algo.

**Samantha Enriquez:** Ah,

**Jesús Daniel Medina Cruz:** Trato de leerlo todo lo que pueda,

**Samantha Enriquez:** okay.

**Jesús Daniel Medina Cruz:** pero si encuentras algo roto,

**Samantha Enriquez:** Ya no.

**Jesús Daniel Medina Cruz:** me avisas.

**Samantha Enriquez:** Sí, le estaba eh le di una pasada antes de la clase y se me hizo muy bien, o sea, hasta como la explicación básica, o sea, yo siento que hasta tú mismo lo dijiste, ¿no? De que si uno quisiera como seguirla solo, pues no hay pierde. Pero sí, yo dejo feedback, cualquier cosa te dejo saber.

**Jesús Daniel Medina Cruz:** Excelente.

**Samantha Enriquez:** Sound.

**Jesús Daniel Medina Cruz:** Este, ¿algún algún plan para mañana?

**Samantha Enriquez:** Mm. Church. Y luego creo que tengo que hacer como una un ah un mandado mañana en la mañana, pero ya después este es que el el

**Jesús Daniel Medina Cruz:** Vas primero a la iglesia y luego al mandado. El mandado después a la iglesia.

**Samantha Enriquez:** la iglesia luego mandado.

**Jesús Daniel Medina Cruz:** Oh, ¿qué vas a la iglesia?

**Samantha Enriquez:** ¿Me quieres acompañar a la iglesia?

**Jesús Daniel Medina Cruz:** La verdad no. ¿A qué hora vas a la iglesia?

**Samantha Enriquez:** playing.

**Jesús Daniel Medina Cruz:** Que te pregunto que a qué horas vas a la iglesia.

### **01:26:08**

**Jesús Daniel Medina Cruz:** Vas demasiado temprano.

**Samantha Enriquez:** Ah, no es como las 8 a las 9\.

**Jesús Daniel Medina Cruz:** Nueve.

**Samantha Enriquez:** Mm.

**Jesús Daniel Medina Cruz:** Porque a esa hora es el único servicio.

**Samantha Enriquez:** No hay tres servicios, pero Ah. Ah, pues prefiero ir como al principio porque luego no está tan como lleno

**Jesús Daniel Medina Cruz:** Sí, claro. Yo también hacía eso.

**Samantha Enriquez:** ya para que no tuvieras que hablar con tanta

**Jesús Daniel Medina Cruz:** Siempre lo más temprano,

**Samantha Enriquez:** gente.

**Jesús Daniel Medina Cruz:** ¿no? O sea,

**Samantha Enriquez:** Oh,

**Jesús Daniel Medina Cruz:** de todos modo la gente,

**Samantha Enriquez:** bueno, eso es porque por eso yo lo hago.

**Jesús Daniel Medina Cruz:** si es mucha gente no te hablan, me daban raite, entonces iba a esa hora.

**Samantha Enriquez:** Ah.

**Jesús Daniel Medina Cruz:** Entonces este aquí era lo mismo. Si fuera fuera la hora que tú vayas para que me das reite. Entonces, eh no descartaría la idea de de acompañarte, pero esta semana no. Pero mañana este estoy tratando de ver cómo me voy a acomodar porque como doy los cursos, o sea, mañana tengo una clase,

**Samantha Enriquez:** M.

**Jesús Daniel Medina Cruz:** este doy una clase en la mañana y luego este pues ahorita voy a tener que administrarme entre antes limpiaba y cocinaba los sábados.

### **01:27:26**

**Samantha Enriquez:** Mm,

**Jesús Daniel Medina Cruz:** Ahora ando viendo que no voy a alcanzar a limpiar hoy y voy a tener que limpiar mañana o no limpiar,

**Samantha Enriquez:** hijo.

**Jesús Daniel Medina Cruz:** pero no me encanta. Me gusta limpiar por lo menos una vez a la semana.

**Samantha Enriquez:** Y volvemos lo mismo, los recursos para poder optimizar el tiempo fuera del trabajo. Está cañón.

**Jesús Daniel Medina Cruz:** Y es que es eso, o sea, yo quisiera tener tiempo para limpiar entre semana y a veces tengo el tiempo, pero luego se vuelve complicado. El otro día,

**Samantha Enriquez:** Mhm.

**Jesús Daniel Medina Cruz:** ¿cuándo fue? El jueves o viernes, creo que fue el viernes, este, me conecté con Justin, estuvimos trabajando un rato. Eh, él él hace su esfuerzo de de todo el trabajo que le dejan, pero le dije,"Bueno, vamos a sentarnos, vamos a intentar resolver esto, ya vamos intentando resolver." y veo, digo,"A ver, vamos a usar Devin, ¿no?" Entonces veo cómo quiere empezar a usar Devin y yo me quedo como,"Espera, vamos a escribir bien.

**Samantha Enriquez:** M.

**Jesús Daniel Medina Cruz:** Primero hay que asegurarnos que Devin está entendiendo. Ya, okay, mira, fíjate que dijo esto, pero esto no es cierto.

### **01:28:32**

**Jesús Daniel Medina Cruz:** Vamos a corregir esto, vamos a revisar esto otro y le metemos así y ya nos generó un plan. Le pusimos el plan y escribió el plan y lo hizo mal. Dije,"Ah, mira, vamos, aquí es donde está mal." y como que eh el uso de Devin, yo le insisto mucho a las personas, usar inteligencia artificial solo tiene sentido si estás si sabes 100% todo lo que tiene que hacer.

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** Si no sabes lo que tiene que hacer, no tiene sentido utilizar inteligencia artificial.

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** Entonces eh estaba ahí como ayudándole y terminé como explicándole porque como que la le decía que fuera por un camino. Yo le dije,"No, no es que la no tiene idea. Vamos por aquí. y ya le le terminé explicando todo lo que tenía que hacer. Funcionó bastante bien y le dije,"¿Te quedó claro todo?" Dice,"No, pero luego lo vamos a estudiar en la clase de 4 meses."

**Samantha Enriquez:** Entonces, eso,

**Jesús Daniel Medina Cruz:** Entonces,

**Samantha Enriquez:** bueno, él se reunió en la mañana hoy.

**Jesús Daniel Medina Cruz:** hoy en la mañana, Ajá. Tuve dos alumnos en la mañana. Martín es otro exalumno mío que otra vez se está volviendo alumno.

### **01:29:39**

**Jesús Daniel Medina Cruz:** Tiene la misma edad de Justin, por cierto. Este y y pues Justin Marena, pues no me dijo nada. Espero que esté bien porque pues no sé qué le haya pasado,

**Samantha Enriquez:** ya. Mhm.

**Jesús Daniel Medina Cruz:** pero me dijo que ella se iba a estar conectando en las tardes,

**Samantha Enriquez:** M.

**Jesús Daniel Medina Cruz:** pero si te quieres conectar en las mañanas este no estaría mal, pero ahí te Yeah.

**Samantha Enriquez:** No, sí, sí,

**Jesús Daniel Medina Cruz:** dejó tu disposición.

**Samantha Enriquez:** yo creo que yo creo que ya empezando ya para el futuro ya en las mañanas sería perfecto. Eh, no, yo ya yo creo que debería estar bien este y son a las 9\. Ya. Sí, debería de estar bien.

**Jesús Daniel Medina Cruz:** Lo pruebas. Igual quedaron en lo mismo. Me di cuenta, o sea, yo les comenté que las lecciones no necesariamente va a ser una lección literal por clase, puede ser que avancemos más o a lo mejor no la terminemos,

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** pero en esta ocasión como apenas estoy experimentando,

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** no estoy muy seguro este cómo nos va a ir.

**Samantha Enriquez:** Ya. Ajá.

**Jesús Daniel Medina Cruz:** Yo yo las preparé sin límite de tiempo las clases.

### **01:30:47**

**Samantha Enriquez:** Clar. Ok.

**Jesús Daniel Medina Cruz:** Eh, si no terminamos algo dejamos para la siguiente,

**Samantha Enriquez:** Sí.

**Jesús Daniel Medina Cruz:** pero si sí lo terminamos pues estaría bien.

**Samantha Enriquez:** Ajá.

**Jesús Daniel Medina Cruz:** La idea es hacer el laboratorio durante la clase y ver los errores que te pasen como te pasó ahorita.

**Samantha Enriquez:** Sí. Ajá. Ya.

**Jesús Daniel Medina Cruz:** Entonces salió bien.

**Samantha Enriquez:** Ajá. No, o sea,

**Jesús Daniel Medina Cruz:** Vimos detalles.

**Samantha Enriquez:** si hubiera funcionado, yo creo que sí hubiéramos podido avanzar a la segunda, pero antes de antes de avanzar, mejor deja ver.

**Jesús Daniel Medina Cruz:** Sí, esa es la intención que que puedas este hacer el laboratorio en tu comutadora.

**Samantha Enriquez:** Sí, ya.

**Jesús Daniel Medina Cruz:** Va,

**Samantha Enriquez:** Mm. Entonces quedamos para el próximo sábado en la mañana.

**Jesús Daniel Medina Cruz:** pues si si me desocupo temprano, te aviso. Si estás desocupada nos echamos un café o podemos ir a un parque nada más a platicar.

**Samantha Enriquez:** Va, ya sí me suena bien. ¿Me mandas mensaje? Este, pero me manda también el link para el la clase a las 9, porfa,

**Jesús Daniel Medina Cruz:** Sí,

**Samantha Enriquez:** porque creo que solo a okay,

**Jesús Daniel Medina Cruz:** te mandé los dos en un mensaje.

**Samantha Enriquez:** deja fijarme entonces. Tal vez no lo vi,

**Jesús Daniel Medina Cruz:** No te preocupes,

**Samantha Enriquez:** pero deberías estar en el Discord de todos modos,

**Jesús Daniel Medina Cruz:** ahí lo revisas.

**Samantha Enriquez:** ¿no?

**Jesús Daniel Medina Cruz:** Creo que no lo mandé por debería. Lo voy a poner ahí también.

**Samantha Enriquez:** Okay,

**Jesús Daniel Medina Cruz:** Voy a este ponerlo ahí también. Qué bueno que me lo dices.

**Samantha Enriquez:** okay, ahí lo busco entonces.

**Jesús Daniel Medina Cruz:** A ver. Dale,

**Samantha Enriquez:** Perfecto.

**Jesús Daniel Medina Cruz:** pues ciao.

**Samantha Enriquez:** Gracias, Daniel. Nos vemos. Bye.

### **La transcripción finalizó después de 01:32:13**

*Esta transcripción editable se generó por computadora y puede contener errores. Los usuarios también pueden cambiar el texto después de que se cree.*