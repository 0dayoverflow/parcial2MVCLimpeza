create database if not exists limpieza; 
use limpieza;
CREATE TABLE IF NOT EXISTS `limpieza`.`cuenta` (
  `usuario` VARCHAR(20) NOT NULL,
  `contraseña` VARCHAR(5) NULL,
  PRIMARY KEY (`usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `limpieza`.`jefecuadrilla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `limpieza`.`jefecuadrilla` (
  `idjefe` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idjefe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `limpieza`.`cuadrilla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `limpieza`.`cuadrilla` (
  `nombre` VARCHAR(15) NOT NULL,
  `jefecuadrilla_idjefe` INT NOT NULL,
  PRIMARY KEY (`nombre`),
  CONSTRAINT `fk_cuadrilla_jefecuadrilla`
    FOREIGN KEY (`jefecuadrilla_idjefe`)
    REFERENCES `limpieza`.`jefecuadrilla` (`idjefe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `limpieza`.`actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `limpieza`.`actividad` (
  `idactividad` INT NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(15) NOT NULL,
  `actividadcol` BLOB NULL,
  `detalles` VARCHAR(500) NOT NULL,
  `cuadrilla_nombre` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`idactividad`),
  CONSTRAINT `fk_actividad_cuadrilla1`
    FOREIGN KEY (`cuadrilla_nombre`)
    REFERENCES `limpieza`.`cuadrilla` (`nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `limpieza`.`colonias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `limpieza`.`colonias` (
  `asentmiento` VARCHAR(100) NOT NULL,
  `codigopostal` INT(5) NULL,
  PRIMARY KEY (`asentmiento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `limpieza`.`colonias_has_actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `limpieza`.`colonias_has_actividad` (
  `colonias_asentmiento` VARCHAR(100) NOT NULL,
  `actividad_idactividad` INT NOT NULL,
  CONSTRAINT `fk_colonias_has_actividad_colonias1`
    FOREIGN KEY (`colonias_asentmiento`)
    REFERENCES `limpieza`.`colonias` (`asentmiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_colonias_has_actividad_actividad1`
    FOREIGN KEY (`actividad_idactividad`)
    REFERENCES `limpieza`.`actividad` (`idactividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
insert into colonias values ('Saltillo Centro', 25000);
insert into colonias values ('Vista Hermosa', 25010);
insert into colonias values ('Privada la Misión', 25010);
insert into colonias values ('Privada la Campana', 25010);
insert into colonias values ('Nuevo Saltillo', 25010);
insert into colonias values ('Solidaridad', 25010);
insert into colonias values ('15 de Septiembre', 25013);
insert into colonias values ('El Monte del Sinaí', 25013);
insert into colonias values ('Ampliación Morelos', 25013);
insert into colonias values ('Privada Morelos', 25013);
insert into colonias values ('10 de Abril', 25014);
insert into colonias values ('San Pedro de los Pinos', 25014);
insert into colonias values ('Cecilia Ocelli de Salinas', 25014);
insert into colonias values ('Fundadores', 25015);
insert into colonias values ('Fuentes del Pedregal', 25015);
insert into colonias values ('Edgar Puente', 25015);
insert into colonias values ('Nueva Vida', 25015);
insert into colonias values ('Villa de Santiago', 25015);
insert into colonias values ('Lomas del Pedregal', 25015);
insert into colonias values ('Valle de las Aves', 25015);
insert into colonias values ('Salomón Abedrop', 25015);
insert into colonias values ('Lomas de San Francisco', 25015);
insert into colonias values ('Nueva Independencia', 25015);
insert into colonias values ('Nuevo Progreso', 25015);
insert into colonias values ('Introductores de Ganado', 25015);
insert into colonias values ('Popular Loma Blanca', 25016);
insert into colonias values ('Loma Linda', 25016);
insert into colonias values ('Gaspar Valdez', 25016);
insert into colonias values ('Francisco I Madero Rústico', 25016);
insert into colonias values ('Morelos', 25017);
insert into colonias values ('Ampliación Morelos Segundo Sector', 25017);
insert into colonias values ('Conquistadores', 25019);
insert into colonias values ('La Nogalera', 25019);
insert into colonias values ('El Cerrito', 25019);
insert into colonias values ('Nueva Tlaxcala', 25019);
insert into colonias values ('Rubén Jaramillo', 25019);
insert into colonias values ('Tierra y Libertad', 25019);
insert into colonias values ('La Morita', 25019);
insert into colonias values ('Nueva Imagen', 25019);
insert into colonias values ('El Ejido', 25019);
insert into colonias values ('Nuevo Amanecer', 25019);
insert into colonias values ('Las Candelarias', 25019);
insert into colonias values ('Postal Cerritos', 25019);
insert into colonias values ('San José', 25019);
insert into colonias values ('Santa María', 25019);
insert into colonias values ('Las Maravillas', 25019);
insert into colonias values ('Provivienda', 25020);
insert into colonias values ('San Ramón', 25020);
insert into colonias values ('Urdiñola', 25020);
insert into colonias values ('Zapaliname', 25020);
insert into colonias values ('Indio', 25020);
insert into colonias values ('Valle de San Ramón', 25020);
insert into colonias values ('Universidad Pueblo', 25023);
insert into colonias values ('La Palma', 25023);
insert into colonias values ('El Paraíso', 25023);
insert into colonias values ('San Vicente', 25023);
insert into colonias values ('Arboledas Popular', 25023);
insert into colonias values ('Loma Bonita', 25023);
insert into colonias values ('Valle de las Palmas', 25023);
insert into colonias values ('Agua Azul', 25030);
insert into colonias values ('Arcos de Belén', 25030);
insert into colonias values ('González Cepeda', 25030);
insert into colonias values ('Loma de Santa Anita', 25030);
insert into colonias values ('Santa Anita', 25034);
insert into colonias values ('Esther Santos', 25034);
insert into colonias values ('Huertas de Venancio', 25036);
insert into colonias values ('Condesa', 25038);
insert into colonias values ('Ampliación San Ramón', 25038);
insert into colonias values ('Deimos', 25039);
insert into colonias values ('Ojo de Agua', 25040);
insert into colonias values ('Viramontes', 25040);
insert into colonias values ('Balcones de Bellavista', 25040);
insert into colonias values ('Héroes de Chapultepec', 25043);
insert into colonias values ('Zapateros', 25045);
insert into colonias values ('Burócratas del Estado', 25048);
insert into colonias values ('Lomas de Chapultepec', 25048);
insert into colonias values ('Simón Bolívar', 25049);
insert into colonias values ('Benito Juárez', 25050);
insert into colonias values ('María del Carmen Cabello', 25050);
insert into colonias values ('Centenario', 25050);
insert into colonias values ('Chapultepec', 25050);
insert into colonias values ('La Madrid', 25050);
insert into colonias values ('Rosa María Gutiérrez', 25050);
insert into colonias values ('El Salvador', 25056);
insert into colonias values ('Jesús Cabello', 25057);
insert into colonias values ('Lomas de San Javier', 25057);
insert into colonias values ('Bellavista', 25060);
insert into colonias values ('Segovia Gil', 25060);
insert into colonias values ('Lázaro Cárdenas', 25060);
insert into colonias values ('Los Arcos', 25060);
insert into colonias values ('Lucio Blanco', 25060);
insert into colonias values ('Miravalle', 25060);
insert into colonias values ('San Lorenzo Oriente', 25060);
insert into colonias values ('Luis Donaldo Colosio', 25060);
insert into colonias values ('La Central', 25060);
insert into colonias values ('Bellavista Mesa de Arizpe', 25060);
insert into colonias values ('Huertas de San Lorenzo', 25065);
insert into colonias values ('15 de Abril', 25065);
insert into colonias values ('Jesús Garcia Corona', 25065);
insert into colonias values ('Patria Libre', 25065);
insert into colonias values ('Nueva Reforma', 25065);
insert into colonias values ('Quinta Valle', 25067);
insert into colonias values ('Quinta Esmeralda', 25068);
insert into colonias values ('Villa Universidad', 25069);
insert into colonias values ('Valle de Lourdes', 25069);
insert into colonias values ('Landin', 25070);
insert into colonias values ('Lomas de Guadalupe', 25070);
insert into colonias values ('Lourdes', 25070);
insert into colonias values ('Balcones de Landin', 25070);
insert into colonias values ('26 de Marzo', 25075);
insert into colonias values ('Ferrocarrilero 7 de Noviembre', 25075);
insert into colonias values ('Buenos Aires', 25076);
insert into colonias values ('Los Balcones de Buenavista', 25077);
insert into colonias values ('Valle Alto', 25077);
insert into colonias values ('Eulalio Gutiérrez Treviño', 25080);
insert into colonias values ('Girasol', 25080);
insert into colonias values ('Froylán Mier Narro', 25080);
insert into colonias values ('Los Periodistas', 25080);
insert into colonias values ('El Refugio la Soledad', 25083);
insert into colonias values ('Lomas del Sur', 25084);
insert into colonias values ('Valle de San Lorenzo', 25084);
insert into colonias values ('La Estrella', 25084);
insert into colonias values ('Las Rosas', 25084);
insert into colonias values ('Guadalupe Victoria', 25085);
insert into colonias values ('Genaro Vázquez Rojas', 25085);
insert into colonias values ('El Latifundio', 25085);
insert into colonias values ('Burócratas Municipales', 25086);
insert into colonias values ('Ampliación 26 de Marzo', 25086);
insert into colonias values ('Ampliación Girasol', 25087);
insert into colonias values ('Viñedos el Álamo', 25088);
insert into colonias values ('Agua Nueva', 25088);
insert into colonias values ('Ricardo Flores Magón', 25088);
insert into colonias values ('Nueva Jerusalén', 25088);
insert into colonias values ('El Álamo', 25088);
insert into colonias values ('23 de Noviembre', 25088);
insert into colonias values ('El Progreso', 25088);
insert into colonias values ('María del Carmen Cavazos', 25088);
insert into colonias values ('12 de Octubre', 25088);
insert into colonias values ('La Esperanza', 25088);
insert into colonias values ('San Juanita', 25088);
insert into colonias values ('El Álamo II', 25088);
insert into colonias values ('Mario Ortiz Rodríguez', 25088);
insert into colonias values ('Lomas de Lourdes', 25090);
insert into colonias values ('Lomas de Santa Cruz', 25092);
insert into colonias values ('Las Huertas de Lourdes', 25092);
insert into colonias values ('Los Buitres', 25093);
insert into colonias values ('10 de Mayo', 25093);
insert into colonias values ('Mesa de Lourdes', 25093);
insert into colonias values ('Ampliación Colinas del Sur', 25093);
insert into colonias values ('Los Buitres II', 25093);
insert into colonias values ('Miguel Hidalgo', 25096);
insert into colonias values ('María de León', 25096);
insert into colonias values ('Federico Berrueto Ramón Popular', 25096);
insert into colonias values ('Lomas Verdes', 25096);
insert into colonias values ('Vicente Guerrero', 25097);
insert into colonias values ('Nazario S Ortiz Garza', 25100);
insert into colonias values ('Industrial Valle de Saltillo', 25100);
insert into colonias values ('Omega', 25100);
insert into colonias values ('La Purísima', 25100);
insert into colonias values ('Asturias', 25107);
insert into colonias values ('Rincón de Asturias', 25107);
insert into colonias values ('Nuevo México', 25107);
insert into colonias values ('Nuevo Atardecer', 25110);
insert into colonias values ('Evaristo Pérez Arreola', 25110);
insert into colonias values ('Flora Ortega', 25110);
insert into colonias values ('La Florencia', 25110);
insert into colonias values ('Satélite Sur', 25113);
insert into colonias values ('Satélite Norte', 25115);
insert into colonias values ('San Isidro', 25116);
insert into colonias values ('Francisco I Madero', 25120);
insert into colonias values ('Pedregal de los Santos Sur', 25123);
insert into colonias values ('Ejido Padres Santos', 25123);
insert into colonias values ('La Magueyada', 25123);
insert into colonias values ('Ejido la Vega', 25123);
insert into colonias values ('Las Cumbres', 25124);
insert into colonias values ('Rancho Flores', 25124);
insert into colonias values ('Loma Dorada', 25124);
insert into colonias values ('Ocho de Enero', 25124);
insert into colonias values ('Roma', 25125);
insert into colonias values ('Adolfo López Mateos', 25125);
insert into colonias values ('Josefa Ortiz de Domínguez', 25128);
insert into colonias values ('Puerto de Flores', 25128);
insert into colonias values ('1° de Mayo', 25128);
insert into colonias values ('Anáhuac', 25130);
insert into colonias values ('Antonio Cárdenas', 25130);
insert into colonias values ('Gustavo Espinosa Mireles', 25130);
insert into colonias values ('Isabel Amalia Dávila', 25130);
insert into colonias values ('Pueblo Insurgentes', 25137);
insert into colonias values ('Paraíso', 25137);
insert into colonias values ('González Norte', 25138);
insert into colonias values ('Cerro del Pueblo', 25140);
insert into colonias values ('Ejército Constitucionalista', 25140);
insert into colonias values ('Independencia', 25140);
insert into colonias values ('Panteones', 25140);
insert into colonias values ('Las Mitras', 25140);
insert into colonias values ('Sierras del Poniente', 25140);
insert into colonias values ('Azteca', 25140);
insert into colonias values ('Valle de San Antonio', 25140);
insert into colonias values ('Campo Verde', 25140);
insert into colonias values ('Obrera', 25140);
insert into colonias values ('María Luisa', 25140);
insert into colonias values ('Antonio Cárdenas Sur', 25140);
insert into colonias values ('Oscar Flores Tapia', 25146);
insert into colonias values ('Loma Alta', 25147);
insert into colonias values ('Alfredo V Bonfil', 25150);
insert into colonias values ('Mirador', 25150);
insert into colonias values ('Universo', 25150);
insert into colonias values ('Valle de las Flores Popular', 25150);
insert into colonias values ('Ejido la Minita', 25154);
insert into colonias values ('Los Balcones', 25155);
insert into colonias values ('Puerto de la Virgen', 25155);
insert into colonias values ('Rincón de Guadalupe', 25155);
insert into colonias values ('Valle del Poniente', 25155);
insert into colonias values ('Las Margaritas', 25155);
insert into colonias values ('Francisco Villa', 25156);
insert into colonias values ('Los Fresnos', 25157);
insert into colonias values ('Valle Escondido', 25157);
insert into colonias values ('Valle Escondido Sur', 25157);
insert into colonias values ('Venustiano Carranza', 25157);
insert into colonias values ('Alameda', 25160);
insert into colonias values ('Del Valle', 25160);
insert into colonias values ('Zamora', 25160);
insert into colonias values ('Bordo Ferrocarril', 25160);
insert into colonias values ('Guayulera Tierra y Esperanza', 25167);
insert into colonias values ('Ampliación Pacheco', 25167);
insert into colonias values ('Providencia', 25167);
insert into colonias values ('Brisas del Valle', 25169);
insert into colonias values ('Unidad Modelo', 25169);
insert into colonias values ('El Bosque', 25170);
insert into colonias values ('La Minita', 25170);
insert into colonias values ('La Peñita', 25170);
insert into colonias values ('Los Cuernitos', 25179);
insert into colonias values ('Chamizal', 25180);
insert into colonias values ('Guayulera', 25180);
insert into colonias values ('Ruiz Cortines', 25180);
insert into colonias values ('San Miguel', 25186);
insert into colonias values ('El Edén', 25186);
insert into colonias values ('Río Verde', 25188);
insert into colonias values ('5 de Mayo', 25190);
insert into colonias values ('El Tanquecito', 25190);
insert into colonias values ('Rincón de los Pastores', 25193);
insert into colonias values ('Héroes de Nacozari', 25193);
insert into colonias values ('Ignacio Zaragoza Popular', 25194);
insert into colonias values ('Valle Verde', 25194);
insert into colonias values ('Julieta Pérez', 25194);
insert into colonias values ('Diana Laura Riojas de Colosio', 25194);
insert into colonias values ('Los Berros', 25194);
insert into colonias values ('Patria Nueva', 25195);
insert into colonias values ('Santa Teresa', 25196);
insert into colonias values ('Ladrilleros', 25197);
insert into colonias values ('Los Rosarios Popular', 25197);
insert into colonias values ('La Esmeralda', 25197);
insert into colonias values ('La Joyita', 25197);
insert into colonias values ('La Romita', 25197);
insert into colonias values ('Los Pinos', 25198);
insert into colonias values ('Las Huertas', 25200);
insert into colonias values ('Los Rodríguez', 25200);
insert into colonias values ('Las Cabañas', 25200);
insert into colonias values ('Nuestra Señora de Fátima', 25203);
insert into colonias values ('Los González', 25204);
insert into colonias values ('El Portal', 25204);
insert into colonias values ('Privada Emilio Rodríguez', 25204);
insert into colonias values ('Villa Toscana', 25204);
insert into colonias values ('Los Siller', 25204);
insert into colonias values ('Jardines Coloniales', 25206);
insert into colonias values ('Los Algodones', 25207);
insert into colonias values ('Puerta del Sol', 25207);
insert into colonias values ('Los Valdez', 25209);
insert into colonias values ('Lomas de Peña', 25209);
insert into colonias values ('San Juan Bautista', 25209);
insert into colonias values ('La Poza', 25209);
insert into colonias values ('Los Arrayanes', 25209);
insert into colonias values ('Hacienda de Peña', 25210);
insert into colonias values ('Las Brisas', 25210);
insert into colonias values ('Nueva España', 25210);
insert into colonias values ('Rancho de Peña', 25210);
insert into colonias values ('Valle San Agustín', 25215);
insert into colonias values ('Virreyes Obrera', 25220);
insert into colonias values ('Virreyes Popular', 25220);
insert into colonias values ('Virreyes Colonial', 25225);
insert into colonias values ('Villa Olímpica', 25230);
insert into colonias values ('Virreyes Residencial', 25230);
insert into colonias values ('Valle de los Virreyes', 25238);
insert into colonias values ('Virreyes Pensiones', 25239);
insert into colonias values ('Kiosco', 25240);
insert into colonias values ('Jardín', 25240);
insert into colonias values ('La Salle', 25240);
insert into colonias values ('Privadas Luxemburgo', 25240);
insert into colonias values ('Santiago', 25240);
insert into colonias values ('Los Doctores', 25250);
insert into colonias values ('Alpes Norte', 25253);
insert into colonias values ('Lagos Continental', 25253);
insert into colonias values ('Real de Peña', 25256);
insert into colonias values ('Insurgentes', 25260);
insert into colonias values ('Jardines del Valle', 25260);
insert into colonias values ('Los Maestros', 25260);
insert into colonias values ('Universidad', 25260);
insert into colonias values ('Privada Santa María', 25260);
insert into colonias values ('República Poniente', 25265);
insert into colonias values ('Cumbres', 25270);
insert into colonias values ('Latinoamericana', 25270);
insert into colonias values ('Alpes', 25270);
insert into colonias values ('Los Ángeles', 25270);
insert into colonias values ('Jardín Oriente', 25277);
insert into colonias values ('El Olmo', 25280);
insert into colonias values ('Guanajuato', 25280);
insert into colonias values ('Jardines del Lago', 25280);
insert into colonias values ('República', 25280);
insert into colonias values ('República Norte', 25280);
insert into colonias values ('República Oriente', 25280);
insert into colonias values ('Tecnológico', 25280);
insert into colonias values ('Rancho las Varas', 25280);
insert into colonias values ('Topo Chico', 25284);
insert into colonias values ('Joyas del Boulevard', 25285);
insert into colonias values ('Guanajuato Oriente', 25286);
insert into colonias values ('América', 25290);
insert into colonias values ('Europa', 25290);
insert into colonias values ('Oceanía', 25290);
insert into colonias values ('Oceanía Boulevares', 25290);
insert into colonias values ('Saltillo 400', 25290);
insert into colonias values ('Privadas de Aragón', 25290);
insert into colonias values ('Avícola', 25290);
insert into colonias values ('Los Zacatones', 25294);
insert into colonias values ('San José de los Cerritos', 25294);
insert into colonias values ('Los Cerritos', 25294);
insert into colonias values ('Las Praderas', 25295);
insert into colonias values ('Bonanza', 25296);
insert into colonias values ('La Florida', 25296);
insert into colonias values ('Nueva Aurora', 25296);
insert into colonias values ('Villas de la Aurora', 25296);
insert into colonias values ('La Hibernia', 25297);
insert into colonias values ('Nueva Libertad', 25297);
insert into colonias values ('Los Tulipanes', 25297);
insert into colonias values ('El Baluarte', 25297);
insert into colonias values ('La Libertad el Puente', 25298);
insert into colonias values ('La Aurora', 25298);
insert into colonias values ('Los Manantiales', 25298);
insert into colonias values ('La Libertad', 25298);
insert into colonias values ('La Trinidad', 25298);
insert into colonias values ('La Herradura', 25298);
insert into colonias values ('La Palmilla', 25298);
insert into colonias values ('La Cieneguita', 25298);
insert into colonias values ('San Luis', 25298);
insert into colonias values ('Hacienda San Carlos', 25298);
insert into colonias values ('Torrecillas y Ramones', 25298);
insert into colonias values ('San José Oriente', 25298);
insert into colonias values ('Conejo Ixtlero', 25298);
insert into colonias values ('Alondra', 25298);
insert into colonias values ('La Nogalera (San Alberto)', 25303);
insert into colonias values ('Buenavista', 25315);
insert into colonias values ('Puerto Rocamontes', 25343);

CREATE VIEW `limpieza`.`numero de actividades realizadas` AS
    SELECT 
        `c`.`nombre` AS `nombre`, COUNT(0) AS `num`
    FROM
        (`limpieza`.`actividad` `a`
        JOIN `limpieza`.`cuadrilla` `c` ON (`a`.`cuadrilla_nombre` = `c`.`nombre`))
    GROUP BY `c`.`nombre`
