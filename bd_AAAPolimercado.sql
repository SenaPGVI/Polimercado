-- Database: AAAPolimercado

-- DROP DATABASE IF EXISTS "AAAPolimercado";

CREATE DATABASE "AAAPolimercado"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Spain.1252'
    LC_CTYPE = 'Spanish_Spain.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
		
	
	--Tabla categoria
create table categoria(
    idcategoria serial primary key,
	nombre varchar (50) not null unique, 
	descripcion varchar(256) null, 
	condicion boolean not null default true

);
INSERT INTO categoria (nombre,descripcion) values ( 'frutas','');

select * from categoria;

--tabla articulo
create table articulo(
    idarticulo serial primary key,
	idcategoria integer not null,
	codigo varchar (50) null,
	nombre varchar (100) not null unique, 
	precio_venta decimal (11,2) not null,
	stock integer not null,
	descripcion varchar(256) null, 
	condicion boolean not null default true,
	FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria)
);
--tabla usuario
create table usuario(
    idcategoria serial primary key,
	nombre varchar (50) not null unique, 
	contraseña decimal (13,2) not null,
	descripcion varchar(256) null, 
	condicion boolean not null default true,
	FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria)
	);
--tabla administrador
create table administrador(
	idadministrador serial primary key,
	tipo_administrador varchar (20) not null, 
	nombre varchar (100) not null,
	tipo_documento varchar(20) null,
    num_documento varchar (20)null,
	direccion varchar (70) null, 
	telefono varchar (20) null,
    correo varchar (50) null
);

--tabla ingreso
create table ingreso(
	idingreso serial primary key,
	idproveedor integer not null,
	idusuario integer not null, 
	tipo_comprobante varchar (20)not null, 
	serie_comprobante varchar (7) null, 
	nun_coprobante varchar (10) not null,
	nun_orden varchar (10) not null, 
	fecha_hora timestamp without time zone DEFAULT ('now'::text)::timestamp(6)with time zone not null, 
	impuesto decimal (4,2) not null,
	subtotal decimal (11,3) not null, 
	total decimal (11,2) not null, 
	estado varchar (20) not null, 
	FOREIGN KEY (idproveedor) REFERENCES administrador (idadministrador)
);

--tabla detalle_ingreso
create table detalle (
    iddetalle_ingreso serial primary key,
	idingreso integer not null, 
	idarticulo integer not null, 
	cantidad integer not null, 
	precio decimal(11,2) not null,
	FOREIGN KEY (idingreso) REFERENCES ingreso(idingreso)
);

--tabla venta
create table venta(
	idventa serial primary key, 
	idcliente integer not null, 
	idusuario integer not null, 
	tipo_comprobante varchar (20) not null, 
	serie_comprobante varchar (10) null,
	num_comprobante varchar (10) not null, 
	fecha_hora timestamp without time zone DEFAULT ('now'::text)::timestamp(6)with time zone not null,
	impuesto decimal (4,2)not null,
	subtotal decimal (11,3) not null,
	total decimal (11,2) not null,
	estado varchar (20)not null,
	FOREIGN KEY (idcliente) REFERENCES administrador (idadministrador)
); 
