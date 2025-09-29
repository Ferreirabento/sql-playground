import mysql.connector as sql
import pandas as pd
import seaborn

#lista com as medias de emisão de co2 por ano
medias = list()

#conecção com o banco de dados
conection = sql.connect(
    user='root',
    password='1409@joao',
    host='localhost',
    port=3306,
    database='projeto_CO2'
)

#loop para pegar as medias por ano na nova tabela
for ano in range(1850, 2021):   
    cursor = conection.cursor()
    cursor.execute(f"select avg(co2_set) from dataset where ano_set = {ano};")
    resultado = cursor.fetchall()
    for data in resultado:
        medias.append(data)


#usar o pandas ?
dados = pd.DataFrame(medias)
print(dados.round(2))
