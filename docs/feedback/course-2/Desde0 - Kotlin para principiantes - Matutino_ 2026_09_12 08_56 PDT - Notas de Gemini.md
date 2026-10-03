# **📝 Las notas**

sept 12, 2026

## **Desde0 \- Kotlin para principiantes \- Matutino**

Archivos adjuntos [Desde0 - Kotlin para principiantes - Matutino](https://calendar.google.com/calendar/event?eid=NWJucG5wcWYwbjBrcml1MTE0bGxpcnZzNzVfMjAyNjA5MTJUMTYwMDAwWiBqZXN1cy5kYW5pZWwubWVkaW5hLmNydXpAbQ)

Registros de la reunión [Transcripción](https://docs.google.com/document/d/1PNHFHeU6XdjFGdpX-vpBm7lIjQbdIsG4AGtLWXBj-vQ/edit?usp=drive_web&tab=t.asidfbxuyq8w) 

### **Resumen**

Presentación del curso de Kotlin y análisis de bytecode y configuración.

**Inicio del curso de Kotlin**  
Presentación de la estructura de 16 lecciones y metodología práctica con laboratorios. Definición de entornos de desarrollo y configuraciones iniciales de Gradle.

**Analisis de bytecode en Kotlin**  
Examen de archivos bytecode y la generación de clases con sufijo KT. Comparación técnica entre funciones estáticas de Java y extensiones de Kotlin.

**Anotaciones y metadatos**  
Investigación sobre la diferencia entre anotaciones y decoradores. Conclusión de la sesión con invitaciones a enviar retroalimentación para futuras prácticas.

### **Próximos pasos**

- [ ] \[Justin\] Compartir información: Publicar el nombre de la máquina virtual de Android en el chat para que el compañero pueda consultarlo.

- [ ] \[El grupo\] Clonar proyecto: Descargar el repositorio del laboratorio de forma local en sus computadoras para avanzar con las lecciones.

- [ ] \[El grupo\] Realizar curso Git: Organizar y llevar a cabo un curso de Git para todo el equipo.

- [ ] \[Jesús Daniel Medina Cruz\] Investigar descompilación Gradle: Investigar la razón por la cual los archivos de configuración de Gradle no se pueden descompilar.

- [ ] \[Jesús Daniel Medina Cruz\] Comparar anotaciones y decoradores: Investigar y explicar detalladamente la diferencia conceptual entre las anotaciones y los decoradores.

- [ ] \[Martin Amaro\] Proporcionar retroalimentación: Completar el formulario de feedback proporcionado para ayudar a mejorar futuras sesiones del curso.

- [ ] \[El grupo\] Profundizar en laboratorio: Explorar los ejercicios del laboratorio para profundizar en la comprensión de los conceptos técnicos discutidos.

- [ ] \[El grupo\] Consultar dudas: Enviar a través de Discord o WhatsApp cualquier duda que surja durante la práctica independiente.

### **Detalles**

* **Presentación y Configuración Inicial del Curso**: Jesús Daniel Medina Cruz dirige la sesión para iniciar un curso de Kotlin, acompañado por Justin Martinez y Martín Amaro, ambos de 24 años de edad ([00:04:25](#00:04:25)). Durante la introducción, Jesús Daniel explica que el propósito del curso no es hacer expertos superficiales en el lenguaje, sino profundizar en los conceptos teóricos y técnicos fundamentales de Kotlin más allá de su uso en Android, abarcando desde entornos agnósticos hasta concurrencia y empaquetado ([00:16:19](#00:16:19)). Martín, quien trabaja en Banorte y tiene experiencia en tecnologías JavaScript, TypeScript y Rust, menciona que busca aprender algo nuevo fuera de su zona de confort, mientras que Justin labora en el mismo lugar que Jesús Daniel ([00:12:23](#00:12:23)).

* **Estructura y Metodología de las Lecciones**: Jesús Daniel detalla el temario del curso, el cual incluye 16 lecciones que abarcan desde el entorno agnóstico y nulidad, funciones avanzadas, colecciones y programación orientada a objetos, hasta corrutinas y la creación de un proyecto de Inteligencia Artificial en chat con Kotlin ([00:17:53](#00:17:53)). En cuanto a la dinámica, Justin y Jesús Daniel establecen que las clases durarán dos horas por sesión, avanzando de manera conjunta al ritmo de los estudiantes para resolver todas las dudas posibles, apoyándose en laboratorios prácticos en cada lección en lugar de cubrir una lección fija por clase ([00:22:27](#00:22:27)).

* **Entornos de Desarrollo y Ejecución de Proyectos**: Martín y Jesús Daniel discuten sobre los entornos de desarrollo integrados (IDEs) compatibles para trabajar con Kotlin, mencionando a IntelliJ IDEA, Android Studio y Visual Studio (o herramientas basadas en VS Code como antigravity). Martín expresa su preferencia por IntelliJ IDEA debido a las dificultades que encuentra con la gestión de paquetes y la configuración de Gradle en editores de código ligeros como VS Code ([00:44:42](#00:44:42)) ([00:50:25](#00:50:25)). Jesús Daniel señala que aunque los entornos configuran Gradle automáticamente, un desarrollador puede usar Kotlin sin depender estrictamente de este administrador, y procede a mostrar la ejecución de tareas mediante Gradle y el uso de etiquetas (tags) de Git en el repositorio del laboratorio del curso ([00:56:48](#00:56:48)).

* **Problemas con el manejo de ramas en Git**: Martín Amaro explicó los inconvenientes experimentados en un trabajo anterior al utilizar un repositorio unificado para múltiples clientes y el uso incorrecto de operaciones pull por parte del equipo, lo que requirió la implementación obligatoria de cherry-picks. Jesús Daniel Medina Cruz propuso organizar un curso de Git para todo el equipo en el futuro ([01:03:02](#01:03:02)) ([01:05:40](#01:05:40)).

* **Uso de comandos de Git e interfaces gráficas**: Jesús Daniel Medina Cruz y Martín Amaro conversaron sobre las diferencias operativas entre \`git checkout\` y \`git switch\`, además de debatir el uso de comandos en terminal frente al empleo de entornos visuales como Git Desktop ([01:05:40](#01:05:40)).

* **Configuración de proyectos en Gradle**: Jesús Daniel Medina Cruz detalló los archivos esenciales para un proyecto de Kotlin con Gradle, señalando que \`settings.gradle\` define el nombre del proyecto y \`build.gradle\` gestiona los plugins y dependencias iniciales ([01:08:18](#01:08:18)) ([01:11:49](#01:11:49)).

* **Catálogos de versiones y archivos de compilación**: Jesús Daniel Medina Cruz indicó que el uso de catálogos de versiones en formato TOML permite evitar el uso de cadenas de texto directas mediante alias que apuntan a las dependencias configuradas en Kotlin DSL ([01:13:07](#01:13:07)).

* **Diferencias entre código fuente y archivos de bytecode**: Jesús Daniel Medina Cruz y Martín Amaro examinaron la distinción entre archivos de código fuente y archivos de bytecode con extensión \`.class\`, destacando las herramientas de descompilación integradas en IntelliJ IDEA ([01:14:32](#01:14:32)).

* **Configuración de compilación y versión de Java**: Jesús Daniel Medina Cruz explicó la definición de repositorios en Maven Central, la configuración de pruebas unitarias y el establecimiento de la versión 17 de la máquina virtual de Java en el compilador de Kotlin ([01:17:27](#01:17:27)).

* **Generación de la clase principal en Kotlin**: Jesús Daniel Medina Cruz y Martín Amaro analizaron por qué el compilador genera una clase con el sufijo \`KT\` para las funciones de nivel superior, debido a que el código bytecode de Java requiere que toda función esté contenida dentro de una clase ([01:19:37](#01:19:37)) ([01:22:13](#01:22:13)).

* **Análisis del bytecode de la función principal**: Jesús Daniel Medina Cruz descompiló el bytecode para comparar funciones principales con y sin argumentos, señalando que el compilador incorpora validaciones para garantizar la compatibilidad con la seguridad de nulos de Java ([01:27:06](#01:27:06)) ([01:31:17](#01:31:17)).

* **Importancia de comprender conceptos de bajo nivel**: Jesús Daniel Medina Cruz reflexionó sobre cómo los lenguajes modernos abstraen la gestión de memoria y punteros, enfatizando que mantener estos conocimientos fundamentales distingue a los desarrolladores experimentados ([01:32:38](#01:32:38)).

* **Perspectivas sobre la experiencia y el rol profesional**: Martín Amaro y Jesús Daniel Medina Cruz reflexionaron sobre las definiciones de senioridad en la industria, coincidiendo en que el valor principal radica en la capacidad de resolver problemas y mantener una actitud de aprendizaje constante ([01:33:50](#01:33:50)).

* **Implementación de la función de impresión en Kotlin**: Jesús Daniel Medina Cruz explicó que la función \`println\` de la librería estándar de Kotlin es agnóstica a la plataforma, adaptándose internamente según el entorno de ejecución, como la máquina virtual de Java ([01:35:02](#01:35:02)).

* **Comparación entre funciones de conversión de cadenas**: Jesús Daniel Medina Cruz y Martín Amaro analizaron las diferencias técnicas entre \`String.valueOf\` como función estática de Java y \`toString\` como función de extensión en Kotlin ([01:38:06](#01:38:06)).

* **Personalización del nombre de clases generadas**: Jesús Daniel Medina Cruz demostró cómo modificar el nombre de la clase generada por el compilador en Kotlin utilizando la anotación \`@file:JvmName\`, lo cual permite personalizar la estructura del código generado ([01:42:23](#01:42:23)) ([01:46:04](#01:46:04)).

* **Diferencias conceptuales entre anotaciones y decoradores**: Martín Amaro y Jesús Daniel Medina Cruz investigaron las diferencias entre ambos conceptos, concluyendo que una anotación aporta únicamente metadatos sin alterar el comportamiento, mientras que un decorador modifica activamente el comportamiento en lenguajes como TypeScript ([01:47:09](#01:47:09)) ([01:51:21](#01:51:21)).

* **Conclusión de la sesión del curso de Kotlin**: Jesús Daniel Medina Cruz finalizó la clase invitando a los participantes a enviar comentarios mediante un enlace de retroalimentación, recomendando profundizar en las prácticas de laboratorio y convocando a la siguiente sesión para el próximo sábado por la mañana ([01:57:37](#01:57:37)).

*Revisa las notas de Gemini para asegurarte de que sean precisas. [Obtén sugerencias y descubre cómo Gemini toma notas](https://support.google.com/meet/answer/14754931)*

*Cómo es la calidad de **estas notas específicas?** [Responde una breve encuesta](https://google.qualtrics.com/jfe/form/SV_5bXzKQfylMIhSXc?confid=J4xteNF3YVPkA9ZE7GcqDxIPOBEBMgUIigIgABgBCA&detailLevel=standard&hasImages=False&entryPoint=footerMain&isGoogler=False) para darnos tu opinión; por ejemplo, cuán útiles te resultaron las notas.*

# **📖 Transcripción**

sept 12, 2026

## **Desde0 \- Kotlin para principiantes \- Matutino \- Transcripción**

### **00:04:25** {#00:04:25}

**Justin Martinez:** No,

**Martin Amaro:** ¿Qué tal, Dani?

**Jesús Daniel Medina Cruz:** ¿Qué onda? ¿Qué tal,

**Martin Amaro:** Escucha como con eco.

**Jesús Daniel Medina Cruz:** Martín? Sí, porque estoy aquí con Justin.

**Martin Amaro:** Ah, okay, okay. Está está. ¿Qué tal? Ahí está. Apago esta barra de luz. No manches, espérame. Fondo y efecto.

**Jesús Daniel Medina Cruz:** ¿Cuál barra de luz?

**Martin Amaro:** Este se puso como que una barra aquí en lo lateral.

**Jesús Daniel Medina Cruz:** Tienes una Mac.

**Martin Amaro:** Sí, sí, sí,

**Jesús Daniel Medina Cruz:** Ah,

**Martin Amaro:** sí.

**Jesús Daniel Medina Cruz:** es el edge light, ¿no? Que se prende así. A ver,

**Martin Amaro:** Ándale.

**Jesús Daniel Medina Cruz:** todos esos que le den la barra superior donde aparece el icono de la cámara. Ahí lo puedes activar. Si lo activaste.

**Martin Amaro:** Ah, ya, ya, ya lo miré. No manches, ahí está. No manches, que esa no me la sabía.

**Jesús Daniel Medina Cruz:** Sí, está cool. Y luego en algunas Mac ya tiene el eh, ¿cómo se llama?

### **00:11:09**

**Jesús Daniel Medina Cruz:** Center stage, la cámara que te sigue esta que máquina que tengo no tiene

**Martin Amaro:** En serio,

**Jesús Daniel Medina Cruz:** eso.

**Martin Amaro:** la mía es una M, una M5, si no me Sí, es una M5.

**Jesús Daniel Medina Cruz:** Ah,

**Martin Amaro:** A ver.

**Jesús Daniel Medina Cruz:** yo digo que si lo debe de tener el tuyo, el center stage ahí. Luego la juegas un poco con él. Bueno,

**Martin Amaro:** Y a ver.

**Jesús Daniel Medina Cruz:** pues listos para el curso.

**Martin Amaro:** Sí, lo tiene.

**Jesús Daniel Medina Cruz:** Ándale, eso está bien

**Martin Amaro:** No manches.

**Jesús Daniel Medina Cruz:** cool. ¿Listo para el curso, entonces?

**Martin Amaro:** Pues sí.

**Jesús Daniel Medina Cruz:** Pues eh les los present cámara, no sé por qué, pero es Justin, este compañero de trabajo. Este Martín, no hemos tenido el gusto de trabajar juntos. Este, ya me dijo Martín que que tiene 24 Tienen la misma edad los dos.

**Martin Amaro:** En serio.

**Jesús Daniel Medina Cruz:** Sí, sí, sí. Entonces, eh, Justin, este, preséntate para contexto de de Martín y luego sigues tú, Martín. No, pues, hola, Martín. Yo tengo 24 años igual que tú.

### **00:12:23** {#00:12:23}

**Jesús Daniel Medina Cruz:** Pues aquí trabajo con Jesús. Trabajamos en el mismo lugar, en la misma cárcel, digo, en el mismo lugar.

**Martin Amaro:** literalmente no.

**Jesús Daniel Medina Cruz:** Y pues no sé, quiero quiero retomar igual como los de Kotlin porque ya la troca un poquito la cabeza, entonces hay que hay que darle finía un rato.

**Martin Amaro:** Sí, sí, sí, sí. Este, no, pues igual yo, mucho gusto. Soy Martín, este, llevo ya conociendo a Daniel desde la prepa como unos 7 8 años más o menos.

**Jesús Daniel Medina Cruz:** Okay.

**Martin Amaro:** Este, igual tengo 24 años, trabajo ahorita en Banorte. Y pues igual este bueno, quiero aprender algo nuevo fuera de lo que hago, ¿sabes? Me dedico mucho a lo que son tecnologías JavaScript o Tys y pues sí como que Cotlin este es algo muy fuera de mi de mi, ¿cómo se dice? de mi Ajá.

**Jesús Daniel Medina Cruz:** Stack.

**Martin Amaro:** de mi stack, este, o de mi zona de confort, es algo muy fuera de eso. Entonces, sí es como que quiero aprender algo nuevo. Hm.

**Jesús Daniel Medina Cruz:** Pues listos. Eh, ahora técnicamente los los dos son mis alumnos. Han sido alumnos y exalumnos.

### **00:13:43**

**Jesús Daniel Medina Cruz:** Se siente claro que tengo tantos tantos años enseñando.

**Martin Amaro:** E y

**Jesús Daniel Medina Cruz:** Eh,

**Martin Amaro:** sí.

**Jesús Daniel Medina Cruz:** les voy a compartir mi pantalla, eh, pero igual si quieren entrar, les recuerdo por aquí en el chat les estoy poniendo el link. Estelin para principiantes. Eh, si van a a ver dónde está mi pantalla. Aquí ahí está. ¿Están viendo mi pantalla? Eh, está en un momento que ando tratando de abrir aquí algo y que no me hace

**Martin Amaro:** H.

**Jesús Daniel Medina Cruz:** caso la comp. Está. Si se ve bien, ¿verdad? la pantalla. Sí, eh. Va. Bueno, esta es como la landing, que aquí es donde está la parte del registro, pero si se van por acá van a ver que están las lecciones L1 2\. Vamos a ir directo a la L1. Eh, no sé si se dieron el tiempo de revisar todas las lecciones o le damos un recorrido a al curso completo. Le damos un recorrido a las lecciones antes de empezar. ¿Qué les parece?

**Martin Amaro:** Sí, en torno agnóstico.

**Jesús Daniel Medina Cruz:** Bueno, miren, el curso, ayer platicaba con con Justin, el curso tiene la intención de que sea este para que se conviertan en principiantes en en Kotlin.

### **00:16:19** {#00:16:19}

**Jesús Daniel Medina Cruz:** Algo que se va a sentir un poquito extraño es que vamos a profundizar en conceptos, pero todos esos conceptos en los que vamos a profundizar no los van a volver expertos en Kotlin. ¿Qué significa? Y y quiero hacer mucho énfasis en esto. ¿Qué significa ser experto en Kotlin? Ser experto en Cotlin desde mi perspectiva, con todos los años que tengo trabajando con Cotlin, es que si necesito usar Cotlin en en todos los como contextos, eh no tendría problemas para utilizar el lenguaje y adaptarlo a las necesidades de cada contexto. A veces el contexto y como es un lenguaje multiplataforma, el contexto significa que hay que entender conceptos básicos de cada plataforma para que el lenguaje funcione, porque no todos los features que tiene el lenguaje funcionan igual en cualquier plataforma. Hay cosas que se han ido adaptando a lo paso del tiempo. Por ejemplo, anteriormente en antes de Kotlin 2.0 teníamos el problema de eh cuando usábamos corrutinas teníamos que hacer freeze de los objetos para poderlos utilizar en diferentes hilos. Ahora eso ya no es un problema con Kotlin 2.0 en adelante y cosas así digamos ya del de la del uso en proyectos reales te van convirtiendo en experto eh en el lenguaje. Pero lo que he visto de muchas personas que podríamos considerar expertos en el lenguaje es que nunca profundizan.

### **00:17:53** {#00:17:53}

**Jesús Daniel Medina Cruz:** Entonces se vuelve para ellos un lenguaje que son buenos usando en esos contextos, pero lo sacas de del contexto y no entienden cómo funciona por detrás el lenguaje. Y yo creo que esa es la parte más valiosa que vamos a obtener de este curso. Para empezar, eh este curso no está enfocado en Android, ¿vale? Es un curso de Kotlin. So, a mí me gusta bastante. Todos los cursos que vamos a a ver, eh, son de Cotlin en Cotlin para principiantes. Entonces, asume como la persona que va a empezar sabe programar, pero no sabe cotar. Entonces se van a topar con conceptos que ustedes ya han visto antes, pero eh la idea es que con esos mismos conceptos tratemos de ver lo más profundo posible para que ya no se queden como conceptos eh que saben usar, sino que saben explicar cómo funcionan, ¿va? Eh, vamos a preparar entonces en la primera lección el entorno. Vamos a hacer nuestro hola mundo y vamos a ver de qué manera lo podemos ejecutar. Eh, después en la lección dos vamos a verles, tipos y todo sobre safety en Cotlin. Después vamos a avanzar con jerarquías y control de flujo exhaustivo. Después vamos a ver la anatomía de funciones.

### **00:19:17**

**Jesús Daniel Medina Cruz:** Es todo un tema las funciones en Cotlin para después avanzar con extension functions y funciones infix. Esos son dos conceptos que eh veo que muchos este desarrolladores de Kotlin incluso no terminan de entender, las usan pero no las terminan de entender. Luego vamos a ver funciones de orden superior y lambdas, estos dos conceptos también que eh la programación funcional propone. una lección para hablar sobre colecciones y secuencias y el los conceptos de la versus Eager. También la lección ocho vamos a hablar sobre funciones de de ámbito. Lo puse aquí en español para las personas que que este luego no van a saber mucho de inglés que tomen el curso, pero eh la idea de la lección es después que nos acostumbremos a los conceptos en inglés, porque cuando busquemos en internet va a ser raro poder encontrar esos conceptos, ¿no?, en español. Pero pues es el scope functions. Aquí creo que todos vamos a entender este después en esa lección qué es un scope function, pero como eh spoiler, ¿no? Las funciones apply, LED y ese tipo de cosas. Eh, entonces ya que habíamos visto todo esto, si se fijan, es casi programación funcional. Después pasamos un poquito a eh programación objetos, que es clases, herencias y cómo funciona la visibilidad, privat, public, etcétera.

### **00:20:54**

**Jesús Daniel Medina Cruz:** Después, companion objects y object declarations. Eh,

**Martin Amaro:** Vamos.

**Jesús Daniel Medina Cruz:** luego vamos a genéricos avanzados y la varianza. Es que son también cuando lo vemos es heredado de de Java. Todos estos conceptos de cómo funcionan los genéricos en Cotlin y en la lección 12, delegación y propiedades eh delegadas o este lo que le llaman los delegate functions, delegate properties hasta lacción 12\. son conceptos de programación funcional y programación orientada a objetos. Todos esos dos paradigmas de de Kotlin. Y a partir de la lección 13 vamos a ver corrutinas. Corrutinas e el concepto de corrutinas versus asincronía, que no sé si sabían, pero Kotlin no inventó las corrutinas. Cotlin adaptó las corrutinas en una librería para Cotlin, pero no inventó el concepto de corrutinas. Luego eh suspensión y scopes de concurrencia que llemos suspend functions, scope functions, todo ese tipo de cosas, no solamente cómo usarlas, sino a qué se refiere, o sea, qué es lo que se suspende, ¿no? Que a veces como, bueno, tienes que usar una suspend function, pero ¿qué es una suspend function?

### **00:22:27** {#00:22:27}

**Jesús Daniel Medina Cruz:** ¿Cómo que ese suspende? ¿A qué nos referimos con eso? Y vamos a terminar con con textos y dispatchers para al final en la lección 16 dedicar un tiempo para eh con el proyecto que vamos a estar construyendo en cada una de las lecciones, empaquetarlo y poder distribuir nuestra aplicación de AI Chat de Kotlin. ¿Qué opinan hasta ahí? Comentarios.

**Martin Amaro:** Hm. ¿Cuántas L1 vamos a ver por por clase?

**Jesús Daniel Medina Cruz:** ¿Cuánta? ¿Qué?

**Martin Amaro:** ¿Cuántas este lecciones? Vamos a ver por clase.

**Jesús Daniel Medina Cruz:** Buena pregunta. Lo ideal, y esto es como lo que eh pensaba con con Justin, eh es que avancemos todos juntos. Digamos que normalmente los cursos que yo hago son avanzar al ritmo de del estudiante que que le cueste un poquito más. ¿Qué significa esto? Las lecciones van a durar 2 horas y intentemos que en estas 2 horas resolvamos todas las dudas posibles. Entonces, lo ideal es que les queden claros todos los conceptos. A veces cuando alguien tenga una duda, no necesariamente otro tenga la misma duda, pero el reforzarlo pues ayuda.

### **00:24:00**

**Jesús Daniel Medina Cruz:** Entonces, respondiendo tu pregunta, Si en una sola clase, digamos, la clase de hoy, pues ya ya tenemos varios minutos, pero digamos que la clase de hoy llegamos hasta la lección tres, por decirlo así, porque todo está muy fácil y avanzamos muy rápido, no pasa nada, pero puede ser que en alguna lección nos quedemos dos o tres clases dependiendo de si el concepto no queda muy claro. Ojo, aquí se ven los conceptos, pero también vamos a este tener un laboratorio. el laboratorio no lo hemos visto porque lo vamos a ver en cada lección. Entonces, eh no es solamente los temas, sino trabajar en el laboratorio, ya sea que por su parte ustedes vayan trabajando en su tiempo extra en el laboratorio, pero también vamos a trabajarlo en cada lección. Entonces, juntos vamos a ir construyendo la aplicación. Por eso podría algunas lecciones tardar un poquito más que otras.

**Martin Amaro:** Ah,

**Jesús Daniel Medina Cruz:** No sería una lección por clase, sino que sería cada clase avanzar lo más que podamos. Va,

**Martin Amaro:** va.

**Jesús Daniel Medina Cruz:** Josin. ¿Alguna duda? Va, empezamos. A ver, entonces eh si se van aquí a la lección uno, vamos a ver en torno agnóstico y hola mundo.

### **00:25:26**

**Jesús Daniel Medina Cruz:** Primero que nada, eh todos estamos familiarizados con el Exe, ¿no? Punto Excel de este de Windows, eh, en una Mac, creo que se llama punto,

**Martin Amaro:** MG TMG.

**Jesús Daniel Medina Cruz:** ¿cómo? de MG. Gracias. En el caso de una aplicación iOS es el IPA IPA y en Android es un APK, ¿no? Bueno,

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** ya lo cambiaron a a AB.

**Martin Amaro:** Ah, pero eso es para distribuir no más en la Play Store, pero el APK sigue siendo como para opciones.

**Jesús Daniel Medina Cruz:** Sí,

**Martin Amaro:** Ajá.

**Jesús Daniel Medina Cruz:** tienes la boca repleta de razón. Eh, no no no podemos utilizar este obviamente los ejecutadores de Windows en Mac y en otros sistemas operativos, ¿no?

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Pero e estos son, digamos eh ya software empaquetado, ¿no? Cada sistema operativo tiene su forma de empaquetar el software. El problema es que anteriormente teníamos que para cada sistema operativo desarrollar su propio empaquetador, con su propio empaquetador desarrollar o generar el ejecutador, pero eh se propusieron entonces ah diferentes alternativas a esto. Inicialmente se usaba mucho C y C+ para que se pudieran comunicar con la máquina.

### **00:27:02**

**Jesús Daniel Medina Cruz:** tiene que crear sistemas porque pues obviamente lo saben, pero antes de C++ se hacía el software directo a a lenguaje de máquina, se programaba. Eh, una de las alternativas era Sembly, pero había otras y entonces se inventó seis C+s más para este poder programar en estas plataformas y ya nada más escribías el código y el empaquetador te hacía el ejecutable dependiendo del sistema operativo. Pero eh pues digamos que programar con este estos lenguajes eh te daba muchas ventajas sobre los lenguajes más cercanos a la máquina, pero si también introducía este pues complejidades que cada sistema tenía que manejar. Entonces, cuando lo lo pensamos de esta manera, técnicamente eh tenías que programar diferente dependiendo del procesador y del sistema operativo, aunque pudieras usar el mismo lenguaje C o C++ para Windows el procesador funcionaba diferente, para Mac, etcétera. Actualmente seguimos teniendo esos problemas, pero normalmente los programadores como que terminamos

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** programando en lenguajes cada vez de más alto nivel. Siento como que el prom engineering terminaría siendo un nivel mucho más alto, pero no creo que lo podamos considerar programar. Eh, por ahora no lo no lo considerarías programar porque eh no sé no sé ustedes cómo lo vean, pero la programación termina siendo como dar instrucciones que eh siempre te dan el mismo resultado y como que el todavía usar inteligencia artificial sigue haciendo que te dé un resultado, luego te da otro y no no lo consideraría de esa manera, pero Con los lenguajes de alto nivel,

### **00:29:18**

**Jesús Daniel Medina Cruz:** nosotros hemos podido crear ecosistemas en donde pues podemos crear una aplicación y ejecutarla prácticamente en cualquier sistema operativo. Por ejemplo, en este caso Java que propone la JBM, eh, inicialmente pues era una solución elegante, pero tenías que instalar la máquina virtual y no sé si lo habían considerado, pero cuando nace Cotlin lo que propone es que sea un lenguaje para directamente compilar a Pitecode de la máquina virtual de Java,

**Martin Amaro:** Yeah.

**Jesús Daniel Medina Cruz:** Kotlin, no nace como un reemplazo para Java nace como eh si consideráramos TypeScript para JavaScript.

**Martin Amaro:** Okay. Okay. Ok.

**Jesús Daniel Medina Cruz:** Teníamos que de todos modos utilizar el compilador, el el primer compilador de Cotlin, lo único que hacía era convertir el código de Cotlin al lenguaje Java Bitecode que el JBM pudiera interpretar. Eso era todo. Pero con estas tecnologías se fueron proponiendo soluciones que ahora conocemos como Cotlin Multiplatform, que se desarrollaron diferentes compiladores dependiendo de la plataforma. Ayer estaba revisando un poquito todo este tema que tenemos ahorita, el compilador, la versión dos del compilador de Cotlin, eh, que resuelve varias cosas interesantes, pero como sigue heredando conceptos de Java, por ejemplo, a diferencia de Rust o C y C++, donde tienes que manejar el uso de memoria en Cotlin, si quieres crear este tipo de sistemas, utilizaríamos Kotlin native, eh, que es un compilador para que Cotlin se compile a código de máquina, pero como tiene su garbage collector, eh, no sé si están familiarizados con el concepto de garbage collector, no vamos a profundizar, pero qua quería forma mencionarlo.

### **00:31:35**

**Jesús Daniel Medina Cruz:** Entonces, el garbage collector en Cotrin es automático y hace que en ciertos sistemas que tienen poca este capacidad, pues se pause de vez en cuando para hacer la recolección de los datos y hace que tarde más. Pero entonces Kotlin ya no ya no es solamente un lenguaje que sea para Java, pero sigue heredando este cosas de Java. No sería completamente una alternativa para cualquier solución por ahora, porque ROST por en este caso sigue siendo una alternativa como seis para 6+ más

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** en donde el manejo de memoria es avanzado y manual. Bueno, tú, Martín, creo que tienes experiencia con ROST. Ya te habrás dado cuenta de lo tedioso que puede ser eso. M.

**Martin Amaro:** tiene conceptos propios bien bien conceptuales, por ejemplo, como el borwin, que es el préstamo, este, el ciclo de vida de una variable, porque una variable este vive en la función que la que la que la declaraste, pero no es como que agarras y por ejemplo tienes una función este que es suma y en el main Este, la llama si le pasas las variables que están en el main a la función suma, este, truena porque pues no viven, este, no pasan vivas a la función de suma.

**Jesús Daniel Medina Cruz:** Hm.

**Martin Amaro:** Tienes que utilizar ahí este algo que se llama el borrowing, que es el préstamo.

### **00:33:02**

**Martin Amaro:** que es con un este signo. Ay, aquí tengo anotado el signo, no me acuerdo qué signo es. Es el signo de and. es el signo de AN y con eso ya le indicas que es un préstamo, pero también si quieres que la variable cambie tienes que ponerle mut land y mut para indicarle que es una variable que puede mutar para que le cambies el valor. Entonces está está muy muy tedioso este al final usarlo sí es tedioso, pero sí en cuestión de memoria no tiene como es el garbage collector no no lo tiene. Entonces tú tú te tú te este acomodas, ¿cómo quieres que vaya el ciclo de vida aplicación? No lo hace automático.

**Jesús Daniel Medina Cruz:** Y en en ese sentido creo que la parte que eh me gusta de Kotlin, la digamos más valiosa para mí, aparte de todo lo que ya hemos platicado, es lo fácil que es para los desarrolladores. Es como muy amigable todo el ecosistema de Kotlin para los desarrolladores. Eh, no sé si en algún momento Cotlin pueda ser este utilizado en todos los conceptos, porque Ross sigue teniendo muchas ventajas, como ya lo platicamos, pero es increíblemente difícil de usar o de aprender, más bien. Eh, no sé si tanto como seis más, pero sí es complejo, ¿no?

### **00:34:28**

**Jesús Daniel Medina Cruz:** este acostumbrarse a eso. Pero bueno, habrá casos de uso en donde tengamos que usar otros lenguajes. Yo no estoy casado con Kotlin, pero este en mi experiencia Kotlin ha sido el lenguaje que yo he considerado como el más amigable para los desarrolladores. Ahora bien, e quiero que avancemos. Ah, la idea entonces es que sigamos explorando este este concepto. Ah, todos estamos familiarizados con eh cómo este funciona este eh la la máquina virtual del Java, ¿no?

**Martin Amaro:** Ho.

**Jesús Daniel Medina Cruz:** Sí, pues tiene el código, ¿no? Ya sea en Kotlin en o en Java. Eh, y el compilador lo lo traduce a B code y la JBM lo interpreta y lo compila al lenguaje maquill. ¿Algo que agregar, Martín? Va. Eh, claro. Entonces, eh, como lo decía anteriormente, se usaba muchos seis eh C+ más y tenías que manualmente adaptarlo a cada hacías como un un código para cada sistema operativo con la máquina virtual JBM. Ya solamente con el puro byte code, se lo ejecuta y de forma nativa la máquina virtual interpreta cada uno de los conceptos del del mismo sistema. Eh, cuando trabajemos con Kotlin vamos a darnos cuenta entonces que algunas cosas que hagamos en escriblin eh si lo si leemos el Btecode vamos a poder entender cómo se va a interpretar nuestra lógica en el BTEC Y muchas veces cuando escribimos Kotlin asumimos como nos acostumbramos,

### **00:36:48**

**Jesús Daniel Medina Cruz:** el lenguaje no te enseña todas las cosas que hace. Asumimos que están pasando cosas por detrás, pero no sabemos qué son esas cosas que están pasando por detrás. Entonces, lo ideal para mí es que al finalizar este curso ustedes cuando lean Cotlin puedan ustedes automáticamente traducirlo a BG. Es exageradamente complicado, eh, digamos imaginarse completamente cómo traduce Clin todo a Bod, no lo vamos a ver a ese nivel de profundidad, pero que sí sea una práctica común eh leer Cotrin y entender el BC que va a generarse después. Pero aquí es importante hacer un énfasis o más bien un paréntesis. Eh, depende del compilador de Clin que estemos utilizando, se va a generar un este ah, no sé si se puede decir un by code diferente. Lo que trato de decir es que si estamos ejecutando Kotlin en el JBM se va a generar un byte code de Java. Pero si utilizamos el compilador de Native se va a generar un byte code para MacOS o Linux o para iOS. Por ejemplo, cuando hacemos una aplicación de Cotlin Multiplatform, para iOS se utiliza Cotlin Native. Eh, ¿qué más? Está el compilador de Cotlin para JavaScript. No sé si sabían pueden hacer Kotlin para JavaScript.

### **00:38:19**

**Martin Amaro:** No,

**Jesús Daniel Medina Cruz:** Y está también este el compilador de Kotlin para Web Assembly familiarizado con web assembly. ¿Sabes que es Web Assembly Martín?

**Martin Amaro:** haí profundidad, No, pero sí sí lo he escuchado mucho.

**Jesús Daniel Medina Cruz:** Digamos que Web Assembly tampoco lo vamos a estudiar aquí. Eso lo vamos a dejar para el curso de Cotle Multiplatform ya vendiéndonos. Eh, Web Assembly es una tecnología que se inventó para que podamos ejecutar aplicaciones en navegadores, pero que esas aplicaciones hablen el lenguaje de la máquina. Entonces, en lugar de ejecutar JavaScript en un motor de JavaScript dentro de navegador se ejecuta eh Web Assembly. Es un eh digamos eh binario, un archivo binario que habla el lenguaje de la máquina, pero se ejecuta dentro del navegador. Entonces tú abres la aplicación en el navegador, pero puedes acceder a todo lo que la máquina ofrece. Kotlin nos permite hacer ese tipo de aplicaciones para Web Assembly, para JavaScript, para desktop, como lo digo, para Linux, Mac o Windows, etcétera. Hay un montón de opciones, pero va a ser complicado en un curso pues eh analizar cómo se traduce Kotlin a todos esos compiladores. Entonces, nos vamos a quedar con el BC. Al principio eso va a ser suficiente para casi todos los escenarios.

### **00:39:58**

**Jesús Daniel Medina Cruz:** Ahora, ¿por qué Kotlin es agnóstico? Eh, Kotlin, como lo digo, eh, no es como que sea el lenguaje que vamos a utilizar para generar los ejecutables.

**Martin Amaro:** Os.

**Jesús Daniel Medina Cruz:** Lo único que hacemos es escribimos Kotlin y el compilador este se encarga de generar este el ejecutable que dependa del eh la plataforma en la que vamos a ejecutarlo. Normalmente el BCF se genera con un archivo class, que es la forma en la que Java lo JBM lo interpreta. Y pues igual ese Bite Code depende de en qué plataforma lo ejecutes. Por ejemplo, ah, anteriormente para aplicaciones Android se utilizaba una evolución de la máquina virtual de Java que se llamaba, no se acuerdan cómo se llamaba. ¿Cuál? El JBM en Android evolucionó y le pusieron un nombre cuando inventaron Android. Se llamaba ¿Tú te acuerdas, Martín, o nunca lo escuchaste?

**Martin Amaro:** M. No recuerdo.

**Jesús Daniel Medina Cruz:** Si no me equivoco, se llamaba Dalvic. La máquina virtual de Java en Android se llamaba Dalvic. Y ahora ya no ya no utiliza máquina, no se sabía, pero Android ya no utiliza la máquina virtual de Java. Ahora inventó su propio eh, o sea, hicieron el sistema operativo de Android, evolucionó a un Android room.

### **00:41:46**

**Jesús Daniel Medina Cruz:** Ya se me olvidó. Este no es un curso de Android, solo quería dar ese dato curioso. Este, la máquina virtual de Java se llamaba Dalvic en Android y evolucionó a algo Android Android. Android room, así nada más. Sí, entonces sí me acordaba AT, ¿verdad? Gracias, Justin. Eh, si lo puedes poner en el chat estaría cool para que se lo compartas a Martín. Eh, ¿por qué digo este dato? Porque efectivamente eh muchas personas piensan que Kotlin en Android sigue siendo lo mismo que Java en cualquier plataforma, pero hoy no es así. Por eso también lo del app Bundle evoluciona en Android y pues empieza a a generarse toda una vertiente de Kotlin compilado para Android. Ya ese código se adapta y ya no te sirve necesariamente para Kotlin para JBM. Entonces, cuando veamos un en Cotlin Multiplatform se genera cuando estás trabajando para Cotlin, para el servidor, ese código es prácticamente Cotlin para Java, para JBM, el servidor es Java, pero Kotlin para Android se genera como otra variante. Entonces, ya no tenemos el mismo código de Java para Android y para todo lo que sea Java. Ahora tenemos Android, iOS, eh, estoy tratando de acordar de todos los entornos de multipl Android, iOS, eh, ¿cuál?

### **00:43:22**

**Jesús Daniel Medina Cruz:** Windows puedes hacer,

**Martin Amaro:** H

**Jesús Daniel Medina Cruz:** pero a veces es nada más desktop, pero es muy muy interesante. Si tienes desktop para todos es genérico, pero luego puedes hacer una variante específica para Macos, Linux, este, incluso puedes llegar a hacer tus propias variantes. Y, por ejemplo, digamos que quieres hacer una compilación específica para Devian, le puedes decir que Devian va a tener ciertas características. Este, ya me emocioné con Cult. Exactamente. En Cotlin Multiplatform podemos hacer cosas específicas para cada plataforma, pero Cotlin este el lenguaje es agnóstico a la plataforma.

**Martin Amaro:** Ah.

**Jesús Daniel Medina Cruz:** Cuando utilicemos Cotrin en Cotrin multiplatformemos hacer cosas específicas, esa es la palabra específicas para cada plataforma, pero el lenguaje lo vamos en este curso a tomar precisamente por su practicidad, por ser agnóstico. No tenemos que estar pensando todo el tiempo en cada plataforma para la gran mayoría de funciones de Kotlin. Se nota que soy fan de Kotlin, ¿verdad?

**Martin Amaro:** Un poco, un poco.

**Jesús Daniel Medina Cruz:** Ahora, lo ideal es que lo vayamos aprendiendo, poniéndolo en práctica, ¿va? Entonces, eh, les preparé un laboratorio. ¿Tuvieron tiempo de ver el laboratorio?

### **00:44:42** {#00:44:42}

**Martin Amaro:** Sí,

**Jesús Daniel Medina Cruz:** No.

**Martin Amaro:** sí.

**Jesús Daniel Medina Cruz:** Va. Lo que vamos a hacer entonces es que podemos hacer dos cosas. Número uno,

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** que ustedes vayan a clonando en local el laboratorio y lo otro es que yo comparto mi pantalla y les muestro este lo mismo. Yeah. Va, prefiero hacerlo. Yo mandé, prefiero hacerlo. Sí, dije eso es lo ideal, o sea, que lo tengan en su computadora y yo también voy a compartir la pantalla para mostrarles. Como les comentaba, va a ser algo que vamos a estar haciendo en todo el curso. Eh,

**Martin Amaro:** Ah, Espero que esto se abre con el Intellig, ¿verdad? Sí, cierto.

**Jesús Daniel Medina Cruz:** visto directo. Buenas preguntas. Buenas preguntas. se me están adelantando, pero qué bueno. Eh, el proyecto está diseñado para este Kotlin directamente. Entonces, afortunadamente tenemos Visual Studio, Android Studio y Intelis ID. Cualquiera de los FR nos va a servir. Okay, si tienen Visual Studio también pueden abrirlo directamente. Ahí nos vamos.

### **00:46:01**

**Martin Amaro:** Y si tengo los tres.

**Jesús Daniel Medina Cruz:** mandé,

**Martin Amaro:** Y si tengo los tres.

**Jesús Daniel Medina Cruz:** abres los tres y te fijas la diferencia en cada uno.

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Yo les diría que el ideal este sería Intelish Idea, pero tiene sus limitaciones. Eh, si abre con Android Studio va a funcionar prácticamente igual, no va a haber casi ninguna diferencia.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Y lo que yo voy a hacer en el curso es eh voy a irles tratando de mostrar las diferencias en cada entorno. Yo, en mi caso, voy a empezar a abrirlo con eh ¿cómo se llama? Eh, sí, pero una variante que es antigrav

**Martin Amaro:** Ah, okay, okay. Ya nos están enseía.

**Jesús Daniel Medina Cruz:** no no antigravity, pero nada más porque es mi ID favorito por ahora. Por ejemplo, cuando tú crees en Andre Studio, le pones new, pero te aparece la opción de activity otra vez. Ajá. Cuando abres Android Studio y le pones en crear un nuevo proyecto, claro, se te aparecen las opciones con con interfaz, el wizard de creación de proyecto de Android Studio. Ajá. Porque aquí se creó una un nuevo proyecto con sin actividad porque dice seleccion

### **00:47:31**

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** 17 eliged pregunta es pero que estás creando un proyecto de

**Martin Amaro:** de Android sigue sacando. No, es un es un es un click. Tienes que escoger la opción de cli de determinar. Es como cuando haces proyecto en sillahan que te pone que quieres hacer este un

**Jesús Daniel Medina Cruz:** Mhm.

**Martin Amaro:** proyecto este determinar un CL este o un proyecto tipo API o un proyecto tipo este paquete.

**Jesús Daniel Medina Cruz:** Sí, mi duda es cómo lo puedo crear en Android Studio sin

**Martin Amaro:** Ay, sí, no sé. A ver.

**Jesús Daniel Medina Cruz:** es que en Android el proyecto no me acuerdo cómo es el wizard. ¿Quieres compartir tu pantalla? A ver, tengo rato que no creo un nuevo proyecto. Ah.

**Martin Amaro:** Ah. Oh, sí,

**Jesús Daniel Medina Cruz:** A ver,

**Martin Amaro:** es cierto.

**Jesús Daniel Medina Cruz:** le quitaron la opción de hacer proyectos de Cotlin directamente. Puedes ver en pantalla.

**Martin Amaro:** Sí, ahí se mira.

**Jesús Daniel Medina Cruz:** Eh, quitaron la opción de usar Cotlin en Android Studio. Había que crear un archivo para que se corriera individualmente. No, no va a haber ningún problema con que abras el proyecto.

### **00:49:10**

**Jesús Daniel Medina Cruz:** O sea, si clonas el proyecto y lo abres con Android Studio, no va a haber ningún detalle. De hecho, ahí le puedes dar clom repositorio. Si es a ver si están siguiendo las instrucciones. Sí, no, pero las eh las instrucciones es para el Intelis. Es en en ese caso, sí. E por decía como el el el entorno ideal. Voy a cargar para no. Okay. Este, pero el proyecto lo podemos abrir como como comento, con con cualquier entorno. Entonces, estás compartiendo tu pantalla. Este, voy a compartir yo otra vez. Martín, ¿qué vas, qué entorno vas a utilizar?

**Martin Amaro:** Lintelli.

**Jesús Daniel Medina Cruz:** Okay. A ver, estoy compartiendo pantalla. Creo que sigues compartiendo tu pantalla, este, Justin. Ah, perdón, no te preocupes. Pensé que me podías pensé que puedes compartir tu pantalla tú. No, y me quitas, ¿eh? No, no te quita. Entonces,

**Martin Amaro:** Está haciendo calor ya. ¿Dónde estás?

**Jesús Daniel Medina Cruz:** ¿qué dirías?

### **00:50:25** {#00:50:25}

**Jesús Daniel Medina Cruz:** Yo digo que no. No, gust.

**Martin Amaro:** En centigados. ¿Como cuánto? ¿Como cuánto es? Porque allá sí en Fahrenheit, ¿no? Lo lo normal.

**Jesús Daniel Medina Cruz:** Pues lo podemos traducir sin problema. En 19 gr celo

**Martin Amaro:** Ok. Ay, qué rico. Ay,

**Jesús Daniel Medina Cruz:** encerrados esté más a gusto.

**Martin Amaro:** no manches.

**Jesús Daniel Medina Cruz:** Eh,

**Martin Amaro:** Ahí.

**Jesús Daniel Medina Cruz:** como estoy ah compartiendo mi pantalla, lo que voy a hacer, bueno, yo ya tengo el proyecto, no sé para qué lo quiero descargar otra vez, ¿eh? Primero lo voy a Abrir open folder con el este antigravity. Ah, no se asustan con mis cantidad de proyectos.

**Martin Amaro:** Sí. Okay.

**Jesús Daniel Medina Cruz:** Ahí lo abrí con el antigravity. Eh, luego lo voy a abrir con el Android Studio. Este, ¿por qué no podemos usar el último de Ah, sí, superior y luego el el airía?

**Martin Amaro:** Fíjate, Dani, que a mí no me gusta el antigravity. Bueno, este, en cuestiones de Java olin, no me gusta programarlo este con el BS Code o con el Antigravity porque un detallo mucho con el tema de los packag, no es como que simplemente creas una carpeta nueva así de que MKD, este la carpeta y listo, ¿no?

### **00:52:07**

**Martin Amaro:** Este, tienes que agregar el fregado paquete y un montón de cosas. Entonces, por eso no soy muy fan del antigravity así como para Java, ¿no?

**Jesús Daniel Medina Cruz:** Y yo también prefiero los IDs para que la pregunta que yo les tengo aquí, porque esto no es un curso de gradle, pero no será, no será que no saben usar gradle todavía porque el

**Martin Amaro:** Yo creo yo. Creo.

**Jesús Daniel Medina Cruz:** Android Studio y el Intellis ID hacen ese trabajo por nosotros. Si ustedes agregan una carpeta, pero no configuran la carpeta correctamente, no se va a considerar como un package o no se va a considerar como un módulo, pero esas son configuraciones de gradle que el entorno lo hace automáticamente. ¿Será eso?

**Martin Amaro:** Yo creo sí,

**Jesús Daniel Medina Cruz:** ¿Sí? No,

**Martin Amaro:** yo creo

**Jesús Daniel Medina Cruz:** y y es es supervalioso que lo comentes porque específicamente muchos desarrolladores piensan que Cotlin eh como ya nació en todos estos entornos es lo mismo que usar gradle y nada que ver. Una cosa es gradol, otra cosa es cotlin. Y eh digamos que no necesitas usar grador para usar cotlin. Parece que no tiene sentido, pero no necesitas. tiene sentido.

### **00:53:21**

**Martin Amaro:** No. Y por ejemplo, para las librerías, ¿cómo se hace ahí?

**Jesús Daniel Medina Cruz:** Es que las librerías son paquetes eh dependiendo de que es te voy te lo voy a traducir a JavaScript, ¿vale? Digamos que las librerías sería eh el npm gradle sería como el npm.

**Martin Amaro:** No usan tom todo todo. ML para eso.

**Jesús Daniel Medina Cruz:** Claro, pero pero fíjate lo que estoy fíjate lo que estoy diciendo. El npm es el no package manager.

**Martin Amaro:** Sí, sí, sí. es el manejor.

**Jesús Daniel Medina Cruz:** sería el digamos package manager de entornos. Ah, anteriormente se usa Maven, ¿no? Bueno, se sigue usando en algunos proyectos.

**Martin Amaro:** Yo yo fíjate que ubico más Maven que que GR

**Jesús Daniel Medina Cruz:** Claro,

**Martin Amaro:** es

**Jesús Daniel Medina Cruz:** pero ¿por qué ubicamos Maybel? Esa es la pregunta. ¿Qué cuando decimos Maven, ¿a qué nos estamos refiriendo? ¿Al manejador o o al repositorio en donde lo estamos publicando?

**Martin Amaro:** no va el manejador de las librerías.

**Jesús Daniel Medina Cruz:** Pues usamos Maven,

**Martin Amaro:** No, ahorita ya no, ya para eso salió Gle.

### **00:54:37**

**Jesús Daniel Medina Cruz:** es que ese es mi punto. O sea, entendemos Maven, pero en realidad hoy solo lo usamos en donde publicamos la libría, ya no usamos Maven tanto más que en proyectos principalmente de Java, que se sigue usando muchísimo. Sí, sí ocupar Sprint. Claro, el proyecto de Java.

**Martin Amaro:** Sí,

**Jesús Daniel Medina Cruz:** Claro,

**Martin Amaro:** sí, sí.

**Jesús Daniel Medina Cruz:** va a ser muy interesante esto que estamos hablando cuando veamos en en el curso de Kotlin Multiplatform.

**Martin Amaro:** el siguiente curso.

**Jesús Daniel Medina Cruz:** Vamos a a a faltan varios. Ahí mete una de gratis gratuita, por favor. Faltan faltan varios cursos todavía para llegar a Kotlin Multiplatform. Entonces, eh, es enorme el ecosistema, no quisiera como que decirles, no es que es demasiado, ¿no? Sino más bien es enorme y hay muchas cosas que podemos aprender juntos. Yo tengo abierto entonces los tres entornos. Eh, este es el Android y cómo sabes se ven

**Martin Amaro:** No, es este el Intel de volada a puro a puro

**Jesús Daniel Medina Cruz:** iguales.

**Martin Amaro:** ojo por el

**Jesús Daniel Medina Cruz:** Sí, pero yo estoy yo estoy buscando el el el indicador que diga que es Android. No lo no lo encuentro.

### **00:55:40**

**Jesús Daniel Medina Cruz:** Mira, no es cierto. Es el es el momentiste.

**Martin Amaro:** poco. Si es cierto, están idénticos.

**Jesús Daniel Medina Cruz:** Es que trial gey.

**Martin Amaro:** Ah, sí, cierto. Este, por la Sí,

**Jesús Daniel Medina Cruz:** Aquí me dice unlock un liimited. Ah, ya.

**Martin Amaro:** cierto.

**Jesús Daniel Medina Cruz:** Voy a ver si lo puedo luego una licencia.

**Martin Amaro:** Tienes que pagar para

**Jesús Daniel Medina Cruz:** Ándale, voy a buscar una licencia estudiante. Voy con mi correo de estudiantes. Eh, ya se me olvidó que vamos a hacer. Ah, sí. Eh, no sé si sabían, les comento, sacaron una librería oficial de Java y Cotrin para Intelishía. Está medio rara. Todavía está en desarrollo. No te preocupes, estoy copertiendo mi pantalla. No,

**Martin Amaro:** Sí,

**Jesús Daniel Medina Cruz:** Java,

**Martin Amaro:** pero el antigravity Ese es el antigravity. Sí.

**Jesús Daniel Medina Cruz:** ¿cómo era? Ah, sí, aquí está. En eh Jetpains sacó una librería oficial

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** para eh Java y Cotlin.

### **00:56:48** {#00:56:48}

**Jesús Daniel Medina Cruz:** Está bien interesante, pero pues es apenas empezaron a desarrollarla. program. El lo curioso es que, por ejemplo, si si vienen mi antigravity y abro el archivo, eh no me detecta que la pueda ejecutar este rápidamente, pero aquí ya sale, ¿no? Como botoncitos de run por la librería esa que les acabo de mostrar. Eh, pero bueno, no me voy a adelantar. En el antigravity tenemos el entorno aquí de gradle y podemos ver las tareas, ¿no? Y aquí están las tareas para poderlas ejecutar. Application y run. Si descargaron el proyecto, se van a dar cuenta que están en la lección tres, ¿no?

**Martin Amaro:** H

**Jesús Daniel Medina Cruz:** Revisen si están en la lección tres. En el último comit es la lección tres, no me equivoco. Ah, ya. Ah, lección tres. Eh, si le dan ejecutar, pues voy a hacerlo en todos los entornos, no más por con le dan aquí

**Martin Amaro:** Lacción es

**Jesús Daniel Medina Cruz:** play run. Estoy aquí en Android Studio. Acá es en el ID. Ustedes le dicen intellig o le dicen idea intellig.

### **00:58:41**

**Jesús Daniel Medina Cruz:** Intellig. Intellig. Hay gente que le dice así, ¿no? Intellig. A ver, voy a ejecutarlo en todos lados a ver qué hace. Este como que tarda, mira, como que como que no sabe qué hacer. Bueno, pero si ven la terminal, este, les aparece ahí este el AI chat click. No, no lo hago. ¿Qué no haces? No hay prisa, ¿eh? No hay prisa, no hay prisa. No estamos haciendo nada más. Yo no más estoy corriendo. ¿Descargas el proyecto? No, no, no lo quiero hacer yo. ¿Cómo que lo quieras hacer tú? Hay que descargar el proyecto. Idealmente te va a servir de referencia. Sí, te va a servir de referencia.

**Martin Amaro:** Ay, por favor,

**Jesús Daniel Medina Cruz:** Es mía. Mi compo. La tuya es mía, ¿no? Que está sonando. Sí, la mía.

**Martin Amaro:** es por el de estudio. Ya se va levitar ahorita.

### **00:59:49**

**Martin Amaro:** Sí,

**Jesús Daniel Medina Cruz:** va a empezar a flotar, ¿no?

**Martin Amaro:** sí. Fíjate qué

**Jesús Daniel Medina Cruz:** Eh, la idea es esta. Vale, les les Les comento, si están viendo mi pantalla, el laboratorio va a tener como varios ah commits. Va a haber una etiqueta para código inicial y para código resuelto. Pueden revisar las etiquetas en GitHub, pero estos dos links que están viendo en mi pantalla directamente los van a llevar ahí. Código inicial. Si le doy clic me abre en la etiqueta L1 Start. Si me voy al L1 don, pues obviamente va a estar tremendo. Si se fijan en L1 Start, no tiene nada. ciclonan el proyecto y se van al L1 Start, este, van a ver simplemente el RMI con instrucciones de qué es lo que se supone que tienen que hacer, pero no hay nada de código. Eh,

**Martin Amaro:** Ah, caray. ¿Cómo?

**Jesús Daniel Medina Cruz:** ¿qué quieres compartir tu pantalla?

**Martin Amaro:** No, es que yo soy el master.

**Jesús Daniel Medina Cruz:** Sí.

**Martin Amaro:** Espérame, espérame. Ya no está. Oh, son tags.

**Jesús Daniel Medina Cruz:** Sí,

### **01:01:46**

**Martin Amaro:** Ah, qué gy. Con razón.

**Jesús Daniel Medina Cruz:** con razón. ¿Qué?

**Martin Amaro:** Pues son tags. No,

**Jesús Daniel Medina Cruz:** ¿Cómo?

**Martin Amaro:** no pensé que eran branches.

**Jesús Daniel Medina Cruz:** ¿Cómo se No,

**Martin Amaro:** No, no, no, no son branches.

**Jesús Daniel Medina Cruz:** no son branches, son tags. ¿Cómo se ponen los emojis en Mac? Yo lo hago con lo tengo activado para el FN, pero no sé si lo tienes activado.

**Martin Amaro:** Fíjate que que jamás había usado. Ah. Jamás había usado taxe.

**Jesús Daniel Medina Cruz:** Para tus proyectos, ¿te refieres?

**Martin Amaro:** Ajá. Par jamás uso tags. Me hizo raro. Es que le hice le hice un git switch y me dice que no, que no se puede, que que es un tag y yo ah caray.

**Jesús Daniel Medina Cruz:** Sí.

**Martin Amaro:** Como dice Justin, este, ya tuve que irme al chat GPT a decirle qué onda y ya me dio el comando,

**Jesús Daniel Medina Cruz:** ¿Y el qué comando te dio? El git checkout.

**Martin Amaro:** ¿no? Kit switch este detach detach

**Jesús Daniel Medina Cruz:** Espera, espera, espera. Me están tratando de decir que ya nadie usa checkout.

### **01:03:02** {#01:03:02}

**Jesús Daniel Medina Cruz:** Yeah.

**Martin Amaro:** Sí, sí. El el para crear un nuevo branch usas el kit checkout menos B. Este,

**Jesús Daniel Medina Cruz:** Pero ya más reciente.

**Martin Amaro:** no manches,

**Jesús Daniel Medina Cruz:** Es sí.

**Martin Amaro:** yo el switch no más lo bueno, el checkout también sirve para moverte entre branches, pero la diferencia que creo es que cuando haces git checkout te mueves localmente en vez de remotamente. Este, entonces ocupas hacerle un pull a la branch para jalar los cambios que están en el remote.

**Jesús Daniel Medina Cruz:** Sí, tenemos que hacer un curso de git.

**Martin Amaro:** Cada día que uso Git me doy cuenta que no sé Git, no más sé usar los comandos básicos

**Jesús Daniel Medina Cruz:** Eso yo he aprendido mucho trabajo.

**Martin Amaro:** y yo ahorita tuve que en el trabajo este tenemos este yo no sé cómo se lo imaginó mi jefe, este mi exjefe, este este Gabo Daniel quería en un mismo repo tener el código para no

**Jesús Daniel Medina Cruz:** Sí,

**Martin Amaro:** sé cantidad de clientes. Entonces, pues yo me quedé pensando este, ¿cómo no? este, mejorarle un repo nuevo y que cada quien tenga sus ajustes por separado. Y me dijo,"No, güey, yo los quiero todos en uno." Entonces, pues ya dije,"No, pues vamos a tener la rama core, que es donde cuando lleggaue un nuevo cliente va a salir de ahí, este, y vamos a tener las ramas, este, de cada cliente, este, y un cambio global se hace en core y se baja el cliente,

### **01:04:29**

**Martin Amaro:** pero la neta cada quien hizo lo que quiso en el equipo de trabajo, cada quien hizo lo que se le dio la gana y tenemos un rollo ahorita con las ramas, entonces tuve que empezar a obligarlos usar cherry picks porque me di cuenta que todos le hacían pull a a las ramas y yo creo que nadie sabía que cuando tú estás parado en tu branch y le haces pull a develop a la rama que quieras, te estrás trayendo este esa rama. Este, ¿no?

**Jesús Daniel Medina Cruz:** todos los comites.

**Martin Amaro:** Ajá. Sí,

**Jesús Daniel Medina Cruz:** Ah.

**Martin Amaro:** pero yo creo que ellos ellos pensaban que te estabas trayendo este la la rama de develop a a tu branch este y que Git este ignoraba, digamos, los cambios que no que no se tenían, este que no más metía las diferencias, pero no es al revés, según yo es al revés. estás mandando todo tu branch.

**Jesús Daniel Medina Cruz:** Claro,

**Martin Amaro:** Entonces los tuve que obligar a usar Cherry Pixs por por eso y tuve que aprender a usar Cherry Pixan.

**Jesús Daniel Medina Cruz:** es agarrar nada más el comit que quieras, No.

**Martin Amaro:** Agarrando más el com que quieras porque no no manches, se les hizo un batidero el código. Ah, que fue lo que te dije ayer, ¿no, Dani?

### **01:05:40** {#01:05:40}

**Martin Amaro:** Bueno, antier que dije,"Ah, voy a estar subiendo unos cherry picks, este, Eh,

**Jesús Daniel Medina Cruz:** Creo que tú, Justin, podrías este hacer muchos cherry pick, ¿no? Con tus sincronizaciones. Ay, no. necesita todo. Luego vamos a hacer un curso de de guida entre todos a ver qué cómo nos va, ¿eh? Eh, okay. Entonces, quiero saber en qué están. ¿Tienen el proyecto clonado? Ya no lo cloné.

**Martin Amaro:** sí.

**Jesús Daniel Medina Cruz:** Lo hice. ¿Lo estás haciendo de cero? Perfecto. Eh, para lo hiciste en el ID. Creaste un proyecto nuevo. Eso es lo que hiciste. Ah, okay. Okay. Entonces, eh, nada, me voy a a ver, páseme el comando de Switch. A ver cómo cómo me cambio de la A ver,

**Martin Amaro:** Lo puse aquí en el chat, el git switch

**Jesús Daniel Medina Cruz:** que nunca he usado Switch yo. A ver,

**Martin Amaro:** como Lo haces tú, Daniel, con el checkout

### **01:06:47**

**Jesús Daniel Medina Cruz:** eh, ¿te refieres a cambiarte de la

**Martin Amaro:** de TAC. Ajá.

**Jesús Daniel Medina Cruz:** No, no entiendo,

**Martin Amaro:** O sea, ¿qué qué comando utilizas para moverte entre las TS?

**Jesús Daniel Medina Cruz:** no uso ningún comando. Aquí, aquí te dice este, yo suelo utilizar el, ¿cómo se llama? al Git Desktop para estarme moviendo.

**Martin Amaro:** Se me ha caído un R, la neta se me cayó un la verdad que Daniel iba a hacer un geek de no usar este entornos este UI este si no

**Jesús Daniel Medina Cruz:** No, no, no me defraudé. Es que cuando cuando te empiezan a esclavizar más y no tienes tiempo

**Martin Amaro:** puro teclado,

**Jesús Daniel Medina Cruz:** de eso ya.

**Martin Amaro:** ¿eh?

**Jesús Daniel Medina Cruz:** Sí,

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** técnicamente si este se hace el igual como el switch que me que me mandaste. Sí. mueve al comid ese. Ah, okay. Bueno, regresando a esto, entonces, el código que yo tengo ahorita, eh prácticamente si tienen su proyecto, los archivos importantes para un proyecto de cotlin con gradle es el settings gradle, donde le ponemos el nombre del proyecto. No sé si sabían.

### **01:08:18** {#01:08:18}

**Jesús Daniel Medina Cruz:** Si le cambian esto aquí, se va a cambiar esto de aquí arriba. Eh, esto de aquí. Si yo le quito esto y le doy sync, esto de aquí arriba. Ah,

**Martin Amaro:** Órale. Vale.

**Jesús Daniel Medina Cruz:** eh, Bill Gradle. Aquí ponemos estos el que llaman plugins son básicamente plugins eh del gradle para el proyecto. Es como si dijéramos librerías de gradol para el proyecto, pero no para nuestro proyecto. Tiene sentido para que Greol sepa qué hacer.

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** Yeah. Por ejemplo, para que nuestro proyecto funcione con JBM, le tenemos que usar este JBM aquí. Pero internamente esto lo que está haciendo es ID paréntesis org. Jet Brains, eso los dos internamente. No podemos ver porque no están

**Martin Amaro:** Entonces el B cradle es como el package Jason,

**Jesús Daniel Medina Cruz:** Pack Jason.

**Martin Amaro:** ¿sí?

**Jesús Daniel Medina Cruz:** Pack Jon.

**Martin Amaro:** donde este agregas las librerías,

**Jesús Daniel Medina Cruz:** Espérame,

**Martin Amaro:** Este,

**Jesús Daniel Medina Cruz:** pero estoy tratando de interpretar si eh Packas Jason sería literal. Ya, ya casi casi hay aquí hay un matiz importante.

### **01:10:09**

**Jesús Daniel Medina Cruz:** Package Jason. Eh, me imagino que has trabajado por módulos eh en JavaScript, no sé si sabías que puedes tener varios package Jason en un proyecto. Entonces, hay que tomarlos en cuenta. El package Jason del proyecto es por el paquete, digamos, para npm, pero luego puedes tener por cada módulo su propio package Jason, ¿cierto?

**Martin Amaro:** H

**Jesús Daniel Medina Cruz:** Entonces aquí en este proyecto como solamente tenemos eh es donde configuras las librerías, pero no como tal de tu proyecto, ¿no? Sino de las, o sea, lo que vas a ocupar. Eh, ahora sí, eh, lo que ocupa como tal proyecto, por ejemplo, si tú tienes librerías de ciertas este neas ciertas librerías que no están, por ejemplo, Maven, puedes aquí configurar este otras otras source, otra fuente para Claro. Aquí hay que hacer matiz, ¿no? Gradle no es exclusivamente manejador de paquetes, por eso trataba como hacer la matriz del packet Jason, el bill.gradol no es exclusivamente para manejar paquetes, pero si es el que define la información del paquete. Cuando vemos el pack Jason, por ejemplo, a veces pensamos que es solo para las dependencias, pero sirve para varias cosas. Si lo vemos aquí, esto es para la herramienta, como les digo, de gradle.

### **01:11:49** {#01:11:49}

**Jesús Daniel Medina Cruz:** Si yo le quito esto, no se va a comportar como una aplicación de Java,

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** pero en Android creo que aquí le tienes que poner eh, ¿cómo se llama? Pues abrir una publicación de Android, ¿no? Y ya nada más vemos que qué es lo que hace. Es marcalk. A ver,

**Martin Amaro:** Play. ¿Qué es eso? Daniel.

**Jesús Daniel Medina Cruz:** es un juego.

**Martin Amaro:** Interesante, interesante.

**Jesús Daniel Medina Cruz:** Y aquí es que información ubicación.

**Martin Amaro:** Ah, sí. Ajá. Generalmente que es como que ah lo es que te sacaron dónde vives y todo eso. ¿Quién eres? ¿Dónde vives? Este cosas muy privadas de uno. Es todo eso.

**Jesús Daniel Medina Cruz:** No. Eh, Billgradels.

**Martin Amaro:** Ah,

**Jesús Daniel Medina Cruz:** No,

**Martin Amaro:** sí, sí,

**Jesús Daniel Medina Cruz:** pero este,

**Martin Amaro:** sí.

**Jesús Daniel Medina Cruz:** ¿verdad? Sí. No, pero pero este es el que les quería mostrar, este del app.

**Martin Amaro:** Ajá. Sí, puedes tener varios.

**Jesús Daniel Medina Cruz:** Sí, es es este Android Android application.

### **01:13:07** {#01:13:07}

**Jesús Daniel Medina Cruz:** ¿Cómo que es lo mismo?

**Martin Amaro:** Pero, ¿por qué? Pero, ¿por qué unos dicen ID? ¿Por qué otros dicen alias? ¿Porque otros van a decir dependencies?

**Jesús Daniel Medina Cruz:** Este no es un gusto de Greor,

**Martin Amaro:** Este,

**Jesús Daniel Medina Cruz:** entonces me voy a regresar. No, les doy el tip rápido con la el nacimiento de el version catalog de

**Martin Amaro:** Ajá.

**Jesús Daniel Medina Cruz:** Tomel T o ML. Eh, ya no necesitas utilizar strings. Puedes definir tu version catalog con tomen y directamente utilizar alias para que referencia al alias de tomen.

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** El Tom es como tu catálogo donde tienes todas tus versiones y tus tus dependencias y ya no necesita escribir como toda la dependencia, nada más escribes el alias y que apunta a esa dependencia que está en ese archivo.

**Martin Amaro:** Ah, Ok. Ok.

**Jesús Daniel Medina Cruz:** Entonces, para eso el el application entonces eh por defecto ya lo tiene el gradle, el cotlin para gradle, que eso es importante. Antes usábamos gruby para gradol, ahorita estamos usando cotlin kts que es cotlin. Entonces, la librería estándar de Cotlin para Gradle ya tiene esta este plugin definido para las aplicaciones de Java.

### **01:14:32** {#01:14:32}

**Jesús Daniel Medina Cruz:** Y tenemos un group que en este caso eh es como si fuera el paquete principal y la versión de nuestro proyecto. Esto es bien interesante porque estas son prácticamente propiedades de alto nivel. Lo vamos a revisar más adelante, pero si se fijan, cuando le doy como click, me abre una interfaz. Eh, no vamos a entrar en profundidad de Cotlin DSL, pero va a ser muy interesante cuando quieran entender más a profundidad de eso. Este, cómo se configura la interfaz para proyectos de gradol, estas propiedades de aquí vienen para esta interfaz. Literalmente Scotlink, ¿no? A ver, aquí es una pregunta interesante. Así. Como lo están viendo, ¿qué lenguaje es? Ya.

**Martin Amaro:** Yava.

**Jesús Daniel Medina Cruz:** Entonces, ¿de dónde viene este archivo? ¿Es Java o Java BC? A ver, tú, Martín, ¿qué opinas?

**Martin Amaro:** No sé, es que se se ve como Java, ¿sabes? No.

**Jesús Daniel Medina Cruz:** Claro, pero la pregunta que hice es, ¿es un archivo de Java o es un archivo de Java bycode?

**Martin Amaro:** Ah, ya. Ah, es un Bod por el punto class.

**Jesús Daniel Medina Cruz:** Eso.

### **01:16:12**

**Jesús Daniel Medina Cruz:** Ahora, lo mismo que dijiste, no parece de Java,

**Martin Amaro:** Ajá. Pareces.

**Jesús Daniel Medina Cruz:** pero pero es un archivo compilado. Sí.

**Martin Amaro:** Ojo. Okay.

**Jesús Daniel Medina Cruz:** Qué raro, ¿no?

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Se siente extraño,

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** pero bueno, ahí vamos a irnos acostumbrando un poquito a eso. Eh, la clave ahí es cuando vean un archivo de Java, no necesariamente es Java, a veces es Java Bw y hay diferencias, a veces no se notan, ¿no? Dices, bueno, yo veo solo Java, pero hay diferencias. Una de ellas, este, que que se va a notar este rápidamente eh en en Intellish Idea es que te va a salir esta información aquí arriba de que que si quieres decompilar el el descompilar, perdón, el BPC y en qué versión de Java lo quieres descompilar, automáticamente sale eso. Miren otra vez. Es que mi blog de notas como estoy programando no apareces. Exacto. Program libreta, ¿no? Okay. Luego pues no voy a entrar mucho en detalle, pero tenemos los repositorios, eh, que es en dónde van a descargar las dependencias.

### **01:17:27** {#01:17:27}

**Jesús Daniel Medina Cruz:** La mayoría están en Maven Central. Luego un listado de dependencias, en este caso solamente para test implementation, que lo mismo, esta función de aquí es la misma que esta de acá. est pero con org.jedbl bla todo eso.

**Martin Amaro:** Hm.

**Jesús Daniel Medina Cruz:** Después tenemos una tarea personalizada para las pruebas. Eh, se pueden definir diferentes tipos de tareas de cradle, ya que esas tareas en realidad es como si ejecutaran algún código. Yeah. especial, en este caso el framework de Unit para pruebas unitarias y luego una sección especial para definir eh la configuración de Cotlin.

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** Esto es interesante porque anteriormente no se definía como Cotlin, sino como este la configuración de Java, pero en este caso por el nuevo compilador pues definimos que Cotlin va a utilizar la versión 17 del JBM. Y ya aquí hace internamente lo del language version, nos va simplificando cada vez más cosas. Sí, con esto tenemos definida la tarea para que cuando queramos compilar la aplicación, cerrar esto de aquí, eh sepa cuál es el archivo que va a ejecutar. Si se fijan, esto es interesante para el BCE, nuestro archivo main en realidad es un archivo main KT. Puntos extras para que me diga porque quien me diga por qué, por qué se genera un main cate en el B. Mientras me sigo café.

### **01:19:37** {#01:19:37}

**Jesús Daniel Medina Cruz:** ¿Qué se genera un qué?

**Martin Amaro:** un

**Jesús Daniel Medina Cruz:** Sí. ¿Entendiste la pregunta,

**Martin Amaro:** Y,

**Jesús Daniel Medina Cruz:** Martín?

**Martin Amaro:** o sea, al compilarlo, ¿por qué no genera un punto class? No, o sea, porque es un main KT, porque no es un main. Class o

**Jesús Daniel Medina Cruz:** Punto class sí se genera, pero se genera un MKT. Class. ¿Por qué? Equivoquen,

**Martin Amaro:** no. Ni idea. por por.

**Jesús Daniel Medina Cruz:** equivóquense, no pasa nada. Ya platicamos de varias cosas, nada más tiren ideas y equivóquense y entre las equivocaciones armamos cuál será la verdad.

**Martin Amaro:** Hm.

**Jesús Daniel Medina Cruz:** diferenciar es una buena idea,

**Martin Amaro:** Aha.

**Jesús Daniel Medina Cruz:** es una buena idea, no es exactamente por Java, sino por Codlin, pero es una buena referencia. ¿Qué más sabemos de Java versus Cotlin?

**Martin Amaro:** M.

**Jesús Daniel Medina Cruz:** Por ejemplo, nada de N safety, no tiene nada que ver, pero va sobre Java versus Cot. ¿Por qué se genera un McT? del punto class cuando es un archivo de cotl.

### **01:20:59**

**Martin Amaro:** No sé, no,

**Jesús Daniel Medina Cruz:** ¿Tienen ideas?

**Martin Amaro:** no será. Yeah.

**Jesús Daniel Medina Cruz:** Oh.

**Martin Amaro:** No,

**Jesús Daniel Medina Cruz:** Pues es que ya el punto

**Martin Amaro:** no va por la parte del JBM del JBN

**Jesús Daniel Medina Cruz:** clase por el JBM,

**Martin Amaro:** O.

**Jesús Daniel Medina Cruz:** pero aquí en este caso es el las la necesidad que tiene el BC

**Martin Amaro:** Aha.

**Jesús Daniel Medina Cruz:** code sobre archivos Cotrin. ¿Por qué necesita generar un main KT? ¿Por qué no hace un main pun class? por cómo se define la función main. Está cerca, pero ¿cómo se define la función main versus cómo se define en

**Martin Amaro:** Ah, porque tiene

**Jesús Daniel Medina Cruz:** Okay, no es eso, pero está cerca. Martín, ¿vas a decir algo?

**Martin Amaro:** Bueno, sí es que ya ves por cómo si si es por como se define la función main, ya ves que Java es este public static void main,

**Jesús Daniel Medina Cruz:** No es la definición de la función, estamos muy cerca. ¿Le seguimos o les digo la respuesta?

**Martin Amaro:** lo que retorna la función.

**Jesús Daniel Medina Cruz:** No, nada que ver con la función exactamente. Eh, ¿te rindas, Martín?

### **01:22:13** {#01:22:13}

**Martin Amaro:** Sí, sí, sí.

**Jesús Daniel Medina Cruz:** Va, no tenemos una clase en Cotlin, no necesitamos definir la clase. Sí, cierto. En en Java tenemos que hacer public static void main, pero dentro de una clase public class.

**Martin Amaro:** Ah, sí, es cierto.

**Jesús Daniel Medina Cruz:** Entonces, cuando Cotlin define la función main, la función main en B code se va a poner dentro de una clase main KT. Porque en Java no podemos tener archivos sin una clase. No hay manera de ver eh el archivo que genera. Sí, sí, eso es lo que vamos a hacer ahorita que te estás adelantando.

**Martin Amaro:** A ver,

**Jesús Daniel Medina Cruz:** Eh,

**Martin Amaro:** sí, cierto.

**Jesús Daniel Medina Cruz:** ahora en en el Android Studio o el Intelliga, tenemos una función que se me olvidó dónde está. Creo que estaba en Ron, no, en Tools. Tools. Si está viendo mi pantalla.

**Martin Amaro:** Sí, sí, sí,

**Jesús Daniel Medina Cruz:** Tools cotlin show cotlin code.

**Martin Amaro:** ya listo.

**Jesús Daniel Medina Cruz:** Ahora este es el bitec descompilarlo. Se ve horrible. Esto es lo que lee la JBM. Entonces sería casi imposible entenderlo, ¿no?

### **01:23:41**

**Jesús Daniel Medina Cruz:** Pero si le damos aquí en descompilar. ¿Dónde le diste? Otra vez. No, no te preocupes, no te preocupes. Vamos de nuevo. ¿Estás viendo mi pantalla? Sí. Número uno, abrir el archivo. Número dos, si te pierdes, Martín, me dices tools. Cot Crin show Cotrin. Se abre esta vaina, se hace esto de aquí. Mira en realidad eso. Sí, me abrió la ventana, pero no abrió el B code. ¿Quieres compartir tu pantalla?

**Martin Amaro:** Ah,

**Jesús Daniel Medina Cruz:** A ver.

**Martin Amaro:** es que tiene tiene que tener abierto el archivo del main KT. Si estás en en el BR,

**Jesús Daniel Medina Cruz:** Sí.

**Martin Amaro:** no va a aparecer.

**Jesús Daniel Medina Cruz:** A ver, a ver. ¿Se puede descompilar un Bill Gradle? Mira. Ah.

**Martin Amaro:** Ah.

**Jesús Daniel Medina Cruz:** Ah, es es no sabía que no se descompilaba un Bill Gradel. Es interesante, hay que investigar. Okay, ya estamos en en en el mismo punto, ¿no, Martín?

### **01:24:40**

**Martin Amaro:** Sí, sí.

**Jesús Daniel Medina Cruz:** Descompilar y te va a generar un archivo main.decompile.jva. Y ahora sí se ve como el otro código que estábamos viendo. Ya lo estoy compartiendo. Ay, perdón, pero ya lo están viendo en su pantalla, ¿no? Sí, sí. Entonces es esto es un poquito extraño. Okay. Pero tenemos dos funciones main. ¿Por qué, maldita sea, tenemos dos funciones main? Saquen las ideas. ustedes que quieren ser expertos en Cotlin.

**Martin Amaro:** Porque según yo este bueno, aparte de que una es este el final void y una es simplemente public este

**Jesús Daniel Medina Cruz:** O sea, las dos son diferentes, pero ¿por qué tenemos que tener dos? ¿Por qué no nada más una?

**Martin Amaro:** es que según yo es que ah también no es un override este No.

**Jesús Daniel Medina Cruz:** No, no, porque no. Ah, ya te entendí. Eh, se llamaría este sobrecarga, ¿no? Override

**Martin Amaro:** Ah, una sobrecarga. Ay, ¿cómo está el nombre en inglés? Se me fue el nombre en inglés.

### **01:26:01**

**Martin Amaro:** Eso se usa mucho en Cartarp. Bueno, lo he usado mucho en C\#ARP.

**Jesús Daniel Medina Cruz:** Bueno, en Java. Over, override se le llama. Eh, se le llama,

**Martin Amaro:** Ah, sí,

**Jesús Daniel Medina Cruz:** según yo, ¿no?

**Martin Amaro:** sí, según yo. Sí, también.

**Jesús Daniel Medina Cruz:** Overload, no. Override, override sería sobreescritura, sería sería lo de herencia. Override es sobreescribir una en herencia, cambiarlead overloading, sí, sobrecarga. Estamos hablando hasta conceptos de Java. Vamos bien, el curso está funcionando. Eh,

**Martin Amaro:** Y lo saqué de no manches.

**Jesús Daniel Medina Cruz:** este, nada más quiero hacer un paréntesis aquí, eh, cómo va el curso, o sea, si se fijan como de unas cositas, ni siquiera hemos empezado a escribir Cotlin y hemos hablado de un montón de conceptos detrás de Cotlin. ¿Cómo cómo va el curso? ¿Cómo lo sienten? ¿Pesado?

**Martin Amaro:** Bien.

**Jesús Daniel Medina Cruz:** ¿Va rápido o o si estamos profundizando bien? No se está profundizando Okay,

**Martin Amaro:** Sí, sí, sí, siento que vayamos profundizando

### **01:27:06** {#01:27:06}

**Jesús Daniel Medina Cruz:** ya no voy a detener entonces en este punto porque este siendo que nos vamos a tardar demasiado eh en las adivinanzas. Aquí yo les digo, eh, lo que hace, eh, el compilador directamente es generar la función public static void main porque y la llama, ¿no? Dentro del No, no, no esto es lo que está haciendo, va. Eh, un proyecto de una aplicación de Java sí o sí

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** necesita tener una función de la forma public, static, void, main, paréntesis, string, array, espacio, args. Ese nombre puede variar, paréntesis y llaves, sí o sí. No se puede llamar diferente, no puede ser finer. Luego estudiamos lo del final, ¿no? Porque ahí podemos hablar varias cosas del final. Pero aquí está la parte curiosa. Cuando ustedes definen una función de alto nivel, que la vamos a ver en las lecciones más adelante, el compilador va a generar para Java una función eh de alto nivel, sería esta que no está dentro de ninguna clase y otra cosa.

**Martin Amaro:** Hm.

**Jesús Daniel Medina Cruz:** Una función de alto nivel se va a generar una clase del nombre del archivo main KT,

**Martin Amaro:** Venga.

### **01:28:32**

**Jesús Daniel Medina Cruz:** equivalente al archivo main. KT y una función public static final void main. Bueno, en este caso que sea void,

**Martin Amaro:** Es

**Jesús Daniel Medina Cruz:** ¿no? Porque si si no es void no lo va a hacer como void. Obviamente en Cotlin sería retornar unit. El void existe en Cotlin, pero de una forma muy rara. Luego les muestro cómo funciona el void. Ahora bien, esto es muy importante. Este main no tiene argumentos.

**Martin Amaro:** Ajá. Sí, sí, sí.

**Jesús Daniel Medina Cruz:** Entonces,

**Martin Amaro:** Yes.

**Jesús Daniel Medina Cruz:** compilador dice,"Ese main que tú quieres ejecutar, lo voy a ejecutar, pero no lo puedo encontrar para compilarlo con la terminal si no tiene argumentos." Entonces, el compilador lo traduce. Anteriormente en el compilador de Kotlin sí teníamos que ponerle la función ma y los argumentos para que pudiera ejecutarse. Ahora, hay algo que no he hecho con el nuevo compilador. No sé. Vamos a probar algo. ¿Qué pasa si le pongo los argumentos aquí y pongo un ar a? ¿Cómo era este?

### **01:29:49**

**Jesús Daniel Medina Cruz:** Dos puntos. No sé si le doy a quién de compilar. Miren.

**Martin Amaro:** Te voy a decir como como dice el Bob Esponja,

**Jesús Daniel Medina Cruz:** No.

**Martin Amaro:** ¿no? Este, tengo una idea. Este, creo que ya sé por dónde va porque la la en el anterior de compilado la función la función main este estaba siendo llamada por la función este de abajo y si no mal recuerdo este la JBM necesita a huevo del public está t\*\* Boid este y con los argumentos. Pero lo que se está pasando es que estás llamando a la que a la a la primer función, la de arriba, la que tenía el código ese del System Note, este estaba llamando, está haciendo llamada dentro de la función del main que sí tiene los argumentos.

**Jesús Daniel Medina Cruz:** Lo dijiste muy bien. Ya le pasaste los argumentos, ¿no? O sea, esto ha sido esto ha sido loco.

**Martin Amaro:** Ajá.

**Jesús Daniel Medina Cruz:** Okay.

**Martin Amaro:** Exacto.

**Jesús Daniel Medina Cruz:** Pero, pero, pero, ¿nan diferencia? Aparte de eso, ¿alguna otra cosa que sea diferente? Aparte de que ahora solamente tenemos una función con argumentos

**Martin Amaro:** Hm.

**Jesús Daniel Medina Cruz:** de que no no es nulo.

### **01:31:17** {#01:31:17}

**Jesús Daniel Medina Cruz:** Claro, lo vamos a revisar en la clase de Null Safety. Okay. Pero ojo con ese dato. Cuando en Kotlin algo no es nulo, en Java sigue siendo posiblemente nulo.

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** Entonces el compilador agrega este verificador. Esto va a tirar una excepción si le mandas un Pero, Ajá. Pero ojo, el compilador no te va a dejar compilarlo si le mandas un nulo. Okay. Okay. Qué loco, ¿no? Esta es la base de un proyecto de Java y en lugar de hacer todo este desmadre, Kotlin nos permite hacer solamente esto. ¿Cuál les gusta más? izquierda o derecha.

**Martin Amaro:** No sé, yo como me gusta odiarme, preferí la derecha, ¿sabes? Por eso por eso estoy aprendiendo Rost.

**Jesús Daniel Medina Cruz:** Sí, no. A ver, una cosa es este aprender las dos cosas y otra cosa es en el día a día cuál quieres escribir. Por eso,

**Martin Amaro:** Ah,

**Jesús Daniel Medina Cruz:** por eso a mí me gusta este curso.

**Martin Amaro:** no, la izquierda.

**Jesús Daniel Medina Cruz:** Cuando hice el curso pensaba en todas esas cosas que que veía que estaban muy

### **01:32:38** {#01:32:38}

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** fáciles en Kotlin y decía,"Pero, ¿por qué? O sea, ¿por qué no tengo que escribirlo? Ah, porque el compilador ya lo hace por ti. Y cada vez que encontraba una magia de Cotlin, me daba cuenta que el compilador estaba haciéndolo todavía, pero ya el desarrollador ya no.

**Martin Amaro:** M.

**Jesús Daniel Medina Cruz:** Y es como cuando perdimos la noción de que teníamos tenemos que administrar los apuntadores de las variables. Ah, sí, ya no tienes que hacerlo, pero sigue estando ahí y es un concepto que hay que mantener fresco, que no se nos tiene que olvidar que existe una variable, que existe un apuntador, que existe memoria, que existe todo eso. Tristemente, con los lenguajes de alto nivel no es obligatorio que lo sepas, pero hace una diferencia entre los desarrolladores senior y los que son eternamente tiene sentido.

**Martin Amaro:** Sí, sí, sí.

**Jesús Daniel Medina Cruz:** Excelente. Ya me emocionó otra vez.

**Martin Amaro:** Fíjate, Dani, que eso es algo que yo le estaba platicando a mi esposa porque este trabaja haciendo este front en React. Le digo,"Oye,

**Jesús Daniel Medina Cruz:** Ajá.

**Martin Amaro:** pero no más ya ya demándalos, dile que te aumenten el sueldo porque le pagan muy poco ya para lo que haces, según yo." Este,

### **01:33:50** {#01:33:50}

**Martin Amaro:** y luego le le empiezo a preguntar conceptos, este, que yo ya sé como el even loop, este, como cosas de de esos y pues no lo sabe. Digo,"No, pues con razón. digo,"No, pues con razón." Y y hay veces que yo agarro y sí le digo porque me gusta hacerle enojar. Le digo,"Por eso me pagan más a mí que a ti.

**Jesús Daniel Medina Cruz:** No son cosas que le debas de decir a tu esposa. Pero entendí el concepto.

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Definitivamente creo que hay hay muchas ah oportunidades como de aprender y te voy a hacer como un contraargumento. Eh, ser senior eh, literalmente significa que que la empresa diga que eres senior, pero el tipo de senior al que yo me refiero es eh el que entiende que el software no se trata de dinero, se trata de resolver problemas. Eh, tristemente para las empresas no les importa resolver problemas. Hoy en día estamos viviendo una época en donde lo único que importa es el dinero. Eh, es horrible si me lo preguntas,

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** pero estoy de acuerdo contigo que eh el tipo de señority que yo admiro es al que le pregunto algo y cuando no sabe me dice que no sabe, pero luego investiga y aprendemos juntos.

### **01:35:02** {#01:35:02}

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Ese es el tipo de señority que el que yo aspiro, ¿no? Y esa sería la idea de este curso. En este punto, entonces este quiero hacer un un último eh

**Martin Amaro:** Amén.

**Jesús Daniel Medina Cruz:** énfasis que es el la función print ln. La función print n lln cuando lo compilamos a generó el system.out.printline, ¿cierto?

**Martin Amaro:** Sí,

**Jesús Daniel Medina Cruz:** Si le damos command click, no sé si habían dado tiempo de hacer el command click. Ahí está

**Martin Amaro:** me siento estafado,

**Jesús Daniel Medina Cruz:** Kotlin. Una función que función genial.

**Martin Amaro:** E

**Jesús Daniel Medina Cruz:** Sí, es que es que esto es en su mayoría Kotlin. Cotlin eh para y es muy importante, ¿okay? Muy importante que no se dejen ir solamente como ay, pues es solo eso, no No, no, no. Cotlin, la librería de estándar de Cotlin contiene una librería para Kotlin, para imprimir y entrar o cómo se dice, input output. Pero noten lo siguiente, y esto no se lo voy a explicar, pero ¿qué dice aquí?

**Martin Amaro:** actual

**Jesús Daniel Medina Cruz:** El printline en JBM es así, ¿cierto?

### **01:36:33**

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Pero en otras plataformas no es así. Si estuviéramos en otra plataforma no ejecutaríamos el system.out.printline porque es exclusivo de Java.

**Martin Amaro:** Sí, como en Android, ¿no?

**Jesús Daniel Medina Cruz:** En el Android usamos el de Java. Esa no se la sabían, ¿verdad?

**Martin Amaro:** Ah, que también se puede usar para este el Linux, este web para Web Assembly para Ah, Ok.

**Jesús Daniel Medina Cruz:** Sí, sientes cambió. Entonces, esta es la magia de Kotlin. Esto es agnóstico a la plataforma. Pero cuando vamos entramos a digamos detrás de lo que estamos

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** viendo, hay cosas que son específicas para el JBM y saber que existen y cómo se definen les va a dar a dar ahorrar muchos problemas cuando quieran utilizar Cotlin en otras plataformas, porque esto detrás es se adapta para cada plataforma. Ahora es es un consejo que les que les voy a dar. Esto que que acabo de decirles, o sea, Cotlin se adapta para cada plataforma, significa que ustedes pueden adaptar su cotlin para cada plataforma. Dale. Recibe en Entonces, internamente si le mando un número, ejecuta la función tu string.

### **01:38:06** {#01:38:06}

**Jesús Daniel Medina Cruz:** Qué buena pregunta. Vamos a ver eso esto,

**Martin Amaro:** Y si le paso un arreglo.

**Jesús Daniel Medina Cruz:** ¿no? Ajá. Hay una función para otra

**Martin Amaro:** Ah. Okay.

**Jesús Daniel Medina Cruz:** para qué esa es lo que dice este Martín la método overlogading. Sí,

**Martin Amaro:** Ajá. Sí.

**Jesús Daniel Medina Cruz:** para casi cada tipo de dato hay una función diferente. Pero, ¿por qué? Porque en el system.out.printline printline ya hacían eso. Hay una función para el entero, hay otra función para el long y y y lo que tú dijiste para el entero se hace el tu string o en este caso string value Pero, pero la diferencia entre Es una pregunta muy interesante, muy interesante. Eh, mira, voy a dar la respuesta rápida, sin explicaciones. La diferencia entre el stream pun value off y el to string es este Java versus. No te dije nada, ¿verdad? No, a ver,

**Martin Amaro:** No.

**Jesús Daniel Medina Cruz:** el string punvalueof es una función estática de Java, pero el tu string eh en este caso es una función de extensión en COD. Esa es la diferencia.

### **01:39:37**

**Jesús Daniel Medina Cruz:** Sí.

**Martin Amaro:** Ay, sí, cierto. En Java no hay tu stream,

**Jesús Daniel Medina Cruz:** Ahora sí hay tu stream,

**Martin Amaro:** ¿verdad?

**Jesús Daniel Medina Cruz:** pero pero para ciertas clases si empieza como aí en tu clase. Ajá. Creo que tenías, yo me acuerdo que tenía que tenías que hacer tu two string. Dependiendo de la clase, algunos ya tenían su two string. Por ejemplo, si usas un string, este, ya tiene ciertas funciones. Si usas un integer, en lugar de int, el integer sí tiene tu string, pero el into. ¿Tiene sentido? El int sería eh un dato primitivo, el integería una clase que trabaja con enteros. Eh, y pues en Kotlin no tenemos datos primitivos. Interesante eso, ¿no? En Kotlin todos son clases, todos son objetos, perdón. Eh, me perdí, no sé en qué que estábamos. Bueno, hasta aquí alguna duda, ¿no? Pero fue un un buen comentario, buena aportación ahí. Eh, ¿dónde está el curso? Ya lo perdí. Ah, no, sí estaba.

### **01:40:51**

**Jesús Daniel Medina Cruz:** Sí, ¿no? Okay. Entonces dijimos, ya hicimos todo esto, ya lo ejecutamos. Ahora, eh, aquí lo que me gustaría es que ah, antes de continuar tenemos casi 20 minutos, ¿no? Sí. O sea, eh, alrededor de 20 minutos. La pregunta que tengo es si queremos este empezar la siguiente lección o discutimos sobre esta lección el tiempo que queda. Vamos profundizar todo lo que lo que quieran antes de empezar a meter otro concepto.

**Martin Amaro:** No sé, yo siento que de lo que vimos este estuvo bien y la siguiente elección no era muy larga porque son variables, ¿no? variables tipo, olvídalo. Vale.

**Jesús Daniel Medina Cruz:** No subestimes. Ya fue tu maestro, Daniel. No subestimes. ¿Qué tan profundo puede ser? Yeah. A ver, solo para hacer el énfasis, fíjense la profundidad del curso y nada más vimos esto. Vimos un print dudas y todavía quedan dudas.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** ¿Cuáles? Sácala del system a fondo como todo seguir entrando el system out. Aprovechamos el tiempo para meternos a profundidad con con el system out printline.

### **01:42:23** {#01:42:23}

**Martin Amaro:** Sí, sí, sí, sí.

**Jesús Daniel Medina Cruz:** Va. Okay. Vamos a ver por por partecitas. Okay. Eh, lo que les había explicado, esto sigue siendo Kotlin. Estamos en el console de Kotlin. Por cierto, les había dicho que se generaba el compilador automáticamente generaba el conso eh bueno, en este caso el archivo KT para en este

**Martin Amaro:** que es el nombre del file más el KT, Eh,

**Jesús Daniel Medina Cruz:** caso sí,

**Martin Amaro:** así.

**Jesús Daniel Medina Cruz:** para que la clase que se va a generar por el BCE se llame console KT, yo le puedo poner un nombre que yo quiera. Por ejemplo, si yo agarro esto de aquí y lo pongo aquí,

**Martin Amaro:** ¿Estás

**Jesús Daniel Medina Cruz:** le puedo decir hola. Y entonces él eh ya me lo quitó de aquí. Ay, ¿dónde?

**Martin Amaro:** en el

**Jesús Daniel Medina Cruz:** Acá está. Miren. Ah, ya.

**Martin Amaro:** Ahora, ahora tengo una duda, ¿eso para qué me sirve?

**Jesús Daniel Medina Cruz:** personalizar el nombre de clase.

**Martin Amaro:** digo, sí, sí, sí,

**Jesús Daniel Medina Cruz:** Sí, para eso. No sé, no entendí tu pregunta.

### **01:43:32**

**Jesús Daniel Medina Cruz:** Sí, creo que se refiere como que si lo puedes ocupar en alguna alguna ejecución real en no sé en un proyecto, o sea, para qué te sirve o pues es o sea o es nada más ahí para material didáctico para saber cómo se le cambia el nombre y con Okay.

**Martin Amaro:** si no más es para personalizar el nombre de la clase, pues es como Ok.

**Jesús Daniel Medina Cruz:** Cuando ustedes dicen si nada más es para personalizar, la programación está diseñada para personalizar. Entonces, no subestimen el poder de la personalización. pregunta, ¿qué pasaría si yo quisiera tener dos clases que se llamen igual?

**Martin Amaro:** No, pues no se puede. Bueno,

**Jesús Daniel Medina Cruz:** Claro,

**Martin Amaro:** no deberíarte.

**Jesús Daniel Medina Cruz:** no se puede, no se puede. No, pero si quisieras lo podrías hacer así ya nada más para que no te trene cuando esté compilando, eh, pues ocupas ese la no y ya no se va a morir. No se puede, aunque quisiera tener dos clases iguales, no se puede. Ah, pero por ejemplo, si tienes la clase como dice, tengo dos clases, ¿no? Justin y Justin, no. No, no se puede ocupar ese esa notación. Okay.

### **01:44:42**

**Jesús Daniel Medina Cruz:** Okay. No, no se puede. El compilador no me va a dejar escribirlo. Entonces, tú dirías, entonces, ¿de qué me sirve otra vez? No, no asumamos como que lo único que importa es el código que yo escribo. ¿Qué tal si pensamos un poquito en todos los main que existen por ahí y yo utilizo una librería y esa librería también tiene su propio main, ¿cómo le hace el compilador para diferenciar entre un main y el otro? Existe un no está el main principal,

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** decimos, ¿no? Y está la ruta, el package. Pero, ¿qué pasa cuando coinciden este tipo de cosas? Nosotros los desarrolladores podemos personalizar todo. El compilador entonces eh te genera algunas, digamos ah te automatiza la generación de algunos códigos, pero hay que entender principalmente que todo el código generado se puede personalizar y esta es la parte que más difícil se me hace a mí, que en este curso no lo vamos a a analizar, pero es el uso de anotaciones. Las anotaciones nos permiten autogenerar código y ese código autogenerado aprovecha los metadata para definir todas estas automatizaciones.

### **01:46:04** {#01:46:04}

**Jesús Daniel Medina Cruz:** Si el compilador va a leer un archivo, nosotros podemos decirle al compilador,

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** "Cuando leas este archivo, haz esto." Sí, sí, sí. Y así de de esta manera podemos personalizar un montón de cosas. Sí, es lo que me refirió, creo. Sí, perfecto. O sea, que si puedes tener en tu código, puedes tener dos clases iguales, ¿no? Por ejemplo, dos mains, como dijiste, dos clases, ¿no? Ya, pero pues ya a nivel de de virtual machine, o sea, nivel de B, tú puedes este hacer eso, ¿no? Decirle estas son diferentes, ¿no? El el detalle es que cuando tú quieras compilar eso no te va a dejar desde un principio cuando escribes el mismo compilador, si está el mismo paquete, misma clase, no te va a dejar, ¿no? Lo que yo decía es, ¿qué pasa cuando a nivel de dependencia tienes dos paquetes iguales, el compilador va a buscar sus trucos, pero los trucos que utiliza los puedes también utilizar tú? ¿Sí me explico? Nosotros lo que hacemos básicamente es dejar muchas cosas automáticas, pero esas cosas automáticas están accesibles para nosotros cuando las queramos utilizar.

### **01:47:09** {#01:47:09}

**Jesús Daniel Medina Cruz:** Es todo eso es eh Kotlin, ¿no? Que podemos ah dependiendo de la plataforma definir eh en ese caso específico ah personalizaciones para el código autogenerado. Pero ojo, esto es exclusivo para Java JBM en este caso. Sí, en otras plataformas se va a ver algo distinto. Aquí está interesante porque si se fijan se generaron estos metadatas. Si lo quito ya

**Martin Amaro:** Oye, Dani, y una pregunta, Este, en Cotlin, este, las notaciones son con el aro, ¿sí?

**Jesús Daniel Medina Cruz:** sí es lo

**Martin Amaro:** ¿Y qué diferencia tiene una notación de un decorador?

**Jesús Daniel Medina Cruz:** mismo. Es lo mismo.

**Martin Amaro:** Es lo mismo.

**Jesús Daniel Medina Cruz:** No más que lo distintos lenguajes, dependiendo del lenguaje le llamón, me acuerdo se llamaban decorador,

**Martin Amaro:** Ajá. Pues sí, por ejemplo, en Tycript este también son decoradores.

**Jesús Daniel Medina Cruz:** pero sí es lo mismo que lo llevan mm me parece

**Martin Amaro:** Okay. Okay.

**Jesús Daniel Medina Cruz:** me parece que no es exactamente lo mismo. A ver, podemos hacer dos cosas. buscamos este exactamente el concepto o lo dejamos para después les traigo la respuesta ya más completa porque nos estamos saltando, como les decía ya el tema de anotaciones está fuera del scope del curso, pero es muy interesante porque según yo no es exactamente lo mismo.

### **01:48:51**

**Jesús Daniel Medina Cruz:** ¿Estás buscando? Sí. No, no, no se queda. A ver, ¿qué encontraste? A ver, un decorador ejecuta código para modificar un comportamiento mientras que una anotación solo añade metadatos, sin cambiar cómo funciona el código por sí mismo.

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** Yo yo pensaba que no era lo mismo, porque en este caso nosotros lo que hacemos con las anotaciones es para los metadatos. Sí, sí, sí, sí.

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** Ya puedes volver a repetir porque me gustó la definición. Eh, un decorador ejecuta código para modificar un comportamiento. La interf anotación solo añade metadatos sin cambiar la ¿Cómo funciona el código de la función? Por pregúntale cómo se vería eso en en ejemplos de diferentes lenguajes. Ponle Cotlin y Typescript.

**Martin Amaro:** Sí, porque de hecho en TScript este Angular usa lo que es un patrón decorador donde tú puedes este programar tus propios decoradores este y inyectárselos a tus componentes, ¿no? a tus servicios, este,

**Jesús Daniel Medina Cruz:** que se me hace algo bien curioso que también,

**Martin Amaro:** etcétera.

**Jesús Daniel Medina Cruz:** o sea, por ejemplo, cuando ustedes vean algo en código, ustedes también podrían hacer su propio código.

### **01:50:05**

**Jesús Daniel Medina Cruz:** En este caso, algo que nunca he hecho, pero que he querido aprender es a hacer mis propias anotaciones. Nunca lo he hecho, pero me encantaría poder hacer mis propias anotaciones. Eh,

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** ¿quieres compartir tu pantalla para A ver, Justin compartir algo. Ah, eso no raro eso.

**Martin Amaro:** No, no, no. raro.

**Jesús Daniel Medina Cruz:** Es que digo, me quedé como como en la escuelita.

**Martin Amaro:** Aá.

**Jesús Daniel Medina Cruz:** Le pasé la palabra a Justin. Utiliza anotaciones por soldas, no hacen nada. que quieren que el compilador reflexion un framework como spring o lean esta etiqueta ejecuten código en consecuencia. Sí, dice, definimos una anotación, método pasivo, anotation class ocupa. Este es un curso este jugas de cómo hacer tus anotaciones personalizadas. Anotation class info. Le pones el parámetro, va a recibir y se se aplica en la anotación @info y pones el mensaje,

**Martin Amaro:** M.

**Jesús Daniel Medina Cruz:** una clase de usuario que es el parámetro que que definimos. Para que haga algo debemos leerla manualmente con código externo es la función main un

### **01:51:21** {#01:51:21}

**Martin Amaro:** No.

**Jesús Daniel Medina Cruz:** usuario es un usuario usuario que recibe un nombre anotación un usuario dos puntos anotation eso lo vamos a ver después en la clase de clases clase de clases mensaje guardando en la etiqueta. Okay, okay, okay. Ojo,

**Martin Amaro:** Okay.

**Jesús Daniel Medina Cruz:** anotación en Kotlin es metadatas. Sí, sí,

**Martin Amaro:** Metodatas. Sí.

**Jesús Daniel Medina Cruz:** no modifica el comportamiento de la de la función. Ahora typesam decorador leer este porque ya este tema no te lo domino. A ver, tú, Martin, sigues.

**Martin Amaro:** Okay, definimos el decorador es una función activa que modifica la clase. Ahí tenemos una pues una función congelar clase que recibe como parámetro el este constructor que pues es un tipo function y modifica la clase haciendo que no se pueda añadir nuevas propiedades. Ah, okay. La congela evitando que se pueda agregar. Okay. Y en el punto dos dice,"Aplicamos el decorador usando lais@h." Este, entonces tenemos una clase que se llama mensaje, este y utilizamos el decorador congelar clase. tenemos este que esa clase recibe bueno tiene texto dos puntos stream y tiene el consultor este y pues el tte texto igual al t que es el parámetro que sirve por consuor este y el comportamiento ya fue alterado automáticamente mi mensaje message es igual mundo.

### **01:53:07**

**Jesús Daniel Medina Cruz:** Oh, o sea,

**Martin Amaro:** mi mensaje. No, ya es

**Jesús Daniel Medina Cruz:** si puedes ejecutar el setter, pero cuando lo ejecutes te va a fallar

**Martin Amaro:** Okay. No entendí eso. Ni yo entendí eso.

**Jesús Daniel Medina Cruz:** el setter, el object.Fe Fre es es una función estándar

**Martin Amaro:** Ajá.

**Jesús Daniel Medina Cruz:** de eh JavaScript, la tienes que definir a nivel de eh ay, ¿cómo se llama? El navegador tiene algo que compila JavaScript, ¿cómo se llama? El interpreta intérprete, ¿no?

**Martin Amaro:** Sí, sí, sí, porque es un lenguaje interpretado, no es compilado. es el

**Jesús Daniel Medina Cruz:** Pero, pero, ¿cómo se llama? No, se llama consola de JavaScript. Se me olvidó el concepto, ¿cómo le llaman? Eh, vamos a llamarle como la máquina de JavaScript interna del navegador. Eh, tiene su librería estándar y esas algunas de las

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** funciones eh del objeto, digamos que son como funciones estáticas, es congelar eh funciones y también puedes congelar este propiedades. El el tema es que cuando tú congelas en JavaScript algo, cualquier cosa puedes congelar, digamos, ya lo puedes modificar el mismo el mismo intérprete, exactamente, te va a lanzar excepciones cuando detecte que estás tratando de modificarlo.

### **01:54:44**

**Jesús Daniel Medina Cruz:** No existe la inmutabilidad en JavaScript, pero la podemos simular a través del objet.fre. ¿Tiene sentido? O sea,

**Martin Amaro:** H

**Jesús Daniel Medina Cruz:** cuando tú tienes una constante, esto está bien interesante, en una, si tienes una constante en JavaScript, le puedes cambiar su valor. No sé si sabías, Martin. Yo yo entendí si Martín para mí es una función que lo que hace es que no puedas modificar eh tu clase,

**Martin Amaro:** Sí, sí, es sí,

**Jesús Daniel Medina Cruz:** ¿no?

**Martin Amaro:** sí,

**Jesús Daniel Medina Cruz:** O sea,

**Martin Amaro:** sí,

**Jesús Daniel Medina Cruz:** ya pues nada más este sí se cambiar el comportamiento de la clase porque supone que al ejecutar constructor pues debería ser capaz de modificar su propiedad,

**Martin Amaro:** sí.

**Jesús Daniel Medina Cruz:** pero pues aquí como lo congelaste pues cambió el comportamiento con la natación o no. Pero aquí hay una un matiz interesante. ¿Cuándo se ejecuta cada línea?

**Martin Amaro:** Eh

**Jesús Daniel Medina Cruz:** Esa es la parte interesante, ¿no? Primero el curador, ¿no? Según yo, primero es el constructor y luego lo congela.

**Martin Amaro:** sí, porque de hecho ahí en el ejemplo que te da en el cont mi mensaje sí te deja este la la que sí pasa es porque está por el constructor.

### **01:56:15**

**Martin Amaro:** este, le estás dando el parámetro por el conspor, pero cuando lo intentas este alterar este accediendo a la propiedad, porque si te das cuenta está este utilizando la la constante de mi mensaje,

**Jesús Daniel Medina Cruz:** Ah, sí.

**Martin Amaro:** que es la constante que ya está inicializada ahí este la la clase, intentas alterar la propiedad, no te deja porque el objectf este está aplicando

**Jesús Daniel Medina Cruz:** Ojo,

**Martin Amaro:** Este,

**Jesús Daniel Medina Cruz:** no estamos modificando la propiedad, estamos tratando de crear otra propiedad. Fíjense que el el atributo de la clase mensaje se llama texto, pero el mensaje le está agregar otra propiedad y no lo

**Martin Amaro:** sí, es cierto.

**Jesús Daniel Medina Cruz:** deja.

**Martin Amaro:** Mhm.

**Jesús Daniel Medina Cruz:** Ni siquiera te deja agregar más propiedades porque JavaScript te dejaría. Yeah. No,

**Martin Amaro:** Sí, sí, sí. Java si te dejaría.

**Jesús Daniel Medina Cruz:** pero en este caso ya como congelamos la clase, no es que no te deje modificar sus atributos, sino que no te deja modificar la clase como tal. La clase se queda ya estática. Mira, ya está. Estamos viendo cursos de de Types, ¿no? No, anotaciones versus decoradores. Este en en iba a decir en Inanache.

### **01:57:37** {#01:57:37}

**Jesús Daniel Medina Cruz:** En resumen, en sería este la anotación es metadato y el decorador es modificación de comportamiento y en Kotlin decoradores. En Typescrift no hay anotaciones que yo sepa. Eso fue lo que vimos también, ¿no? Bueno, este nos quedan 5 minutos. Podemos ver un montón de cosas en 5 minutos, pero yo creo que les voy a regalar estos 5 minutos a menos que tengan alguna duda específica. Algo, Martín, ya sé.

**Martin Amaro:** No.

**Jesús Daniel Medina Cruz:** Va, este, voy a terminar compartiendo mi pantalla y con eso damos por concluida la clase. Eh, les dejé al final un link de feedback. Voy a dejar preguntas y eso, pero este me encantaría que que ahí me me vayan dando feedback. Este es la primera vez que ando pidiendo feedback después de cada clase porque es la primera vez que doy este curso. Entonces, me ayudaría mucho así eh vamos construyendo cada vez un curso más avanzado. Y este lo digo para ustedes dos que han sido mis alumnos ya desde hace rato.

**Martin Amaro:** Ok.

**Jesús Daniel Medina Cruz:** Este no estaría mal que eventualmente ustedes también se animen a a dar alguna clase del del curso de Kotlin ahí por si luego se se animan.

### **01:59:07**

**Jesús Daniel Medina Cruz:** Va, deme su F. Nos vemos entonces hasta el siguiente sábado en la mañana. Pero ojo, aquí es muy importante. Eh, idealmente este jueguen con el laboratorio.

**Martin Amaro:** Sí.

**Jesús Daniel Medina Cruz:** No estoy diciendo que se adelante necesariamente, pero si se fijan, para mí jugar significa esto, ¿vale? No sé ustedes cómo jueguen con la programación, pero jugar significa irme metiendo, metiendo, metiendo a ver hasta dónde llego. Ahorita no llegamos todo, pero si lo quieren intentar, me gustaría ver si aprendieron algo ahí que a lo mejor yo no sé porque luego, o sea, no no me sé todo de memoria, pero eso para mí es jugar. Eh, si si les da tiempo, me encantaría que no necesariamente se adelanten, sino que profundicen lo más que puedan en lo que ya vimos. Y si les salen dudas, no duden en hacérmelas llegar por este Discord. o por WhatsApp. Ustedes me dicen, va por aquí.

**Martin Amaro:** Estoy usando Discord.

**Jesús Daniel Medina Cruz:** Dice Justin que él sí me va a preguntar aquí en persona.

**Martin Amaro:** Ah,

**Jesús Daniel Medina Cruz:** Los los Sí,

**Martin Amaro:** es es la es la ventaja.

**Jesús Daniel Medina Cruz:** los privilegios de la presencialidad. Ya luego este que vaya a Tijuana este nos vemos tú y yo, Martín.

**Martin Amaro:** Okay. Simón.

**Jesús Daniel Medina Cruz:** Va, pues eh damos por concluida la clase. Excelente. Todos tenemos sueño. Ahorita eh vamos a dormir. Ya luego nos echamos este una llamada más informal. Por ahora los dejo.

**Martin Amaro:** Okay, okay,

**Jesús Daniel Medina Cruz:** Muchas gracias por unirse al la primer clase del curso de Kotlin para principiantes. Felicidades. Gracias. Nos vemos.

**Martin Amaro:** nos vemos.

**Jesús Daniel Medina Cruz:** Ciao Martín.

**Martin Amaro:** By

### **La transcripción finalizó después de 02:01:02**

*Esta transcripción editable se generó por computadora y puede contener errores. Los usuarios también pueden cambiar el texto después de que se cree.*