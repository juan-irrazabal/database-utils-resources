-- 🚨 IMPORTANTE: Haz un respaldo antes de ejecutar
-- mysqldump -u root -p nombre_base > respaldo.sql
USE prod_quinteroenergia;
-- Desactivar restricciones de claves foráneas
SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM area WHERE idArea <> 1;
ALTER TABLE area AUTO_INCREMENT = 2;

DELETE FROM cargo WHERE idCargo <> 1;
ALTER TABLE cargo AUTO_INCREMENT = 2;

-- Vaciar tablas y resetear autoincremental
TRUNCATE TABLE areasFiltro;
TRUNCATE TABLE areasMatrices;
TRUNCATE TABLE atributoObservacionConducta;
TRUNCATE TABLE atributoSC;

-- Tablas de auditoría
TRUNCATE TABLE auditoria;
TRUNCATE TABLE auditoriaIndemnizado;
TRUNCATE TABLE auditoriaModulo;
TRUNCATE TABLE auditoriaRegCabecera;
TRUNCATE TABLE auditoriaRegColaboradores;
TRUNCATE TABLE auditoriaRegIndemnizados;
TRUNCATE TABLE auditoriaRegistro;
TRUNCATE TABLE auditoriaRegMetaChecklist;
TRUNCATE TABLE auditoriaRegModulo;
TRUNCATE TABLE auditoriaRegModuloCategoria;
TRUNCATE TABLE auditoriaRegModuloItem;
TRUNCATE TABLE auditoriaRegNoConformidad;
TRUNCATE TABLE auditoriaRegResponsableModulo;
TRUNCATE TABLE auditoriaTipo;


TRUNCATE TABLE bs_dates;


TRUNCATE TABLE barrera;
TRUNCATE TABLE barreraObservacionConducta;

TRUNCATE TABLE bs_records;
TRUNCATE TABLE cacheMetaArea;
TRUNCATE TABLE categoriaConducta;
TRUNCATE TABLE categoriaItemChecklist;
TRUNCATE TABLE categoriaItemModAuditoria;
TRUNCATE TABLE categoriaObservacionConducta;
TRUNCATE TABLE categoriaSC;
TRUNCATE TABLE checklist;
TRUNCATE TABLE checklistEstructura;
TRUNCATE TABLE checklistEstructuraGrupos;
TRUNCATE TABLE checklistMaquina;
TRUNCATE TABLE checklistRegistro;
TRUNCATE TABLE checklistRegistroCabecera;
TRUNCATE TABLE checklistRegistroCategoria;
TRUNCATE TABLE checklistRegistroEvidencia;
TRUNCATE TABLE checklistRegistroItem;

TRUNCATE TABLE checklist_notification;
TRUNCATE TABLE checklist_pregunta_subtipo;
TRUNCATE TABLE checklist_pregunta_subtipos;


-- Reactivar restricciones de claves foráneas
SET FOREIGN_KEY_CHECKS = 1;
