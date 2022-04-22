--Creacion de QuitaPenas
Use Bares --Usar la base de datos actual

CREATE TABLE Region(
RegionID int Primary Key,
NombreRegion varchar(30),
Descripcion text
)

CREATE TABLE Empleado(
EmpleadoID int Primary Key,
Nombre varchar(40) NOT NULL,  --Name
Apellidos varchar (40) NOT NULL, --Lastname
Correo varchar(60) UNIQUE,
Horario char NOT NULL,
Sueldo float NOT NULL,
Puesto varchar(20) NOT NULL,
RegionID int Foreign Key References Region(RegionID) NOT NULL, --Foreign Key de la PK Sucursal (De la tabla Sucursal)
GerenteID int Foreign Key References Empleado(EmpleadoID) NOT NULL
)

CREATE TABLE Mesero(
MeseroID int Primary key Foreign Key References Empleado(EmpleadoID),
CantidadMesas Int NOT NULL
)

CREATE TABLE CajeroPersona(
CajeroID int Primary key Foreign Key References Empleado(EmpleadoID),
RegistradoraID Int NOT NULL
)

CREATE TABLE Cliente(
ClienteID int Primary Key,
Nombre varchar(100),
Apellido varchar(100),
TarjetaBancaria varchar(30) UNIQUE,
NumeroCliente varchar(20) UNIQUE
)

CREATE TABLE Mesa(
NumeroMesa Int Primary Key,
NumeroSillas Int NOT NULL,
Ancho Int,
Largo Int,
MeseroID Int Foreign Key References Mesero(MeseroID)
)

CREATE TABLE Proveedor(
ProveedorID Int Primary Key,
NombreCompania varchar(50) UNIQUE,
NombreContacto varchar(50) UNIQUE,
TelefonoProveedor varchar(20) UNIQUE,
DireccionProveedor varchar(20) UNIQUE,
CodigoPostal varchar(10) NOT NULL
)

CREATE TABLE TipoProducto(
TipoProductoID Int Primary Key,
NombreTipoProducto varchar(30) NOT NULL,
Descripcion text,
)

CREATE TABLE Productos(
ProductoID Int Primary Key,
NombreProducto varchar(30) NOT NULL,
Disponible varchar(10) NOT NULL,
TipoProductoID Int Foreign Key References TipoProducto(TipoProductoID)
)

CREATE TABLE DetalleProveedor(
ProductoID Int Foreign Key References Productos(ProductoID),
ProveedorID Int Foreign Key References Proveedor(ProveedorID),
Cantidad int NOT NULL,
PrecioUnidad money NOT NULL
Primary Key(ProductoID,ProveedorID)
)

CREATE TABLE Comanda(
ComandaID Int Primary Key,
Importe money NOT NULL,
MeseroID Int Foreign Key References Mesero(MeseroID),
CajeroID Int Foreign Key References CajeroPersona(CajeroID),
ClienteID Int Foreign Key References Cliente(ClienteID),
NumeroMesa Int Foreign Key References Mesa(NumeroMesa)
)

CREATE TABLE Ticket(
TicketID Int Primary key,
Sucursal varchar(30) NOT NULL,
Descripcion varchar(30) NOT NULL,
PagoTotal money NOT NULL,
Fecha Datetime NOT NULL,
MetodoPago varchar(30) NOT NULL,
CajeroID int Foreign Key References CajeroPersona(CajeroID) NOT NULL,
ComandaID Int Foreign Key References Comanda(ComandaID) UNIQUE NOT NULL,
ClienteID int Foreign Key References Cliente(ClienteID) NOT NULL
)

CREATE TABLE DetalleComanda(
ComandaID Int Foreign Key References Comanda(ComandaID),
ProductoID Int Foreign Key References Productos(ProductoID),
Cantidad int NOT NULL,
PrecioUnidad money NOT NULL
Primary Key (ComandaID,ProductoID)
)


SELECT * from Empleado
Insert INTO Cliente(ClienteID,Nombre,Apellido,TarjetaBancaria,NumeroCliente) Values(1,'Miguel','Vargas','19547772312132','112312')