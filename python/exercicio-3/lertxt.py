def bytes_para_megabytes(bytes):
    return bytes / (1024 ** 2)

def calcular_percentual(total, parcial):
    return (parcial / total) * 100

def criar_relatorio(usuarios):
    relatorio = "ACME Inc.                                    Uso do espaço em disco pelos usuários\n"
    relatorio += "------------------------------------------------------------------------------------------------------------------------------\n"
    relatorio += "  Nr.                 Usuário                                        Espaço utilizado                              % do uso\n\n"

    total_bytes = sum(usuarios.values())
    nr = 1

    for usuario, espaco_bytes in sorted(usuarios.items(), key=lambda x: x[1], reverse=True):
        espaco = bytes_para_megabytes(espaco_bytes)
        percentual = calcular_percentual(total_bytes, espaco_bytes)
        
        relatorio += f"{nr:<4} {usuario:<20} {espaco:>20.2f} MB {'':>10} {percentual:>6.2f}%\n"
        nr += 1

    relatorio += "\nEspaço total ocupado:   {:.2f} MB\n".format(bytes_para_megabytes(total_bytes))
    relatorio += "Espaço médio ocupado:   {:.2f} MB\n".format(bytes_para_megabytes(total_bytes) / len(usuarios))

    return relatorio

def main():
    usuarios = {}
    
    with open("usuarios.txt", "r") as arquivo:
        for linha in arquivo:
            usuario, espaco = linha.strip().split()
            usuarios[usuario] = int(espaco)

    relatorio = criar_relatorio(usuarios)

    with open("relatorio.txt", "w") as arquivo_relatorio:
        arquivo_relatorio.write(relatorio)

if __name__ == "__main__":
    main()
