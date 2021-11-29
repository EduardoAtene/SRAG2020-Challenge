import psycopg2 as db

class Config:
    def __init__(self):
        self.config = {
                "host" : "Insira o Host/Servidor",
                "database" : "SRAG2021",
                "user" : "Insira o Usuário | Padrão: postgres",
                "password" : "Insira a sua senha do pgAdmin"
        }

class Connection(Config):
    def __init__(self):
        Config.__init__(self)
        try:
            self.conn = db.connect(**self.config)
            self.cur = self.conn.cursor()
        except Exception as e:
            print(f"Não foi possível conectar pois deu o seguinte erro: {e}")
            exit(1)

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.commit()
        self.connection.close()

    @property
    def connection(self):
        return self.conn

    @property
    def cursor(self):
        return self.cur

    def commit(self):
        self.connection.commit()

    #
    def fetchall(self):
        return self.cursor.fetchall()

    def fetchone(self):
        return self.cursor.fetchone()

    def execute(self,sql, params=None):
        self.cursor.execute(sql, params or ())

    def query(self,sql, params=None):
        self.cursor.execute(sql, params or ())
        return self.fetchall()

class paciente(Connection):
    Colunas = 'id_paciente, dt_notific, sem_not, dt_sin_pri, sem_pri, sg_uf_not, id_municip, co_mun_not, id_regiona, co_regiona, id_unidade, co_uni_not, classi_fin, classi_out, criterio, evolucao, dt_evoluca, dt_encerra, dt_digita'
    ArrayColunas = Colunas.split(", ")
    database = "public.paciente"
    ordem_excel =  [0, 1, 2, 3, 4, 7, 8, 5, 6, 9, 10, 107, 108, 109, 110, 111, 112, 113]
    valores = []

    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            sql = sql.replace("'NULL'","NULL")
            self.execute(sql)
            self.commit()
        except Exception as e:
            Except = e
            #print("Não foi possível inserir o valor:\n ",e)

class dados_paciente(Connection):
    Colunas = 'id_dados_paciente, cs_sexo, dt_nasc, nu_idade_n, tp_idade, cs_gestant, cs_raca, cs_etinia, cs_escol_n, pac_cocbo, pac_dscbo, sg_uf, id_rg_resi, co_rg_resi, id_mn_resi, co_mun_res, cs_zona, id_pais, co_pais, cod_idade'
    database = "public.dados_paciente"
    ArrayColunas = Colunas.split(", ")
    ordem_excel =  [11,12,13,14,16,17,18,19,121,122,22,23,24,25,26,27,20,21,15]
    valores = []

    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            sql = sql.replace("'NULL'","NULL")
            self.execute(sql)
            self.commit()
        except Exception as e:
            Except = e
            #print("Não foi possível inserir o valor:\n ",e)

class dados_laboratorio(Connection):
    Colunas = 'id_lab, tp_tes_an, dt_res_an, res_an, pos_an_flu, tp_flu_an, pos_an_out, an_sars2, an_vsr, an_para1, an_para2, an_para3, an_adeno, an_outro, ds_an_out, pcr_resul, dt_pcr, pos_pcrflu, tp_flu_pcr, pcr_fluasu, fluasu_out, pcr_flubli, flubli_out, pos_pcrout, pcr_sars2, pcr_vsr, pcr_para1, pcr_para2, pcr_para3, pcr_para4, pcr_adeno, pcr_metap, pcr_boca, pcr_rino, pcr_outro, ds_pcr_out, tp_am_sor, dt_co_sor, tp_sor, out_sor, sor_out, res_igg, res_igm, res_iga, dt_res'
    database = "public.dados_laboratorio"
    ArrayColunas = Colunas.split(", ")
    ordem_excel =  [131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 87, 88, 89, 90, 91, 92, 93, 94, 95, 120, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 145, 147, 148, 149, 146, 151, 152, 153, 150]
    valores = []

    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            sql = sql.replace("'NULL'","NULL")
            self.execute(sql)
            self.commit()
        except Exception as e:
            Except = e
            #print("Não foi possível inserir o valor:\n ",e)

class dados_atendimento(Connection):
    Colunas = 'id_paciente, antiviral, tp_antivir, out_antiv, dt_antivir, hospital, dt_interna, sg_uf_inte, id_rg_inte, co_rg_inte, id_mn_inte, co_mu_inte, uti, dt_entuti, dt_saiduti, suport_ven, raiox_res, raiox_out, dt_raiox, tomo_res, tomo_out, dt_tomo, amostra, dt_coleta, tp_amostra, out_amost'
    database = "public.dados_atendimento"
    ArrayColunas = Colunas.split(", ")
    ordem_excel =  [65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 128, 129, 130, 83, 84, 85,86]
    valores = []
    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            sql = sql.replace("'NULL'","NULL")
            self.execute(sql)
            self.commit()
        except Exception as e:
            Except = e
            #print("Não foi possível inserir o valor:\n ",e)

class dados_epidemi(Connection):
    Colunas = 'id_epidemi, histo_vgm, pais_vgm, co_ps_vgm, lo_ps_vgm, dt_vgm, dt_rt_vgm, surto_sg, nosocomial, ave_suino, out_anim, vacina, dt_ut_dose, mae_vac, dt_vac_mae, m_amamenta, dt_doseuni, dt_1_dose, dt_2_dose'
    database = "public.dados_epidemi"
    ArrayColunas = Colunas.split(", ")
    ordem_excel =  [114,115,116,117,118,119,28, 29, 30, 123, 57,58,59,60,61,62,63,64]
    valores = []

    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            sql = sql.replace("'NULL'","NULL")
            self.execute(sql)
            self.commit()
        except Exception as e:
            Except = e
            #print("Não foi possível inserir o valor:\n ",e)

class fatores_risco(Connection):
    Colunas = 'id_fatores_risco, fator_risc, puerpera, cardiopati, hematologi, sind_down, hepatica, asma, diabetes, neurologic, pneumopati, imunodepre, renal, obesidade, obes_imc, out_morbi, morb_desc'
    database = "public.fatores_risco"
    ArrayColunas = Colunas.split(", ")
    ordem_excel =  [42,41,43,44,45,46,47,48,49,50,51,52,53,54,55,56]
    valores = []
    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            sql = sql.replace("'NULL'","NULL")
            self.execute(sql)
            self.commit()
        except Exception as e:
            Except = e
            #print("Não foi possível inserir o valor:\n ",e)

class sintomas(Connection):
    Colunas = 'id_sintomas, febre, tosse, garganta, dispneia, desc_resp, saturacao, diarreia, vomito, dor_abd, fadiga, perd_olft, perd_pala, outro_sin, outro_des'
    database = "public.sintomas"
    ArrayColunas = Colunas.split(", ")
    ordem_excel =  [30,31,32,33,34,35,36,37,38,124,125,126,39,40]
    valores = []

    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            sql = sql.replace("'NULL'","NULL")
            self.execute(sql)
            self.commit()
        except Exception as e:
            Except = e
            #print("Não foi possível inserir o valor:\n ",e)
