import csv
import Connection

def leituraCSV(nome_ficheiro):
    with open(nome_ficheiro, 'r') as ficheiro:
        reader = csv.reader(ficheiro)
        cont = False
        abc = 0
        try:
            for linha in reader:
                if cont:
                    vetor  = linha[0].replace(";",",")
                    abcdef = linha[0].split(";")
                    Base = Connection.sintomas()
                    
                    linhasSintomas = [30,31,32,33,34,35,36,37,38,124,125,126,39,40]
                    Sintomas =[abc]
                    for olaMundo in linhasSintomas:
                        if(abcdef[olaMundo] == "\"\""):
                            Sintomas.append('')
                        else:
                            Sintomas.append(f'{abcdef[olaMundo]}')
                    Sintobase = tuple(Sintomas)
                    Base.insert(Sintobase)
                        
                    abc += 1

                    """
                    tam = len(abcdef)
                    i = []
                    x = 0
                    aux = True
                    vetor123 = [31,114,115, 116, 117, 118, 119, 28, 29, 30, 123, 57, 58, 59, 60, 61, 62, 63, 64, 32, 33,34, 35, 36, 37,38,124,125,126,127,39,42,41,43,44,45,46,47,48,49,50,51,52,53,54,55,56, 0,1,2,3,4,7,8,5,6,9,10,107,108,109,110,111,112,113, 65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,128,129,130,83,84,85,131,132,133,134,135,136,137,138,139,140,141,142,143,144,87,88,89,90,91,92,93,94,95,120,96,97,98,99,100,101,102,103,104,105,106,145,147,148,146,151,152,153,150,11,12,13,14,16,17,18,19,121,122,22,23,24,25,26,27,20,21]
                    vetor123.sort()
                    #while(aux):
                    #    if(i == tam):
                    #        break
                    #    arquivo = open("Base de Dados.txt","a")
                    #    teste = f"      {abcdef[i]} VARCHAR() NOT NULL,\n"
                    #    arquivo.write(teste)
                    #    i+= 1
                    while(aux):
                        if(x == 154):
                            break
                        i.append(x)
                        x+=1
                    

                    for borala in vetor123:
                        i[borala] = " "
                    print(abcdef)
                    b= 2
                    cdeg= 3
"""

                else:
                    cont = True
                if abc == 3:
                    break

        except csv.Error as e:
            print(e)

leituraCSV("INFLUD-15-11-2021.csv")