set serveroutput on;
--Criado funcoes para validacao de dados
CREATE OR REPLACE FUNCTION validate_email(
    p_email VARCHAR2
) RETURN BOOLEAN IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM T_GRW_USER
    WHERE ds_email = p_email;

    IF v_count > 0 THEN
        RETURN FALSE; -- Já existe um usuário com esse e-mail
    ELSE
        RETURN TRUE; -- O e-mail é único
    END IF;
END validate_email;
/

DECLARE
    v_email1 VARCHAR2(100) := 'usuario5@example.com'; -- Email que está na tabela
    v_email2 VARCHAR2(100) := 'teste2@example.com'; -- Email que não está na tabela
    v_result BOOLEAN;
BEGIN
    -- Testando um e-mail que ainda não está na tabela
    v_result := validate_email(v_email1);
    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE('O e-mail ' || v_email1 || ' não está cadastado.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O e-mail ' || v_email1 || ' já está em uso.');
    END IF;

    -- Testando um e-mail que já está na tabela
    v_result := validate_email(v_email2);
    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE('O e-mail ' || v_email2 || ' não está cadastado.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O e-mail ' || v_email2 || ' já está em uso.');
    END IF;
END;
/

CREATE OR REPLACE FUNCTION validate_cnpj(
    p_cnpj IN VARCHAR2
) RETURN BOOLEAN IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM T_GRW_COMPANY
    WHERE nr_cnpj = p_cnpj;

    IF v_count > 0 THEN
        RETURN FALSE; -- Já existe uma empresa com esse CNPJ
    ELSE
        RETURN TRUE; -- O CNPJ é único
    END IF;
END validate_cnpj;
/

DECLARE
    v_cnpj1 VARCHAR2(14) := '80246801357924'; -- CNPJ que está na tabela
    v_cnpj2 VARCHAR2(14) := '98765432109886'; -- CNPJ que não está na tabela
    v_result BOOLEAN;
BEGIN
    -- Testando um CNPJ que não está na tabela
    v_result := validate_cnpj(v_cnpj1);
    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE('O CNPJ ' || v_cnpj1 || ' não está cadastado.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O CNPJ ' || v_cnpj1 || ' já está em uso.');
    END IF;

    -- Testando um CNPJ que está na tabela
    v_result := validate_cnpj(v_cnpj2);
    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE('O CNPJ ' || v_cnpj2 || ' não está cadastado.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O CNPJ ' || v_cnpj2 || ' já está em uso.');
    END IF;
END;
/

-- FUNÇÃO QUE RECEBE OS DADOS DE UMA TABELA E TRANSFORMA PARA O FORMATO JSON
drop function transform_to_json;
CREATE OR REPLACE FUNCTION transform_to_json(p_input_data IN VARCHAR2)
RETURN CLOB
IS
  l_json CLOB;
  l_elements DBMS_SQL.VARCHAR2A;
  l_key_value_pair DBMS_SQL.VARCHAR2A;
  l_key VARCHAR2(100);
  l_value VARCHAR2(100);
  l_json_part CLOB;
  l_delimiter_pos INTEGER;
  l_counter INTEGER := 1;

  no_data_found EXCEPTION;
  invalid_data_format EXCEPTION;

BEGIN
  IF p_input_data IS NULL THEN
    RAISE no_data_found;
  END IF;

  l_json := '{';

  SELECT REGEXP_SUBSTR(p_input_data, '[^,]+', 1, LEVEL)
  BULK COLLECT INTO l_elements
  FROM DUAL
  CONNECT BY REGEXP_SUBSTR(p_input_data, '[^,]+', 1, LEVEL) IS NOT NULL;

  FOR i IN l_elements.FIRST..l_elements.LAST LOOP
    l_delimiter_pos := INSTR(l_elements(i), ':');
    
    IF l_delimiter_pos = 0 THEN
      RAISE invalid_data_format; 
    END IF;

    l_key := TRIM(SUBSTR(l_elements(i), 1, l_delimiter_pos - 1));
    l_value := TRIM(SUBSTR(l_elements(i), l_delimiter_pos + 1));

    l_json_part := '"' || l_key || '":"' || l_value || '"';
    IF l_counter > 1 THEN
      l_json := l_json || ', ';
    END IF;
    l_json := l_json || l_json_part;
    l_counter := l_counter + 1;
  END LOOP;

  l_json := l_json || '}';

  RETURN l_json;

EXCEPTION
  WHEN no_data_found THEN
    RETURN 'ERRO: Nenhum dado encontrado';
  WHEN invalid_data_format THEN
    RETURN 'ERRO: Formato de dados inválido';
  WHEN OTHERS THEN
    RETURN 'ERRO: Ocorreu um erro inesperado';
END transform_to_json;
/

------------------------------------------------------------

-- FUNÇÃO QUE SUBSTITUI UMA PPROCEDURE JA EXISTENTE
DROP FUNCTION f_quantity_badges_by_process;
CREATE OR REPLACE FUNCTION f_quantity_badges_by_process 
RETURN VARCHAR2 AS
    CURSOR c_quantity_badges_by_process IS
        SELECT
            TGP.id_process AS COD_PROCESSO,
            TGCO.ds_name AS NOME_EMPRESA,
            TGP.ds_name AS NOME_PROCESSO,
            COUNT(TGPS.id_process_step) AS QUANTIDADE_ETAPAS,
            COUNT(TGPB.id_process_badge) AS QUANTIDADE_BADGES
        FROM
            T_GRW_COMPANY TGCO
        INNER JOIN T_GRW_PROCESS TGP ON
            TGCO.id_company = TGP.id_company
        INNER JOIN T_GRW_PROCESS_STEP TGPS ON
            TGPS.id_process = TGP.id_process
        INNER JOIN T_GRW_PROCESS_BADGE TGPB ON
            TGP.id_process = TGPB.id_process
        GROUP BY
            TGP.id_process,
            TGP.ds_name,
            TGCO.ds_name
        ORDER BY 
            COUNT(TGPB.id_process_badge) DESC;

    v_id_process T_GRW_PROCESS.id_process%TYPE;
    v_company_name T_GRW_COMPANY.ds_name%TYPE;
    v_process_name T_GRW_PROCESS.ds_name%TYPE;
    v_step_quantity INTEGER;
    v_badges_quantity INTEGER;
    v_result VARCHAR2(32767);
BEGIN
    v_result := ''; 

    OPEN c_quantity_badges_by_process;
    LOOP
        FETCH c_quantity_badges_by_process INTO v_id_process, v_company_name, v_process_name, v_step_quantity, v_badges_quantity;
        EXIT WHEN c_quantity_badges_by_process%NOTFOUND;

        v_result := v_result || 'Nome da empresa: ' || v_company_name || CHR(10);
        v_result := v_result || 'Código do processo: ' || v_id_process || CHR(10);
        v_result := v_result || 'Nome do processo: ' || v_process_name || CHR(10);
        v_result := v_result || 'Quantidade de etapas: ' || v_step_quantity || CHR(10);
        v_result := v_result || 'Quantidade de Badges atribuídas pelo Greenway: ' || v_badges_quantity || CHR(10) || CHR(10);
    END LOOP;
    CLOSE c_quantity_badges_by_process;

    RETURN v_result;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'ERRO: Nenhum dado encontrado para o processo.';
    WHEN TOO_MANY_ROWS THEN
        RETURN 'ERRO: Número excessivo de linhas retornadas.';
    WHEN OTHERS THEN
        RETURN 'ERRO: Ocorreu um erro inesperado: ' || SQLERRM;
END;
/
