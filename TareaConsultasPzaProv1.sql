CREATE DATABASE PiezaProveedor;
Use PiezaProveedor;
CREATE TABLE Pieza (
   codPza INTEGER PRIMARY KEY NOT NULL,
   nomPza VARCHAR(20) NOT NULL
 );
 CREATE TABLE Proveedor (
  codProv INTEGER PRIMARY KEY NOT NULL,
  nomProv VARCHAR(20) NOT NULL
 );
 CREATE TABLE Provee (
   codPza INTEGER  NOT NULL,
   codProv INTEGER NOT NULL,
   precio INTEGER NOT NULL,
   FOREIGN KEY (codPza) REFERENCES Pieza(codPza),
   FOREIGN KEY (codPROV) REFERENCES Proveedor(codProv)
 );
 #POBLAR LA BD
 INSERT INTO Proveedor(codProv, nomProv) VALUES(100,'Empresas Clarck');
 INSERT INTO Proveedor(codProv, nomProv) VALUES(101,'Royal Corp.');
 INSERT INTO Proveedor(codProv, nomProv) VALUES(102,'SPT Repuestos');
 INSERT INTO Proveedor(codProv, nomProv) VALUES(103,'Winner Corp.');
 INSERT INTO Proveedor(codProv, nomProv) VALUES(104,'Empresas Luque');
 
 INSERT INTO Pieza(codPza, nomPza) VALUES(1,'Alicate');
 INSERT INTO Pieza(codPza, nomPza) VALUES(2,'Desarmador');
 INSERT INTO Pieza(codPza, nomPza) VALUES(3,'Taladro');
 INSERT INTO Pieza(codPza, nomPza) VALUES(4,'Martillo');
 
 INSERT INTO Provee(codPza, codProv, precio) VALUES(1,100,10);
 INSERT INTO Provee(codPza, codProv, precio) VALUES(1,101,15);
 INSERT INTO Provee(codPza, codProv, precio) VALUES(2,100,10);
 INSERT INTO Provee(codPza, codProv, precio) VALUES(2,102,15);
 INSERT INTO Provee(codPza, codProv, precio) VALUES(2,103,100);
 INSERT INTO Provee(codPza, codProv, precio) VALUES(3,101,15);
 INSERT INTO Provee(codPza, codProv, precio) VALUES(3,102,15);
 INSERT INTO Provee(codPza, codProv, precio) VALUES(4,103,100);
 INSERT INTO Provee(codPza, codProv, precio) VALUES(4,104,70);
 
 # CONSULTAS
 SELECT * FROM Proveedor;
 SELECT * FROM Pieza;
 SELECT * FROM Provee;
 
 # CONSULTAS de TAREA
 # se darán por plataforma