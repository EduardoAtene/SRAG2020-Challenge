SRAG2021-Challenge

Nome dos integrantes:
- Eduardo Atene Silva
- Marcelo Ferreira Borba
- Pedro Roberto Miguel Arakaki

LINK Gravação	: https://drive.google.com/file/d/15qkQxkk3GQTCliMWOBbV5BC-inIonP7A/view?usp=sharing
LINK GitHub	: https://github.com/EduardoAtene/SRAG2020-Challenge.git ( o csv está .rar)
LINK Arquivos	: https://drive.google.com/drive/folders/1qIViGEceCfEZvEB9dBiEc5eP1Oj99FSW?usp=sharing

Importação da biblioteca psycopg2:
1- Usando Prompt de Comando
 ° Aperte Windowns + R e digita cmd | Abra o Prompt de Comando
 ° Insira o seguinte código: 
	pip install psycopg2

2- Usando setup.py
 ° Abra o setup.py
 ° Insira o seguinte código: 
	$ python setup.py build
	$ sudo python setup.py install

Rodar o Script 
1- Faça dowload dos arquivos
2- Realiza a importação da bibliotecla psycopg2 (acima)
3- Insira as configurações do PostgreSQL no arquivo Connection.py e salva
  ° Na  Classe Config:
  ° No dicionário self.config = {
	        "host" : " Insira o Host/Servidor ",
                "database" : "SRAG2021",
                "user" : " Insira o Usuário | Padrão: postgres",
                "password" : "Insira a sua senha do pgAdmin"
	}
4- Abra o Prompt de Comando no diretorio dos arquivos e insira o seguinte comando
	python importacao.py
5- Estará executando a importação

Observação: Qualquer erro na inserção de um registro será notificado o erro. O script só para quando ler todos os dados/registro do csv
