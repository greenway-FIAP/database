-- T_GRW_USER_TYPE
INSERT INTO T_GRW_USER_TYPE (id_user_type, ds_title)
VALUES (SEQ_GRW_USER_TYPE.NEXTVAL, 'Administrador');

INSERT INTO T_GRW_USER_TYPE (id_user_type, ds_title)
VALUES (SEQ_GRW_USER_TYPE.NEXTVAL, 'Gerente');

INSERT INTO T_GRW_USER_TYPE (id_user_type, ds_title)
VALUES (SEQ_GRW_USER_TYPE.NEXTVAL, 'Funcion�rio');

INSERT INTO T_GRW_USER_TYPE (id_user_type, ds_title)
VALUES (SEQ_GRW_USER_TYPE.NEXTVAL, 'Supervisor');

INSERT INTO T_GRW_USER_TYPE (id_user_type, ds_title)
VALUES (SEQ_GRW_USER_TYPE.NEXTVAL, 'Outro');


-- T_GRW_SECTOR 
INSERT INTO T_GRW_SECTOR (id_sector, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SECTOR.NEXTVAL, 'Tecnologia', 'Setor respons�vel pelo desenvolvimento e manuten��o de sistemas de informa��o.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SECTOR (id_sector, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SECTOR.NEXTVAL, 'Recursos Humanos', 'Setor respons�vel pelo recrutamento, sele��o e gest�o de pessoal.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SECTOR (id_sector, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SECTOR.NEXTVAL, 'Financeiro', 'Setor respons�vel pelo controle financeiro e contabilidade da empresa.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SECTOR (id_sector, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SECTOR.NEXTVAL, 'Opera��es', 'Setor respons�vel pela execu��o das atividades principais da empresa.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SECTOR (id_sector, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SECTOR.NEXTVAL, 'Marketing', 'Setor respons�vel pela promo��o e divulga��o dos produtos ou servi�os da empresa.', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_RESOURCE_TYPE
INSERT INTO T_GRW_RESOURCE_TYPE (id_resource_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE_TYPE.NEXTVAL, 'Mat�ria-Prima', 'Recursos naturais ou produtos b�sicos utilizados na fabrica��o de produtos.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE_TYPE (id_resource_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE_TYPE.NEXTVAL, 'M�o de Obra', 'Trabalhadores empregados em processos produtivos ou administrativos.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE_TYPE (id_resource_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE_TYPE.NEXTVAL, 'Equipamento', 'M�quinas, ferramentas ou dispositivos utilizados na produ��o ou presta��o de servi�os.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE_TYPE (id_resource_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE_TYPE.NEXTVAL, 'Tecnologia', 'Sistemas de informa��o, softwares ou plataformas utilizadas nos processos empresariais.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE_TYPE (id_resource_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE_TYPE.NEXTVAL, 'Energia', 'Recursos energ�ticos, como eletricidade ou combust�veis, utilizados nos processos de produ��o.', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_PRODUCT_TYPE
INSERT INTO T_GRW_PRODUCT_TYPE (id_product_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT_TYPE.NEXTVAL, 'Eletr�nicos', 'Produtos eletr�nicos de consumo, como smartphones, laptops e tablets.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT_TYPE (id_product_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT_TYPE.NEXTVAL, 'Alimentos', 'Produtos aliment�cios, incluindo itens frescos, embalados e processados.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT_TYPE (id_product_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT_TYPE.NEXTVAL, 'Roupas', 'Artigos de vestu�rio, incluindo roupas para todas as idades e esta��es.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT_TYPE (id_product_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT_TYPE.NEXTVAL, 'Autom�veis', 'Ve�culos automotores, como carros de passageiros e caminh�es.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT_TYPE (id_product_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT_TYPE.NEXTVAL, 'Cosm�ticos', 'Produtos de beleza, cuidados com a pele, maquiagem e fragr�ncias.', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_BADGE_LEVEL
INSERT INTO T_GRW_BADGE_LEVEL (id_badge_level, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE_LEVEL.NEXTVAL, 'Iniciante', 'N�vel b�sico para empresas que est�o come�ando a implementar pr�ticas sustent�veis.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE_LEVEL (id_badge_level, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE_LEVEL.NEXTVAL, 'Intermedi�rio', 'N�vel intermedi�rio para empresas que j� implementaram algumas pr�ticas sustent�veis e est�o progredindo.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE_LEVEL (id_badge_level, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE_LEVEL.NEXTVAL, 'Avan�ado', 'N�vel avan�ado para empresas que demonstram um compromisso significativo com a sustentabilidade e alcan�aram resultados tang�veis.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE_LEVEL (id_badge_level, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE_LEVEL.NEXTVAL, 'Especialista', 'N�vel especial para empresas l�deres que se destacam por suas pr�ticas sustent�veis e t�m impacto positivo em suas comunidades.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE_LEVEL (id_badge_level, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE_LEVEL.NEXTVAL, 'Mestre', 'N�vel m�ximo para empresas que s�o refer�ncias globais em sustentabilidade, com iniciativas inovadoras e impacto positivo em grande escala.', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_MEASUREMENT_TYPE
INSERT INTO T_GRW_MEASUREMENT_TYPE (id_measurement_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_TYPE.NEXTVAL, 'Consumo de Energia', 'Medi��o do consumo de energia el�trica, g�s ou outras fontes de energia.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_TYPE (id_measurement_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_TYPE.NEXTVAL, 'Emiss�es de CO2', 'Medi��o das emiss�es de di�xido de carbono (CO2) associadas �s atividades da empresa.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_TYPE (id_measurement_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_TYPE.NEXTVAL, 'Gera��o de Res�duos', 'Medi��o da quantidade e tipo de res�duos gerados pelas opera��es da empresa.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_TYPE (id_measurement_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_TYPE.NEXTVAL, 'Consumo de �gua', 'Medi��o do consumo de �gua pot�vel ou outros recursos h�dricos pela empresa.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_TYPE (id_measurement_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_TYPE.NEXTVAL, '�ndice de Reciclagem', 'Medi��o da propor��o de materiais reciclados em rela��o ao total de res�duos gerados.', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_STEP
INSERT INTO T_GRW_STEP (id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_start, dt_end, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_STEP.NEXTVAL, 'Prepara��o de Mat�ria-Prima', 'Prepara��o inicial dos materiais necess�rios para o processo de produ��o.', 24.5, '0', NULL, NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_STEP (id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_start, dt_end, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_STEP.NEXTVAL, 'Fabrica��o', 'Execu��o do processo de fabrica��o propriamente dito.', 48.75, '1', NULL, NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_STEP (id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_start, dt_end, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_STEP.NEXTVAL, 'Controle de Qualidade', 'Verifica��o da qualidade dos produtos fabricados.', 16.25, '1', NULL, NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_STEP (id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_start, dt_end, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_STEP.NEXTVAL, 'Embalagem', 'Embalagem dos produtos acabados para envio ou armazenamento.', 12, '1', NULL, NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_STEP (id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_start, dt_end, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_STEP.NEXTVAL, 'Distribui��o', 'Distribui��o dos produtos acabados para clientes ou pontos de venda.', 32.5, '1', NULL, NULL, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_ADDRESS
INSERT INTO T_GRW_ADDRESS (id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_ADDRESS.NEXTVAL, 'Rua das Flores', '12345678', '123', 'SP', 'Centro', 'S�o Paulo', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_ADDRESS (id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_ADDRESS.NEXTVAL, 'Avenida Principal', '87654321', '456', 'RJ', 'Copacabana', 'Rio de Janeiro', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_ADDRESS (id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_ADDRESS.NEXTVAL, 'Rua do Com�rcio', '13579246', '789', 'MG', 'Centro', 'Belo Horizonte', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_ADDRESS (id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_ADDRESS.NEXTVAL, 'Avenida das Palmeiras', '98765432', '987', 'RS', 'Jardim', 'Porto Alegre', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_ADDRESS (id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_ADDRESS.NEXTVAL, 'Pra�a da Liberdade', '24681357', '369', 'BA', 'Centro', 'Salvador', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_RESOURCE
INSERT INTO T_GRW_RESOURCE (id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE.NEXTVAL, 1, 'Papel Reciclado', 2.50, 'Papel produzido a partir de material reciclado.', 'Pacote', 500, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE (id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE.NEXTVAL, 2, 'L�mpada LED', 12.99, 'L�mpadas de LED de baixo consumo de energia.', 'Unidade', 300, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE (id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE.NEXTVAL, 3, 'Bateria Solar', 250.00, 'Bateria recarreg�vel alimentada por energia solar.', 'Unidade', 50, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE (id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE.NEXTVAL, 1, 'Pl�stico Reciclado', 3.75, 'Pl�stico produzido a partir de material reciclado.', 'Quilo', 200, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE (id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE.NEXTVAL, 2, 'Painel Solar', 500.00, 'Dispositivo que converte a luz solar em energia el�trica.', 'Unidade', 20, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_COMPANY
INSERT INTO T_GRW_COMPANY (id_company, id_sector, id_address, ds_name, tx_description, vl_current_revenue, nr_size, nr_cnpj, dt_created_at)
VALUES (SEQ_GRW_COMPANY.NEXTVAL, 1, 1, 'Empresa A', 'Descri��o da Empresa A', 1000000.00, 100, '12345678901234', SYSTIMESTAMP);

INSERT INTO T_GRW_COMPANY (id_company, id_sector, id_address, ds_name, tx_description, vl_current_revenue, nr_size, nr_cnpj, dt_created_at)
VALUES (SEQ_GRW_COMPANY.NEXTVAL, 2, 2, 'Empresa B', 'Descri��o da Empresa B', 1000000.00, 50, '98765432109876', SYSTIMESTAMP);

INSERT INTO T_GRW_COMPANY (id_company, id_sector, id_address, ds_name, tx_description, vl_current_revenue, nr_size, nr_cnpj, dt_created_at)
VALUES (SEQ_GRW_COMPANY.NEXTVAL, 3, 3, 'Empresa C', 'Descri��o da Empresa C', 1000000.00, 75, '24681357913579', SYSTIMESTAMP);

INSERT INTO T_GRW_COMPANY (id_company, id_sector, id_address, ds_name, tx_description, vl_current_revenue, nr_size, nr_cnpj, dt_created_at)
VALUES (SEQ_GRW_COMPANY.NEXTVAL, 4, 4, 'Empresa D', 'Descri��o da Empresa D', 1000000.00, 200, '13579246802468', SYSTIMESTAMP);

INSERT INTO T_GRW_COMPANY (id_company, id_sector, id_address, ds_name, tx_description, vl_current_revenue, nr_size, nr_cnpj, dt_created_at)
VALUES (SEQ_GRW_COMPANY.NEXTVAL, 5, 5, 'Empresa E', 'Descri��o da Empresa E', 1000000.00, 30, '80246801357924', SYSTIMESTAMP);


-- T_GRW_USER
INSERT INTO T_GRW_USER (id_user, id_user_type, ds_email, ds_password, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_USER.NEXTVAL, 1, 'usuario1@example.com', 'senha123', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_USER (id_user, id_user_type, ds_email, ds_password, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_USER.NEXTVAL, 2, 'usuario2@example.com', 'senha456', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_USER (id_user, id_user_type, ds_email, ds_password, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_USER.NEXTVAL, 1, 'usuario3@example.com', 'senha789', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_USER (id_user, id_user_type, ds_email, ds_password, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_USER.NEXTVAL, 2, 'usuario4@example.com', 'senhaabc', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_USER (id_user, id_user_type, ds_email, ds_password, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_USER.NEXTVAL, 1, 'usuario5@example.com', 'senhaxyz', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_COMPANY_REPRESENTATIVE
INSERT INTO T_GRW_COMPANY_REPRESENTATIVE (id_company_representative, id_user, id_company, nr_phone, ds_role, ds_name, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_COMPANY_REPRESENTATIVE.NEXTVAL, 1, 1, '1122334455', 'Representante de Vendas', 'Jo�o da Silva', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_COMPANY_REPRESENTATIVE (id_company_representative, id_user, id_company, nr_phone, ds_role, ds_name, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_COMPANY_REPRESENTATIVE.NEXTVAL, 2, 2, '2233445566', 'Gerente de Produ��o', 'Maria Oliveira', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_COMPANY_REPRESENTATIVE (id_company_representative, id_user, id_company, nr_phone, ds_role, ds_name, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_COMPANY_REPRESENTATIVE.NEXTVAL, 3, 3, '3344556677', 'Analista de Marketing', 'Pedro Santos', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_COMPANY_REPRESENTATIVE (id_company_representative, id_user, id_company, nr_phone, ds_role, ds_name, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_COMPANY_REPRESENTATIVE.NEXTVAL, 4, 4, '4455667788', 'Engenheiro de Produ��o', 'Ana Souza', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_COMPANY_REPRESENTATIVE (id_company_representative, id_user, id_company, nr_phone, ds_role, ds_name, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_COMPANY_REPRESENTATIVE.NEXTVAL, 5, 5, '5566778899', 'Diretor de Opera��es', 'Lucas Almeida', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_PROCESS
INSERT INTO T_GRW_PROCESS (id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS.NEXTVAL, 1, 1, 'Produ��o de Produto A', '0', 1, NULL, NULL, 'Descri��o do processo de produ��o do Produto A', NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS (id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS.NEXTVAL, 2, 2, 'Montagem de Componentes B', '1', 2, NULL, NULL, 'Descri��o do processo de montagem dos Componentes B', NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS (id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS.NEXTVAL, 3, 3, 'Campanha Publicit�ria C', '0', 3, NULL, NULL, 'Descri��o do processo de cria��o da Campanha Publicit�ria C', NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS (id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS.NEXTVAL, 4, 4, 'Desenvolvimento de Novo Produto D', '1', 1, NULL, NULL, 'Descri��o do processo de desenvolvimento do Novo Produto D', NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS (id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS.NEXTVAL, 5, 5, 'Gest�o de Log�stica E', '2', 2, NULL, NULL, 'Descri��o do processo de gest�o de log�stica E', NULL, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_PROCESS_RESOURCE
INSERT INTO T_GRW_PROCESS_RESOURCE (id_process_resource, id_resource, id_process, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_RESOURCE.NEXTVAL, 1, 1, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_RESOURCE (id_process_resource, id_resource, id_process, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_RESOURCE.NEXTVAL, 2, 2, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_RESOURCE (id_process_resource, id_resource, id_process, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_RESOURCE.NEXTVAL, 3, 3, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_RESOURCE (id_process_resource, id_resource, id_process, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_RESOURCE.NEXTVAL, 4, 4, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_RESOURCE (id_process_resource, id_resource, id_process, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_RESOURCE.NEXTVAL, 5, 5, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_PRODUCT
INSERT INTO T_GRW_PRODUCT (id_product, id_product_type, id_process, ds_name, tx_description, vl_sale_price, vl_cost_price, nr_weight, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT.NEXTVAL, 1, 1, 'Produto A', 'Descri��o do Produto A', 100.00, 50.00, 0.5, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT (id_product, id_product_type, id_process, ds_name, tx_description, vl_sale_price, vl_cost_price, nr_weight, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT.NEXTVAL, 2, 2, 'Componente B', 'Descri��o do Componente B', 20.00, 10.00, 0.2, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT (id_product, id_product_type, id_process, ds_name, tx_description, vl_sale_price, vl_cost_price, nr_weight, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT.NEXTVAL, 3, 3, 'Servi�o C', 'Descri��o do Servi�o C', 200.00, 100.00, 0.1, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT (id_product, id_product_type, id_process, ds_name, tx_description, vl_sale_price, vl_cost_price, nr_weight, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT.NEXTVAL, 4, 4, 'Produto D', 'Descri��o do Produto D', 150.00, 75.00, 0.7, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT (id_product, id_product_type, id_process, ds_name, tx_description, vl_sale_price, vl_cost_price, nr_weight, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT.NEXTVAL, 5, 5, 'Produto E', 'Descri��o do Produto E', 80.00, 40.00, 0.3, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_SUSTAINABLE_GOAL
INSERT INTO T_GRW_SUSTAINABLE_GOAL (id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_GOAL.NEXTVAL, 'Redu��o de Emiss�es de CO2', 'Descri��o da meta: Reduzir as emiss�es de di�xido de carbono em 20%', 20.00, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_GOAL (id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_GOAL.NEXTVAL, 'Efici�ncia Energ�tica', 'Descri��o da meta: Aumentar a efici�ncia energ�tica em 30%', 30.00, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_GOAL (id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_GOAL.NEXTVAL, 'Reciclagem de Res�duos', 'Descri��o da meta: Aumentar a taxa de reciclagem de res�duos para 80%', 80.00, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_GOAL (id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_GOAL.NEXTVAL, 'Conserva��o de �gua', 'Descri��o da meta: Reduzir o consumo de �gua em 25%', 25.00, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_GOAL (id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_GOAL.NEXTVAL, 'Preserva��o da Biodiversidade', 'Descri��o da meta: Aumentar a preserva��o da biodiversidade em �reas adjacentes � empresa', 45.00, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_BADGE
INSERT INTO T_GRW_BADGE (id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE.NEXTVAL, 1, 1, 'Badge de Redu��o de Emiss�es de CO2', 'Descri��o da badge: Reconhecimento por redu��o de emiss�es de di�xido de carbono', 'Crit�rios para obten��o da badge de redu��o de emiss�es de CO2', '0', 'url_imagem1.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE (id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE.NEXTVAL, 2, 2, 'Badge de Efici�ncia Energ�tica', 'Descri��o da badge: Reconhecimento por melhorias na efici�ncia energ�tica', 'Crit�rios para obten��o da badge de efici�ncia energ�tica', '1', 'url_imagem2.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE (id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE.NEXTVAL, 3, 3, 'Badge de Reciclagem de Res�duos', 'Descri��o da badge: Reconhecimento por aumento na taxa de reciclagem de res�duos', 'Crit�rios para obten��o da badge de reciclagem de res�duos', '2', 'url_imagem3.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE (id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE.NEXTVAL, 4, 1, 'Badge de Conserva��o de �gua', 'Descri��o da badge: Reconhecimento por redu��o no consumo de �gua', 'Crit�rios para obten��o da badge de conserva��o de �gua', '0', 'url_imagem4.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE (id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE.NEXTVAL, 5, 2, 'Badge de Preserva��o da Biodiversidade', 'Descri��o da badge: Reconhecimento por a��es de preserva��o da biodiversidade', 'Crit�rios para obten��o da badge de preserva��o da biodiversidade', '1', 'url_imagem5.jpg', SYSTIMESTAMP, NULL, NULL);

-- T_GRW_PROCESS_BADGE
INSERT INTO T_GRW_PROCESS_BADGE (id_process_badge, id_process, id_badge, dt_expiration_date, url_badge, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_BADGE.NEXTVAL, 1, 1, TO_DATE('2024-12-31', 'YYYY-MM-DD'), 'url_badge1.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_BADGE (id_process_badge, id_process, id_badge, dt_expiration_date, url_badge, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_BADGE.NEXTVAL, 2, 2, TO_DATE('2024-12-31', 'YYYY-MM-DD'), 'url_badge2.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_BADGE (id_process_badge, id_process, id_badge, dt_expiration_date, url_badge, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_BADGE.NEXTVAL, 3, 3, TO_DATE('2024-12-31', 'YYYY-MM-DD'), 'url_badge3.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_BADGE (id_process_badge, id_process, id_badge, dt_expiration_date, url_badge, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_BADGE.NEXTVAL, 4, 4, TO_DATE('2024-12-31', 'YYYY-MM-DD'), 'url_badge4.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_BADGE (id_process_badge, id_process, id_badge, dt_expiration_date, url_badge, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_BADGE.NEXTVAL, 5, 5, TO_DATE('2024-12-31', 'YYYY-MM-DD'), 'url_badge5.jpg', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_PROCESS_STEP
INSERT INTO T_GRW_PROCESS_STEP (id_process_step, id_step, id_process, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_STEP.NEXTVAL, 1, 1, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_STEP (id_process_step, id_step, id_process, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_STEP.NEXTVAL, 2, 2, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_STEP (id_process_step, id_step, id_process, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_STEP.NEXTVAL, 3, 3, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_STEP (id_process_step, id_step, id_process, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_STEP.NEXTVAL, 4, 4, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS_STEP (id_process_step, id_step, id_process, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS_STEP.NEXTVAL, 5, 5, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS
INSERT INTO T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS (id_sustainable_improvement_actions, id_sustainable_goal, ds_name, tx_instruction, st_sustainable_action, nr_priority, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.NEXTVAL, 1, 'A��o de Redu��o de Emiss�es de CO2', 'Instru��es para implementa��o da a��o de redu��o de emiss�es de CO2', '0', 1, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS (id_sustainable_improvement_actions, id_sustainable_goal, ds_name, tx_instruction, st_sustainable_action, nr_priority, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.NEXTVAL, 2, 'A��o de Efici�ncia Energ�tica', 'Instru��es para implementa��o da a��o de efici�ncia energ�tica', '1', 2, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS (id_sustainable_improvement_actions, id_sustainable_goal, ds_name, tx_instruction, st_sustainable_action, nr_priority, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.NEXTVAL, 3, 'A��o de Reciclagem de Res�duos', 'Instru��es para implementa��o da a��o de reciclagem de res�duos', '2', 3, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS (id_sustainable_improvement_actions, id_sustainable_goal, ds_name, tx_instruction, st_sustainable_action, nr_priority, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.NEXTVAL, 4, 'A��o de Conserva��o de �gua', 'Instru��es para implementa��o da a��o de conserva��o de �gua', '0', 1, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS (id_sustainable_improvement_actions, id_sustainable_goal, ds_name, tx_instruction, st_sustainable_action, nr_priority, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.NEXTVAL, 5, 'A��o de Preserva��o da Biodiversidade', 'Instru��es para implementa��o da a��o de preserva��o da biodiversidade', '1', 2, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_MEASUREMENT
INSERT INTO T_GRW_MEASUREMENT (id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT.NEXTVAL, 1, 1, 'Medi��o de Emiss�es de CO2', 'Descri��o da medi��o de emiss�es de CO2', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT (id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT.NEXTVAL, 2, 2, 'Medi��o de Consumo de Energia', 'Descri��o da medi��o de consumo de energia', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT (id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT.NEXTVAL, 3, 3, 'Medi��o de Res�duos Reciclados', 'Descri��o da medi��o de res�duos reciclados', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT (id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT.NEXTVAL, 4, 4, 'Medi��o de Consumo de �gua', 'Descri��o da medi��o de consumo de �gua', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT (id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT.NEXTVAL, 5, 5, 'Medi��o de �rea de Preserva��o', 'Descri��o da medi��o de �rea de preserva��o', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_IMPROVEMENT_MEASUREMENT
INSERT INTO T_GRW_IMPROVEMENT_MEASUREMENT (id_improvement_measurement, id_sustainable_improvement_actions, id_measurement, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_IMPROVEMENT_MEASUREMENT.NEXTVAL, 1, 1, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_IMPROVEMENT_MEASUREMENT (id_improvement_measurement, id_sustainable_improvement_actions, id_measurement, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_IMPROVEMENT_MEASUREMENT.NEXTVAL, 2, 2, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_IMPROVEMENT_MEASUREMENT (id_improvement_measurement, id_sustainable_improvement_actions, id_measurement, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_IMPROVEMENT_MEASUREMENT.NEXTVAL, 3, 3, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_IMPROVEMENT_MEASUREMENT (id_improvement_measurement, id_sustainable_improvement_actions, id_measurement, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_IMPROVEMENT_MEASUREMENT.NEXTVAL, 4, 4, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_IMPROVEMENT_MEASUREMENT (id_improvement_measurement, id_sustainable_improvement_actions, id_measurement, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_IMPROVEMENT_MEASUREMENT.NEXTVAL, 5, 5, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_MEASUREMENT_PROCESS_STEP
INSERT INTO T_GRW_MEASUREMENT_PROCESS_STEP (id_measurement_process_step, id_process_step, id_measurement, nr_result, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_PROCESS_STEP.NEXTVAL, 1, 1, 10.5, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_PROCESS_STEP (id_measurement_process_step, id_process_step, id_measurement, nr_result, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_PROCESS_STEP.NEXTVAL, 2, 2, 75.8, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_PROCESS_STEP (id_measurement_process_step, id_process_step, id_measurement, nr_result, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_PROCESS_STEP.NEXTVAL, 3, 3, 150.2, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_PROCESS_STEP (id_measurement_process_step, id_process_step, id_measurement, nr_result, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_PROCESS_STEP.NEXTVAL, 4, 4, 500.0, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_PROCESS_STEP (id_measurement_process_step, id_process_step, id_measurement, nr_result, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_PROCESS_STEP.NEXTVAL, 5, 5, 250.6, SYSTIMESTAMP, NULL, NULL);