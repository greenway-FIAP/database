set serveroutput on;

-- 1) PROCEDIMENTO DE JOIN EM DUAS TABELAS QUE RETORNA OS DADOS NO FORMATO JSON
DROP PROCEDURE prc_get_company_process_json;
CREATE OR REPLACE PROCEDURE prc_get_company_process_json (
    p_company_id IN T_GRW_COMPANY.id_company%TYPE,
    p_json_output OUT CLOB
) IS
    l_json_output CLOB;
    l_input_string VARCHAR2(4000); 
BEGIN
    FOR rec IN (
        SELECT c.ds_name, c.tx_description, c.vl_current_revenue, 
               p.ds_name AS process_name, p.st_process, p.dt_start
        FROM T_GRW_COMPANY c
        JOIN T_GRW_PROCESS p ON c.id_company = p.id_company
        WHERE c.id_company = p_company_id
    ) LOOP
        l_input_string := 'CompanyName:' || rec.ds_name || 
                          ',CompanyDescription:' || rec.tx_description || 
                          ',CurrentRevenue:' || rec.vl_current_revenue || 
                          ',ProcessName:' || rec.process_name || 
                          ',ProcessStatus:' || rec.st_process || 
                          ',ProcessStartDate:' || TO_CHAR(rec.dt_start, 'YYYY-MM-DD');

        l_json_output := transform_to_json(l_input_string);
    END LOOP;

    p_json_output := l_json_output;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_json_output := 'ERRO: "Nenhum dado encontrado para o ID especificado da empresa"}';

    WHEN TOO_MANY_ROWS THEN
        p_json_output := 'ERRO: "Muitas linhas retornadas, refine sua consulta"}';

    WHEN OTHERS THEN
        p_json_output := 'ERRO: "Ocorreu um erro inesperado: ' || SQLERRM || '"}';
END;
/

-- EXECURTANDO O PROCEDIMENTO QUE RETORNA OS DADOS CADASTRADOS EM JSON
DECLARE
    l_json_output CLOB;
BEGIN
    prc_get_company_process_json(1, l_json_output);
    DBMS_OUTPUT.PUT_LINE(l_json_output);
END;
/

--------------------------------------------------------------------------

-- 2) PROCEDIEMNTO DE RELATÓRIO
DROP PROCEDURE Show_Previous_Current_Next;
CREATE OR REPLACE PROCEDURE Show_Previous_Current_Next IS
    CURSOR process_cursor IS
        SELECT id_process, id_company, nr_priority, ROW_NUMBER() OVER (ORDER BY id_process) AS rn
        FROM T_GRW_PROCESS
        ORDER BY id_process;

    TYPE Process_Table IS TABLE OF process_cursor%ROWTYPE;
    process_data Process_Table;

    v_previous_nr_priority VARCHAR2(100);
    v_current_nr_priority VARCHAR2(100);
    v_next_nr_priority VARCHAR2(100);
    v_id_company T_GRW_PROCESS.id_company%TYPE;

BEGIN
    OPEN process_cursor;
    FETCH process_cursor BULK COLLECT INTO process_data;
    CLOSE process_cursor;

    FOR i IN 1..process_data.COUNT LOOP
        v_current_nr_priority := TO_CHAR(process_data(i).nr_priority);
        v_id_company := process_data(i).id_company;

        IF i = 1 THEN
            v_previous_nr_priority := 'Vazio';
        ELSE
            v_previous_nr_priority := TO_CHAR(process_data(i - 1).nr_priority);
        END IF;

        IF i = process_data.COUNT THEN
            v_next_nr_priority := 'Vazio';
        ELSE
            v_next_nr_priority := TO_CHAR(process_data(i + 1).nr_priority);
        END IF;

        DBMS_OUTPUT.PUT_LINE('ID da Empresa: ' || v_id_company || 
                             ', Anterior: ' || v_previous_nr_priority || 
                             ', Atual: ' || v_current_nr_priority || 
                             ', Próximo: ' || v_next_nr_priority);
    END LOOP;

EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Erro: Mais linhas foram retornadas do que o esperado.');
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Erro: Problema ao converter ou manipular dados.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro inesperado: ' || SQLERRM);
END Show_Previous_Current_Next;
/

-- EXECUTANDO A PROCEDURE DE RELATÓRIO
BEGIN
    Show_Previous_Current_Next;
END;
/
