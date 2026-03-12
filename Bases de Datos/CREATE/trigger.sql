----------------- Tebca
CREATE TRIGGER trg_after_insert_encabezado
AFTER INSERT ON "Encabezado"
REFERENCING NEW AS new_row
FOR EACH ROW
BEGIN
    -- Declarar todas las variables primero
    DECLARE current_date DATE;
    DECLARE serie_value VARCHAR(255);
    DECLARE min_numcontrol INTEGER;
    DECLARE last_numcontrol INTEGER;
    DECLARE total_count INTEGER;
    DECLARE existing_count INTEGER;
    DECLARE done INT DEFAULT 0;  -- Variable para controlar el fin del bucle
    DECLARE series_cursor CURSOR FOR  -- El cursor también se declara aquí
        SELECT DISTINCT identDocumentSerie 
        FROM "encabezado" 
        WHERE CONVERT(DATE, imprentaFechaAsignacionNumControl) = current_date;

    -- Inicializar variables
    SET current_date = CURRENT DATE;

    -- Manejar el cursor
    OPEN series_cursor;

    -- Iterar sobre cada serie
    FETCH_LOOP: LOOP
        FETCH series_cursor INTO serie_value;
        IF SQLCODE <> 0 THEN
            LEAVE FETCH_LOOP;  -- Salir del bucle si no hay más filas
        END IF;

        -- Obtener min, max y count para la serie
        SELECT 
            MIN(CAST(imprentaNumControl AS INTEGER)),
            MAX(CAST(imprentaNumControl AS INTEGER)),
            COUNT(*)
        INTO 
            min_numcontrol,
            last_numcontrol,
            total_count
        FROM "encabezado"
        WHERE CONVERT(DATE, imprentaFechaAsignacionNumControl) = current_date AND identDocumentSerie = serie_value;

        -- Verificar si existe registro en totales_imprenta
        SELECT COUNT(*)
        INTO existing_count
        FROM "totales_imprenta"
        WHERE fecha_asignacion = current_date AND serie = serie_value;

        -- Insertar o actualizar
        IF existing_count = 0 THEN
            INSERT INTO "totales_imprenta" (
                cliente_id,
                fecha_asignacion,
                serie,
                numero_control_inicio,
                numero_control_final,
                cantidad
            ) VALUES (
                41,
                current_date,
                serie_value,
                min_numcontrol,
                last_numcontrol,
                total_count
            );
        ELSE
            UPDATE "totales_imprenta"
            SET 
                numero_control_inicio = min_numcontrol,
                numero_control_final = last_numcontrol,
                cantidad = total_count
            WHERE 
                fecha_asignacion = current_date 
                AND serie = serie_value;
        END IF;
    END LOOP FETCH_LOOP;

    -- Cerrar cursor
    CLOSE series_cursor;
END;
 