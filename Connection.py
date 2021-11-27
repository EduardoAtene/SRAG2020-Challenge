import psycopg2 as db

class Config:
    def __init__(self):
        self.config = {
                "host" : "localhost",
                "database" : "SRAG2020",
                "user" : "postgres",
                "password" : "ferdu123"
        }
class Connection(Config):
    def __init__(self):
        Config.__init__(self)
        try:
            self.conn = db.connect(**self.config)
            self.cur = self.conn.cursor()
        except Exception as e:
            print("Não foi possível conectar pois deu o seguinte erro: "+e)
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
    Colunas = 'id_paciente, dt_notific, sem_not, dt_sin_pri, sem_pri, sg_uf_not, id_municip, co_mun_not, id_regiona, co_regiona, id_unidade, co_uni_not, classi_fin, classi_out, criterio, evolucao, dt_evoluca, dt_encerra, dt_digite'
    database = "public.paciente"
    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            self.execute(sql)
            self.commit()
        except Exception as e:
            print("Não foi possível inserir o valor:\n ",e)

class dados_paciente(Connection):
    Colunas = 'id_dados_paciente, cs_sexo, dt_nasc, nu_idade_n, tp_idade, cs_gestant, cs_raca, cs_etinia, cs_escol_n, pac_cocbo, pac_dscbo, sg_uf, id_rg_resi, co_rg_resi, id_mn_resi, co_mun_res, cs_zona, id_pais, co_pais, cod_idade'
    database = "public.dados_paciente"
    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            self.execute(sql)
            self.commit()
        except Exception as e:
            print("Não foi possível inserir o valor:\n ",e)

class dados_laboratorio(Connection):
    Colunas = 'id_lab, p_tes_an, dt_res_an, res_an, pos_an_flu, tp_flu_an, pos_an_out, an_sars2, an_vsr, an_para1, an_para2, an_para3, an_adeno, an_outro, ds_an_out, pcr_resul, dt_pcr, pos_pcrflu, tp_flu_pcr, pcr_fluasu, fluasu_out, pcr_flubli, flubli_out, pos_pcrout, pcr_sars2, pcr_vsr, pcr_para1, pcr_para2, pcr_para3, pcr_para4, pcr_adeno, pcr_metap, pcr_boca, pcr_rino, pcr_outro, ds_pcr_out, tp_am_sor, dt_co_sor, tp_sor, out_sor, sor_out, res_igg, res_igm, res_iga, dt_res'
    database = "public.dados_laboratorio"
    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            self.execute(sql)
            self.commit()
        except Exception as e:
            print("Não foi possível inserir o valor:\n ",e)

class dados_atendimento(Connection):
    Colunas = 'id_paciente, antiviral, tp_antivir, out_antiv, dt_antivir, hospital, dt_interna, sg_uf_inte, id_rg_inte, co_rg_inte, id_mn_inte, co_mu_inte, uti, dt_entuti, dt_saiduti, suport_ven, raiox_res, raiox_out, dt_raiox, tomo_res, tomo_out, dt_tomo, amostra, dt_coleta, tp_amostra, out_amost'
    database = "public.dados_atendimento"
    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            self.execute(sql)
            self.commit()
        except Exception as e:
            print("Não foi possível inserir o valor:\n ",e)

class dados_epidemi(Connection):
    Colunas = 'id_epidemi, histo_vgm, pais_vgm, co_ps_vgm, lo_ps_vgm, dt_vgm, dt_rt_vgm, surto_sg, nosocomia, ave_suino, out_anim, vacina, dt_ut_dose, mae_vac, dt_vac_mae, m_amamenta, dt_doseuni, dt_1_dose, dt_2_dose'
    database = "public.dados_epidemi"
    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            self.execute(sql)
            self.commit()
        except Exception as e:
            print("Não foi possível inserir o valor:\n ",e)

class fatores_risco(Connection):
    Colunas = 'id_fatores_risco, fator_risc, puerpera, cardiopati, hematologi, sind_down, hepatica, asma, diabetes, neurologic, pneumopati, imunodepre, renal, obesidade, obes_imc, out_morbi, morb_desc'
    database = "public.fatores_risco"
    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            self.execute(sql)
            self.commit()
        except Exception as e:
            print("Não foi possível inserir o valor:\n ",e)

class sintomas(Connection):
    Colunas = 'id_sintomas, febre, tosse, garganta, dispneia, desc_resp, saturacao, diarreia, vomito, dor_abd, fadiga, perd_olft, perd_pala, outro_sin, outro_des'
    database = "public.sintomas"
    def __init__(self):
        Connection.__init__(self)

    def insert(self, tupla):
        try:
            sql = f"INSERT INTO {self.database}({self.Colunas}) VALUES {tupla}"
            self.execute(sql)
            self.commit()
        except Exception as e:
            print("Não foi possível inserir o valor:\n ",e)
