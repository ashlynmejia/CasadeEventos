create table casa_de_eventos(
    nombre varchar(25) primary key,
    reservacion varchar(20),
    evento varchar(36),
    tiempo_contrato integer,
    cedula integer
);

create table decoracion(
    id integer primary key auto_increment,
    gastronomia varchar(15),
    topico varchar(40),
    color_principal varchar(5)
);

create table personal(
    nombre varchar(25) primary key,
    cedula integer,
    especialidad varchar(60),
    sueldo integer
);

create table contrato(
    tiempo_contrato varchar(15) primary key,
    especialidad varchar(18),
    sueldo integer
);

create table evento(
    nombre varchar(30),
    evento varchar(36),
    fecha_hora date,

    primary key (nombre,
    evento, fecha_hora)
);

alter table casa_de_eventos
add foreign key (cedula) 
references contrato (tiempo_contrato);

alter table decoracion
add foreign key (color_principal)
references casa_de_eventos (nombre);

alter table personal
add foreign key (sueldo)
references eventos (nombre);

alter table eventos
add foreign key (nombre)
references contrato (tiempo_contrato);

alter table eventos
add foreign key (evento)
references decoracion (id); 