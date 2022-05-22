
--CREATE DATABASE Bares --Creacion de QuitaPenas (Comentar si ya creada)

Use Bares --Usar la base de datos actual

CREATE TABLE Horario(
HorarioID nvarchar(30) PRIMARY KEY NOT NULL,
HoraEntrada time NOT NULL,
HoraSalida time NOT NULL
)
--AutoIncremento
CREATE TABLE Puesto(
PuestoID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
NombrePuesto nvarchar(30) NOT NULL,
Descripcion nvarchar(50) NOT NULL,
Salario money NOT NULL
)

CREATE TABLE Estados(
EstadoID int PRIMARY KEY NOT NULL,
Descripcion nvarchar(50) NOT NULL,
)
--Autoincremento
CREATE TABLE Cliente(
ClienteID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
Nombre nvarchar(50),
Apellido nvarchar(100),
TarjetaBancaria nvarchar(30) UNIQUE,
NumeroClienteContacto nvarchar(20) UNIQUE
)
--Autoincremento
CREATE TABLE Proveedor(
ProveedorID Int IDENTITY(1,1) PRIMARY KEY NOT NULL,
NombreCompania nvarchar(50) UNIQUE,
NombreContacto nvarchar(50) UNIQUE,
TelefonoProveedor nvarchar(15) UNIQUE,
DireccionProveedor nvarchar(100) UNIQUE,
CodigoPostal nvarchar(10) NOT NULL
)
--Quite Descripcion y auto incremento
CREATE TABLE TipoProducto(
TipoProductoID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
NombreTipoProducto nvarchar(30) NOT NULL
)

CREATE TABLE Municipios(
MunicipioID int PRIMARY KEY NOT NULL,
Nombre nvarchar(100),
EstadoID int FOREIGN KEY REFERENCES Estados(EstadoID) NOT NULL
)
--Auto Incremento
CREATE TABLE Productos(
ProductoID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
NombreProducto nvarchar(50) NOT NULL,
Cantidad int,
PrecioUnidad money,
TipoProductoID int FOREIGN KEY REFERENCES TipoProducto(TipoProductoID)
)

CREATE TABLE DetalleProveedor(
ProductoID Int FOREIGN KEY REFERENCES Productos(ProductoID) NOT NULL,
ProveedorID Int FOREIGN KEY REFERENCES Proveedor(ProveedorID) NOT NULL,
PRIMARY KEY(ProductoID,ProveedorID)
)
--Auto Incremento
CREATE TABLE Empleado(
EmpleadoID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
Nombre nvarchar(40) NOT NULL,  --Name
Apellidos nvarchar (40) NOT NULL, --Lastname
Correo varchar(60) UNIQUE,
LugarNacimiento nvarchar(60) NOT NULL,
Direccion nvarchar(100) NOT NULL,
HorarioID nvarchar(30) FOREIGN KEY REFERENCES Horario(HorarioID) NOT NULL,
MunicipioID int FOREIGN KEY REFERENCES Municipios(MunicipioID) NOT NULL,
GerenteID int FOREIGN KEY REFERENCES Empleado(EmpleadoID),
PuestoID int FOREIGN KEY REFERENCES Puesto(PuestoID) NOT NULL
)
--Auto Incremento
CREATE TABLE Usuarios(
UsuarioID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
NombreUsuario nvarchar(40),
Contrasenia nvarchar(40),
PuestoID int FOREIGN KEY REFERENCES Puesto(PuestoID) NOT NULL
)
--Auto Incremento
CREATE TABLE Mesas(
MesaID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
NumeroSillas int,
Ancho int,
Largo int
)

CREATE TABLE MeseroAtiendeMesa(
MesaID int FOREIGN KEY REFERENCES Mesas(MesaID),
EmpleadoID int FOREIGN KEY REFERENCES Empleado(EmpleadoID),
PRIMARY KEY(MesaID,EmpleadoID)
)
--Auto Incremento
CREATE TABLE Comanda(
ComandaID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
MeseroID int FOREIGN KEY REFERENCES Empleado(EmpleadoID),
CajeroID int FOREIGN KEY REFERENCES Empleado(EmpleadoID),
MesaID int FOREIGN KEY REFERENCES Mesas(MesaID)
)
---Quite Descripcion y Auto Incremneto
CREATE TABLE Ticket(
TicketID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
PagoTotal money NOT NULL,
Fecha date NOT NULL,
MetodoPago nvarchar(30),
ComandaID int Foreign Key References Comanda(ComandaID) UNIQUE NOT NULL,
EmpleadoID int Foreign Key References Empleado(EmpleadoID) NOT NULL
)
--Auto Incremento
CREATE TABLE Factura(
FacturaID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
Correo nvarchar(100) NOT NULL,
RFC nvarchar(13) NOT NULL,
Fecha date NOT NULL,
TicketID int FOREIGN KEY REFERENCES Ticket(TicketID),
ClienteID int FOREIGN KEY REFERENCES Cliente(ClienteID)
)

CREATE TABLE DetalleComanda(
ComandaID int FOREIGN KEY REFERENCES Comanda(ComandaID) NOT NULL,
Linea int NOT NULL, 
ProductoID int FOREIGN KEY REFERENCES Productos(ProductoID) NOT NULL,
Cantidad int NOT NULL,
PRIMARY KEY(ComandaID,Linea),
)

CREATE TABLE DetalleTicket(
TicketID int FOREIGN KEY REFERENCES Ticket(TicketID),
ComandaID int NOT NULL,
Linea int NOT NULL,
ProductoID int FOREIGN KEY REFERENCES Productos(ProductoID) NOT NULL,
Cantidad int,
Precio money,
PRIMARY KEY (TicketID, ComandaID, Linea)
)

ALTER TABLE DetalleTicket
ADD CONSTRAINT FK_DetalleTicket_DetalleComanda
FOREIGN KEY (ComandaID,Linea) REFERENCES DetalleComanda(ComandaID,Linea)


