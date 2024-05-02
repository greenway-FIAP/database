-- T_GRW_USER_TYPE
INSERT INTO T_GRW_USER_TYPE (id_user_type, ds_title)
VALUES (SEQ_GRW_USER_TYPE.NEXTVAL, 'Administrador');

INSERT INTO T_GRW_USER_TYPE (id_user_type, ds_title)
VALUES (SEQ_GRW_USER_TYPE.NEXTVAL, 'Gerente');

INSERT INTO T_GRW_USER_TYPE (id_user_type, ds_title)
VALUES (SEQ_GRW_USER_TYPE.NEXTVAL, 'Funcionário');

INSERT INTO T_GRW_USER_TYPE (id_user_type, ds_title)
VALUES (SEQ_GRW_USER_TYPE.NEXTVAL, 'Supervisor');

INSERT INTO T_GRW_USER_TYPE (id_user_type, ds_title)
VALUES (SEQ_GRW_USER_TYPE.NEXTVAL, 'Outro');


-- T_GRW_SECTOR 

INSERT INTO T_GRW_SECTOR (id_sector, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SECTOR.NEXTVAL, 'Tecnologia', 'Setor responsável pelo desenvolvimento e manutenção de sistemas de informação.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SECTOR (id_sector, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SECTOR.NEXTVAL, 'Recursos Humanos', 'Setor responsável pelo recrutamento, seleção e gestão de pessoal.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SECTOR (id_sector, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SECTOR.NEXTVAL, 'Financeiro', 'Setor responsável pelo controle financeiro e contabilidade da empresa.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SECTOR (id_sector, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SECTOR.NEXTVAL, 'Operações', 'Setor responsável pela execução das atividades principais da empresa.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SECTOR (id_sector, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SECTOR.NEXTVAL, 'Marketing', 'Setor responsável pela promoção e divulgação dos produtos ou serviços da empresa.', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_RESOURCE_TYPE

INSERT INTO T_GRW_RESOURCE_TYPE (id_resource_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE_TYPE.NEXTVAL, 'Matéria-Prima', 'Recursos naturais ou produtos básicos utilizados na fabricação de produtos.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE_TYPE (id_resource_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE_TYPE.NEXTVAL, 'Mão de Obra', 'Trabalhadores empregados em processos produtivos ou administrativos.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE_TYPE (id_resource_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE_TYPE.NEXTVAL, 'Equipamento', 'Máquinas, ferramentas ou dispositivos utilizados na produção ou prestação de serviços.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE_TYPE (id_resource_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE_TYPE.NEXTVAL, 'Tecnologia', 'Sistemas de informação, softwares ou plataformas utilizadas nos processos empresariais.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE_TYPE (id_resource_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE_TYPE.NEXTVAL, 'Energia', 'Recursos energéticos, como eletricidade ou combustíveis, utilizados nos processos de produção.', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_PRODUCT_TYPE

INSERT INTO T_GRW_PRODUCT_TYPE (id_product_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT_TYPE.NEXTVAL, 'Eletrônicos', 'Produtos eletrônicos de consumo, como smartphones, laptops e tablets.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT_TYPE (id_product_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT_TYPE.NEXTVAL, 'Alimentos', 'Produtos alimentícios, incluindo itens frescos, embalados e processados.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT_TYPE (id_product_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT_TYPE.NEXTVAL, 'Roupas', 'Artigos de vestuário, incluindo roupas para todas as idades e estações.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT_TYPE (id_product_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT_TYPE.NEXTVAL, 'Automóveis', 'Veículos automotores, como carros de passageiros e caminhões.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT_TYPE (id_product_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT_TYPE.NEXTVAL, 'Cosméticos', 'Produtos de beleza, cuidados com a pele, maquiagem e fragrâncias.', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_BADGE_LEVEL

INSERT INTO T_GRW_BADGE_LEVEL (id_badge_level, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE_LEVEL.NEXTVAL, 'Iniciante', 'Nível básico para empresas que estão começando a implementar práticas sustentáveis.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE_LEVEL (id_badge_level, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE_LEVEL.NEXTVAL, 'Intermediário', 'Nível intermediário para empresas que já implementaram algumas práticas sustentáveis e estão progredindo.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE_LEVEL (id_badge_level, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE_LEVEL.NEXTVAL, 'Avançado', 'Nível avançado para empresas que demonstram um compromisso significativo com a sustentabilidade e alcançaram resultados tangíveis.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE_LEVEL (id_badge_level, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE_LEVEL.NEXTVAL, 'Especialista', 'Nível especial para empresas líderes que se destacam por suas práticas sustentáveis e têm impacto positivo em suas comunidades.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE_LEVEL (id_badge_level, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE_LEVEL.NEXTVAL, 'Mestre', 'Nível máximo para empresas que são referências globais em sustentabilidade, com iniciativas inovadoras e impacto positivo em grande escala.', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_MEASUREMENT_TYPE

INSERT INTO T_GRW_MEASUREMENT_TYPE (id_measurement_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_TYPE.NEXTVAL, 'Consumo de Energia', 'Medição do consumo de energia elétrica, gás ou outras fontes de energia.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_TYPE (id_measurement_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_TYPE.NEXTVAL, 'Emissões de CO2', 'Medição das emissões de dióxido de carbono (CO2) associadas às atividades da empresa.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_TYPE (id_measurement_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_TYPE.NEXTVAL, 'Geração de Resíduos', 'Medição da quantidade e tipo de resíduos gerados pelas operações da empresa.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_TYPE (id_measurement_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_TYPE.NEXTVAL, 'Consumo de �?gua', 'Medição do consumo de água potável ou outros recursos hídricos pela empresa.', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT_TYPE (id_measurement_type, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT_TYPE.NEXTVAL, '�?ndice de Reciclagem', 'Medição da proporção de materiais reciclados em relação ao total de resíduos gerados.', SYSTIMESTAMP, NULL, NULL);


--T_GRW_STEP

INSERT INTO T_GRW_STEP (id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_start, dt_end, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_STEP.NEXTVAL, 'Preparação de Matéria-Prima', 'Preparação inicial dos materiais necessários para o processo de produção.', 24.5, 'A', NULL, NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_STEP (id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_start, dt_end, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_STEP.NEXTVAL, 'Fabricação', 'Execução do processo de fabricação propriamente dito.', 48.75, 'I', NULL, NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_STEP (id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_start, dt_end, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_STEP.NEXTVAL, 'Controle de Qualidade', 'Verificação da qualidade dos produtos fabricados.', 16.25, 'M', NULL, NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_STEP (id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_start, dt_end, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_STEP.NEXTVAL, 'Embalagem', 'Embalagem dos produtos acabados para envio ou armazenamento.', 12, 'T', NULL, NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_STEP (id_step, ds_name, tx_description, nr_estimated_time, st_step, dt_start, dt_end, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_STEP.NEXTVAL, 'Distribuição', 'Distribuição dos produtos acabados para clientes ou pontos de venda.', 32.5, 'A', NULL, NULL, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_ADDRESS

INSERT INTO T_GRW_ADDRESS (id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_ADDRESS.NEXTVAL, 'Rua das Flores', '12345678', '123', 'SP', 'Centro', 'São Paulo', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_ADDRESS (id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_ADDRESS.NEXTVAL, 'Avenida Principal', '87654321', '456', 'RJ', 'Copacabana', 'Rio de Janeiro', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_ADDRESS (id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_ADDRESS.NEXTVAL, 'Rua do Comércio', '13579246', '789', 'MG', 'Centro', 'Belo Horizonte', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_ADDRESS (id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_ADDRESS.NEXTVAL, 'Avenida das Palmeiras', '98765432', '987', 'RS', 'Jardim', 'Porto Alegre', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_ADDRESS (id_address, ds_street, ds_zip_code, ds_number, ds_uf, ds_neighborhood, ds_city, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_ADDRESS.NEXTVAL, 'Praça da Liberdade', '24681357', '369', 'BA', 'Centro', 'Salvador', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_RESOURCE

INSERT INTO T_GRW_RESOURCE (id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE.NEXTVAL, 1, 'Papel Reciclado', 2.50, 'Papel produzido a partir de material reciclado.', 'Pacote', 500, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE (id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE.NEXTVAL, 2, 'Lâmpada LED', 12.99, 'Lâmpadas de LED de baixo consumo de energia.', 'Unidade', 300, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE (id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE.NEXTVAL, 3, 'Bateria Solar', 250.00, 'Bateria recarregável alimentada por energia solar.', 'Unidade', 50, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE (id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE.NEXTVAL, 1, 'Plástico Reciclado', 3.75, 'Plástico produzido a partir de material reciclado.', 'Quilo', 200, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_RESOURCE (id_resource, id_resource_type, ds_name, vl_cost_per_unity, tx_description, ds_unit_of_measurement, nr_availability, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_RESOURCE.NEXTVAL, 2, 'Painel Solar', 500.00, 'Dispositivo que converte a luz solar em energia elétrica.', 'Unidade', 20, SYSTIMESTAMP, NULL, NULL);


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
VALUES (SEQ_GRW_COMPANY_REPRESENTATIVE.NEXTVAL, 1, 1, '1122334455', 'Representante de Vendas', 'João da Silva', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_COMPANY_REPRESENTATIVE (id_company_representative, id_user, id_company, nr_phone, ds_role, ds_name, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_COMPANY_REPRESENTATIVE.NEXTVAL, 2, 2, '2233445566', 'Gerente de Produção', 'Maria Oliveira', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_COMPANY_REPRESENTATIVE (id_company_representative, id_user, id_company, nr_phone, ds_role, ds_name, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_COMPANY_REPRESENTATIVE.NEXTVAL, 3, 3, '3344556677', 'Analista de Marketing', 'Pedro Santos', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_COMPANY_REPRESENTATIVE (id_company_representative, id_user, id_company, nr_phone, ds_role, ds_name, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_COMPANY_REPRESENTATIVE.NEXTVAL, 4, 4, '4455667788', 'Engenheiro de Produção', 'Ana Souza', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_COMPANY_REPRESENTATIVE (id_company_representative, id_user, id_company, nr_phone, ds_role, ds_name, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_COMPANY_REPRESENTATIVE.NEXTVAL, 5, 5, '5566778899', 'Diretor de Operações', 'Lucas Almeida', SYSTIMESTAMP, NULL, NULL);


-- T_GRW_PROCESS

INSERT INTO T_GRW_PROCESS (id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS.NEXTVAL, 1, 1, 'Produção de Produto A', '0', 1, NULL, NULL, 'Descrição do processo de produção do Produto A', NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS (id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS.NEXTVAL, 2, 2, 'Montagem de Componentes B', '1', 2, NULL, NULL, 'Descrição do processo de montagem dos Componentes B', NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS (id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS.NEXTVAL, 3, 3, 'Campanha Publicitária C', '0', 3, NULL, NULL, 'Descrição do processo de criação da Campanha Publicitária C', NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS (id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS.NEXTVAL, 4, 4, 'Desenvolvimento de Novo Produto D', '1', 1, NULL, NULL, 'Descrição do processo de desenvolvimento do Novo Produto D', NULL, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PROCESS (id_process, id_company, id_company_representative, ds_name, st_process, nr_priority, dt_start, dt_end, tx_description, tx_comments, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PROCESS.NEXTVAL, 5, 5, 'Gestão de Logística E', '2', 2, NULL, NULL, 'Descrição do processo de gestão de logística E', NULL, SYSTIMESTAMP, NULL, NULL);


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
VALUES (SEQ_GRW_PRODUCT.NEXTVAL, 1, 1, 'Produto A', 'Descrição do Produto A', 100.00, 50.00, 0.5, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT (id_product, id_product_type, id_process, ds_name, tx_description, vl_sale_price, vl_cost_price, nr_weight, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT.NEXTVAL, 2, 2, 'Componente B', 'Descrição do Componente B', 20.00, 10.00, 0.2, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT (id_product, id_product_type, id_process, ds_name, tx_description, vl_sale_price, vl_cost_price, nr_weight, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT.NEXTVAL, 3, 3, 'Serviço C', 'Descrição do Serviço C', 200.00, 100.00, 0.1, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT (id_product, id_product_type, id_process, ds_name, tx_description, vl_sale_price, vl_cost_price, nr_weight, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT.NEXTVAL, 4, 4, 'Produto D', 'Descrição do Produto D', 150.00, 75.00, 0.7, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_PRODUCT (id_product, id_product_type, id_process, ds_name, tx_description, vl_sale_price, vl_cost_price, nr_weight, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_PRODUCT.NEXTVAL, 5, 5, 'Produto E', 'Descrição do Produto E', 80.00, 40.00, 0.3, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_SUSTAINABLE_GOAL

INSERT INTO T_GRW_SUSTAINABLE_GOAL (id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_GOAL.NEXTVAL, 'Redução de Emissões de CO2', 'Descrição da meta: Reduzir as emissões de dióxido de carbono em 20%', 20.00, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_GOAL (id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_GOAL.NEXTVAL, 'Eficiência Energética', 'Descrição da meta: Aumentar a eficiência energética em 30%', 30.00, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_GOAL (id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_GOAL.NEXTVAL, 'Reciclagem de Resíduos', 'Descrição da meta: Aumentar a taxa de reciclagem de resíduos para 80%', 80.00, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_GOAL (id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_GOAL.NEXTVAL, 'Conservação de �?gua', 'Descrição da meta: Reduzir o consumo de água em 25%', 25.00, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_GOAL (id_sustainable_goal, ds_name, tx_description, vl_target, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_GOAL.NEXTVAL, 'Preservação da Biodiversidade', 'Descrição da meta: Aumentar a preservação da biodiversidade em áreas adjacentes à empresa', 45.00, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_BADGE

INSERT INTO T_GRW_BADGE (id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE.NEXTVAL, 1, 1, 'Badge de Redução de Emissões de CO2', 'Descrição da badge: Reconhecimento por redução de emissões de dióxido de carbono', 'Critérios para obtenção da badge de redução de emissões de CO2', '0', 'url_imagem1.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE (id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE.NEXTVAL, 2, 2, 'Badge de Eficiência Energética', 'Descrição da badge: Reconhecimento por melhorias na eficiência energética', 'Critérios para obtenção da badge de eficiência energética', '1', 'url_imagem2.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE (id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE.NEXTVAL, 3, 3, 'Badge de Reciclagem de Resíduos', 'Descrição da badge: Reconhecimento por aumento na taxa de reciclagem de resíduos', 'Critérios para obtenção da badge de reciclagem de resíduos', '2', 'url_imagem3.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE (id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE.NEXTVAL, 4, 1, 'Badge de Conservação de �?gua', 'Descrição da badge: Reconhecimento por redução no consumo de água', 'Critérios para obtenção da badge de conservação de água', '0', 'url_imagem4.jpg', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_BADGE (id_badge, id_sustainable_goal, id_badge_level, ds_name, tx_description, ds_criteria, st_badge, url_image, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_BADGE.NEXTVAL, 5, 2, 'Badge de Preservação da Biodiversidade', 'Descrição da badge: Reconhecimento por ações de preservação da biodiversidade', 'Critérios para obtenção da badge de preservação da biodiversidade', '1', 'url_imagem5.jpg', SYSTIMESTAMP, NULL, NULL);


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
VALUES (SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.NEXTVAL, 1, 'Ação de Redução de Emissões de CO2', 'Instruções para implementação da ação de redução de emissões de CO2', '0', 1, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS (id_sustainable_improvement_actions, id_sustainable_goal, ds_name, tx_instruction, st_sustainable_action, nr_priority, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.NEXTVAL, 2, 'Ação de Eficiência Energética', 'Instruções para implementação da ação de eficiência energética', '1', 2, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS (id_sustainable_improvement_actions, id_sustainable_goal, ds_name, tx_instruction, st_sustainable_action, nr_priority, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.NEXTVAL, 3, 'Ação de Reciclagem de Resíduos', 'Instruções para implementação da ação de reciclagem de resíduos', '2', 3, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS (id_sustainable_improvement_actions, id_sustainable_goal, ds_name, tx_instruction, st_sustainable_action, nr_priority, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.NEXTVAL, 4, 'Ação de Conservação de �?gua', 'Instruções para implementação da ação de conservação de água', '0', 1, SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS (id_sustainable_improvement_actions, id_sustainable_goal, ds_name, tx_instruction, st_sustainable_action, nr_priority, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_SUSTAINABLE_IMPROVEMENT_ACTIONS.NEXTVAL, 5, 'Ação de Preservação da Biodiversidade', 'Instruções para implementação da ação de preservação da biodiversidade', '1', 2, SYSTIMESTAMP, NULL, NULL);


-- T_GRW_MEASUREMENT

INSERT INTO T_GRW_MEASUREMENT (id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT.NEXTVAL, 1, 1, 'Medição de Emissões de CO2', 'Descrição da medição de emissões de CO2', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT (id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT.NEXTVAL, 2, 2, 'Medição de Consumo de Energia', 'Descrição da medição de consumo de energia', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT (id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT.NEXTVAL, 3, 3, 'Medição de Resíduos Reciclados', 'Descrição da medição de resíduos reciclados', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT (id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT.NEXTVAL, 4, 4, 'Medição de Consumo de �?gua', 'Descrição da medição de consumo de água', SYSTIMESTAMP, NULL, NULL);

INSERT INTO T_GRW_MEASUREMENT (id_measurement, id_measurement_type, id_sustainable_goal, ds_name, tx_description, dt_created_at, dt_updated_at, dt_finished_at)
VALUES (SEQ_GRW_MEASUREMENT.NEXTVAL, 5, 5, 'Medição de �?rea de Preservação', 'Descrição da medição de área de preservação', SYSTIMESTAMP, NULL, NULL);


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