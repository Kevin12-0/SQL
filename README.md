# SQL

# Consultas basicas de SQL (Seleccion de columnas)

## seleccionar todo el contenido de una tabla

```SQL
SELECT * FROM nombre_tabla;
```

## seleccionar solo una columna de una tabla

```sql
SELECT nombre_campo FROM nombre_tabla;
```

## seleccionar varias columnas de una tabla

```sql
SELECT nombre, apellido, edad FROM nombre_tabla;
```


## Asignar alias a una columna en una consulta

```sql
SELECT col1 AS col_nombre1 FROM tabla;
```

## Asignar varios alias a varias columnas

```sql
SELECT col1 AS col_nombre1, col2 AS col_nombre2 FROM tabla;
```

## Asignar alias con comillas o espacion

```sql
SELECT nombre_completo, sueldo AS "Salario de Empleados" FROM tabla;
```

# Uso de mayor que
si disponemos de una tabla llamada "productos" con la columna precio, podemos recuperar todas las filas en las que el precio sea mayor a 100.
```sql
SELECT * FROM productos WHERE precio > 100;
```

# operador mayor o igual que

El operador mayor o igual que (>=) se utiliza para seleccionar registros en los que el valor de una columna sea mayor o igual a un valor específico.

```sql
SELECT * FROM productos WHERE precio >= 100;
```

# operador "menor que" <

se utiliza para comparar valores y seleccionar filas donde el valor de una columna sea estrictamente menor que un valor específico. Este operador es útil cuando queremos filtrar registros y obtener aquellos que tienen un valor menor a un límite determinado

```sql
SELECT * FROM productos WHERE precio < 100;
```

# operador "menor o igual que" <=

operador 'menor o igual que' (<=) en una condición para seleccionar registros en los que el valor de una columna sea menor o igual a un valor dado.

```sql
select * from productos where precio <= 100;
```
# Seleccionando multiples filas bajo una condición

algunas situaciones seleccionaremos ciertas columnas y a la vez aplicaremos condiciones

```sql
select nombre,precio,cantidad from productos where  cantidad > 6;
```

#  filas bajo una condición de igualdad

Para seleccionar un valor en específico utilizaremos el operador =

```sql
select nombre from usuarios where id = 2
```

# filas bajo una condición de igualdad (tipo de dato string)

para comparar textos debemos utilizar comillas simples ('')

```sql
select * from productos where nombre = 'Pantalón';
```

```sql
select * from productos where nombre = 'Silla de Oficina'
```

# filas bajo una condición de igualdad (tipo de dato booleano true)

tipo de dato Boolean, el cual puede guardar como valor verdadero o falso, TRUE o FALSE.

```sql
select id, nombre, apellido, email, telefono, status from usuarios where status = true;
```

```sql
select id, nombre, apellido, email, telefono, status from usuarios where status = 1;
```

# bajo una condición de igualdad (tipo de dato booleano false)

tipo de dato Boolean, el cual puede guardar como valor verdadero o falso, TRUE o FALSE.

```sql
select id, nombre, apellido, email, telefono, status from usuarios where status = false;
```

```sql
select id, nombre, apellido, email, telefono, status from usuarios where status = 0;
```

# Utilizando dos condiciones con operador "and"

La claúsula WHERE se puede combinar con el operador AND para juntar múltiples condiciones en una consulta SQL.

```sql
SELECT * FROM usuarios WHERE nombre = 'Juan' AND apellido = 'Pérez';
```
# operador "OR"

El operador OR se utiliza para combinar múltiples condiciones en una cláusula WHERE en SQL. Cuando se usa el operador OR, al menos una de las condiciones debe ser verdadera para que el registro se incluya en el resultado.

```sql
select * from productos where precio > 100 or descuento = 20;
```

# Seleccionando una fecha

Otro tipo de dato es el de fecha, Date en inglés. Por defecto, las fechas se guardan en un formato YYYY-MM-DD, indicando primero el año en 4 dígitos, luego el mes con dos dígitos y finalmente el día con dos dígitos.

```sql
select * from productos where fecha_de_creacion > '2021-05-01';
```

# datos entre dos valores con "between"

El operador BETWEEN se utiliza para seleccionar registros cuyos valores se encuentren dentro de un rango específico.

```sql
select * from productos where stock between 20 and 30;
```

# Seleccionando filas con "like"

Supongamos que queremos buscar todos los usuarios cuyo nombre empiece con la letra 'J' en la tabla de usuarios. Podemos hacer esto utilizando la siguiente consulta:
```sql
SELECT * FROM usuarios WHERE nombre LIKE 'J%'
```
```sql
select * from usuarios where apellido like 'Ma%'
```

# Seleccionando con comodin al principio

Supongamos que queremos buscar todos los usuarios cuyo nombre termine con la letra 's'

```sql
SELECT * FROM usuarios WHERE nombre LIKE '%s'
```

# Seleccionando registros sin valores nulos

Algunos registros pueden tener valores nulos para algunos de sus campos.

Para seleccionar todos los valores no nulos utilizaremos 'IS NOT NULL'
```sql
select * from productos where descuento is not null
```

# Seleccionando registros con valores nulos

Así como podemos seleccionar valores no nulos, también podemos seleccionar valores nulos.

```sql
select * from usuarios where email is null;
```

# Ordenando filas

ORDER BY se utiliza para ordenar los resultados de una consulta según una o más columnas. Por defecto, se ordena de forma ascendente.

Es importante tener en cuenta que las claúsulas tienen que especificarse justo en este orden:

1. SELECT
2. FROM
3. ORDER BY

```SQL
SELECT * FROM USUARIOS ORDER BY NOMBRE
```

# Ordenando filas asc explicito

Con la claúsula ORDER BY podemos especificar la dirección de los resultados. Se puede ordenar en orden ascendente (ASC) o descendente (DESC).

```sql
select * from usuarios order by nombre asc
```

```SQL
select precio from productos order by precio desc
```

```sql
select * from empleados order by salario asc
```

# Ordenando con nulos al final

A veces necesitamos que los valores nulos queden al principio o al final de la lista independiente de en cual direccion ordenemos. Para lograrlo utilizarmos ORDER BY junto con NULLS FIRST o NULLS LAST para especificar cómo queremos que se ordenen las filas con valores nulos.

Con NULLS FIRST se muestran los nulos primeros y con NULLS LAST se muestran al final

```sql
select * from productos order by precio nulls last
```

# Combinaciones de orden

En algunas situaciones vamos a querer ordenar en función de múltiples columnas. Por ejemplo, si queremos obtener una lista de todos los productos ordenados por su stock y luego por su color, podemos seleccionar todos los campos de la tabla y ordenarlos primero por el campo stock y luego por el campo color de la siguiente manera:

```SQL
select * from empleados order by salario asc, nombre asc
```

# Combinaciones de orden asc y desc

```sql
select * from productos order by stock desc, color asc
```

# limitar resultados

La cláusula LIMIT se utiliza para limitar la cantidad de resultados devueltos por una consulta. Esto es útil cuando sólo necesitamos ver una cierta cantidad de registros en lugar de todos los registros que cumplan con la condición de la consulta.

```sql
select * from usuarios order by id limit 3
```

# Transformando un string a mayúsculas

Para transformar un string a mayúsculas en SQLITE podemos utilizar la función UPPER().

```sql
SELECT UPPER(nombre) FROM usuarios;

select upper(email) as email_upper from usuarios;
```

# Trasformando un string a minúsculas

La función LOWER() en SQLite se utiliza para convertir todos los caracteres de un texto a minúsculas. 

```sql
select lower(email) as email_lower from usuarios
```

# Quitando espacios en blanco de un string

En SQLite la función TRIM() se utiliza para eliminar los espacios en blanco iniciales y finales de un string.

```sql
select trim(nombre), trim(email) from usuarios
```

# Combinando funciones

En SQL podemos combinar funciones. Veamos un ejemplo combinando LOWER y TRIM :
```sql
SELECT LOWER(TRIM(email)) as email_limpios from usuarios;

select lower(trim(nombre)) as NOMBRE_LIMPIO, LOWER(trim(apellido)) as apellido_limpio, lower(trim(email))
as email_limpio from usuarios
```

# Obteniendo el largo de un string

```sql
select length(apellido) from usuarios
```

# Obteniendo el nombre mas largo de la tabla


