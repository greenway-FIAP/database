------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_USER_TYPE------------------------

-- Procedure para inserir um registro na tabela T_GRW_USER_TYPE
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_USER_TYPE(
    p_id_user_type IN T_GRW_USER_TYPE.id_user_type%TYPE,
    p_ds_title IN T_GRW_USER_TYPE.ds_title%TYPE,
    p_dt_created_at IN T_GRW_USER_TYPE.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_USER_TYPE(id_user_type, ds_title, dt_created_at)
    VALUES (p_id_user_type, p_ds_title, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_USER_TYPE;
/

-- Procedure para atualizar um registro na tabela T_GRW_USER_TYPE
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_USER_TYPE(
    p_id_user_type IN T_GRW_USER_TYPE.id_user_type%TYPE,
    p_ds_title IN T_GRW_USER_TYPE.ds_title%TYPE,
    p_dt_updated_at IN T_GRW_USER_TYPE.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_USER_TYPE
    SET ds_title = p_ds_title,
        dt_updated_at = p_dt_updated_at
    WHERE id_user_type = p_id_user_type;
    COMMIT;
END UPDATE_T_GRW_USER_TYPE;
/

-- Procedure para deletar um registro na tabela T_GRW_USER_TYPE
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_USER_TYPE(
    p_id_user_type IN T_GRW_USER_TYPE.id_user_type%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_USER_TYPE
    WHERE id_user_type = p_id_user_type;
    COMMIT;
END DELETE_T_GRW_USER_TYPE;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_SECTOR------------------------

-- Procedure para inserir um registro na tabela T_GRW_SECTOR
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_SECTOR(
    p_id_sector IN T_GRW_SECTOR.id_sector%TYPE,
    p_ds_name IN T_GRW_SECTOR.ds_name%TYPE,
    p_tx_description IN T_GRW_SECTOR.tx_description%TYPE,
    p_dt_created_at IN T_GRW_SECTOR.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_SECTOR(id_sector, ds_name, tx_description, dt_created_at)
    VALUES (p_id_sector, p_ds_name, p_tx_description, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_SECTOR;
/
-- Procedure para atualizar um registro na tabela T_GRW_SECTOR
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_SECTOR(
    p_id_sector IN T_GRW_SECTOR.id_sector%TYPE,
    p_ds_name IN T_GRW_SECTOR.ds_name%TYPE,
    p_tx_description IN T_GRW_SECTOR.tx_description%TYPE,
    p_dt_updated_at IN T_GRW_SECTOR.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_SECTOR
    SET ds_name = p_ds_name,
        tx_description = p_tx_description,
        dt_updated_at = p_dt_updated_at
    WHERE id_sector = p_id_sector;
    COMMIT;
END UPDATE_T_GRW_SECTOR;
/
-- Procedure para deletar um registro na tabela T_GRW_SECTOR
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_SECTOR(
    p_id_sector IN T_GRW_SECTOR.id_sector%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_SECTOR
    WHERE id_sector = p_id_sector;
    COMMIT;
END DELETE_T_GRW_SECTOR;
/

------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_RESOURCE_TYPE------------------------

-- Procedure para inserir um registro na tabela T_GRW_RESOURCE_TYPE
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_RESOURCE_TYPE(
    p_id_resource_type IN T_GRW_RESOURCE_TYPE.id_resource_type%TYPE,
    p_ds_name IN T_GRW_RESOURCE_TYPE.ds_name%TYPE,
    p_tx_description IN T_GRW_RESOURCE_TYPE.tx_description%TYPE,
    p_dt_created_at IN T_GRW_RESOURCE_TYPE.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_RESOURCE_TYPE(id_resource_type, ds_name, tx_description, dt_created_at)
    VALUES (p_id_resource_type, p_ds_name, p_tx_description, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_RESOURCE_TYPE;
/
-- Procedure para atualizar um registro na tabela T_GRW_RESOURCE_TYPE
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_RESOURCE_TYPE(
    p_id_resource_type IN T_GRW_RESOURCE_TYPE.id_resource_type%TYPE,
    p_ds_name IN T_GRW_RESOURCE_TYPE.ds_name%TYPE,
    p_tx_description IN T_GRW_RESOURCE_TYPE.tx_description%TYPE,
    p_dt_updated_at IN T_GRW_RESOURCE_TYPE.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_RESOURCE_TYPE
    SET ds_name = p_ds_name,
        tx_description = p_tx_description,
        dt_updated_at = p_dt_updated_at
    WHERE id_resource_type = p_id_resource_type;
    COMMIT;
END UPDATE_T_GRW_RESOURCE_TYPE;
/
-- Procedure para deletar um registro na tabela T_GRW_RESOURCE_TYPE
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_RESOURCE_TYPE(
    p_id_resource_type IN T_GRW_RESOURCE_TYPE.id_resource_type%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_RESOURCE_TYPE
    WHERE id_resource_type = p_id_resource_type;
    COMMIT;
END DELETE_T_GRW_RESOURCE_TYPE;
/

------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_PRODUCT_TYPE------------------------

-- Procedure para inserir um registro na tabela T_GRW_PRODUCT_TYPE
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_PRODUCT_TYPE(
    p_id_product_type IN T_GRW_PRODUCT_TYPE.id_product_type%TYPE,
    p_ds_name IN T_GRW_PRODUCT_TYPE.ds_name%TYPE,
    p_tx_description IN T_GRW_PRODUCT_TYPE.tx_description%TYPE,
    p_dt_created_at IN T_GRW_PRODUCT_TYPE.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_PRODUCT_TYPE(id_product_type, ds_name, tx_description, dt_created_at)
    VALUES (p_id_product_type, p_ds_name, p_tx_description, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_PRODUCT_TYPE;
/
-- Procedure para atualizar um registro na tabela T_GRW_PRODUCT_TYPE
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_PRODUCT_TYPE(
    p_id_product_type IN T_GRW_PRODUCT_TYPE.id_product_type%TYPE,
    p_ds_name IN T_GRW_PRODUCT_TYPE.ds_name%TYPE,
    p_tx_description IN T_GRW_PRODUCT_TYPE.tx_description%TYPE,
    p_dt_updated_at IN T_GRW_PRODUCT_TYPE.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_PRODUCT_TYPE
    SET ds_name = p_ds_name,
        tx_description = p_tx_description,
        dt_updated_at = p_dt_updated_at
    WHERE id_product_type = p_id_product_type;
    COMMIT;
END UPDATE_T_GRW_PRODUCT_TYPE;
/
-- Procedure para excluir um registro na tabela T_GRW_PRODUCT_TYPE
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_PRODUCT_TYPE(
    p_id_product_type IN T_GRW_PRODUCT_TYPE.id_product_type%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_PRODUCT_TYPE
    WHERE id_product_type = p_id_product_type;
    COMMIT;
END DELETE_T_GRW_PRODUCT_TYPE;
/

------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_BADGE_LEVEL------------------------

-- Procedure para inserir um registro na tabela T_GRW_BADGE_LEVEL 
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_BADGE_LEVEL(
    p_id_badge_level IN T_GRW_BADGE_LEVEL.id_badge_level%TYPE,
    p_ds_name IN T_GRW_BADGE_LEVEL.ds_name%TYPE,
    p_tx_description IN T_GRW_BADGE_LEVEL.tx_description%TYPE,
    p_dt_created_at IN T_GRW_BADGE_LEVEL.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_BADGE_LEVEL(id_badge_level, ds_name, tx_description, dt_created_at)
    VALUES (p_id_badge_level, p_ds_name, p_tx_description, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_BADGE_LEVEL;
/
-- Procedure para atualizar um registro na tabela T_GRW_BADGE_LEVEL 
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_BADGE_LEVEL(
    p_id_badge_level IN T_GRW_BADGE_LEVEL.id_badge_level%TYPE,
    p_ds_name IN T_GRW_BADGE_LEVEL.ds_name%TYPE,
    p_tx_description IN T_GRW_BADGE_LEVEL.tx_description%TYPE,
    p_dt_updated_at IN T_GRW_BADGE_LEVEL.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_BADGE_LEVEL
    SET ds_name = p_ds_name,
        tx_description = p_tx_description,
        dt_updated_at = p_dt_updated_at
    WHERE id_badge_level = p_id_badge_level;
    COMMIT;
END UPDATE_T_GRW_BADGE_LEVEL;
/
-- Procedure para excluir um registro na tabela T_GRW_BADGE_LEVEL 
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_BADGE_LEVEL(
    p_id_badge_level IN T_GRW_BADGE_LEVEL.id_badge_level%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_BADGE_LEVEL
    WHERE id_badge_level = p_id_badge_level;
    COMMIT;
END DELETE_T_GRW_BADGE_LEVEL;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_MEASUREMENT_TYPE------------------------

-- Procedure para inserir um registro na tabela T_GRW_MEASUREMENT_TYPE
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_MEASUREMENT_TYPE(
    p_id_measurement_type IN T_GRW_MEASUREMENT_TYPE.id_measurement_type%TYPE,
    p_ds_name IN T_GRW_MEASUREMENT_TYPE.ds_name%TYPE,
    p_tx_description IN T_GRW_MEASUREMENT_TYPE.tx_description%TYPE,
    p_dt_created_at IN T_GRW_MEASUREMENT_TYPE.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_MEASUREMENT_TYPE(id_measurement_type, ds_name, tx_description, dt_created_at)
    VALUES (p_id_measurement_type, p_ds_name, p_tx_description, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_MEASUREMENT_TYPE;
/
-- Procedure para atualizar um registro na tabela T_GRW_MEASUREMENT_TYPE
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_MEASUREMENT_TYPE(
    p_id_measurement_type IN T_GRW_MEASUREMENT_TYPE.id_measurement_type%TYPE,
    p_ds_name IN T_GRW_MEASUREMENT_TYPE.ds_name%TYPE,
    p_tx_description IN T_GRW_MEASUREMENT_TYPE.tx_description%TYPE,
    p_dt_updated_at IN T_GRW_MEASUREMENT_TYPE.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_MEASUREMENT_TYPE
    SET ds_name = p_ds_name,
        tx_description = p_tx_description,
        dt_updated_at = p_dt_updated_at
    WHERE id_measurement_type = p_id_measurement_type;
    COMMIT;
END UPDATE_T_GRW_MEASUREMENT_TYPE;
/
-- Procedure para excluir um registro na tabela T_GRW_MEASUREMENT_TYPE
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_MEASUREMENT_TYPE(
    p_id_measurement_type IN T_GRW_MEASUREMENT_TYPE.id_measurement_type%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_MEASUREMENT_TYPE
    WHERE id_measurement_type = p_id_measurement_type;
    COMMIT;
END DELETE_T_GRW_MEASUREMENT_TYPE;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_STEP------------------------

-- Procedure para inserir um registro na tabela T_GRW_STEP
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_STEP(
    p_id_step IN T_GRW_STEP.id_step%TYPE,
    p_ds_name IN T_GRW_STEP.ds_name%TYPE,
    p_tx_description IN T_GRW_STEP.tx_description%TYPE,
    p_nr_estimated_time IN T_GRW_STEP.nr_estimated_time%TYPE,
    p_st_step IN T_GRW_STEP.st_step%TYPE,
    p_dt_created_at IN T_GRW_STEP.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_STEP(id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_created_at)
    VALUES (p_id_step, p_ds_name, p_tx_description, p_nr_estimated_time, p_st_step, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_STEP;
/
-- Procedure para atualizar um registro na tabela T_GRW_STEP
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_STEP(
    p_id_step IN T_GRW_STEP.id_step%TYPE,
    p_ds_name IN T_GRW_STEP.ds_name%TYPE,
    p_tx_description IN T_GRW_STEP.tx_description%TYPE,
    p_nr_estimated_time IN T_GRW_STEP.nr_estimated_time%TYPE,
    p_st_step IN T_GRW_STEP.st_step%TYPE,
    p_dt_start IN T_GRW_STEP.dt_start%TYPE,
    p_dt_end IN T_GRW_STEP.dt_end%TYPE,
    p_dt_updated_at IN T_GRW_STEP.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_STEP
    SET ds_name = p_ds_name,
        tx_description = p_tx_description,
        nr_estimated_time = p_nr_estimated_time,
        st_step = p_st_step,
        dt_start = p_dt_start,
        dt_end = p_dt_end,
        dt_updated_at = p_dt_updated_at
    WHERE id_step = p_id_step;
    COMMIT;
END UPDATE_T_GRW_STEP;
/
-- Procedure para excluir um registro na tabela T_GRW_STEP
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_STEP(
    p_id_step IN T_GRW_STEP.id_step%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_STEP
    WHERE id_step = p_id_step;
    COMMIT;
END DELETE_T_GRW_STEP;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_ADDRESS------------------------

-- Procedure para inserir um registro na tabela T_GRW_ADDRESS
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_ADDRESS(
    p_id_address IN T_GRW_ADDRESS.id_address%TYPE,
    p_ds_street IN T_GRW_ADDRESS.ds_street%TYPE,
    p_ds_zip_code IN T_GRW_ADDRESS.ds_zip_code%TYPE,
    p_ds_number IN T_GRW_ADDRESS.ds_number%TYPE,
    p_ds_uf IN T_GRW_ADDRESS.ds_uf%TYPE,
    p_ds_neighborhood IN T_GRW_ADDRESS.ds_neighborhood%TYPE,
    p_ds_city IN T_GRW_ADDRESS.ds_city%TYPE,
    p_dt_created_at IN T_GRW_ADDRESS.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_ADDRESS(id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at)
    VALUES (p_id_address, p_ds_street, p_ds_zip_code, p_ds_number, p_ds_uf, p_ds_neighborhood, p_ds_city, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_ADDRESS;
/
-- Procedure para atualizar um registro na tabela T_GRW_ADDRESS
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_ADDRESS(
    p_id_address IN T_GRW_ADDRESS.id_address%TYPE,
    p_ds_street IN T_GRW_ADDRESS.ds_street%TYPE,
    p_ds_zip_code IN T_GRW_ADDRESS.ds_zip_code%TYPE,
    p_ds_number IN T_GRW_ADDRESS.ds_number%TYPE,
    p_ds_uf IN T_GRW_ADDRESS.ds_uf%TYPE,
    p_ds_neighborhood IN T_GRW_ADDRESS.ds_neighborhood%TYPE,
    p_ds_city IN T_GRW_ADDRESS.ds_city%TYPE,
    p_dt_updated_at IN T_GRW_ADDRESS.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_ADDRESS
    SET ds_street = p_ds_street,
        ds_zip_code = p_ds_zip_code,
        ds_number = p_ds_number,
        ds_uf = p_ds_uf,
        ds_neighborhood = p_ds_neighborhood,
        ds_city = p_ds_city,
        dt_updated_at = p_dt_updated_at
    WHERE id_address = p_id_address;
    COMMIT;
END UPDATE_T_GRW_ADDRESS;
/
-- Procedure para excluir um registro na tabela T_GRW_ADDRESS
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_ADDRESS(
    p_id_address IN T_GRW_ADDRESS.id_address%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_ADDRESS
    WHERE id_address = p_id_address;
    COMMIT;
END DELETE_T_GRW_ADDRESS;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_RESOURCE------------------------

-- Procedure para inserir um registro na tabela T_GRW_RESOURCE
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_RESOURCE(
    p_id_resource IN T_GRW_RESOURCE.id_resource%TYPE,
    p_id_resource_type IN T_GRW_RESOURCE.id_resource_type%TYPE,
    p_ds_name IN T_GRW_RESOURCE.ds_name%TYPE,
    p_vl_cost_per_unity IN T_GRW_RESOURCE.vl_cost_per_unity%TYPE,
    p_tx_description IN T_GRW_RESOURCE.tx_description%TYPE,
    p_ds_unit_of_measurement IN T_GRW_RESOURCE.ds_unit_of_measurement%TYPE,
    p_nr_availability IN T_GRW_RESOURCE.nr_availability%TYPE,
    p_dt_created_at IN T_GRW_RESOURCE.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_RESOURCE(id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at)
    VALUES (p_id_resource, p_id_resource_type, p_ds_name, p_vl_cost_per_unity, p_tx_description, p_ds_unit_of_measurement, p_nr_availability, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_RESOURCE;
/
-- Procedure para atualizar um registro na tabela T_GRW_RESOURCE
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_RESOURCE(
    p_id_resource IN T_GRW_RESOURCE.id_resource%TYPE,
    p_id_resource_type IN T_GRW_RESOURCE.id_resource_type%TYPE,
    p_ds_name IN T_GRW_RESOURCE.ds_name%TYPE,
    p_vl_cost_per_unity IN T_GRW_RESOURCE.vl_cost_per_unity%TYPE,
    p_tx_description IN T_GRW_RESOURCE.tx_description%TYPE,
    p_ds_unit_of_measurement IN T_GRW_RESOURCE.ds_unit_of_measurement%TYPE,
    p_nr_availability IN T_GRW_RESOURCE.nr_availability%TYPE,
    p_dt_updated_at IN T_GRW_RESOURCE.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_RESOURCE
    SET id_resource_type = p_id_resource_type,
        ds_name = p_ds_name,
        vl_cost_per_unity = p_vl_cost_per_unity,
        tx_description = p_tx_description,
        ds_unit_of_measurement = p_ds_unit_of_measurement,
        nr_availability = p_nr_availability,
        dt_updated_at = p_dt_updated_at
    WHERE id_resource = p_id_resource;
    COMMIT;
END UPDATE_T_GRW_RESOURCE;
/
-- Procedure para excluir um registro na tabela T_GRW_RESOURCE
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_RESOURCE(
    p_id_resource IN T_GRW_RESOURCE.id_resource%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_RESOURCE
    WHERE id_resource = p_id_resource;
    COMMIT;
END DELETE_T_GRW_RESOURCE;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_COMPANY------------------------

-- Procedure para inserir um registro na tabela T_GRW_COMPANY
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_COMPANY(
    p_id_company IN T_GRW_COMPANY.id_company%TYPE,
    p_id_sector IN T_GRW_COMPANY.id_sector%TYPE,
    p_id_address IN T_GRW_COMPANY.id_address%TYPE,
    p_ds_name IN T_GRW_COMPANY.ds_name%TYPE,
    p_tx_description IN T_GRW_COMPANY.tx_description%TYPE,
    p_vl_current_revenue IN T_GRW_COMPANY.vl_current_revenue%TYPE,
    p_nr_size IN T_GRW_COMPANY.nr_size%TYPE,
    p_nr_cnpj IN T_GRW_COMPANY.nr_cnpj%TYPE,
    p_dt_created_at IN T_GRW_COMPANY.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_COMPANY(id_company, id_sector, id_address, ds_name, tx_description, vl_current_revenue, nr_size, nr_cnpj, dt_created_at)
    VALUES (p_id_company, p_id_sector, p_id_address, p_ds_name, p_tx_description, p_vl_current_revenue, p_nr_size, p_nr_cnpj, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_COMPANY;
/
-- Procedure para atualizar um registro na tabela T_GRW_COMPANY
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_COMPANY(
    p_id_company IN T_GRW_COMPANY.id_company%TYPE,
    p_id_sector IN T_GRW_COMPANY.id_sector%TYPE,
    p_id_address IN T_GRW_COMPANY.id_address%TYPE,
    p_ds_name IN T_GRW_COMPANY.ds_name%TYPE,
    p_tx_description IN T_GRW_COMPANY.tx_description%TYPE,
    p_vl_current_revenue IN T_GRW_COMPANY.vl_current_revenue%TYPE,
    p_nr_size IN T_GRW_COMPANY.nr_size%TYPE,
    p_nr_cnpj IN T_GRW_COMPANY.nr_cnpj%TYPE,
    p_dt_updated_at IN T_GRW_COMPANY.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_COMPANY
    SET id_sector = p_id_sector,
        id_address = p_id_address,
        ds_name = p_ds_name,
        tx_description = p_tx_description,
        vl_current_revenue = p_vl_current_revenue,
        nr_size = p_nr_size,
        nr_cnpj = p_nr_cnpj,
        dt_updated_at = p_dt_updated_at
    WHERE id_company = p_id_company;
    COMMIT;
END UPDATE_T_GRW_COMPANY;
/
-- Procedure para excluir um registro na tabela T_GRW_COMPANY
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_COMPANY(
    p_id_company IN T_GRW_COMPANY.id_company%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_COMPANY
    WHERE id_company = p_id_company;
    COMMIT;
END DELETE_T_GRW_COMPANY;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_USER------------------------

-- Procedure para inserir um registro na tabela T_GRW_USER
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_USER(
    p_id_user IN T_GRW_USER.id_user%TYPE,
    p_id_user_type IN T_GRW_USER.id_user_type%TYPE,
    p_ds_email IN T_GRW_USER.ds_email%TYPE,
    p_ds_password IN T_GRW_USER.ds_password%TYPE,
    p_dt_created_at IN T_GRW_USER.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_USER(id_user, id_user_type, ds_email, ds_password, dt_created_at)
    VALUES (p_id_user, p_id_user_type, p_ds_email, p_ds_password, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_USER;
/
-- Procedure para atualizar um registro na tabela T_GRW_USER
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_USER(
    p_id_user IN T_GRW_USER.id_user%TYPE,
    p_id_user_type IN T_GRW_USER.id_user_type%TYPE,
    p_ds_email IN T_GRW_USER.ds_email%TYPE,
    p_ds_password IN T_GRW_USER.ds_password%TYPE,
    p_dt_updated_at IN T_GRW_USER.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_USER
    SET id_user_type = p_id_user_type,
        ds_email = p_ds_email,
        ds_password = p_ds_password,
        dt_updated_at = p_dt_updated_at
    WHERE id_user = p_id_user;
    COMMIT;
END UPDATE_T_GRW_USER;
/
-- Procedure para excluir um registro na tabela T_GRW_USER
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_USER(
    p_id_user IN T_GRW_USER.id_user%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_USER
    WHERE id_user = p_id_user;
    COMMIT;
END DELETE_T_GRW_USER;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_COMPANY_REPRESENTATIVE------------------------

-- Procedure para inserir um registro na tabela T_GRW_COMPANY_REPRESENTATIVE
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_COMPANY_REPRESENTATIVE(
    p_id_company_representative IN T_GRW_COMPANY_REPRESENTATIVE.id_company_representative%TYPE,
    p_id_user IN T_GRW_COMPANY_REPRESENTATIVE.id_user%TYPE,
    p_id_company IN T_GRW_COMPANY_REPRESENTATIVE.id_company%TYPE,
    p_nr_phone IN T_GRW_COMPANY_REPRESENTATIVE.nr_phone%TYPE,
    p_ds_role IN T_GRW_COMPANY_REPRESENTATIVE.ds_role%TYPE,
    p_ds_name IN T_GRW_COMPANY_REPRESENTATIVE.ds_name%TYPE,
    p_dt_created_at IN T_GRW_COMPANY_REPRESENTATIVE.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_COMPANY_REPRESENTATIVE(id_company_representative, id_user, id_company, nr_phone, ds_role, ds_name, dt_created_at)
    VALUES (p_id_company_representative, p_id_user, p_id_company, p_nr_phone, p_ds_role, p_ds_name, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_COMPANY_REPRESENTATIVE;
/
-- Procedure para atualizar um registro na tabela T_GRW_COMPANY_REPRESENTATIVE
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_COMPANY_REPRESENTATIVE(
    p_id_company_representative IN T_GRW_COMPANY_REPRESENTATIVE.id_company_representative%TYPE,
    p_id_user IN T_GRW_COMPANY_REPRESENTATIVE.id_user%TYPE,
    p_id_company IN T_GRW_COMPANY_REPRESENTATIVE.id_company%TYPE,
    p_nr_phone IN T_GRW_COMPANY_REPRESENTATIVE.nr_phone%TYPE,
    p_ds_role IN T_GRW_COMPANY_REPRESENTATIVE.ds_role%TYPE,
    p_ds_name IN T_GRW_COMPANY_REPRESENTATIVE.ds_name%TYPE,
    p_dt_updated_at IN T_GRW_COMPANY_REPRESENTATIVE.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_COMPANY_REPRESENTATIVE
    SET id_user = p_id_user,
        id_company = p_id_company,
        nr_phone = p_nr_phone,
        ds_role = p_ds_role,
        ds_name = p_ds_name,
        dt_updated_at = p_dt_updated_at
    WHERE id_company_representative = p_id_company_representative;
    COMMIT;
END UPDATE_T_GRW_COMPANY_REPRESENTATIVE;
/
-- Procedure para excluir um registro na tabela T_GRW_COMPANY_REPRESENTATIVE
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_COMPANY_REPRESENTATIVE(
    p_id_company_representative IN T_GRW_COMPANY_REPRESENTATIVE.id_company_representative%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_COMPANY_REPRESENTATIVE
    WHERE id_company_representative = p_id_company_representative;
    COMMIT;
END DELETE_T_GRW_COMPANY_REPRESENTATIVE;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_PROCESS------------------------

-- Procedure para inserir um registro na tabela T_GRW_PROCESS
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_PROCESS(
    p_id_process IN T_GRW_PROCESS.id_process%TYPE,
    p_id_company IN T_GRW_PROCESS.id_company%TYPE,
    p_id_company_representative IN T_GRW_PROCESS.id_company_representative%TYPE,
    p_ds_name IN T_GRW_PROCESS.ds_name%TYPE,
    p_st_process IN T_GRW_PROCESS.st_process%TYPE,
    p_nr_priority IN T_GRW_PROCESS.nr_priority%TYPE,
    p_dt_start IN T_GRW_PROCESS.dt_start%TYPE,
    p_dt_end IN T_GRW_PROCESS.dt_end%TYPE,
    p_tx_description IN T_GRW_PROCESS.tx_description%TYPE,
    p_tx_comments IN T_GRW_PROCESS.tx_comments%TYPE,
    p_dt_created_at IN T_GRW_PROCESS.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_PROCESS(id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at)
    VALUES (p_id_process, p_id_company, p_id_company_representative, p_ds_name, p_st_process, p_nr_priority, p_dt_start, p_dt_end, p_tx_description, p_tx_comments, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_PROCESS;
/
-- Procedure para atualizar um registro na tabela T_GRW_PROCESS
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_PROCESS(
    p_id_process IN T_GRW_PROCESS.id_process%TYPE,
    p_id_company IN T_GRW_PROCESS.id_company%TYPE,
    p_id_company_representative IN T_GRW_PROCESS.id_company_representative%TYPE,
    p_ds_name IN T_GRW_PROCESS.ds_name%TYPE,
    p_st_process IN T_GRW_PROCESS.st_process%TYPE,
    p_nr_priority IN T_GRW_PROCESS.nr_priority%TYPE,
    p_dt_start IN T_GRW_PROCESS.dt_start%TYPE,
    p_dt_end IN T_GRW_PROCESS.dt_end%TYPE,
    p_tx_description IN T_GRW_PROCESS.tx_description%TYPE,
    p_tx_comments IN T_GRW_PROCESS.tx_comments%TYPE,
    p_dt_updated_at IN T_GRW_PROCESS.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_PROCESS
    SET id_company = p_id_company,
        id_company_representative = p_id_company_representative,
        ds_name = p_ds_name,
        st_process = p_st_process,
        nr_priority = p_nr_priority,
        dt_start = p_dt_start,
        dt_end = p_dt_end,
        tx_description = p_tx_description,
        tx_comments = p_tx_comments,
        dt_updated_at = p_dt_updated_at
    WHERE id_process = p_id_process;
    COMMIT;
END UPDATE_T_GRW_PROCESS;
/
-- Procedure para excluir um registro na tabela T_GRW_PROCESS
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_PROCESS(
    p_id_process IN T_GRW_PROCESS.id_process%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_PROCESS
    WHERE id_process = p_id_process;
    COMMIT;
END DELETE_T_GRW_PROCESS;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_USER------------------------

-- Procedure para inserir um registro na tabela T_GRW_PROCESS_RESOURCE
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_PROCESS_RESOURCE(
    p_id_process_resource IN T_GRW_PROCESS_RESOURCE.id_process_resource%TYPE,
    p_id_resource IN T_GRW_PROCESS_RESOURCE.id_resource%TYPE,
    p_id_process IN T_GRW_PROCESS_RESOURCE.id_process%TYPE,
    p_dt_created_at IN T_GRW_PROCESS_RESOURCE.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_PROCESS_RESOURCE(id_process_resource, id_resource, id_process, dt_created_at)
    VALUES (p_id_process_resource, p_id_resource, p_id_process, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_PROCESS_RESOURCE;
/
-- Procedure para atualizar um registro na tabela T_GRW_PROCESS_RESOURCE (não aplicável, pois não possui colunas atualizáveis)
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_PROCESS_RESOURCE(
    p_id_process_resource IN T_GRW_PROCESS_RESOURCE.id_process_resource%TYPE
) AS
BEGIN
    NULL; -- Não há colunas atualizáveis, então não é necessário implementar uma atualização
END UPDATE_T_GRW_PROCESS_RESOURCE;
/
-- Procedure para excluir um registro na tabela T_GRW_PROCESS_RESOURCE
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_PROCESS_RESOURCE(
    p_id_process_resource IN T_GRW_PROCESS_RESOURCE.id_process_resource%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_PROCESS_RESOURCE
    WHERE id_process_resource = p_id_process_resource;
    COMMIT;
END DELETE_T_GRW_PROCESS_RESOURCE;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_USER------------------------

-- Procedure para inserir um registro na tabela T_GRW_PRODUCT
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_PRODUCT(
    p_id_product IN T_GRW_PRODUCT.id_product%TYPE,
    p_id_product_type IN T_GRW_PRODUCT.id_product_type%TYPE,
    p_id_process IN T_GRW_PRODUCT.id_process%TYPE,
    p_ds_name IN T_GRW_PRODUCT.ds_name%TYPE,
    p_tx_description IN T_GRW_PRODUCT.tx_description%TYPE,
    p_vl_sale_price IN T_GRW_PRODUCT.vl_sale_price%TYPE,
    p_vl_cost_price IN T_GRW_PRODUCT.vl_cost_price%TYPE,
    p_nr_weight IN T_GRW_PRODUCT.nr_weight%TYPE,
    p_dt_created_at IN T_GRW_PRODUCT.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_PRODUCT(id_product, id_product_type, id_process, ds_name, tx_description, vl_sale_price, vl_cost_price, nr_weight, dt_created_at)
    VALUES (p_id_product, p_id_product_type, p_id_process, p_ds_name, p_tx_description, p_vl_sale_price, p_vl_cost_price, p_nr_weight, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_PRODUCT;
/
-- Procedure para atualizar um registro na tabela T_GRW_PRODUCT
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_PRODUCT(
    p_id_product IN T_GRW_PRODUCT.id_product%TYPE,
    p_id_product_type IN T_GRW_PRODUCT.id_product_type%TYPE,
    p_id_process IN T_GRW_PRODUCT.id_process%TYPE,
    p_ds_name IN T_GRW_PRODUCT.ds_name%TYPE,
    p_tx_description IN T_GRW_PRODUCT.tx_description%TYPE,
    p_vl_sale_price IN T_GRW_PRODUCT.vl_sale_price%TYPE,
    p_vl_cost_price IN T_GRW_PRODUCT.vl_cost_price%TYPE,
    p_nr_weight IN T_GRW_PRODUCT.nr_weight%TYPE,
    p_dt_updated_at IN T_GRW_PRODUCT.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_PRODUCT
    SET id_product_type = p_id_product_type,
        id_process = p_id_process,
        ds_name = p_ds_name,
        tx_description = p_tx_description,
        vl_sale_price = p_vl_sale_price,
        vl_cost_price = p_vl_cost_price,
        nr_weight = p_nr_weight,
        dt_updated_at = p_dt_updated_at
    WHERE id_product = p_id_product;
    COMMIT;
END UPDATE_T_GRW_PRODUCT;
/
-- Procedure para excluir um registro na tabela T_GRW_PRODUCT
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_PRODUCT(
    p_id_product IN T_GRW_PRODUCT.id_product%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_PRODUCT
    WHERE id_product = p_id_product;
    COMMIT;
END DELETE_T_GRW_PRODUCT;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_SUSTAINABLE_GOAL------------------------

-- Procedure para inserir um registro na tabela T_GRW_SUSTAINABLE_GOAL
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_SUSTAINABLE_GOAL(
    p_id_sustainable_goal IN T_GRW_SUSTAINABLE_GOAL.id_sustainable_goal%TYPE,
    p_ds_name IN T_GRW_SUSTAINABLE_GOAL.ds_name%TYPE,
    p_tx_description IN T_GRW_SUSTAINABLE_GOAL.tx_description%TYPE,
    p_vl_target IN T_GRW_SUSTAINABLE_GOAL.vl_target%TYPE,
    p_dt_created_at IN T_GRW_SUSTAINABLE_GOAL.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_SUSTAINABLE_GOAL(id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at)
    VALUES (p_id_sustainable_goal, p_ds_name, p_tx_description, p_vl_target, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_SUSTAINABLE_GOAL;
/
-- Procedure para atualizar um registro na tabela T_GRW_SUSTAINABLE_GOAL
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_SUSTAINABLE_GOAL(
    p_id_sustainable_goal IN T_GRW_SUSTAINABLE_GOAL.id_sustainable_goal%TYPE,
    p_ds_name IN T_GRW_SUSTAINABLE_GOAL.ds_name%TYPE,
    p_tx_description IN T_GRW_SUSTAINABLE_GOAL.tx_description%TYPE,
    p_vl_target IN T_GRW_SUSTAINABLE_GOAL.vl_target%TYPE,
    p_dt_updated_at IN T_GRW_SUSTAINABLE_GOAL.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_SUSTAINABLE_GOAL
    SET ds_name = p_ds_name,
        tx_description = p_tx_description,
        vl_target = p_vl_target,
        dt_updated_at = p_dt_updated_at
    WHERE id_sustainable_goal = p_id_sustainable_goal;
    COMMIT;
END UPDATE_T_GRW_SUSTAINABLE_GOAL;
/
-- Procedure para excluir um registro na tabela T_GRW_SUSTAINABLE_GOAL
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_SUSTAINABLE_GOAL(
    p_id_sustainable_goal IN T_GRW_SUSTAINABLE_GOAL.id_sustainable_goal%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_SUSTAINABLE_GOAL
    WHERE id_sustainable_goal = p_id_sustainable_goal;
    COMMIT;
END DELETE_T_GRW_SUSTAINABLE_GOAL;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_BADGE------------------------

-- Procedure para inserir um registro na tabela T_GRW_BADGE 
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_BADGE(
    p_id_badge IN T_GRW_BADGE.id_badge%TYPE,
    p_id_sustainable_goal IN T_GRW_BADGE.id_sustainable_goal%TYPE,
    p_id_badge_level IN T_GRW_BADGE.id_badge_level%TYPE,
    p_ds_name IN T_GRW_BADGE.ds_name%TYPE,
    p_tx_description IN T_GRW_BADGE.tx_description%TYPE,
    p_ds_criteria IN T_GRW_BADGE.ds_criteria%TYPE,
    p_st_badge IN T_GRW_BADGE.st_badge%TYPE,
    p_url_image IN T_GRW_BADGE.url_image%TYPE,
    p_dt_created_at IN T_GRW_BADGE.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_BADGE(id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at)
    VALUES (p_id_badge, p_id_sustainable_goal, p_id_badge_level, p_ds_name, p_tx_description, p_ds_criteria, p_st_badge, p_url_image, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_BADGE;
/
-- Procedure para atualizar um registro na tabela T_GRW_BADGE
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_BADGE(
    p_id_badge IN T_GRW_BADGE.id_badge%TYPE,
    p_id_sustainable_goal IN T_GRW_BADGE.id_sustainable_goal%TYPE,
    p_id_badge_level IN T_GRW_BADGE.id_badge_level%TYPE,
    p_ds_name IN T_GRW_BADGE.ds_name%TYPE,
    p_tx_description IN T_GRW_BADGE.tx_description%TYPE,
    p_ds_criteria IN T_GRW_BADGE.ds_criteria%TYPE,
    p_st_badge IN T_GRW_BADGE.st_badge%TYPE,
    p_url_image IN T_GRW_BADGE.url_image%TYPE,
    p_dt_updated_at IN T_GRW_BADGE.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_BADGE
    SET id_sustainable_goal = p_id_sustainable_goal,
        id_badge_level = p_id_badge_level,
        ds_name = p_ds_name,
        tx_description = p_tx_description,
        ds_criteria = p_ds_criteria,
        st_badge = p_st_badge,
        url_image = p_url_image,
        dt_updated_at = p_dt_updated_at
    WHERE id_badge = p_id_badge;
    COMMIT;
END UPDATE_T_GRW_BADGE;
/
-- Procedure para excluir um registro na tabela T_GRW_BADGE
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_BADGE(
    p_id_badge IN T_GRW_BADGE.id_badge%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_BADGE
    WHERE id_badge = p_id_badge;
    COMMIT;
END DELETE_T_GRW_BADGE;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_PROCESS_BADGE------------------------

-- Procedure para inserir um registro na tabela T_GRW_PROCESS_BADGE
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_PROCESS_BADGE(
    p_id_process_badge IN T_GRW_PROCESS_BADGE.id_process_badge%TYPE,
    p_id_process IN T_GRW_PROCESS_BADGE.id_process%TYPE,
    p_id_badge IN T_GRW_PROCESS_BADGE.id_badge%TYPE,
    p_dt_expiration_date IN T_GRW_PROCESS_BADGE.dt_expiration_date%TYPE,
    p_url_badge IN T_GRW_PROCESS_BADGE.url_badge%TYPE,
    p_dt_created_at IN T_GRW_PROCESS_BADGE.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_PROCESS_BADGE(id_process_badge, id_process, id_badge, dt_expiration_date, url_badge, dt_created_at)
    VALUES (p_id_process_badge, p_id_process, p_id_badge, p_dt_expiration_date, p_url_badge, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_PROCESS_BADGE;
/
-- Procedure para atualizar um registro na tabela T_GRW_PROCESS_BADGE (não aplicável, pois não possui colunas atualizáveis)
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_PROCESS_BADGE(
    p_id_process_badge IN T_GRW_PROCESS_BADGE.id_process_badge%TYPE
) AS
BEGIN
    NULL; -- Não há colunas atualizáveis, então não é necessário implementar uma atualização
END UPDATE_T_GRW_PROCESS_BADGE;
/
-- Procedure para excluir um registro na tabela T_GRW_PROCESS_BADGE
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_PROCESS_BADGE(
    p_id_process_badge IN T_GRW_PROCESS_BADGE.id_process_badge%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_PROCESS_BADGE
    WHERE id_process_badge = p_id_process_badge;
    COMMIT;
END DELETE_T_GRW_PROCESS_BADGE;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_PROCESS_STEP------------------------

-- Procedure para inserir um registro na tabela T_GRW_PROCESS_STEP
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_PROCESS_STEP(
    p_id_process_step IN T_GRW_PROCESS_STEP.id_process_step%TYPE,
    p_id_step IN T_GRW_PROCESS_STEP.id_step%TYPE,
    p_id_process IN T_GRW_PROCESS_STEP.id_process%TYPE,
    p_dt_created_at IN T_GRW_PROCESS_STEP.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_PROCESS_STEP(id_process_step, id_step, id_process, dt_created_at)
    VALUES (p_id_process_step, p_id_step, p_id_process, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_PROCESS_STEP;
/
-- Procedure para atualizar um registro na tabela T_GRW_PROCESS_STEP (não aplicável, pois não possui colunas atualizáveis)
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_PROCESS_STEP(
    p_id_process_step IN T_GRW_PROCESS_STEP.id_process_step%TYPE
) AS
BEGIN
    NULL; -- Não há colunas atualizáveis, então não é necessário implementar uma atualização
END UPDATE_T_GRW_PROCESS_STEP;
/
-- Procedure para excluir um registro na tabela T_GRW_PROCESS_STEP
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_PROCESS_STEP(
    p_id_process_step IN T_GRW_PROCESS_STEP.id_process_step%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_PROCESS_STEP
    WHERE id_process_step = p_id_process_step;
    COMMIT;
END DELETE_T_GRW_PROCESS_STEP;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS------------------------

-- Procedure para inserir um registro na tabela T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS(
    p_id_sustainable_improvement_actions IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.id_sustainable_improvement_actions%TYPE,
    p_id_sustainable_goal IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.id_sustainable_goal%TYPE,
    p_ds_name IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.ds_name%TYPE,
    p_tx_instruction IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.tx_instruction%TYPE,
    p_st_sustainable_action IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.st_sustainable_action%TYPE,
    p_nr_priority IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.nr_priority%TYPE,
    p_dt_created_at IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS(id_sustainable_improvement_actions, id_sustainable_goal, ds_name, tx_instruction, st_sustainable_action, nr_priority, dt_created_at)
    VALUES (p_id_sustainable_improvement_actions, p_id_sustainable_goal, p_ds_name, p_tx_instruction, p_st_sustainable_action, p_nr_priority, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS;
/
-- Procedure para atualizar um registro na tabela T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS(
    p_id_sustainable_improvement_actions IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.id_sustainable_improvement_actions%TYPE,
    p_id_sustainable_goal IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.id_sustainable_goal%TYPE,
    p_ds_name IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.ds_name%TYPE,
    p_tx_instruction IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.tx_instruction%TYPE,
    p_st_sustainable_action IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.st_sustainable_action%TYPE,
    p_nr_priority IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.nr_priority%TYPE,
    p_dt_updated_at IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS
    SET id_sustainable_goal = p_id_sustainable_goal,
        ds_name = p_ds_name,
        tx_instruction = p_tx_instruction,
        st_sustainable_action = p_st_sustainable_action,
        nr_priority = p_nr_priority,
        dt_updated_at = p_dt_updated_at
    WHERE id_sustainable_improvement_actions = p_id_sustainable_improvement_actions;
    COMMIT;
END UPDATE_T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS;
/
-- Procedure para excluir um registro na tabela T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS(
    p_id_sustainable_improvement_actions IN T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.id_sustainable_improvement_actions%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS
    WHERE id_sustainable_improvement_actions = p_id_sustainable_improvement_actions;
    COMMIT;
END DELETE_T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_MEASUREMENT------------------------

-- Procedure para inserir um registro na tabela T_GRW_MEASUREMENT
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_MEASUREMENT(
    p_id_measurement IN T_GRW_MEASUREMENT.id_measurement%TYPE,
    p_id_measurement_type IN T_GRW_MEASUREMENT.id_measurement_type%TYPE,
    p_id_sustainable_goal IN T_GRW_MEASUREMENT.id_sustainable_goal%TYPE,
    p_ds_name IN T_GRW_MEASUREMENT.ds_name%TYPE,
    p_tx_description IN T_GRW_MEASUREMENT.tx_description%TYPE,
    p_dt_created_at IN T_GRW_MEASUREMENT.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_MEASUREMENT(id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at)
    VALUES (p_id_measurement, p_id_measurement_type, p_id_sustainable_goal, p_ds_name, p_tx_description, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_MEASUREMENT;
/
-- Procedure para atualizar um registro na tabela T_GRW_MEASUREMENT
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_MEASUREMENT(
    p_id_measurement IN T_GRW_MEASUREMENT.id_measurement%TYPE,
    p_id_measurement_type IN T_GRW_MEASUREMENT.id_measurement_type%TYPE,
    p_id_sustainable_goal IN T_GRW_MEASUREMENT.id_sustainable_goal%TYPE,
    p_ds_name IN T_GRW_MEASUREMENT.ds_name%TYPE,
    p_tx_description IN T_GRW_MEASUREMENT.tx_description%TYPE,
    p_dt_updated_at IN T_GRW_MEASUREMENT.dt_updated_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    UPDATE T_GRW_MEASUREMENT
    SET id_measurement_type = p_id_measurement_type,
        id_sustainable_goal = p_id_sustainable_goal,
        ds_name = p_ds_name,
        tx_description = p_tx_description,
        dt_updated_at = p_dt_updated_at
    WHERE id_measurement = p_id_measurement;
    COMMIT;
END UPDATE_T_GRW_MEASUREMENT;
/
-- Procedure para excluir um registro na tabela T_GRW_MEASUREMENT
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_MEASUREMENT(
    p_id_measurement IN T_GRW_MEASUREMENT.id_measurement%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_MEASUREMENT
    WHERE id_measurement = p_id_measurement;
    COMMIT;
END DELETE_T_GRW_MEASUREMENT;
/


------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_IMPROVEMENT_MEASUREMENT------------------------

-- Procedure para inserir um registro na tabela T_GRW_IMPROVEMENT_MEASUREMENT
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_IMPROVEMENT_MEASUREMENT(
    p_id_improvement_measurement IN T_GRW_IMPROVEMENT_MEASUREMENT.id_improvement_measurement%TYPE,
    p_id_sustainable_improvement_actions IN T_GRW_IMPROVEMENT_MEASUREMENT.id_sustainable_improvement_actions%TYPE,
    p_id_measurement IN T_GRW_IMPROVEMENT_MEASUREMENT.id_measurement%TYPE,
    p_dt_created_at IN T_GRW_IMPROVEMENT_MEASUREMENT.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_IMPROVEMENT_MEASUREMENT(id_improvement_measurement, id_sustainable_improvement_actions, id_measurement, dt_created_at)
    VALUES (p_id_improvement_measurement, p_id_sustainable_improvement_actions, p_id_measurement, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_IMPROVEMENT_MEASUREMENT;
/
-- Procedure para atualizar um registro na tabela T_GRW_IMPROVEMENT_MEASUREMENT (não aplicável, pois não possui colunas atualizáveis)
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_IMPROVEMENT_MEASUREMENT(
    p_id_improvement_measurement IN T_GRW_IMPROVEMENT_MEASUREMENT.id_improvement_measurement%TYPE
) AS
BEGIN
    NULL; -- Não há colunas atualizáveis, então não é necessário implementar uma atualização
END UPDATE_T_GRW_IMPROVEMENT_MEASUREMENT;
/
-- Procedure para excluir um registro na tabela T_GRW_IMPROVEMENT_MEASUREMENT
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_IMPROVEMENT_MEASUREMENT(
    p_id_improvement_measurement IN T_GRW_IMPROVEMENT_MEASUREMENT.id_improvement_measurement%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_IMPROVEMENT_MEASUREMENT
    WHERE id_improvement_measurement = p_id_improvement_measurement;
    COMMIT;
END DELETE_T_GRW_IMPROVEMENT_MEASUREMENT;
/

------------------------ Bloco de codigo para INSERT/UPDATE e DELETE da tabela T_GRW_MEASUREMENT_PROCESS_STEP------------------------

-- Procedure para inserir um registro na tabela T_GRW_MEASUREMENT_PROCESS_STEP
CREATE OR REPLACE PROCEDURE INSERT_T_GRW_MEASUREMENT_PROCESS_STEP(
    p_id_measurement_process_step IN T_GRW_MEASUREMENT_PROCESS_STEP.id_measurement_process_step%TYPE,
    p_id_process_step IN T_GRW_MEASUREMENT_PROCESS_STEP.id_process_step%TYPE,
    p_id_measurement IN T_GRW_MEASUREMENT_PROCESS_STEP.id_measurement%TYPE,
    p_nr_result IN T_GRW_MEASUREMENT_PROCESS_STEP.nr_result%TYPE,
    p_dt_created_at IN T_GRW_MEASUREMENT_PROCESS_STEP.dt_created_at%TYPE DEFAULT SYSTIMESTAMP
) AS
BEGIN
    INSERT INTO T_GRW_MEASUREMENT_PROCESS_STEP(id_measurement_process_step, id_process_step, id_measurement, nr_result, dt_created_at)
    VALUES (p_id_measurement_process_step, p_id_process_step, p_id_measurement, p_nr_result, p_dt_created_at);
    COMMIT;
END INSERT_T_GRW_MEASUREMENT_PROCESS_STEP;
/
-- Procedure para atualizar um registro na tabela T_GRW_MEASUREMENT_PROCESS_STEP (não aplicável, pois não possui colunas atualizáveis)
CREATE OR REPLACE PROCEDURE UPDATE_T_GRW_MEASUREMENT_PROCESS_STEP(
    p_id_measurement_process_step IN T_GRW_MEASUREMENT_PROCESS_STEP.id_measurement_process_step%TYPE
) AS
BEGIN
    NULL; -- Não há colunas atualizáveis, então não é necessário implementar uma atualização
END UPDATE_T_GRW_MEASUREMENT_PROCESS_STEP;
/
-- Procedure para excluir um registro na tabela T_GRW_MEASUREMENT_PROCESS_STEP
CREATE OR REPLACE PROCEDURE DELETE_T_GRW_MEASUREMENT_PROCESS_STEP(
    p_id_measurement_process_step IN T_GRW_MEASUREMENT_PROCESS_STEP.id_measurement_process_step%TYPE
) AS
BEGIN
    DELETE FROM T_GRW_MEASUREMENT_PROCESS_STEP
    WHERE id_measurement_process_step = p_id_measurement_process_step;
    COMMIT;
END DELETE_T_GRW_MEASUREMENT_PROCESS_STEP;
/
