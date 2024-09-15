-- CRIANDO A TABELA DE AUDITORIA
DROP TABLE T_GRW_BADGE_LEVEL_AUDIT CASCADE CONSTRAINTS;
CREATE TABLE T_GRW_BADGE_LEVEL_AUDIT (
    audit_id INTEGER PRIMARY KEY,
    id_badge_level INTEGER,
    old_ds_name VARCHAR2(100),
    new_ds_name VARCHAR2(100),
    old_tx_description CLOB,
    new_tx_description CLOB,
    old_dt_created_at DATE,
    new_dt_created_at DATE,
    old_dt_updated_at DATE,
    new_dt_updated_at DATE,
    old_dt_finished_at DATE,
    new_dt_finished_at DATE,
    operation_type VARCHAR2(10),
    operation_user VARCHAR2(100),
    operation_date DATE DEFAULT SYSTIMESTAMP
);
/

DROP SEQUENCE T_GRW_BADGE_LEVEL_AUDIT_SEQ;
CREATE SEQUENCE T_GRW_BADGE_LEVEL_AUDIT_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;
/

-- CRIANDO TRIGGER QUE ATUALIZA OS DADOS DA TABELA DE AUDITORIA
DROP TRIGGER trg_audit_t_grw_badge_level;
CREATE OR REPLACE TRIGGER trg_audit_t_grw_badge_level
AFTER INSERT OR UPDATE OR DELETE ON T_GRW_BADGE_LEVEL
FOR EACH ROW
DECLARE
    v_user VARCHAR2(100);
    v_operation_type VARCHAR2(10);
BEGIN
    SELECT USER INTO v_user FROM DUAL;

    IF INSERTING THEN
        v_operation_type := 'INSERT';
    ELSIF UPDATING THEN
        v_operation_type := 'UPDATE';
    ELSIF DELETING THEN
        v_operation_type := 'DELETE';
    END IF;

    INSERT INTO T_GRW_BADGE_LEVEL_AUDIT (
        audit_id,
        id_badge_level,
        old_ds_name,
        new_ds_name,
        old_tx_description,
        new_tx_description,
        old_dt_created_at,
        new_dt_created_at,
        old_dt_updated_at,
        new_dt_updated_at,
        old_dt_finished_at,
        new_dt_finished_at,
        operation_type,
        operation_user,
        operation_date
    )
    VALUES (
        T_GRW_BADGE_LEVEL_AUDIT_SEQ.NEXTVAL,
        :OLD.id_badge_level,
        :OLD.ds_name,
        :NEW.ds_name,
        :OLD.tx_description,
        :NEW.tx_description,
        :OLD.dt_created_at,
        :NEW.dt_created_at,
        :OLD.dt_updated_at,
        :NEW.dt_updated_at,
        :OLD.dt_finished_at,
        :NEW.dt_finished_at,
        v_operation_type,
        v_user,
        SYSTIMESTAMP
    );
END;
/




