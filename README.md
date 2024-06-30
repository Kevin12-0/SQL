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
