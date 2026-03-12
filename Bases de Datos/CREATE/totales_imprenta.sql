CREATE TABLE totales_imprenta (
  "id" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
  "cliente_id" INTEGER NOT NULL,
  "fecha_asignacion" DATE NOT NULL,
  "serie" VARCHAR(255) NULL,
  "numero_control_inicio" INTEGER NOT NULL,
  "numero_control_final" INTEGER NOT NULL,
  "cantidad" INTEGER NOT NULL,
  PRIMARY KEY ( "id" ASC )
);
