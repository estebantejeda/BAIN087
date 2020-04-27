# Básico

## Aumentar caracteres

​	Para aumentar en número de caracteres que utiliza Octave se debe escribir:

~~~octave
format long
~~~

## Evitar impresión

​	Para evitar la impresión de las variables, se le debe agregar un `;` al final.

## Imprimir en pantalla

~~~octave
disp("TEXTO")
~~~

​	`disp()` solo permite _strings_, por lo que si queremos añadir una variable, esta debe convertirse previamente con `num2str()`.

## Funciones útiles

* `round(x)`: Redondea los elementos de _x_ al entero más cercano.
* `fix(x)`: Elimina los decimales de _x_.
* `rem(x, n)`: Indica el resto de la división de _x_ por _n_.

# Matrices

​	Las matrices inician con el índice 1 y son dinámicos.

## Vectores

### Fila

~~~octave
V = [a, b, c, ..., n]
~~~

### Columna

~~~
V = [a; b; c; ...; n]
~~~

## Multidimensional

~~~
V = [a, b, c; d, e, f; g, h, i]
~~~

## Métodos

### Matriz identidad

~~~octave
I = eye(n)
~~~

### Matriz de ceros

~~~octave
S = zeros(m,n)
~~~

### Matriz de unos

~~~octave
O = ones(m,n)
~~~

### Matriz aleatoria

~~~octave
R = rand(m,n)
~~~

### Matriz traspuesta

~~~octave
T = A'
~~~

## Operaciones

### Elemento

​	Para hacer operaciones de cada elemento se debe utilizar un punto `.` y luego la operación.

### Matricial

​	Se usa la operación sin un punto. La operación se realiza utilizando las reglas de operaciones entre matrices.

# Operadores

​	Los operadores lógicos trabajan con binarios.

* Distinto: `~=`

* Conjunción: `&&`
* Disyunción: `||`
* Negación: `~`

# Condicional

~~~octave
if()
	%code
elseif()
	%code
else
	%code
endif
~~~

# Funciones

La sintaxis es la siguiente:

~~~octave
function A = NOMBRE(PARAMETROS)
	%code
	return
endfunction
~~~

* `A` puede ser un arreglo, por lo que se puede retornar más de una variable.
* Se recomiendo que un archivo por función, además de que el nombre del archivo debe ser el mismo que el de la función.