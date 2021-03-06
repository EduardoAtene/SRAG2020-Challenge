PGDMP     :                
    y            SRAG2021    14.0    14.0 5    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    24576    SRAG2021    DATABASE     j   CREATE DATABASE "SRAG2021" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "SRAG2021";
                postgres    false            ?            1259    49344    dados_atendimento    TABLE     ?  CREATE TABLE public.dados_atendimento (
    id_paciente integer NOT NULL,
    antiviral character varying(100),
    tp_antivir character varying(100),
    out_antiv character varying(100),
    dt_antivir date,
    hospital character varying(100),
    dt_interna date,
    sg_uf_inte character varying(100),
    id_rg_inte character varying(100),
    co_rg_inte character varying(100),
    id_mn_inte character varying(100),
    co_mu_inte character varying(100),
    uti character varying(100),
    dt_entuti date,
    dt_saiduti date,
    suport_ven character varying(100),
    raiox_res character varying(100),
    raiox_out character varying(100),
    dt_raiox date,
    tomo_res character varying(100),
    tomo_out character varying(100),
    dt_tomo date,
    amostra character varying(100),
    dt_coleta date,
    tp_amostra character varying(100),
    out_amost character varying(100)
);
 %   DROP TABLE public.dados_atendimento;
       public         heap    postgres    false            ?            1259    49349 !   dados_atendimento_id_paciente_seq    SEQUENCE     ?   CREATE SEQUENCE public.dados_atendimento_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.dados_atendimento_id_paciente_seq;
       public          postgres    false    209            .           0    0 !   dados_atendimento_id_paciente_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.dados_atendimento_id_paciente_seq OWNED BY public.dados_atendimento.id_paciente;
          public          postgres    false    210            ?            1259    49350    dados_epidemi    TABLE     o  CREATE TABLE public.dados_epidemi (
    id_epidemi integer NOT NULL,
    histo_vgm character varying(100),
    pais_vgm character varying(100),
    co_ps_vgm character varying(100),
    lo_ps_vgm character varying(100),
    dt_vgm date,
    dt_rt_vgm date,
    surto_sg character varying(100),
    nosocomial character varying(100),
    ave_suino character varying(100),
    out_anim character varying(100),
    vacina character varying(100),
    dt_ut_dose date,
    mae_vac character varying(100),
    dt_vac_mae date,
    m_amamenta character varying(100),
    dt_doseuni date,
    dt_1_dose date,
    dt_2_dose date
);
 !   DROP TABLE public.dados_epidemi;
       public         heap    postgres    false            ?            1259    49355    dados_epidemi_id_epidemi_seq    SEQUENCE     ?   CREATE SEQUENCE public.dados_epidemi_id_epidemi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.dados_epidemi_id_epidemi_seq;
       public          postgres    false    211            /           0    0    dados_epidemi_id_epidemi_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.dados_epidemi_id_epidemi_seq OWNED BY public.dados_epidemi.id_epidemi;
          public          postgres    false    212            ?            1259    49356    dados_laboratorio    TABLE     n  CREATE TABLE public.dados_laboratorio (
    id_lab integer NOT NULL,
    tp_tes_an character varying(100),
    dt_res_an date,
    res_an character varying(100),
    pos_an_flu character varying(100),
    tp_flu_an character varying(100),
    pos_an_out character varying(100),
    an_sars2 character varying(100),
    an_vsr character varying(100),
    an_para1 character varying(100),
    an_para2 character varying(100),
    an_para3 character varying(100),
    an_adeno character varying(100),
    an_outro character varying(100),
    ds_an_out character varying(100),
    pcr_resul character varying(100),
    dt_pcr date,
    pos_pcrflu character varying(100),
    tp_flu_pcr character varying(100),
    pcr_fluasu character varying(100),
    fluasu_out character varying(100),
    pcr_flubli character varying(100),
    flubli_out character varying(100),
    pos_pcrout character varying(100),
    pcr_sars2 character varying(100),
    pcr_vsr character varying(100),
    pcr_para1 character varying(100),
    pcr_para2 character varying(100),
    pcr_para3 character varying(100),
    pcr_para4 character varying(100),
    pcr_adeno character varying(100),
    pcr_metap character varying(100),
    pcr_boca character varying(100),
    pcr_rino character varying(100),
    pcr_outro character varying(100),
    ds_pcr_out character varying(100),
    tp_am_sor character varying(100),
    dt_co_sor date,
    tp_sor character varying(100),
    out_sor character varying(100),
    sor_out character varying(100),
    res_igg character varying(100),
    res_igm character varying(100),
    res_iga character varying(100),
    dt_res date
);
 %   DROP TABLE public.dados_laboratorio;
       public         heap    postgres    false            ?            1259    49361    dados_laboratorio_id_lab_seq    SEQUENCE     ?   CREATE SEQUENCE public.dados_laboratorio_id_lab_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.dados_laboratorio_id_lab_seq;
       public          postgres    false    213            0           0    0    dados_laboratorio_id_lab_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.dados_laboratorio_id_lab_seq OWNED BY public.dados_laboratorio.id_lab;
          public          postgres    false    214            ?            1259    49362    dados_paciente    TABLE       CREATE TABLE public.dados_paciente (
    id_dados_paciente integer NOT NULL,
    cs_sexo character varying(100),
    dt_nasc date,
    nu_idade_n character varying(100),
    tp_idade character varying(100),
    cs_gestant character varying(100),
    cs_raca character varying(100),
    cs_etinia character varying(100),
    cs_escol_n character varying(100),
    pac_cocbo character varying(100),
    pac_dscbo character varying(100),
    sg_uf character varying(100),
    id_rg_resi character varying(100),
    co_rg_resi character varying(100),
    id_mn_resi character varying(100),
    co_mun_res character varying(100),
    cs_zona character varying(100),
    id_pais character varying(100),
    co_pais character varying(100),
    cod_idade character varying(100)
);
 "   DROP TABLE public.dados_paciente;
       public         heap    postgres    false            ?            1259    49367    dados_paciente_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dados_paciente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dados_paciente_id_seq;
       public          postgres    false    215            1           0    0    dados_paciente_id_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.dados_paciente_id_seq OWNED BY public.dados_paciente.id_dados_paciente;
          public          postgres    false    216            ?            1259    49368    fatores_risco    TABLE     ?  CREATE TABLE public.fatores_risco (
    id_fatores_risco integer NOT NULL,
    fator_risc character varying(100),
    puerpera character varying(100),
    cardiopati character varying(100),
    hematologi character varying(100),
    sind_down character varying(100),
    hepatica character varying(100),
    asma character varying(100),
    diabetes character varying(100),
    neurologic character varying(100),
    pneumopati character varying(100),
    imunodepre character varying(100),
    renal character varying(100),
    obesidade character varying(100),
    obes_imc character varying(100),
    out_morbi character varying(100),
    morb_desc character varying(100)
);
 !   DROP TABLE public.fatores_risco;
       public         heap    postgres    false            ?            1259    49371 "   fatores_risco_id_fatores_risco_seq    SEQUENCE     ?   CREATE SEQUENCE public.fatores_risco_id_fatores_risco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.fatores_risco_id_fatores_risco_seq;
       public          postgres    false    217            2           0    0 "   fatores_risco_id_fatores_risco_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.fatores_risco_id_fatores_risco_seq OWNED BY public.fatores_risco.id_fatores_risco;
          public          postgres    false    218            ?            1259    49372    paciente    TABLE     ?  CREATE TABLE public.paciente (
    id_paciente integer NOT NULL,
    dt_notific date,
    sem_not character varying(100),
    dt_sin_pri date,
    sem_pri character varying(100),
    sg_uf_not character varying(100),
    id_municip character varying(100),
    co_mun_not character varying(100),
    id_regiona character varying(100),
    co_regiona character varying(100),
    id_unidade character varying(100),
    co_uni_not character varying(100),
    classi_fin character varying(100),
    classi_out character varying(100),
    criterio character varying(100),
    evolucao character varying(100),
    dt_evoluca date,
    dt_encerra date,
    dt_digita date
);
    DROP TABLE public.paciente;
       public         heap    postgres    false            ?            1259    49377    paciente_id_paciente_seq    SEQUENCE     ?   CREATE SEQUENCE public.paciente_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.paciente_id_paciente_seq;
       public          postgres    false    219            3           0    0    paciente_id_paciente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.paciente_id_paciente_seq OWNED BY public.paciente.id_paciente;
          public          postgres    false    220            ?            1259    49378    sintomas    TABLE     D  CREATE TABLE public.sintomas (
    id_sintomas integer NOT NULL,
    febre character varying(100),
    tosse character varying(100),
    garganta character varying(100),
    dispneia character varying(100),
    desc_resp character varying(100),
    saturacao character varying(100),
    diarreia character varying(100),
    vomito character varying(100),
    dor_abd character varying(100),
    fadiga character varying(100),
    perd_olft character varying(100),
    perd_pala character varying(100),
    outro_sin character varying(100),
    outro_des character varying(100)
);
    DROP TABLE public.sintomas;
       public         heap    postgres    false            ?            1259    49381    sintomas_id_sintomas_seq    SEQUENCE     ?   CREATE SEQUENCE public.sintomas_id_sintomas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.sintomas_id_sintomas_seq;
       public          postgres    false    221            4           0    0    sintomas_id_sintomas_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.sintomas_id_sintomas_seq OWNED BY public.sintomas.id_sintomas;
          public          postgres    false    222            z           2604    49382    dados_atendimento id_paciente    DEFAULT     ?   ALTER TABLE ONLY public.dados_atendimento ALTER COLUMN id_paciente SET DEFAULT nextval('public.dados_atendimento_id_paciente_seq'::regclass);
 L   ALTER TABLE public.dados_atendimento ALTER COLUMN id_paciente DROP DEFAULT;
       public          postgres    false    210    209            {           2604    49383    dados_epidemi id_epidemi    DEFAULT     ?   ALTER TABLE ONLY public.dados_epidemi ALTER COLUMN id_epidemi SET DEFAULT nextval('public.dados_epidemi_id_epidemi_seq'::regclass);
 G   ALTER TABLE public.dados_epidemi ALTER COLUMN id_epidemi DROP DEFAULT;
       public          postgres    false    212    211            |           2604    49384    dados_laboratorio id_lab    DEFAULT     ?   ALTER TABLE ONLY public.dados_laboratorio ALTER COLUMN id_lab SET DEFAULT nextval('public.dados_laboratorio_id_lab_seq'::regclass);
 G   ALTER TABLE public.dados_laboratorio ALTER COLUMN id_lab DROP DEFAULT;
       public          postgres    false    214    213            }           2604    49385     dados_paciente id_dados_paciente    DEFAULT     ?   ALTER TABLE ONLY public.dados_paciente ALTER COLUMN id_dados_paciente SET DEFAULT nextval('public.dados_paciente_id_seq'::regclass);
 O   ALTER TABLE public.dados_paciente ALTER COLUMN id_dados_paciente DROP DEFAULT;
       public          postgres    false    216    215            ~           2604    49386    fatores_risco id_fatores_risco    DEFAULT     ?   ALTER TABLE ONLY public.fatores_risco ALTER COLUMN id_fatores_risco SET DEFAULT nextval('public.fatores_risco_id_fatores_risco_seq'::regclass);
 M   ALTER TABLE public.fatores_risco ALTER COLUMN id_fatores_risco DROP DEFAULT;
       public          postgres    false    218    217                       2604    49387    paciente id_paciente    DEFAULT     |   ALTER TABLE ONLY public.paciente ALTER COLUMN id_paciente SET DEFAULT nextval('public.paciente_id_paciente_seq'::regclass);
 C   ALTER TABLE public.paciente ALTER COLUMN id_paciente DROP DEFAULT;
       public          postgres    false    220    219            ?           2604    49388    sintomas id_sintomas    DEFAULT     |   ALTER TABLE ONLY public.sintomas ALTER COLUMN id_sintomas SET DEFAULT nextval('public.sintomas_id_sintomas_seq'::regclass);
 C   ALTER TABLE public.sintomas ALTER COLUMN id_sintomas DROP DEFAULT;
       public          postgres    false    222    221                      0    49344    dados_atendimento 
   TABLE DATA           H  COPY public.dados_atendimento (id_paciente, antiviral, tp_antivir, out_antiv, dt_antivir, hospital, dt_interna, sg_uf_inte, id_rg_inte, co_rg_inte, id_mn_inte, co_mu_inte, uti, dt_entuti, dt_saiduti, suport_ven, raiox_res, raiox_out, dt_raiox, tomo_res, tomo_out, dt_tomo, amostra, dt_coleta, tp_amostra, out_amost) FROM stdin;
    public          postgres    false    209   AU                 0    49350    dados_epidemi 
   TABLE DATA           ?   COPY public.dados_epidemi (id_epidemi, histo_vgm, pais_vgm, co_ps_vgm, lo_ps_vgm, dt_vgm, dt_rt_vgm, surto_sg, nosocomial, ave_suino, out_anim, vacina, dt_ut_dose, mae_vac, dt_vac_mae, m_amamenta, dt_doseuni, dt_1_dose, dt_2_dose) FROM stdin;
    public          postgres    false    211   ^U                 0    49356    dados_laboratorio 
   TABLE DATA           ?  COPY public.dados_laboratorio (id_lab, tp_tes_an, dt_res_an, res_an, pos_an_flu, tp_flu_an, pos_an_out, an_sars2, an_vsr, an_para1, an_para2, an_para3, an_adeno, an_outro, ds_an_out, pcr_resul, dt_pcr, pos_pcrflu, tp_flu_pcr, pcr_fluasu, fluasu_out, pcr_flubli, flubli_out, pos_pcrout, pcr_sars2, pcr_vsr, pcr_para1, pcr_para2, pcr_para3, pcr_para4, pcr_adeno, pcr_metap, pcr_boca, pcr_rino, pcr_outro, ds_pcr_out, tp_am_sor, dt_co_sor, tp_sor, out_sor, sor_out, res_igg, res_igm, res_iga, dt_res) FROM stdin;
    public          postgres    false    213   {U                  0    49362    dados_paciente 
   TABLE DATA             COPY public.dados_paciente (id_dados_paciente, cs_sexo, dt_nasc, nu_idade_n, tp_idade, cs_gestant, cs_raca, cs_etinia, cs_escol_n, pac_cocbo, pac_dscbo, sg_uf, id_rg_resi, co_rg_resi, id_mn_resi, co_mun_res, cs_zona, id_pais, co_pais, cod_idade) FROM stdin;
    public          postgres    false    215   ?U       "          0    49368    fatores_risco 
   TABLE DATA           ?   COPY public.fatores_risco (id_fatores_risco, fator_risc, puerpera, cardiopati, hematologi, sind_down, hepatica, asma, diabetes, neurologic, pneumopati, imunodepre, renal, obesidade, obes_imc, out_morbi, morb_desc) FROM stdin;
    public          postgres    false    217   ?U       $          0    49372    paciente 
   TABLE DATA           ?   COPY public.paciente (id_paciente, dt_notific, sem_not, dt_sin_pri, sem_pri, sg_uf_not, id_municip, co_mun_not, id_regiona, co_regiona, id_unidade, co_uni_not, classi_fin, classi_out, criterio, evolucao, dt_evoluca, dt_encerra, dt_digita) FROM stdin;
    public          postgres    false    219   ?U       &          0    49378    sintomas 
   TABLE DATA           ?   COPY public.sintomas (id_sintomas, febre, tosse, garganta, dispneia, desc_resp, saturacao, diarreia, vomito, dor_abd, fadiga, perd_olft, perd_pala, outro_sin, outro_des) FROM stdin;
    public          postgres    false    221   ?U       5           0    0 !   dados_atendimento_id_paciente_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.dados_atendimento_id_paciente_seq', 1, false);
          public          postgres    false    210            6           0    0    dados_epidemi_id_epidemi_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.dados_epidemi_id_epidemi_seq', 1, false);
          public          postgres    false    212            7           0    0    dados_laboratorio_id_lab_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.dados_laboratorio_id_lab_seq', 1, false);
          public          postgres    false    214            8           0    0    dados_paciente_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dados_paciente_id_seq', 1, false);
          public          postgres    false    216            9           0    0 "   fatores_risco_id_fatores_risco_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.fatores_risco_id_fatores_risco_seq', 1, false);
          public          postgres    false    218            :           0    0    paciente_id_paciente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.paciente_id_paciente_seq', 1, false);
          public          postgres    false    220            ;           0    0    sintomas_id_sintomas_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.sintomas_id_sintomas_seq', 1, false);
          public          postgres    false    222            ?           2606    49390 (   dados_atendimento dados_atendimento_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.dados_atendimento
    ADD CONSTRAINT dados_atendimento_pkey PRIMARY KEY (id_paciente);
 R   ALTER TABLE ONLY public.dados_atendimento DROP CONSTRAINT dados_atendimento_pkey;
       public            postgres    false    209            ?           2606    49392     dados_epidemi dados_epidemi_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.dados_epidemi
    ADD CONSTRAINT dados_epidemi_pkey PRIMARY KEY (id_epidemi);
 J   ALTER TABLE ONLY public.dados_epidemi DROP CONSTRAINT dados_epidemi_pkey;
       public            postgres    false    211            ?           2606    49394 (   dados_laboratorio dados_laboratorio_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.dados_laboratorio
    ADD CONSTRAINT dados_laboratorio_pkey PRIMARY KEY (id_lab);
 R   ALTER TABLE ONLY public.dados_laboratorio DROP CONSTRAINT dados_laboratorio_pkey;
       public            postgres    false    213            ?           2606    49396 "   dados_paciente dados_paciente_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.dados_paciente
    ADD CONSTRAINT dados_paciente_pkey PRIMARY KEY (id_dados_paciente);
 L   ALTER TABLE ONLY public.dados_paciente DROP CONSTRAINT dados_paciente_pkey;
       public            postgres    false    215            ?           2606    49398     fatores_risco fatores_risco_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.fatores_risco
    ADD CONSTRAINT fatores_risco_pkey PRIMARY KEY (id_fatores_risco);
 J   ALTER TABLE ONLY public.fatores_risco DROP CONSTRAINT fatores_risco_pkey;
       public            postgres    false    217            ?           2606    49400    paciente paciente_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id_paciente);
 @   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_pkey;
       public            postgres    false    219            ?           2606    49402    sintomas sintomas_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.sintomas
    ADD CONSTRAINT sintomas_pkey PRIMARY KEY (id_sintomas);
 @   ALTER TABLE ONLY public.sintomas DROP CONSTRAINT sintomas_pkey;
       public            postgres    false    221                  x?????? ? ?            x?????? ? ?            x?????? ? ?             x?????? ? ?      "      x?????? ? ?      $      x?????? ? ?      &      x?????? ? ?     