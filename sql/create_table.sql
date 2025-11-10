CREATE TABLE VENTA(
    idVenta int,
    idProdcuto int,
    cantidad int,
    fechaVenta datetime,
    CONSTRAINT PK_venta PRIMARY KEY (idVenta)
);


INSERT INTO PRODUCTOS VALUES(
    'remera manga larga','Roja',250
);
INSERT INTO PRODUCTOS VALUES(
    'camisa','Azul',250
);
INSERT INTO PRODUCTOS VALUES(
    'playera','Blanca',250
);

--comando select con condicionales
-- para eso usar where y lo puedes filtrar con la clausula where

SELECT * FROM productos WHERE precio >140 AND color='blanca';
SELECT * FROM PRODUCTOS;


-- eleminar con delete

-- se elemina donde el id sea 3
DELETE FROM PRODUCTOS WHERE IdProducto = 3;

SELECT * FROM PRODUCTOS;


-- Procedimiento almacenado para insertar un producto

CREATE PROCEDURE SP_INS_PRODCUTO(
    @descripcion VARCHAR(50),
    @color VARCHAR(50),
    @precio MONEY
) 
AS
-- INSERT productos o INSERT valores
INSERT INTO PRODUCTOS VALUES(@descripcion,@color,@precio);

-- usar el proceso

EXEC SP_INS_PRODCUTO 'PANTS DEPORTIVO','BLACK',750;