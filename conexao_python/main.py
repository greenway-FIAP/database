from connection import connect_bank, return_credentials


def banco_dados():
    login, pswd = return_credentials()
    conn = connect_bank(login, pswd)
    print("Conectado com o Banco com Sucesso!")

    try:
        cursor = conn.cursor()

        cursor.callproc('INSERT_T_GRW_USER_TYPE', [6, 'Outro'])
        print("Procedure INSERT_T_GRW_USER_TYPE chamada com sucesso!\n")

        cursor.callproc('INSERT_T_GRW_SECTOR', [6, 'teste', 'teste'])
        print("Procedure INSERT_T_GRW_SECTOR chamada com sucesso!\n")

        cursor.callproc('INSERT_T_GRW_RESOURCE_TYPE', [6, 'teste', 'teste'])
        print("Procedure INSERT_T_GRW_RESOURCE_TYPE chamada com sucesso!\n")

        cursor.callproc('INSERT_T_GRW_PRODUCT_TYPE', [6, 'teste', 'teste'])
        print("Procedure INSERT_T_GRW_PRODUCT_TYPE chamada com sucesso!\n")

        cursor.callproc('INSERT_T_GRW_BADGE_LEVEL', [6, 'teste', 'teste'])
        print("Procedure INSERT_T_GRW_BADGE_LEVEL chamada com sucesso!\n")
    except Exception as e:
        print(f"Ocorreu um erro: {e}")
    finally:
        cursor.close()
        conn.close()
        print("Conexão com o banco de dados fechada com sucesso!")

banco_dados()
