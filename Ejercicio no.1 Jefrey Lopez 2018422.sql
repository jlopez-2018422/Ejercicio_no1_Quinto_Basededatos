CREATE DATABASE DBEjericio_1;

USE DBEjericio_1;
DROP DATABASE  DBEjericio_1;
CREATE TABLE Proveedores(
	CodigoProveedor INT AUTO_INCREMENT NOT NULL,
    NombreProveedor VARCHAR (45),
    DireccionProveedor VARCHAR (45),
    PRIMARY KEY (CodigoProveedor)
    );

CREATE TABLE Productos(
    Codigodebarra INT AUTO_INCREMENT NOT NULL,
    NombreProducto VARCHAR (45) NOT NULL,
    Precio REAL(10,2) NOT NULL,
    CodigoProveedor_ INT NOT NULL,
    PRIMARY KEY (Codigodebarra),
	FOREIGN KEY (CodigoProveedor_)
    REFERENCES Proveedores (CodigoProveedor)
);

CREATE TABLE Clientes(
   DPI BIGINT(13) NOT NULL,
   NombreCliente VARCHAR(45) NOT NULL,
   ApellidoCLiente VARCHAR (45) NOT NULL,
   DireccionCliente VARCHAR(45) NOT NULL,
   TelefonoCLiente VARCHAR (45) NOT NULL,
   CodigoProducto_ INT NOT NULL,
   PRIMARY KEY (DPI),
   FOREIGN KEY (CodigoProducto_)
   REFERENCES Productos(Codigodebarra)
);

--  5 INSERT
--  1 LISTA POR ENTIDAD 
--  1 BUSQUEDAD POR ENTIDAD
-- 1 ALTER 
-- 5 update proveedores
-- 1 delete por entidad

/*---------------------------------------INSERTS----------------------------------------------------*/
INSERT INTO Proveedores (NombreProveedor,DireccionProveedor) 
VALUES ('Coca Cola','Zona 15,Ciudad de Guatemala');
INSERT INTO Proveedores (NombreProveedor,DireccionProveedor) 
VALUES ('Nestle','Zona 18,Ciudad de Guatemala ');
INSERT INTO Proveedores (NombreProveedor,DireccionProveedor) 
VALUES ('Kellogs','Zona 5, Ciudad de Guatemala');
INSERT INTO Proveedores (NombreProveedor,DireccionProveedor) 
VALUES ('Great Value','Zona 2, Ciudad de Guatemala');
INSERT INTO Proveedores (NombreProveedor,DireccionProveedor) 
VALUES ('Danone','Zona 1, Ciudad de Guatemala');

/*---------------------------------------INSERTS----------------------------------------------------*/
INSERT INTO Productos (NombreProducto,Precio,CodigoProveedor_)
VALUES ('Coca Cola','6.00', 1 );
INSERT INTO Productos (NombreProducto,Precio,CodigoProveedor_)
VALUES ('Nido','60.00', 2 );
INSERT INTO Productos (NombreProducto,Precio,CodigoProveedor_)
VALUES ('Corn Flakes','34.00', 3 );
INSERT INTO Productos (NombreProducto,Precio,CodigoProveedor_)
VALUES ('Arandano Uva','14.00', 4 );
INSERT INTO Productos (NombreProducto,Precio,CodigoProveedor_)
VALUES  ('Danone Yogurt','7.00', 5 );

/*---------------------------------------INSERTS----------------------------------------------------*/
INSERT INTO Clientes(DPI,Nombrecliente,ApellidoCliente,DireccionCliente,TelefonoCliente,CodigoProducto_) 
VALUES ('123456789098','Antonio','García','5 nta. Calle 1-66, Zona 9','34233243','1');
INSERT INTO Clientes(DPI,Nombrecliente,apellidocliente,DireccionCliente,TelefonoCliente,CodigoProducto_)  
VALUES ('6789054321456','Gabriel','Moreno','2da. Avenida 2-19 zona 4','02346503','2');
INSERT INTO Clientes(DPI,Nombrecliente,apellidocliente,DireccionCliente,TelefonoCliente,CodigoProducto_) 
VALUES ('2345187690874','Eliana','López','4ta. Avenida, entre 3ra. y 2da. calle, zona 9','32042323', '3');
INSERT INTO Clientes(DPI,Nombrecliente,apellidocliente,DireccionCliente,TelefonoCliente,CodigoProducto_) 
VALUES ('8907651234691','Mario','Muñoz','8a. Calle 1-66, Zona 9','45758934', '4');
INSERT INTO Clientes(DPI,Nombrecliente,apellidocliente,DireccionCliente,TelefonoCliente,CodigoProducto_) 
VALUES ('1890754632487','Ximena','Cifuentes','2da. Calle “B” 3-06 Zona 21','12368835','5');

/*---------------------------------------Listar (Select)----------------------------------------------------*/
SELECT 
    P.CodigoProveedor,
    P.NombreProveedor,
    P.DireccionProveedor
    FROM Proveedores P;

SELECT 
    Pr.Codigodebarra,
    Pr.NombreProducto,
    Pr.Precio,
    Pr.CodigoProveedor_
    FROM Productos PR;
    
SELECT 
    C.DPI,
    C.NombreCliente,
    C.ApellidoCliente,
    C.DireccionCLiente,
    C.TelefonoCLiente,
    C.CodigoProducto_
    FROM Clientes C;
    
/*---------------------------------------Buscar----------------------------------------------------*/
SELECT 
    P.CodigoProveedor,
    P.NombreProveedor,
    P.DireccionProveedor
    FROM Proveedores P WHERE CodigoProveedor = 1;
    
SELECT 
    Pr.Codigodebarra,
    Pr.NombreProducto,
    Pr.Precio,
    Pr.CodigoProveedor_
    FROM Productos PR WHERE Codigodebarra = 1;
    
SELECT 
    C.DPI,
    C.NombreCliente,
    C.ApellidoCliente,
    C.DireccionCLiente,
    C.TelefonoCLiente,
    C.CodigoProducto_
    FROM Clientes C WHERE CodigoProducto_ = 1 ;
    
/*---------------------------------------Alter----------------------------------------------------*/

ALTER TABLE Proveedores add TelefonoProveedor VARCHAR (8);

SELECT * FROM Proveedores;
/*---------------------------------------Update----------------------------------------------------*/

UPDATE Proveedores 
    SET TelefonoProveedor = '43569870'
       WHERE CodigoProveedor = 1;

UPDATE Proveedores 
    SET TelefonoProveedor = '23568901'
       WHERE CodigoProveedor = 2;
       
UPDATE Proveedores 
    SET TelefonoProveedor = '40672305'
       WHERE CodigoProveedor = 3;
       
UPDATE Proveedores 
    SET TelefonoProveedor = '87860910'
       WHERE CodigoProveedor = 4;
       
UPDATE Proveedores 
    SET TelefonoProveedor = '12543678'
       WHERE CodigoProveedor = 5;

/*---------------------------------------Eliminar----------------------------------------------------*/
DELETE 
FROM Clientes
WHERE CodigoProducto_ = 1;

SELECT * FROM Clientes ;