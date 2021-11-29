import csv
import Connection as cnn

def importacaoBase(nome_ficheiro):
    with open(nome_ficheiro, 'r',encoding='cp437') as ficheiro:
        reader = csv.reader(ficheiro)
        linha_colum = False
        id = 1
        try:
            print("Inserido dados . . .")
            for linha in reader:
                if linha_colum:
                        linha = linha[0].split(";")
                        Paciente =[id]
                        dadosPaci =[id]
                        dadosAtend =[id]
                        dadosLab =[id]
                        dadosEpi =[id]
                        Sintomas =[id]
                        Fatores =[id]

                        bdPaciente = cnn.paciente()
                        bdDadosPaci = cnn.dados_paciente()
                        bdDadosAtend = cnn.dados_atendimento()
                        bdDadosLab = cnn.dados_laboratorio()
                        bdDadosEpi = cnn.dados_epidemi()
                        bdSintomas = cnn.sintomas()
                        bdFatores = cnn.fatores_risco()
                        for valores in bdPaciente.ordem_excel:
                            try:
                                value = linha[valores].replace('\"',"")
                            except IndexError:
                                value = ''

                            if(value == "\"\"" or value == "''" or value == None or value == ''):
                                Paciente.append("NULL")
                            else:
                                Paciente.append(f'{value}')
                        paciBase = tuple(Paciente)
    
                        for valores in bdDadosPaci.ordem_excel:
                            try:
                                value = linha[valores].replace('\"',"")
                            except IndexError:
                                value = ''
                            if(value == "\"\"" or value == "''" or value == None or value == ''):
                                dadosPaci.append("NULL")
                            else:
                                dadosPaci.append(f'{value}')
                        dadosPaciBase = tuple(dadosPaci)

                        for valores in bdDadosAtend.ordem_excel:
                            try:
                                value = linha[valores].replace('\"',"")
                            except IndexError:
                                value = ''
                            if(value == "\"\"" or value == "''" or value == None or value == ''):
                                dadosAtend.append("NULL")
                            else:
                                dadosAtend.append(f'{value}')
                        dadosAtendiBase = tuple(dadosAtend)
    
                        for valores in bdDadosLab.ordem_excel:
                            try:
                                value = linha[valores].replace('\"',"")
                            except IndexError:
                                value = ''
                            if(value == "\"\"" or value == "''" or value == None or value == ''):
                                dadosLab.append("NULL")
                            else:
                                dadosLab.append(f'{value}')
                        LaboBase = tuple(dadosLab)
    
                        for valores in bdDadosEpi.ordem_excel:
                            try:
                                value = linha[valores].replace('\"',"")
                            except IndexError:
                                value = ''
                            if(value == "\"\"" or value == "''" or value == None or value == ''):
                                dadosEpi.append("NULL")
                            else:
                                dadosEpi.append(f'{value}')
                        Epibase = tuple(dadosEpi)

                        for valores in bdSintomas.ordem_excel:
                            try:
                                value = linha[valores].replace('\"',"")
                            except IndexError:
                                value = ''
                            if(value == "\"\"" or value == "''" or value == None or value == ''):
                                Sintomas.append("NULL")
                            else:
                                Sintomas.append(f'{value}')
                        Sintobase = tuple(Sintomas)
    
                        for valores in bdFatores.ordem_excel:
                            try:
                                value = linha[valores].replace('\"',"")
                            except IndexError:
                                value = ''
                            if(value == "\"\"" or value == "''" or value == None or value == ''):
                                Fatores.append("NULL")
                            else:
                                Fatores.append(f'{value}')
                        Fatorebase = tuple(Fatores)

                        bdPaciente.insert(paciBase)
                        bdDadosPaci.insert(dadosPaciBase)
                        bdDadosAtend.insert(dadosAtendiBase)                   
                        bdDadosLab.insert(LaboBase)
                        bdDadosEpi.insert(Epibase)
                        bdSintomas.insert(Sintobase)
                        bdFatores.insert(Fatorebase)
                        id += 1

                else:
                    bdPaciente = cnn.paciente()
                    bdDadosPaci = cnn.dados_paciente()
                    bdDadosAtend = cnn.dados_atendimento()
                    bdDadosLab = cnn.dados_laboratorio()
                    bdDadosEpi = cnn.dados_epidemi()
                    bdSintomas = cnn.sintomas()
                    bdFatores = cnn.fatores_risco()
                    colunas = linha[0].split(";")
     
                    aux = 0
                    for coluna in colunas:
                        coluna = coluna.replace('\"',"")
                        coluna = coluna.replace("'","")
                        coluna = coluna.lower()
                        if coluna.lower() in bdPaciente.ArrayColunas:
                            bdPaciente.valores.append(aux)
                        elif coluna.lower() in bdDadosPaci.ArrayColunas:
                            bdDadosPaci.valores.append(aux)
                        elif coluna.lower() in bdDadosAtend.ArrayColunas:
                            bdDadosAtend.valores.append(aux)
                        elif coluna.lower() in bdDadosLab.ArrayColunas:
                            bdDadosLab.valores.append(aux)
                        elif coluna.lower() in bdDadosEpi.ArrayColunas:
                            bdDadosEpi.valores.append(aux)
                        elif coluna.lower() in bdSintomas.ArrayColunas:
                            bdSintomas.valores.append(aux)
                        elif coluna.lower() in bdFatores.ArrayColunas:
                            bdFatores.valores.append(aux)
                        aux += 1
                    linha_colum = True



        except csv.Error as e:
            print(e)

def codificacao(nome_ficheiro):
    with open(nome_ficheiro) as f:
        print("Inserido dados")

importacaoBase("INFLUD-15-11-2021.csv")