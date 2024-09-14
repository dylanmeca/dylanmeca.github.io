---
categories: 
   - Noticias
tags:
   - C/C++
   - Lenguajes seguros
   - NSA
   - Programación
---

**Bjarne Stroustrup, el creador del lenguaje C++**, publicó objeciones **del informe de la NSA donde se aconseja a las organizaciones** que consideren hacer un cambio estratégico de los lenguajes de programación que
proporcionar poca o ninguna protección de memoria inherente, como C/C++, a un lenguaje seguro para la memoria
cuando sea posible. Algunos ejemplos de **lenguajes seguros para la memoria son C#, Go, Java, Ruby™ y Swift®.**

<img src="https://upload.wikimedia.org/wikipedia/commons/c/c1/Hello_World_C%2B%2B.png" width="400px" height="257px">

Según Bjarne Stroustrup, los lenguajes seguros mencionados por la NSA **no son realmente superiores a c++ en aplicaciones importantes**.

> Ahora, si considerara cualquiera de esos lenguajes "seguros" superiores a C++ para la gama de usos que me interesan,
no consideraría la desaparición de C/C++ como algo malo, pero ese no es el caso. También, como se describe,
"seguro" se limita a la seguridad de la memoria, dejando fuera del orden de una docena de otras formas en que un idioma podría
(y será) utilizado para violar alguna forma de seguridad y protección.

Bjarne Stroustrup cree que **un buen analizador estático que cumpla con las directrices principales de C++** puede proporcionar las **garantías de seguridad necesarias para el código C++** a un costo mucho menor que cambiar a nuevos lenguajes de programación seguros.

Por ejemplo, la mayoría de las directrices principales ya están implementadas en el analizador estático y el perfil **seguro para la memoria de Microsoft Visual Studio**. Algunas de las recomendaciones también se tienen en cuenta en el **analizador estático clang tidy**.

El informe de la NSA **también fue criticado por centrarse solo en problemas de memoria**, sin abordar muchos otros problemas del lenguaje de programación que afectan la seguridad y la confiabilidad.

> Eso excluye específica y explícitamente a C y C++ como inseguros. Como es demasiado común, agrupa C y C++
en la categoría única C/C++, ignorando más de 30 años de progreso. Desafortunadamente, gran parte del uso de C++ también está atascado
en el pasado distante, ignorando las mejoras, incluidas las formas de mejorar drásticamente la seguridad.
Ahora, si considerara cualquiera de esos lenguajes "seguros" superiores a C++ para la gama de usos que me interesan,
no consideraría la desaparición de C/C++ como algo malo, pero ese no es el caso.

**Bjarne Stroustrup no está de acuerdo** con el hecho de que la publicación de la NSA limita la noción de proteger el 
software a la de proteger la memoria. En realidad, **este aspecto es un denominador común de todas las publicaciones que aconsejan 
desechar C o C++ en favor del lenguaje Rust** por las garantías de seguridad del software que varias grandes empresas (Microsoft, Amazon, etc.) lo reconocen.

> No existe una sola definición de "seguridad", y podemos lograr una variedad de tipos de seguridad a través de un
combinación de estilos de programación, bibliotecas de soporte y aplicación mediante análisis estático. P2410r0
ofrece un breve resumen del enfoque. Preveo opciones del compilador y anotaciones de código para solicitar
reglas a cumplir. La más obvia sería solicitar seguridad total garantizada de tipo y recurso.
P2687R0 es un comienzo de cómo el estándar puede soportar esto, R1 será más específico. Naturalmente, los comentarios
y las sugerencias son muy bienvenidas.

Bjarne Stroustrup **ve la seguridad como un concepto más amplio**, cuyas diversas facetas se pueden lograr mediante una combinación de 
**estilo de codificación, bibliotecas y analizadores estáticos**. Para controlar la inclusión de reglas que **garanticen la seguridad de 
trabajar con tipos y recursos**, se propone utilizar anotaciones en el código y opciones del compilador.

En aplicaciones **donde el rendimiento es más importante que la seguridad**, este enfoque permite el uso selectivo de 
herramientas que garantizan la seguridad solo donde se necesita. Las **herramientas de mejora de la seguridad también 
se pueden aplicar parcialmente**, como limitar primero las reglas de verificación e inicialización del rango y luego 
adaptar gradualmente el código a requisitos más estrictos.

Finalmente, si deseas leer la publicación del creador de C++ puedes consultarlo en el [siguiente enlace](https://www.open-std.org/jtc1/sc22/wg21/docs/papers/2023/p2739r0.pdf).
