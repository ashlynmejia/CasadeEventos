create table casa_de_eventos(
    nombre varchar(25) primary key,
    reservacion varchar(20),
    evento varchar(36),
    tiempo_contrato varchar(10),
    cedula integer
);

create table decoracion(
    id varchar(15) primary key,
    gastronomia varchar(15),
    topico varchar(40),
    color_principal varchar(5)
);

create table personal(
    nombre varchar(25) primary key,
    cedula integer,
    especialidad varchar(60),
    sueldo varchar(10)
);

create table contrato(
    tiempo_contrato varchar(15) primary key,
    especialidad varchar(18),
    sueldo varchar(10)
);

create table evento(
    nombre varchar(30),
    especialidad varchar(36),
    fecha_hora date,

    primary key (nombre,
    especialidad,fecha_hora)
);

alter table casa_de_eventos
add foreign key (cedula) 
references decoracion (id);

alter table decoracion
add foreign key (color_principal)
references evento (evento);

alter table personal
add foreign key (sueldo)
references contrato (tiempo_contrato);

alter table evento
add foreign key (nombre)
references decoracion (topico);

alter table evento
add foreign key (nombre)
references nombre (personal);