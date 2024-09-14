---
toc: true 
toc_sticky: true
categories: 
   - Guía
tags:
   - Lenguaje
   - Programación
   - C/C++
   - Tutorial
   - Desarrollo
   - Temas
---

El lenguaje C se utiliza principalmente en el desarrollo de kernels, firmware y aplicaciones de alto rendimiento, como la librería NumPy de Python. Por ello, en el siguiente artículo le enseñaremos el lenguaje C desde cero, para que pueda utilizarlo con diversos fines.

## Introducción 
```c
#include <stdio.h>

int main(){
   printf("Hello World \n");

   return 0;
}
```

Al observar el siguiente código en lenguaje C, surgen diversas preguntas, por lo que se explicarán cada una de ellas.

El código comienza siguiendo paso a paso las siguientes indicaciones:

- Se utiliza la directiva ```#include``` para importar la librería ```stdio.h``` *(Standard Input/Output)* mediante los signos de mayor y menor.

- Luego, vemos una función, que es la función principal y la primera en ejecutarse en el programa. **¿Qué es una función?** Una función es un bloque de código que nos permite realizar alguna operación, la cual puede recibir datos de entrada y también puede regresar una salida, aunque ambos son opcionales.

- Se especifica un tipo de dato, en este caso ```int```, porque es una función que va a devolver un valor. En este caso, el valor es 0, y lo hace a través de la instrucción ```return```.

- Dentro de los paréntesis se proporciona la información de entrada, y dentro de las llaves se encuentra el cuerpo de la función, donde nos encontramos con la función ```printf```, que se encarga de imprimir información en la consola. Esta información se proporciona dentro de los paréntesis.

- ```\n``` es un carácter especial que se conoce como salto de línea. 

En resumen, el código se encarga de mostrar el mensaje ```hello world``` en la consola, seguido de un salto de línea. Cada línea de código debe terminar con un punto y coma, excepto cuando se utilizan llaves en las funciones, ya que estas indican que se está abriendo y cerrando un bloque de código. Además, los comentarios en el lenguaje C se realizan con ```// o /* */```, los cuales no se ejecutan y solo sirven para comentar ciertas partes del código.
