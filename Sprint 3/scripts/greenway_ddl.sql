/*
DROP TABLE T_GRW_MEASUREMENT_PROCESS_STEP CASCADE CONSTRAINTS;
DROP TABLE T_GRW_IMPROVEMENT_MEASUREMENT CASCADE CONSTRAINTS;
DROP TABLE T_GRW_MEASUREMENT CASCADE CONSTRAINTS;
DROP TABLE T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS CASCADE CONSTRAINTS;
DROP TABLE T_GRW_PROCESS_STEP CASCADE CONSTRAINTS;
DROP TABLE T_GRW_PROCESS_BADGE CASCADE CONSTRAINTS;
DROP TABLE T_GRW_BADGE CASCADE CONSTRAINTS;
DROP TABLE T_GRW_SUSTAINABLE_GOAL CASCADE CONSTRAINTS;
DROP TABLE T_GRW_PRODUCT CASCADE CONSTRAINTS;
DROP TABLE T_GRW_PROCESS_RESOURCE CASCADE CONSTRAINTS;
DROP TABLE T_GRW_RESOURCE CASCADE CONSTRAINTS;
DROP TABLE T_GRW_PROCESS CASCADE CONSTRAINTS;
DROP TABLE T_GRW_COMPANY_REPRESENTATIVE CASCADE CONSTRAINTS;
DROP TABLE T_GRW_USER CASCADE CONSTRAINTS;
DROP TABLE T_GRW_COMPANY CASCADE CONSTRAINTS;
DROP TABLE T_GRW_ADDRESS CASCADE CONSTRAINTS;
DROP TABLE T_GRW_STEP CASCADE CONSTRAINTS;
DROP TABLE T_GRW_MEASUREMENT_TYPE CASCADE CONSTRAINTS;
DROP TABLE T_GRW_BADGE_LEVEL CASCADE CONSTRAINTS;
DROP TABLE T_GRW_PRODUCT_TYPE CASCADE CONSTRAINTS;
DROP TABLE T_GRW_RESOURCE_TYPE CASCADE CONSTRAINTS;
DROP TABLE T_GRW_SECTOR CASCADE CONSTRAINTS;
DROP TABLE T_GRW_USER_TYPE CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS;
DROP SEQUENCE SEQ_GRW_MEASUREMENT;
DROP SEQUENCE SEQ_GRW_IMPROVEMENT_MEASUREMENT;
DROP SEQUENCE SEQ_GRW_MEASUREMENT_PROCESS_STEP;
DROP SEQUENCE SEQ_GRW_PROCESS_STEP;
DROP SEQUENCE SEQ_GRW_PROCESS_BADGE;
DROP SEQUENCE SEQ_GRW_BADGE;
DROP SEQUENCE SEQ_GRW_SUSTAINABLE_GOAL;
DROP SEQUENCE SEQ_GRW_PRODUCT;
DROP SEQUENCE SEQ_GRW_PROCESS_RESOURCE;
DROP SEQUENCE SEQ_GRW_PROCESS;
DROP SEQUENCE SEQ_GRW_COMPANY_REPRESENTATIVE;
DROP SEQUENCE SEQ_GRW_USER;
DROP SEQUENCE SEQ_GRW_COMPANY;
DROP SEQUENCE SEQ_GRW_RESOURCE;
DROP SEQUENCE SEQ_GRW_ADDRESS;
DROP SEQUENCE SEQ_GRW_STEP;
DROP SEQUENCE SEQ_GRW_MEASUREMENT_TYPE;
DROP SEQUENCE SEQ_GRW_BADGE_LEVEL;
DROP SEQUENCE SEQ_GRW_PRODUCT_TYPE;
DROP SEQUENCE SEQ_GRW_RESOURCE_TYPE;
DROP SEQUENCE SEQ_GRW_SECTOR;
DROP SEQUENCE SEQ_GRW_USER_TYPE;
*/

-- SCRIPTS DE CRIAR TABELAS

CREATE TABLE T_GRW_USER_TYPE(
	id_user_type INTEGER PRIMARY KEY,
	ds_title VARCHAR2(100) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_SECTOR(
	id_sector INTEGER PRIMARY KEY,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_RESOURCE_TYPE(
	id_resource_type INTEGER PRIMARY KEY,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_PRODUCT_TYPE(
	id_product_type INTEGER PRIMARY KEY,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_BADGE_LEVEL(
	id_badge_level INTEGER PRIMARY KEY,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_MEASUREMENT_TYPE (
	id_measurement_type INTEGER PRIMARY KEY,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_STEP(
	id_step INTEGER PRIMARY KEY,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	nr_estimated_time NUMBER(7,2) NOT NULL,
	st_step CHAR(1) NOT NULL,
	dt_start TIMESTAMP NULL,
	dt_end TIMESTAMP NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_ADDRESS(
	id_address INTEGER PRIMARY KEY,
	ds_street VARCHAR2(100) NOT NULL,
	ds_zip_code CHAR(8) NOT NULL,
	ds_number VARCHAR2(100) NOT NULL,
	ds_uf CHAR(2) NOT NULL,
	ds_neighborhood VARCHAR2(100) NOT NULL,
	ds_city VARCHAR2(100) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_RESOURCE(
	id_resource INTEGER PRIMARY KEY,
	id_resource_type INTEGER REFERENCES T_GRW_RESOURCE_TYPE(id_resource_type) NOT NULL,
	ds_name VARCHAR2(100) NOT NULL,
	vl_cost_per_unity NUMBER(8,2) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	ds_unit_of_measurement VARCHAR2(100) NOT NULL,
	nr_availability NUMBER(8,2) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_COMPANY(
	id_company INTEGER PRIMARY KEY,
	id_sector INTEGER REFERENCES T_GRW_SECTOR(id_sector) NOT NULL,
	id_address INTEGER REFERENCES T_GRW_ADDRESS(id_address) NOT NULL,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	vl_current_revenue NUMBER(10,2) NOT NULL,
	nr_size INTEGER NOT NULL,
	nr_cnpj CHAR(14) NOT NULL UNIQUE,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_USER(
	id_user INTEGER PRIMARY KEY,
	id_user_type INTEGER REFERENCES T_GRW_USER_TYPE(id_user_type) NOT NULL,
	ds_email VARCHAR2(100) NOT NULL UNIQUE,
	ds_password VARCHAR2(100) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_COMPANY_REPRESENTATIVE(
	id_company_representative INTEGER PRIMARY KEY,
	id_user INTEGER REFERENCES T_GRW_USER(id_user) NOT NULL,
	id_company INTEGER REFERENCES T_GRW_COMPANY(id_company) NOT NULL,
	nr_phone CHAR(11) NOT NULL,
	ds_role VARCHAR2(4000) NOT NULL, 
	ds_name VARCHAR2(100) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_PROCESS(
	id_process INTEGER PRIMARY KEY,
	id_company INTEGER REFERENCES T_GRW_COMPANY(id_company) NOT NULL,
	id_company_representative INTEGER REFERENCES T_GRW_COMPANY_REPRESENTATIVE(id_company_representative) NOT NULL,
	ds_name VARCHAR2(100) NOT NULL,
	st_process CHAR(2) CHECK (st_process IN ('0', '1', '2')) NOT NULL,
	nr_priority INTEGER NOT NULL,
	dt_start TIMESTAMP NULL,
	dt_end TIMESTAMP NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	tx_comments VARCHAR2(4000) NULL, 
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_PROCESS_RESOURCE(
	id_process_resource INTEGER PRIMARY KEY,
	id_resource INTEGER REFERENCES T_GRW_RESOURCE(id_resource) NOT NULL,
	id_process INTEGER REFERENCES T_GRW_PROCESS(id_process) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_PRODUCT (
	id_product INTEGER PRIMARY KEY,
	id_product_type INTEGER REFERENCES T_GRW_PRODUCT_TYPE(id_product_type) NOT NULL,
	id_process INTEGER REFERENCES T_GRW_PROCESS(id_process) NOT NULL,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	vl_sale_price NUMBER(7,2) NOT NULL,
	vl_cost_price NUMBER(7,2) NOT NULL,
	nr_weight NUMBER(8,2) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_SUSTAINABLE_GOAL(
	id_sustainable_goal INTEGER PRIMARY KEY,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	vl_target NUMBER(10,2) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_BADGE(
	id_badge INTEGER PRIMARY KEY,
	id_sustainable_goal INTEGER REFERENCES T_GRW_SUSTAINABLE_GOAL(id_sustainable_goal) NOT NULL,
	id_badge_level INTEGER REFERENCES T_GRW_BADGE_LEVEL(id_badge_level) NOT NULL,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	ds_criteria VARCHAR2(4000) NOT NULL, 
	st_badge CHAR(2) CHECK (st_badge IN ('0', '1', '2')) NOT NULL,
	url_image VARCHAR2(100) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_PROCESS_BADGE(
	id_process_badge INTEGER PRIMARY KEY,
	id_process INTEGER REFERENCES T_GRW_PROCESS(id_process) NOT NULL,
	id_badge INTEGER REFERENCES T_GRW_BADGE(id_badge) NOT NULL,
	dt_expiration_date TIMESTAMP NOT NULL,
	url_badge VARCHAR2(100) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_PROCESS_STEP(
	id_process_step INTEGER PRIMARY KEY,
	id_step INTEGER REFERENCES T_GRW_STEP(id_step) NOT NULL,
	id_process INTEGER REFERENCES T_GRW_PROCESS(id_process) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS(
	id_sustainable_improvement_actions INTEGER PRIMARY KEY,
	id_sustainable_goal INTEGER REFERENCES T_GRW_SUSTAINABLE_GOAL(id_sustainable_goal) NOT NULL,
	ds_name VARCHAR2(100) NOT NULL,
	tx_instruction VARCHAR2(4000) NOT NULL, 
	st_sustainable_action CHAR(2) CHECK (st_sustainable_action IN ('0', '1', '2')) NOT NULL,
	nr_priority INTEGER NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_MEASUREMENT(
	id_measurement INTEGER PRIMARY KEY,
	id_measurement_type INTEGER REFERENCES T_GRW_MEASUREMENT_TYPE(id_measurement_type) NOT NULL,
	id_sustainable_goal INTEGER REFERENCES T_GRW_SUSTAINABLE_GOAL(id_sustainable_goal) NOT NULL,
	ds_name VARCHAR2(100) NOT NULL,
	tx_description VARCHAR2(4000) NOT NULL, 
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_IMPROVEMENT_MEASUREMENT(
	id_improvement_measurement INTEGER PRIMARY KEY,
	id_sustainable_improvement_actions INTEGER REFERENCES T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS(id_sustainable_improvement_actions) NOT NULL,
	id_measurement INTEGER REFERENCES T_GRW_MEASUREMENT(id_measurement) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

CREATE TABLE T_GRW_MEASUREMENT_PROCESS_STEP(
	id_measurement_process_step INTEGER PRIMARY KEY,
	id_process_step INTEGER REFERENCES T_GRW_PROCESS_STEP(id_process_step) NOT NULL,
	id_measurement INTEGER REFERENCES T_GRW_MEASUREMENT(id_measurement) NOT NULL,
	nr_result NUMBER(9,2) NOT NULL,
	dt_created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
	dt_updated_at TIMESTAMP NULL,
	dt_finished_at TIMESTAMP NULL
);

-- SCRIPTS DE CRIAR SEQUENCES
CREATE SEQUENCE SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_MEASUREMENT
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_IMPROVEMENT_MEASUREMENT
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_MEASUREMENT_PROCESS_STEP
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_PROCESS_STEP
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_PROCESS_BADGE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_BADGE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_SUSTAINABLE_GOAL
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_PRODUCT
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_PROCESS_RESOURCE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_PROCESS
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_COMPANY_REPRESENTATIVE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_USER
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_COMPANY
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_RESOURCE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_ADDRESS
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_STEP
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_MEASUREMENT_TYPE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_BADGE_LEVEL
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_PRODUCT_TYPE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_RESOURCE_TYPE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_SECTOR
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;

CREATE SEQUENCE SEQ_GRW_USER_TYPE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999;