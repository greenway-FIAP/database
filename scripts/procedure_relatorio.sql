set serveroutput on;
-- Mostra a quantidade de Badges ganhas por processos produtivos das empresas cadastradas no Greenway
CREATE OR REPLACE PROCEDURE p_quantity_badges_by_process AS
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
BEGIN
	OPEN c_quantity_badges_by_process;
	LOOP
		FETCH c_quantity_badges_by_process INTO v_id_process, v_company_name, v_process_name, v_step_quantity, v_badges_quantity;
		EXIT WHEN c_quantity_badges_by_process%NOTFOUND;

		dbms_output.put_line('Nome da empresa: ' || v_company_name);
		dbms_output.put_line('Código do processo: ' || v_id_process);
		dbms_output.put_line('Nome do processo: ' || v_process_name);
		dbms_output.put_line('Quantidade de etapas: ' || v_step_quantity);
		dbms_output.put_line('Quantidade de Badges atribuídas pelo Greenway: ' || v_badges_quantity);
		dbms_output.put_line(' ');
	END LOOP;
	CLOSE c_quantity_badges_by_process;
END;
/

begin 
    p_quantity_badges_by_process;
end;
/