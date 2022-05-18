
CREATE DATABASE Bares --Creacion de QuitaPenas (Comentar si ya creada)

Use Bares --Usar la base de datos actual

CREATE TABLE Horario(
HorarioID int PRIMARY KEY NOT NULL,
HoraEntrada datetime NOT NULL,
HoraSalida datetime NOT NULL
)

CREATE TABLE Puesto(
PuestoID int PRIMARY KEY NOT NULL,
NombrePuesto nvarchar(30) NOT NULL,
Descripcion nvarchar(50) NOT NULL,
Salario float NOT NULL
)

CREATE TABLE Estado(
EstadoID int PRIMARY KEY NOT NULL,
Descripcion nvarchar(50) NOT NULL,
)

CREATE TABLE Cliente(
ClienteID int PRIMARY KEY NOT NULL,
Nombre nvarchar(50),
Apellido nvarchar(100),
TarjetaBancaria nvarchar(30) UNIQUE,
NumeroCliente nvarchar(20) UNIQUE
)

CREATE TABLE Proveedor(
ProveedorID Int PRIMARY KEY NOT NULL,
NombreCompania nvarchar(50) UNIQUE,
NombreContacto nvarchar(50) UNIQUE,
TelefonoProveedor nvarchar(15) UNIQUE,
DireccionProveedor nvarchar(50) UNIQUE,
CodigoPostal nvarchar(10) NOT NULL
)

CREATE TABLE TipoProducto(
TipoProductoID int PRIMARY KEY NOT NULL,
NombreTipoProducto nvarchar(30) NOT NULL,
Descripcion text,
)

CREATE TABLE Municipio(
MunicipioID int PRIMARY KEY NOT NULL,
EstadoID int FOREIGN KEY REFERENCES Estado(EstadoID) NOT NULL,
Descripcion text 
)

CREATE TABLE Productos(
ProductoID int PRIMARY KEY NOT NULL,
NombreProducto nvarchar(50) NOT NULL,
Disponible nvarchar(10),
Cantidad int,
PrecioUnidad float,
TipoProductoID int FOREIGN KEY REFERENCES TipoProducto(TipoProductoID)
)

CREATE TABLE DetalleProveedor(
ProductoID Int FOREIGN KEY REFERENCES Productos(ProductoID) NOT NULL,
ProveedorID Int FOREIGN KEY REFERENCES Proveedor(ProveedorID) NOT NULL,
PRIMARY KEY(ProductoID,ProveedorID)
)

CREATE TABLE Empleado(
EmpleadoID int PRIMARY KEY NOT NULL,
Nombre nvarchar(40) NOT NULL,  --Name
Apellidos nvarchar (40) NOT NULL, --Lastname
Correo varchar(60) UNIQUE,
LugarNacimiento nvarchar(60) NOT NULL,
Sueldo float NOT NULL,
HorarioID int FOREIGN KEY REFERENCES Horario(HorarioID) NOT NULL,
MunicipioID int FOREIGN KEY REFERENCES Municipio(MunicipioID) NOT NULL,
GerenteID int FOREIGN KEY REFERENCES Empleado(EmpleadoID),
PuestoID int FOREIGN KEY REFERENCES Puesto(PuestoID)
)

CREATE TABLE EmpleadoMunicipio(
EmpleadoID int FOREIGN KEY REFERENCES Empleado(EmpleadoID) NOT NULL,
MunicipioID int FOREIGN KEY REFERENCES Municipio(MunicipioID) NOT NULL,
PRIMARY KEY(EmpleadoID,MunicipioID)
)

CREATE TABLE Mesas(
MesaID int PRIMARY KEY NOT NULL,
NumeroSillas int,
Ancho int,
Largo int,
MeseroID int FOREIGN KEY REFERENCES Empleado(EmpleadoID)
)

CREATE TABLE CajeroPersona(
EmpleadoID int PRIMARY KEY FOREIGN KEY REFERENCES Empleado(EmpleadoID) NOT NULL,
RegistradoraID int,
)

CREATE TABLE Comanda(
ComandaID int PRIMARY KEY NOT NULL,
Importe float NOT NULL,
MeseroID int FOREIGN KEY REFERENCES Empleado(EmpleadoID),
CajeroID int FOREIGN KEY REFERENCES CajeroPersona(EmpleadoID),
ClienteID int FOREIGN KEY REFERENCES Cliente(ClienteID),
MesaID int FOREIGN KEY REFERENCES Mesas(MesaID)
)

CREATE TABLE DetalleComanda(
ComandaID int FOREIGN KEY REFERENCES Comanda(ComandaID) NOT NULL,
ProductoID int FOREIGN KEY REFERENCES Productos(ProductoID) NOT NULL,
PRIMARY KEY(ComandaID,ProductoID)
)

CREATE TABLE Ticket(
TicketID int PRIMARY KEY NOT NULL,
Descripcion text,
PagoTotal float NOT NULL,
Fecha datetime NOT NULL,
MetodoPago nvarchar(30),
CajeroID int Foreign Key References CajeroPersona(EmpleadoID) NOT NULL,
ComandaID Int Foreign Key References Comanda(ComandaID) UNIQUE NOT NULL,
ClienteID int Foreign Key References Cliente(ClienteID) NOT NULL
)

CREATE TABLE DetalleTicket(
TicketID int FOREIGN KEY REFERENCES Ticket(TicketID),
ComandaID int FOREIGN KEY REFERENCES Comanda(ComandaID),
PRIMARY KEY (TicketID, ComandaID)
)


