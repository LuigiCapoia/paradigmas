import re
import pandas as pd
import matplotlib.pyplot as plt

def validar_ip(ip):
    pattern = re.compile(r'^(\d{1,3}\.){3}\d{1,3}$')
    return bool(pattern.match(ip))

def gerar_relatorio(input, output):
    enderecos_validos = []
    enderecos_invalidos = []

    with open(input, 'r') as file:
        enderecos = file.read().split()

    for endereco in enderecos:
        if validar_ip(endereco):
            enderecos_validos.append(endereco)
        else:
            enderecos_invalidos.append(endereco)

    with open(output, 'w') as output:
        output.write("[Endereços válidos:] {}\n".format(' '.join(enderecos_validos)))
        output.write("[Endereços inválidos:] {}\n".format(' '.join(enderecos_invalidos)))

def processar_e_visualizar_dados(dataset):
    df = pd.read_csv(dataset)
    df = df.dropna()
    df_filtrado = df[df['idade'] > 30]

    plt.figure(figsize=(12, 6))
    plt.subplot(2, 2, 1)
    df['idade'].hist(bins=30, color='blue', edgecolor='black')
    plt.title('Histograma de Idades')
    plt.xlabel('Idade')
    plt.ylabel('Frequência')

    plt.subplot(2, 2, 2)
    plt.scatter(df['idade'], df['salario'], color='green', alpha=0.5)
    plt.title('Gráfico de Dispersão: Idade vs Salário')
    plt.xlabel('Idade')
    plt.ylabel('Salário')

    plt.subplot(2, 2, 3)
    df['categoria'].value_counts().plot(kind='bar', color='purple')
    plt.title('Contagem de Categorias')
    plt.xlabel('Categoria')
    plt.ylabel('Contagem')

    plt.tight_layout()
    plt.show()

input = 'txt'
output = 'txt'
dataset = 'csv'

relatorio(input, output)
visualizarDados(dataset)
