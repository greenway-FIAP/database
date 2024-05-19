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
        RETURN FALSE; -- J� existe um usu�rio com esse e-mail
    ELSE
        RETURN TRUE; -- O e-mail � �nico
    END IF;
END validate_email;
/

DECLARE
    v_email1 VARCHAR2(100) := 'usuario5@example.com'; -- Email que est� na tabela
    v_email2 VARCHAR2(100) := 'teste2@example.com'; -- Email que n�o est� na tabela
    v_result BOOLEAN;
BEGIN
    -- Testando um e-mail que ainda n�o est� na tabela
    v_result := validate_email(v_email1);
    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE('O e-mail ' || v_email1 || ' n�o est� cadastado.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O e-mail ' || v_email1 || ' j� est� em uso.');
    END IF;

    -- Testando um e-mail que j� est� na tabela
    v_result := validate_email(v_email2);
    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE('O e-mail ' || v_email2 || ' n�o est� cadastado.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O e-mail ' || v_email2 || ' j� est� em uso.');
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
        RETURN FALSE; -- J� existe uma empresa com esse CNPJ
    ELSE
        RETURN TRUE; -- O CNPJ � �nico
    END IF;
END validate_cnpj;
/

DECLARE
    v_cnpj1 VARCHAR2(14) := '80246801357924'; -- CNPJ que est� na tabela
    v_cnpj2 VARCHAR2(14) := '98765432109886'; -- CNPJ que n�o est� na tabela
    v_result BOOLEAN;
BEGIN
    -- Testando um CNPJ que n�o est� na tabela
    v_result := validate_cnpj(v_cnpj1);
    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE('O CNPJ ' || v_cnpj1 || ' n�o est� cadastado.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O CNPJ ' || v_cnpj1 || ' j� est� em uso.');
    END IF;

    -- Testando um CNPJ que est� na tabela
    v_result := validate_cnpj(v_cnpj2);
    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE('O CNPJ ' || v_cnpj2 || ' n�o est� cadastado.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O CNPJ ' || v_cnpj2 || ' j� est� em uso.');
    END IF;
END;
/














