# Crear una tabla en sql server

```sql
    CREATE TABLE [dbo].[NewTable] (
        [IdProducto]  INT          IDENTITY (1, 1) NOT NULL,
        [descripcion] VARCHAR (50) NULL,
        [color]       VARCHAR (50) NULL,
        [precio]      MONEY        NULL,
        CONSTRAINT [PK_NewTable] PRIMARY KEY CLUSTERED ([IdProducto] ASC)
    );
```

```sql
CREATE TABLE VENTA(
    idVenta int,
    idProdcuto int,
    cantidad int,
    fechaVenta datetime,
    CONSTRAINT PK_venta PRIMARY KEY (idVenta)
);
```

# Insertar valores en la tabla

```sql
INSERT INTO PRODUCTOS VALUES(
    'remera manga larga','Roja',250
);
INSERT INTO PRODUCTOS VALUES(
    'camisa','Azul',250
);
INSERT INTO PRODUCTOS VALUES(
    'playera','Blanca',250
);
```

# comando select con condicionales para eso usar where y lo puedes filtrar con la clausula where

```sql
SELECT * FROM productos WHERE precio >140 AND color='blanca';
```

```sql
SELECT * FROM PRODUCTOS;
```

# eliminar un registro con DELETE, se borra el registro que tenga un id igual a 3

```sql
DELETE FROM PRODUCTOS WHERE IdProducto = 3;
```

# Procedimiento almacenado

Conjunto de instrucciones que se pueden ejecutar de forma repetida, algo asi como una funcion en un lenguaje de programacion. Ayuda a  ejecutar bloques de codigo o relizar tareas complejas.


