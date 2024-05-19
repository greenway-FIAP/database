set serveroutput on;
CREATE OR REPLACE PROCEDURE number_of_processes_by_collaborator IS
    CURSOR number_of_processes_by_collaborator IS
        SELECT
            TGCR.id_company_representative,
            COUNT(TGP.id_process) AS QUANTIDADE_PROCESSOS,
            TGCR.ds_name AS NOME_COLABORADOR,
            TGCO.ds_name AS NOME_EMPRESA
        FROM
            T_GRW_COMPANY TGCO
        INNER JOIN T_GRW_ADDRESS TGA ON
            TGA.id_address = TGCO.id_address
        INNER JOIN T_GRW_COMPANY_REPRESENTATIVE TGCR ON
            TGCR.id_company = TGCO.id_company
        INNER JOIN T_GRW_PROCESS TGP ON
            TGP.id_company_representative = TGCR.id_company_representative
        GROUP BY
            TGCR.id_company_representative,
            TGCR.ds_name,
            TGCO.ds_name
        ORDER BY
            COUNT(TGP.id_process) DESC;

    v_id T_GRW_COMPANY_REPRESENTATIVE.id_company_representative%TYPE;
    v_quantity_processes INTEGER;
    v_name_collaborator T_GRW_COMPANY_REPRESENTATIVE.ds_name%TYPE;
    v_company_name T_GRW_COMPANY.ds_name%TYPE;
BEGIN
    OPEN number_of_processes_by_collaborator;
    LOOP
        FETCH number_of_processes_by_collaborator INTO v_id, v_quantity_processes, v_name_collaborator, v_company_name;
        EXIT WHEN number_of_processes_by_collaborator%NOTFOUND;

        dbms_output.put_line('Nome da empresa: ' || v_company_name);
        dbms_output.put_line('Nome do colaborador: ' || v_name_collaborator);
        dbms_output.put_line('Quantidade de processos atribuídos: ' || v_quantity_processes);
        dbms_output.put_line(' ');
    END LOOP;

    CLOSE number_of_processes_by_collaborator;
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Ocorreu um erro: ' || SQLERRM);
END number_of_processes_by_collaborator;
/


BEGIN
    number_of_processes_by_collaborator;
END;
/


