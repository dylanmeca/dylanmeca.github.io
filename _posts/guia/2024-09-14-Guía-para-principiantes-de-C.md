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

# Introducción 
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

# Variables
Las variables nos permiten almacenar datos o información proporcionada en nuestros programas. Por ejemplo:

```c
int numero = 7;
```

También es posible declarar primero la variable y luego asignarle un valor, como en el siguiente ejemplo:

```c
int numero;
numero = 7;
```

Las variables se componen de los siguientes elementos:

1. **Nombre**: Nos permite acceder fácilmente a la dirección de memoria, lo cual es muy importante para poder almacenar y recuperar información.
2. **Valor almacenado (tipo de dato)**: Para almacenar un valor, es necesario especificar un tipo de dato.
3. **Dirección de memoria (RAM)**: La información se almacena en la memoria RAM.

En resumen, una variable permite almacenar un valor proporcionado, y se compone de un nombre, un tipo de dato y una dirección de memoria.

## Tipos de Memoria
![Memoria-RAM-ROM](/assets/img/guia-clanguage/Memoria-RAM-ROM.png)

- La **ROM (Read Only Memory)**, una memoria de solo lectura que almacena información una única vez y, a partir de ese momento, no es posible escribir más información.

- La **RAM (Random Access Memory)**, conocida en español como **memoria de acceso aleatorio**, nos permite almacenar la información cambiante de nuestros programas, ya que es una memoria de lectura y escritura, como, por ejemplo, las variables.

## ¿Cómo se almacena la información en la Memoria RAM?
En la memoria RAM tenemos varias celdas, y la sección donde se almacenan las variables de nuestro programa se conoce como **stack (pila en español)**. A medida que vamos creando variables en nuestro programa, utilizamos cierta cantidad de celdas.

- **¿Por qué se llama stack?** Porque vamos agregando nuestros elementos uno a uno conforme se van definiendo y ejecutando en el programa. Estos elementos se apilan como en una pila, pero en orden inverso: a medida que dejan de usarse, se retiran según el orden en que fueron añadidos.
  - Estos elementos se van agregando hacia la parte inferior, y conforme se eliminan, se van retirando de la memoria.

> El concepto de memoria heap se utiliza principalmente en lenguajes de programación orientados a objetos, mientras que el lenguaje C solo soporta programación estructurada. Esto significa que las instrucciones de código se ejecutan únicamente de forma secuencial, por lo que se ejecutan una a una, desde la parte superior hasta la parte inferior del código.
