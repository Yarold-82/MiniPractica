CREATE TABLE "dbawakal"."encabezado" (
	"imprentaSnat" VARCHAR(255) NULL,
	"imprentaNombre" VARCHAR(255) NULL,
	"imprentaRif" VARCHAR(20) NULL,
	"imprentaAutorizacion" VARCHAR(255) NULL,
	"imprentaDireccion" VARCHAR(255) NULL,
	"imprentaTelefonos" VARCHAR(255) NULL,
	"imprentaRangoInicial" BIGINT NOT NULL,
	"imprentaRangoFinal" BIGINT NOT NULL,
	"imprentaNumControl" BIGINT NOT NULL,
	"imprentaNumControlStr" VARCHAR(20) NOT NULL UNIQUE,
	"imprentaFechaAsignacionNumControl" VARCHAR(30) NULL,
	"imprentaFechaCreacionColetilla" VARCHAR(30) NULL,
	"imprentaColetilla" VARCHAR(200) NULL,
	"imprentaIsAnulado" VARCHAR(2) NULL,
	"imprentaMotivoAnulado" VARCHAR(255) NULL,
	"imprentaFechaAnulado" VARCHAR(15) NULL,
	"imprentaHoraAnulado" VARCHAR(15) NULL,
	"imprentaEncrypt" VARCHAR(200) NULL,
	"imprentaVersionPlantilla" VARCHAR(200) NULL,
	"identDocumentTipoDocumento" TINYINT NOT NULL,
	"identDocumentNumeroDocumento" BIGINT NOT NULL,
	"identDocumentNumeroDocumentoStr" VARCHAR(10) NULL,
	"identDocumentTipoProveedor" CHAR(2) NULL,
	"identDocumentTipoTransaccion" TINYINT NULL,
	"identDocumentNumPlanillaImportacion" VARCHAR(20) NULL,
	"identDocumentNumExpedienteImportacion" VARCHAR(20) NULL,
	"identDocumentSerieFacturaAfectada" VARCHAR(20) NULL,
	"identDocumentNumeroFacturaAfectada" VARCHAR(20) NULL,
	"identDocumentFechaFacturaAfectada" VARCHAR(10) NULL,
	"identDocumentComentarioFacturaAfectada" VARCHAR(255) NULL,
	"identDocumentMontoFacturaAfectada" DECIMAL(22,2) NULL,
	"identDocumentRegimenEspTributacion" VARCHAR(55) NULL,
	"identDocumentFechaEmision" DATE NOT NULL,
	"identDocumentFechaVencimiento" DATE NULL,
	"identDocumentHoraEmision" VARCHAR(10) NOT NULL,
	"identDocumentTipoDePago" VARCHAR(20) NULL,
	"identDocumentSerie" VARCHAR(10) NULL,
	"identDocumentSucursal" BIGINT NULL,
	"identDocumentTipoDeVenta" VARCHAR(20) NULL,
	"identDocumentMoneda" VARCHAR(3) NOT NULL,
	"identDocumentTransaccionId" VARCHAR(50) NULL,
	"vendedorCodigo" BIGINT NULL,
	"vendedorNombre" VARCHAR(20) NULL,
	"vendedorNumCajero" BIGINT NULL,
	"compradorTipoIdentificacion" CHAR(1) NULL,
	"compradorNumeroIdentificacion" VARCHAR(20) NULL,
	"compradorRazonSocial" VARCHAR(255) NULL,
	"compradorDireccion" VARCHAR(255) NULL,
	"compradorPais" CHAR(2) NULL,
	"compradorNotificar" TINYINT NULL,
	"compradorTelefonos" VARCHAR(255) NULL,
	"compradorCorreos" VARCHAR(500) NULL,
	"sujetoRetenidoTipoIdentificacion" CHAR(1) NULL,
	"sujetoRetenidoNumeroIdentificacion" VARCHAR(20) NULL,
	"sujetoRetenidoRazonSocial" VARCHAR(100) NULL,
	"sujetoRetenidoDireccion" VARCHAR(255) NULL,
	"sujetoRetenidoPais" CHAR(2) NULL,
	"sujetoRetenidoTipoPerceptor" CHAR(2) NULL,
	"sujetoRetenidoNotificar" TINYINT NULL,
	"sujetoRetenidoTelefonos" VARCHAR(255) NULL,
	"sujetoRetenidoCorreos" VARCHAR(255) NULL,
	"sujetoRetenidoFechaPeriodoImpo" VARCHAR(10) NULL,
	"sujetoRetenidoAnoPeriodoImpo" INTEGER NULL,
	"sujetoRetenidoMesPeriodoImpo" INTEGER NULL,
	"sujetoRetenidoFirmaSello" VARCHAR(100) NULL,
	"tercerosTipoIdentificacion" CHAR(1) NULL,
	"tercerosNumeroIdentificacion" BIGINT NULL,
	"tercerosRazonSocial" VARCHAR(100) NULL,
	"tercerosDireccion" VARCHAR(255) NULL,
	"tercerosTipo" VARCHAR(255) NULL,
	"tercerosCorreos" VARCHAR(255) NULL,
	"totalesNroItems" INTEGER NULL,
	"totalesMontoGravadoTotal" DECIMAL(22,2) NULL,
	"totalesMontoExentoGlobal" DECIMAL(22,2) NULL,
	"totalesMontoPercibidoTotal" DECIMAL(22,2) NULL,
	"totalesSubtotalAntesDescuentos" DECIMAL(22,2) NULL,
	"totalesTotalDescuento" DECIMAL(22,2) NULL,
	"totalesTotalRecargos" DECIMAL(22,2) NULL,
	"totalesSubtotal" DECIMAL(22,2) NULL,
	"totalesTotalIVA" DECIMAL(22,2) NULL,
	"totalesMontoTotalConIVA" DECIMAL(22,2) NULL,
	"totalesTotalAPagar" DECIMAL(22,2) NULL,
	"totalesMontoEnLetras" VARCHAR(255) NULL,
	"totalesTotalIGTF" DECIMAL(22,2) NULL,
	"totalesTotalIGTFVES" DECIMAL(22,2) NULL,
	"totalRetencionTotalBaseImponible" DECIMAL(22,2) NULL,
	"totalRetencionNumeroCompRetencion" DECIMAL(22,2) NULL,
	"totalRetencionFechaEmisionCR" DATE NULL,
	"totalRetencionTotalIVA" DECIMAL(22,2) NULL,
	"totalRetencionTotalRetenido" DECIMAL(22,2) NULL,
	"totalRetencionTotalISLR" DECIMAL(22,2) NULL,
	"totalRetencionTotalIGTF" DECIMAL(22,2) NULL,
	"totalRetencionTipoComprobante" INTEGER NULL,
	"totalRetencionTotalDocumento" DECIMAL(22,2) NULL,
	"totalRetencionTotalCreditoIVA" DECIMAL(22,2) NULL,
	"totalRetencionTotalSustraendo" DECIMAL(22,2) NULL,
	"totalesOtraMonedaMoneda" VARCHAR(3) NULL,
	"totalesOtraMonedaTipoCambio" DECIMAL(24,4) NULL,
	"totalesOtraMonedaMontoGravadoTotal" DECIMAL(22,2) NULL,
	"totalesOtraMonedaMontoPercibidoTotal" DECIMAL(22,2) NULL,
	"totalesOtraMonedaMontoExentoTotal" DECIMAL(22,2) NULL,
	"totalesOtraMonedaSubtotal" DECIMAL(22,2) NULL,
	"totalesOtraMonedaTotalAPagar" DECIMAL(22,2) NULL,
	"totalesOtraMonedaTotalIVA" DECIMAL(22,2) NULL,
	"totalesOtraMonedaMontoTotalConIVA" DECIMAL(22,2) NULL,
	"totalesOtraMonedaMontoEnLetras" VARCHAR(255) NULL,
	"totalesOtraMonedaSubtotalAntesDescuentos" DECIMAL(22,2) NULL,
	"totalesOtraMonedaTotalDescuento" DECIMAL(22,2) NULL,
	"totalesOtraMonedaTotalRecargos" DECIMAL(22,2) NULL,
	"viajesNombreApellidoPasajero" VARCHAR(100) NULL,
	"viajesTipoIdentificacion" CHAR(1) NULL,
	"viajesNumeroIdentificacion" BIGINT NULL,
	"viajesDomicilioFiscalPasajero" VARCHAR(255) NULL,
	"viajesNumeroTelePasajero" VARCHAR(255) NULL,
	"viajesRazonSocialServTransporte" VARCHAR(100) NULL,
	"viajesNumeroBoleto" VARCHAR(14) NULL,
	"viajesFechaSalida" DATE NULL,
	"viajesHoraSalida" VARCHAR(10) NULL,
	"viajesFechaLlegada" DATE NULL,
	"viajesHoraLlegada" VARCHAR(10) NULL,
	"viajesNombrePuertoEmbarque" VARCHAR(255) NULL,
	"viajesCondicionesEntrega" VARCHAR(255) NULL,
	"viajesPuntoSalida" VARCHAR(255) NULL,
	"viajesPuntoDestino" VARCHAR(255) NULL,
	"guiaDespachoEsGuiaDespacho" TINYINT NULL,
	"guiaDespachoMotivoTraslado" VARCHAR(55) NULL,
	"guiaDespachoDescripcionServicio" VARCHAR(255) NULL,
	"guiaDespachoTipoProducto" VARCHAR(55) NULL,
	"guiaDespachoOrigenProducto" VARCHAR(55) NULL,
	"guiaDespachoPesoOVolumenTotal" VARCHAR(55) NULL,
	"guiaDespachoDestinoProducto" VARCHAR(55) NULL,
	"guiaDespachoNombreCompletoConductor" VARCHAR(100) NULL,
	"guiaDespachoTipoIdentificacionConductor" CHAR(1) NULL,
	"guiaDespachoNumeroIdentificacionConductor" BIGINT NULL,
	"guiaDespachoTipoLicenciaConductor" VARCHAR(55) NULL,
	"guiaDespachoInfoContactoConductor" VARCHAR(255) NULL,
	"guiaDespachoTipoVehiculo" VARCHAR(255) NULL,
	"guiaDespachoNumeroTransporte" VARCHAR(55) NULL,
	"guiaDespachoNumeroPlaca" BIGINT NULL,
	"guiaDespachoRazonSocialTransportista" VARCHAR(255) NULL,
	"guiaDespachoNumeroIdentificacionTransportista" VARCHAR(255) NULL,
	"guiaDespachoDomicilioFiscalTransportista" VARCHAR(255) NULL,
	"transporteTipo" VARCHAR(10) NULL,
	"transporteDescripcion" VARCHAR(255) NULL,
	"transporteCodigo" VARCHAR(10) NULL,
	"transporteOrigen" VARCHAR(255) NULL,
	"transporteDestino" VARCHAR(255) NULL,
	"transporteFechaEntrada" DATE NULL,
	"transporteFechaSalida" DATE NULL,
	"transporteLugarEntrega" VARCHAR(255) NULL,
	"transporteLugarRecepcion" VARCHAR(255) NULL,
	"transportePlaca" VARCHAR(10) NULL,
	"infoAdicionalCodigoCliente" VARCHAR(10) NULL,
	"infoAdicionalOrdenServicio" VARCHAR(12) NULL,
	PRIMARY KEY ( "imprentaNumControl" ASC )
) IN "system";
CREATE INDEX IDX_ENC_NUM_CONTROL ON encabezado (imprentaNumControl);
CREATE INDEX IDX_ENC_NUM_CONTROLSTR ON encabezado (imprentaNumControlStr);
CREATE INDEX IDX_ENC_NUM_DOCUMENTO ON encabezado (identDocumentNumeroDocumento);
CREATE INDEX IDX_ENC_TIPO_DOC_FECHA_EMI ON encabezado (identDocumentTipoDocumento, identDocumentFechaEmision);
CREATE INDEX IDX_ENC_TIPO_DOC_FECHA_ASIG ON encabezado (identDocumentTipoDocumento, imprentaFechaAsignacionNumControl);
CREATE INDEX IDX_ENC_NUM_RIF_FECHA_EMI ON encabezado (compradorNumeroIdentificacion, compradorTipoIdentificacion, identDocumentFechaEmision);
CREATE INDEX IDX_ENC_NUM_RIF_FECHA_ASIG ON encabezado (compradorNumeroIdentificacion, compradorTipoIdentificacion, imprentaFechaAsignacionNumControl);


CREATE TABLE "dbawakal"."detalle" (
	"detalleItemsId" BIGINT NOT NULL DEFAULT AUTOINCREMENT,
	"detalleItemsRifCliente" VARCHAR(20) NOT NULL,
	"detalleItemsNumControl" BIGINT NOT NULL,
	"detalleItemsNumControlStr" VARCHAR(20) NULL,
	"detalleItemsNumeroLinea" INTEGER NULL,
	"detalleItemsCodigoCIIU" INTEGER NULL,
	"detalleItemsCodigoPLU" VARCHAR(20) NULL,
	"detalleItemsIndicadorBienoServicio" CHAR(1) NULL,
	"detalleItemsDescripcion" VARCHAR(255) NULL,
	"detalleItemsCantidad" DECIMAL(22,2) NULL,
	"detalleItemsUnidadMedida" VARCHAR(3) NULL,
	"detalleItemsPrecioUnitario" DECIMAL(22,2) NULL,
	"detalleItemsPrecioUnitarioDescuento" DECIMAL(22,2) NULL,
	"detalleItemsMontoBonificacion" DECIMAL(22,2) NULL,
	"detalleItemsDescripcionBonificacion" VARCHAR(255) NULL,
	"detalleItemsDescuentoMonto" DECIMAL(22,2) NULL,
	"detalleItemsRecargoMonto" DECIMAL(22,2) NULL,
	"detalleItemsPrecioItem" DECIMAL(22,2) NULL,
	"detalleItemsPrecioAntesDescuento" DECIMAL(22,2) NULL,
	"detalleItemsCodigoImpuesto" VARCHAR(4) NULL,
	"detalleItemsTasaIVA" DECIMAL(5,2) NULL,
	"detalleItemsValorIVA" DECIMAL(22,2) NULL,
	"detalleItemsValorTotalItem" DECIMAL(22,2) NULL,
	"detalleItemsPeso" VARCHAR(255) NULL,
	PRIMARY KEY ( "detalleItemsId" ASC )
) IN "system";
CREATE INDEX IDX_DET_NUM_CONTROL ON detalle (detalleItemsNumControl);
CREATE INDEX IDX_DET_NUM_CONTROLSTR ON detalle (detalleItemsNumControlStr);

CREATE TABLE "dbawakal"."detalleRetencion" (
	"detalleRetencionId" BIGINT NOT NULL DEFAULT AUTOINCREMENT,
	"detalleRetencionRifCliente" VARCHAR(20) NOT NULL,
	"detalleRetencionNumControl" BIGINT NULL,
	"detalleRetencionNumControlStr" VARCHAR(20) NOT NULL,
	"detalleRetencionNumeroLinea" INTEGER NULL,
	"detalleRetencionFechaDocumento" DATE NULL,
	"detalleRetencionTipoDocumento" TINYINT NULL,
	"detalleRetencionSerieDocumento" VARCHAR(20) NULL,
	"detalleRetencionNumeroDocumento" BIGINT NULL,
	"detalleRetencionNumeroControl" VARCHAR(20) NULL,
	"detalleRetencionNumeroFacturaAfectada" VARCHAR(255) NULL,
	"detalleRetencionTipoTransaccion" TINYINT NULL,
	"detalleRetencionMontoTotal" DECIMAL(22,2) NULL,
	"detalleRetencionMontoExento" DECIMAL(22,2) NULL,
	"detalleRetencionBaseImponible" DECIMAL(22,2) NULL,
	"detalleRetencionPorcentaje" DECIMAL(22,2) NULL,
	"detalleRetencionPorcentajeRetencion" DECIMAL(22,2) NULL,
	"detalleRetencionSustraendo" DECIMAL(22,2) NULL,
	"detalleRetencionMontoIVA" DECIMAL(22,2) NULL,
	"detalleRetencionRetenido" DECIMAL(22,2) NULL,
	"detalleRetencionPercibido" DECIMAL(22,2) NULL,
	"detalleRetencionCodigoConcepto" VARCHAR(20) NULL,
	"detalleRetencionMoneda" CHAR(3) NULL,
	"detalleRetencionconceptoISLR" VARCHAR(255) NULL,
	PRIMARY KEY ( "detalleRetencionId" ASC )
) IN "system";
CREATE INDEX IDX_DETRET_NUM_CONTROL ON detalleRetencion (detalleRetencionNumControl);
CREATE INDEX IDX_DETRET_NUM_CONTROLSTR ON detalleRetencion (detalleRetencionNumControlStr);


CREATE TABLE "dbawakal"."coletilla" (
	"id_coletilla" INTEGER NOT NULL,
	"codigo_sucursal" VARCHAR(10) NOT NULL,
	"serie_control" VARCHAR(2) NOT NULL,
	"control_actual" BIGINT NOT NULL,
	"numero_factura" BIGINT NOT NULL,
	"nota_credito" BIGINT NOT NULL,
	"nota_debito" BIGINT NOT NULL,
	"orden_entrega" BIGINT NOT NULL,
	"guia_carga" BIGINT NOT NULL,
	"rtiva" BIGINT NOT NULL,
	"rtislr" BIGINT NOT NULL,
	"control_inicial" BIGINT NOT NULL,
	"control_final" BIGINT NOT NULL,
	"rango" INTEGER NOT NULL,
	"estatus" INTEGER NOT NULL,
	"fecha_asignacion" VARCHAR(30) NOT NULL,
	"fecha_proceso" VARCHAR(30) NOT NULL,
	PRIMARY KEY ( "id_coletilla" ASC )
) IN "system";
CREATE INDEX IDX_COL_ID_COLETILLA ON coletilla (id_coletilla);
CREATE INDEX IDX_COL_SUCURSAL_ESTATUS ON coletilla (codigo_sucursal, estatus);

CREATE TABLE "dbawakal"."auditoria" (
	"id_auditoria" INTEGER NOT NULL,
	"id_coletilla" INTEGER NOT NULL,
	"codigo_sucursal" VARCHAR(10) NOT NULL,
	"serie_control" VARCHAR(2) NOT NULL,
	"numero_control" BIGINT NOT NULL,
	"num_control" VARCHAR(20) NULL,
	"rango" INTEGER NOT NULL,
	"num_documento" VARCHAR(50) NOT NULL,
	"tipo_documento" VARCHAR(10) NOT NULL,
	"referencia" VARCHAR(50) NOT NULL UNIQUE,
	"fecha_asignacion" VARCHAR(30) NOT NULL,
	"fecha_emision" VARCHAR(30) NOT NULL,
	"fecha_coletilla" VARCHAR(30) NOT NULL,
	PRIMARY KEY ( "id_auditoria" ASC )
) IN "system";
CREATE INDEX IDX_AUD_ID_AUDITORIA ON auditoria (id_auditoria);
CREATE INDEX IDX_AUD_REFERENCIA ON auditoria (referencia);

CREATE TABLE "dbawakal"."totales_imprenta" (
	"id" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"cliente_id" INTEGER NOT NULL,
	"fecha_asignacion" DATE NOT NULL,
	"serie" VARCHAR(255) NULL,
	"numero_control_inicio" INTEGER NOT NULL,
	"numero_control_final" INTEGER NOT NULL,
	"cantidad" INTEGER NOT NULL,
	PRIMARY KEY ( "id" ASC )
) IN "system";


CREATE TABLE "dbawakal"."totalesFormasPago" (
	"idFormasPago" BIGINT NOT NULL DEFAULT AUTOINCREMENT,
	"numControlStr" VARCHAR(20) NULL,
	"totalesDescripcion" VARCHAR(255) NULL,
	"totalesFecha" VARCHAR(10) NULL,
	"totalesForma" VARCHAR(2) NULL,
	"totalesMonto" DECIMAL(22,2) NULL,
	"totalesMoneda" VARCHAR(255) NULL,
	"totalesTipoCambio" DECIMAL(24,4) NULL,
	PRIMARY KEY ( "idFormasPago" ASC )
) IN "system";

CREATE TABLE "dbawakal"."totalesImpuestosSubtotal" (
	"idImpuestosSubtotal" BIGINT NOT NULL DEFAULT AUTOINCREMENT,
	"numControlStr" VARCHAR(20) NULL,
	"totalesCodigoTotalImp" VARCHAR(5) NULL,
	"totalesAlicuotaImp" DECIMAL(22,2) NULL,
	"totalesBaseImponibleImp" DECIMAL(22,2) NULL,
	"totalesValorTotalImp" DECIMAL(22,2) NULL,
	PRIMARY KEY ( "idImpuestosSubtotal" ASC )
) IN "system";


CREATE TABLE "dbawakal"."totalesListaDescBonificacion" (
	"idDescBonificacion" BIGINT NOT NULL DEFAULT AUTOINCREMENT,
	"numControlStr" VARCHAR(20) NULL,
	"totalesDescDescuento" VARCHAR(70) NULL,
	"totalesMontoDescuento" DECIMAL(22,2) NULL,
	PRIMARY KEY ( "idDescBonificacion" ASC )
) IN "system";


CREATE TABLE "dbawakal"."totalesListaRecargo" (
	"idRecargo" BIGINT NOT NULL DEFAULT AUTOINCREMENT,
	"numControlStr" VARCHAR(20) NULL,
	"totalesDescRecargo" VARCHAR(70) NULL,
	"totalesMontoRecargo" DECIMAL(22,2) NULL,
	PRIMARY KEY ( "idRecargo" ASC )
) IN "system";


CREATE TABLE "dbawakal"."totalesOtraMonedaImpuestosSubtotal" (
	"idtoImpuestosSubtotal" BIGINT NOT NULL DEFAULT AUTOINCREMENT,
	"numControlStr" VARCHAR(20) NULL,
	"totalesOtraMonedaCodigoTotalImp" VARCHAR(5) NULL,
	"totalesOtraMonedaAlicuotaImp" DECIMAL(22,2) NULL,
	"totalesOtraMonedaBaseImponibleImp" DECIMAL(22,2) NULL,
	"totalesOtraMonedaValorTotalImp" DECIMAL(22,2) NULL,
	PRIMARY KEY ( "idtoImpuestosSubtotal" ASC )
) IN "system";


CREATE TABLE "dbawakal"."totalesOtraMonedaListaDescBonificacion" (
	"idtoDescBonificacion" BIGINT NOT NULL DEFAULT AUTOINCREMENT,
	"numControlStr" VARCHAR(20) NULL,
	"totalesOtraMonedaDescDescuento" VARCHAR(70) NULL,
	"totalesOtraMonedaMontoDescuento" DECIMAL(22,2) NULL,
	PRIMARY KEY ( "idtoDescBonificacion" ASC )
) IN "system";


CREATE TABLE "dbawakal"."totalesOtraMonedaListaDescRecargo" (
	"idtoDescBonificacion" BIGINT NOT NULL DEFAULT AUTOINCREMENT,
	"numControlStr" VARCHAR(20) NULL,
	"totalesOtraMonedaDescRecargo" VARCHAR(70) NULL,
	"totalesOtraMonedaMontoRecargo" DECIMAL(22,2) NULL,
	PRIMARY KEY ( "idtoDescBonificacion" ASC )
) IN "system";


INSERT INTO "dbawakal"."coletilla" ("id_coletilla","codigo_sucursal","serie_control","control_actual","numero_factura","nota_credito","nota_debito","orden_entrega","guia_carga","rtiva","rtislr","control_inicial","control_final","rango","estatus","fecha_asignacion","fecha_proceso") VALUES(1,'A','00',0,0,0,0,0,0,0,0,1,5,5,0,'2025-12-01 10:00:00 PM','')
INSERT INTO "dbawakal"."coletilla" ("id_coletilla","codigo_sucursal","serie_control","control_actual","numero_factura","nota_credito","nota_debito","orden_entrega","guia_carga","rtiva","rtislr","control_inicial","control_final","rango","estatus","fecha_asignacion","fecha_proceso") VALUES(2,'RTIVA','00',5,0,0,0,0,0,0,0,6,10,5,0,'2025-12-01 10:00:00 PM','');
INSERT INTO "dbawakal"."coletilla" ("id_coletilla","codigo_sucursal","serie_control","control_actual","numero_factura","nota_credito","nota_debito","orden_entrega","guia_carga","rtiva","rtislr","control_inicial","control_final","rango","estatus","fecha_asignacion","fecha_proceso") VALUES(3,'RTISLR','00',10,0,0,0,0,0,0,0,11,15,5,0,'2025-12-01 10:00:00 PM','');
INSERT INTO "dbawakal"."coletilla" ("id_coletilla","codigo_sucursal","serie_control","control_actual","numero_factura","nota_credito","nota_debito","orden_entrega","guia_carga","rtiva","rtislr","control_inicial","control_final","rango","estatus","fecha_asignacion","fecha_proceso") VALUES(4,'CONT','00',15,0,0,0,0,0,0,0,16,20,5,0,'2025-12-01 10:00:00 PM','')



======= URL carga y visualizacion:
https://wsqatres.solucioneslaser.com/Corpoeureka_0001/api/carga/data 
https://wsqatres.solucioneslaser.com/CorpoeurekaGen_0001/recursos/documento/ver/WEVVI0T8I7YxLNhlJyh+qosLHbVCBMY+g3n0TkmjbRoqYIWKnU=

