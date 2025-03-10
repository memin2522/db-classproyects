-- Punto 2: Insertar clientes, abogados y estados

INSERT INTO abogado (cedula, nombre, direccion) VALUES ("1000284236", "Sergio Reyes", "Cra 87c");
INSERT INTO abogado (cedula, nombre, direccion) VALUES ("1000284235", "Memo Reyes", "Cra 88c");
INSERT INTO abogado (cedula, nombre, direccion) VALUES ("1000284234", "Alberto Reyes", "Cra 89c");

INSERT INTO cliente (cedula, nombre, direccion) VALUES ("1000284236", "Cliente Sergio", "Cra 87c");
INSERT INTO cliente (cedula, nombre, direccion) VALUES ("1000284235", "Cliente Memo", "Cra 88c");
INSERT INTO cliente (cedula, nombre, direccion) VALUES ("1000284234", "Cliente Alberto", "Cra 89c");

INSERT INTO estado_caso (id_estado_caso, estado) VALUES (1, "Sin iniciar");
INSERT INTO estado_caso (id_estado_caso, estado) VALUES (2, "En tramite");
INSERT INTO estado_caso (id_estado_caso, estado) VALUES (3, "Archivado");

-- Punto 3: Insertar casos
INSERT INTO caso (numero_expediente, fecha_inicio, fecha_finalizacion, id_estado_caso, cliente_cedula) 
	VALUES (1, "2025-02-15 09:00:00", "2025-03-15 09:00:00", 3, "1000284236");
INSERT INTO caso (numero_expediente, fecha_inicio, fecha_finalizacion, id_estado_caso, cliente_cedula) 
	VALUES (2, "2025-02-15 09:00:00", "2025-03-15 09:00:00", 2, "1000284235");
INSERT INTO caso (numero_expediente, fecha_inicio, fecha_finalizacion, id_estado_caso, cliente_cedula) 
	VALUES (3, "2025-02-15 09:00:00", "2025-03-15 09:00:00", 2, "1000284234");
    
-- Punto 4: Recuperar abogado por cedula
SELECT * FROM abogado WHERE cedula = "1000284236";

-- Punto 5: Recuperar casos por estado
SELECT * FROM caso WHERE id_estado_caso = 2;

-- Punto 6: Actualizar caso
UPDATE caso SET id_estado_caso = 1 WHERE numero_expediente = 1;
SELECT * FROM caso WHERE id_estado_caso = 1;

-- Punto 7: Borrar caso
DELETE FROM caso WHERE numero_expediente = 1;
-- Esto es para actualizar en git 