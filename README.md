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

