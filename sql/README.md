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

```sql
-- Procedimiento almacenado para insertar un producto, se defe de darle un nombre empezando por SP

CREATE PROCEDURE SP_INS_PRODCUTO(
    @descripcion VARCHAR(50),
    @color VARCHAR(50),
    @precio MONEY
) 
AS
-- INSERT productos o INSERT valores
INSERT INTO PRODUCTOS VALUES(@descripcion,@color,@precio);

-- usar el proceso pora insertar valores en el proceso

EXEC SP_INS_PRODCUTO 'PANTS DEPORTIVO','BLACK',750;
```

```sql
-- PROCESO ALMACENADO PARA REALIZAR SELECT A UNA TABLA

CREATE PROCEDURE SP_SEL_PRODUCTO(
    @IdProducto int = 0 -- en caso de no devolver algo, se devuelve toda la tabla
) AS
if @IdProducto >0
    SELECT * FROM PRODUCTOS WHERE IdProducto = @IdProducto
ELSE
    SELECT * FROM PRODUCTOS ORDER BY descripcion

-- EJECUCION DEL PROCESO ALMACENADO DEBUELVE EL ID 3
EXEC SP_SEL_PRODUCTO 3

-- EJECUCION Y DEBUELVE LA TABLA COMPLETA

EXEC SP_SEL_PRODUCTO 
```