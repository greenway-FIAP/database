from connection import connect_bank, return_credentials


def banco_dados():
    login, pswd = return_credentials()
    conn = connect_bank(login, pswd)
    print("Conectado com o Banco com Sucesso!")
    cursor = conn.cursor()

    cursor.callproc('nome_procedure',
                    [id, 'dados'])
    print("Procedure nome_procedure chamada com sucesso!")


banco_dados()
