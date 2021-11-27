PGDMP     +                
    y            SRAG2020    14.0    14.0 5    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    32768    SRAG2020    DATABASE     j   CREATE DATABASE "SRAG2020" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "SRAG2020";
                postgres    false            �            1259    41014    dados_atendimento    TABLE     h  CREATE TABLE public.dados_atendimento (
    id_paciente integer NOT NULL,
    antiviral character varying(1),
    tp_antivir character varying(1),
    out_antiv character varying(30),
    dt_antivir date,
    hospital character varying(2),
    dt_interna date NOT NULL,
    sg_uf_inte character varying(2) NOT NULL,
    id_rg_inte character varying(6),
    co_rg_inte character varying(20),
    id_mn_inte character varying(20),
    co_mu_inte character varying(20),
    uti character varying(1),
    dt_entuti date,
    dt_saiduti date,
    suport_ven date,
    raiox_res character varying(1),
    raiox_out character varying(30),
    dt_raiox date,
    tomo_res character varying(3),
    tomo_out character varying(100),
    dt_tomo date,
    amostra character varying(1),
    dt_coleta date,
    tp_amostra character varying(30),
    out_amost character varying(30)
);
 %   DROP TABLE public.dados_atendimento;
       public         heap    postgres    false            �            1259    41013 !   dados_atendimento_id_paciente_seq    SEQUENCE     �   CREATE SEQUENCE public.dados_atendimento_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.dados_atendimento_id_paciente_seq;
       public          postgres    false    220            .           0    0 !   dados_atendimento_id_paciente_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.dados_atendimento_id_paciente_seq OWNED BY public.dados_atendimento.id_paciente;
          public          postgres    false    219            �            1259    41006    dados_epidemi    TABLE     �  CREATE TABLE public.dados_epidemi (
    id_epidemi integer NOT NULL,
    histo_vgm character varying(1) NOT NULL,
    pais_vgm character varying(3) NOT NULL,
    co_ps_vgm character varying(3) NOT NULL,
    lo_ps_vgm character varying(30),
    dt_vgm date NOT NULL,
    dt_rt_vgm date NOT NULL,
    surto_sg character varying(1),
    nosocomia character varying(1),
    ave_suino character varying(1),
    out_anim character varying(60),
    vacina character varying(1),
    dt_ut_dose date,
    mae_vac character varying(1),
    dt_vac_mae date,
    m_amamenta character varying(1),
    dt_doseuni date,
    dt_1_dose date,
    dt_2_dose date
);
 !   DROP TABLE public.dados_epidemi;
       public         heap    postgres    false            �            1259    41005    dados_epidemi_id_epidemi_seq    SEQUENCE     �   CREATE SEQUENCE public.dados_epidemi_id_epidemi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.dados_epidemi_id_epidemi_seq;
       public          postgres    false    218            /           0    0    dados_epidemi_id_epidemi_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.dados_epidemi_id_epidemi_seq OWNED BY public.dados_epidemi.id_epidemi;
          public          postgres    false    217            �            1259    40978    dados_laboratorio    TABLE     %  CREATE TABLE public.dados_laboratorio (
    id_lab integer NOT NULL,
    p_tes_an character varying(3),
    dt_res_an date,
    res_an character varying(1),
    pos_an_flu character varying(1),
    tp_flu_an character varying(1),
    pos_an_out character varying(1),
    an_sars2 character varying(1),
    an_vsr character varying(1),
    an_para1 character varying(1),
    an_para2 character varying(1),
    an_para3 character varying(1),
    an_adeno character varying(1),
    an_outro character varying(1),
    ds_an_out character varying(30),
    pcr_resul character varying(1),
    dt_pcr date,
    pos_pcrflu character varying(1),
    tp_flu_pcr character varying(1),
    pcr_fluasu character varying(1),
    fluasu_out character varying(30),
    pcr_flubli character varying(1),
    flubli_out character varying(30),
    pos_pcrout character varying(1),
    pcr_sars2 character varying(1),
    pcr_vsr character varying(1),
    pcr_para1 character varying(1),
    pcr_para2 character varying(1),
    pcr_para3 character varying(1),
    pcr_para4 character varying(1),
    pcr_adeno character varying(1),
    pcr_metap character varying(1),
    pcr_boca character varying(1),
    pcr_rino character varying(1),
    pcr_outro character varying(1),
    ds_pcr_out character varying(30),
    tp_am_sor character varying(3),
    dt_co_sor date,
    tp_sor character varying(3),
    out_sor character varying(100),
    sor_out character varying(100),
    res_igg character varying(1),
    res_igm character varying(1),
    res_iga character varying(1),
    dt_res date
);
 %   DROP TABLE public.dados_laboratorio;
       public         heap    postgres    false            �            1259    40977    dados_laboratorio_id_lab_seq    SEQUENCE     �   CREATE SEQUENCE public.dados_laboratorio_id_lab_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.dados_laboratorio_id_lab_seq;
       public          postgres    false    212            0           0    0    dados_laboratorio_id_lab_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.dados_laboratorio_id_lab_seq OWNED BY public.dados_laboratorio.id_lab;
          public          postgres    false    211            �            1259    40964    dados_paciente    TABLE     N  CREATE TABLE public.dados_paciente (
    id_dados_paciente integer NOT NULL,
    cs_sexo character varying(1) NOT NULL,
    dt_nasc date,
    nu_idade_n character varying(3) NOT NULL,
    tp_idade character varying(1) NOT NULL,
    cs_gestant character varying(1) NOT NULL,
    cs_raca character varying(2) NOT NULL,
    cs_etinia character varying(4),
    cs_escol_n character varying(1),
    pac_cocbo character varying(6),
    pac_dscbo character varying(6),
    sg_uf character varying(2) NOT NULL,
    id_rg_resi character varying(6) NOT NULL,
    co_rg_resi character varying(6) NOT NULL,
    id_mn_resi character varying(6) NOT NULL,
    co_mun_res character varying(6) NOT NULL,
    cs_zona character varying(1),
    id_pais character varying(3) NOT NULL,
    co_pais character varying(3) NOT NULL,
    cod_idade character varying(10)
);
 "   DROP TABLE public.dados_paciente;
       public         heap    postgres    false            �            1259    40963    dados_paciente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dados_paciente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dados_paciente_id_seq;
       public          postgres    false    210            1           0    0    dados_paciente_id_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.dados_paciente_id_seq OWNED BY public.dados_paciente.id_dados_paciente;
          public          postgres    false    209            �            1259    40992    fatores_risco    TABLE     �  CREATE TABLE public.fatores_risco (
    id_fatores_risco integer NOT NULL,
    fator_risc character varying(1),
    puerpera character varying(1),
    cardiopati character varying(1),
    hematologi character varying(1),
    sind_down character varying(1),
    hepatica character varying(1),
    asma character varying(1),
    diabetes character varying(1),
    neurologic character varying(1),
    pneumopati character varying(1),
    imunodepre character varying(1),
    renal character varying(1),
    obesidade character varying(1),
    obes_imc character varying(3),
    out_morbi character varying(1),
    morb_desc character varying(30)
);
 !   DROP TABLE public.fatores_risco;
       public         heap    postgres    false            �            1259    40991 "   fatores_risco_id_fatores_risco_seq    SEQUENCE     �   CREATE SEQUENCE public.fatores_risco_id_fatores_risco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.fatores_risco_id_fatores_risco_seq;
       public          postgres    false    214            2           0    0 "   fatores_risco_id_fatores_risco_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.fatores_risco_id_fatores_risco_seq OWNED BY public.fatores_risco.id_fatores_risco;
          public          postgres    false    213            �            1259    40999    paciente    TABLE        CREATE TABLE public.paciente (
    id_paciente integer NOT NULL,
    dt_notific date NOT NULL,
    sem_not character varying(6) NOT NULL,
    dt_sin_pri date NOT NULL,
    sem_pri character varying(6) NOT NULL,
    sg_uf_not character varying(2) NOT NULL,
    id_municip character varying(6) NOT NULL,
    co_mun_not character varying(6) NOT NULL,
    id_regiona character varying(6) NOT NULL,
    co_regiona character varying(6) NOT NULL,
    id_unidade character varying(7) NOT NULL,
    co_uni_not character varying(7) NOT NULL,
    classi_fin character varying(1) NOT NULL,
    classi_out character varying(30) NOT NULL,
    criterio character varying(1),
    evolucao character varying(1),
    dt_evoluca date,
    dt_encerra date NOT NULL,
    dt_digita date
);
    DROP TABLE public.paciente;
       public         heap    postgres    false            �            1259    40998    paciente_id_paciente_seq    SEQUENCE     �   CREATE SEQUENCE public.paciente_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.paciente_id_paciente_seq;
       public          postgres    false    216            3           0    0    paciente_id_paciente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.paciente_id_paciente_seq OWNED BY public.paciente.id_paciente;
          public          postgres    false    215            �            1259    41021    sintomas    TABLE     )  CREATE TABLE public.sintomas (
    id_sintomas integer NOT NULL,
    febre character varying(1),
    tosse character varying(1),
    garganta character varying(1),
    dispneia character varying(1),
    desc_resp character varying(1),
    saturacao character varying(1),
    diarreia character varying(1),
    vomito character varying(1),
    dor_abd character varying(1),
    fadiga character varying(1),
    perd_olft character varying(1),
    perd_pala character varying(1),
    outro_sin character varying(1),
    outro_des character varying(30)
);
    DROP TABLE public.sintomas;
       public         heap    postgres    false            �            1259    41020    sintomas_id_sintomas_seq    SEQUENCE     �   CREATE SEQUENCE public.sintomas_id_sintomas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.sintomas_id_sintomas_seq;
       public          postgres    false    222            4           0    0    sintomas_id_sintomas_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.sintomas_id_sintomas_seq OWNED BY public.sintomas.id_sintomas;
          public          postgres    false    221                       2604    41017    dados_atendimento id_paciente    DEFAULT     �   ALTER TABLE ONLY public.dados_atendimento ALTER COLUMN id_paciente SET DEFAULT nextval('public.dados_atendimento_id_paciente_seq'::regclass);
 L   ALTER TABLE public.dados_atendimento ALTER COLUMN id_paciente DROP DEFAULT;
       public          postgres    false    219    220    220            ~           2604    41009    dados_epidemi id_epidemi    DEFAULT     �   ALTER TABLE ONLY public.dados_epidemi ALTER COLUMN id_epidemi SET DEFAULT nextval('public.dados_epidemi_id_epidemi_seq'::regclass);
 G   ALTER TABLE public.dados_epidemi ALTER COLUMN id_epidemi DROP DEFAULT;
       public          postgres    false    218    217    218            {           2604    40981    dados_laboratorio id_lab    DEFAULT     �   ALTER TABLE ONLY public.dados_laboratorio ALTER COLUMN id_lab SET DEFAULT nextval('public.dados_laboratorio_id_lab_seq'::regclass);
 G   ALTER TABLE public.dados_laboratorio ALTER COLUMN id_lab DROP DEFAULT;
       public          postgres    false    211    212    212            z           2604    40967     dados_paciente id_dados_paciente    DEFAULT     �   ALTER TABLE ONLY public.dados_paciente ALTER COLUMN id_dados_paciente SET DEFAULT nextval('public.dados_paciente_id_seq'::regclass);
 O   ALTER TABLE public.dados_paciente ALTER COLUMN id_dados_paciente DROP DEFAULT;
       public          postgres    false    210    209    210            |           2604    40995    fatores_risco id_fatores_risco    DEFAULT     �   ALTER TABLE ONLY public.fatores_risco ALTER COLUMN id_fatores_risco SET DEFAULT nextval('public.fatores_risco_id_fatores_risco_seq'::regclass);
 M   ALTER TABLE public.fatores_risco ALTER COLUMN id_fatores_risco DROP DEFAULT;
       public          postgres    false    214    213    214            }           2604    41002    paciente id_paciente    DEFAULT     |   ALTER TABLE ONLY public.paciente ALTER COLUMN id_paciente SET DEFAULT nextval('public.paciente_id_paciente_seq'::regclass);
 C   ALTER TABLE public.paciente ALTER COLUMN id_paciente DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    41024    sintomas id_sintomas    DEFAULT     |   ALTER TABLE ONLY public.sintomas ALTER COLUMN id_sintomas SET DEFAULT nextval('public.sintomas_id_sintomas_seq'::regclass);
 C   ALTER TABLE public.sintomas ALTER COLUMN id_sintomas DROP DEFAULT;
       public          postgres    false    221    222    222            %          0    41014    dados_atendimento 
   TABLE DATA           H  COPY public.dados_atendimento (id_paciente, antiviral, tp_antivir, out_antiv, dt_antivir, hospital, dt_interna, sg_uf_inte, id_rg_inte, co_rg_inte, id_mn_inte, co_mu_inte, uti, dt_entuti, dt_saiduti, suport_ven, raiox_res, raiox_out, dt_raiox, tomo_res, tomo_out, dt_tomo, amostra, dt_coleta, tp_amostra, out_amost) FROM stdin;
    public          postgres    false    220   �U       #          0    41006    dados_epidemi 
   TABLE DATA           �   COPY public.dados_epidemi (id_epidemi, histo_vgm, pais_vgm, co_ps_vgm, lo_ps_vgm, dt_vgm, dt_rt_vgm, surto_sg, nosocomia, ave_suino, out_anim, vacina, dt_ut_dose, mae_vac, dt_vac_mae, m_amamenta, dt_doseuni, dt_1_dose, dt_2_dose) FROM stdin;
    public          postgres    false    218   �U                 0    40978    dados_laboratorio 
   TABLE DATA           �  COPY public.dados_laboratorio (id_lab, p_tes_an, dt_res_an, res_an, pos_an_flu, tp_flu_an, pos_an_out, an_sars2, an_vsr, an_para1, an_para2, an_para3, an_adeno, an_outro, ds_an_out, pcr_resul, dt_pcr, pos_pcrflu, tp_flu_pcr, pcr_fluasu, fluasu_out, pcr_flubli, flubli_out, pos_pcrout, pcr_sars2, pcr_vsr, pcr_para1, pcr_para2, pcr_para3, pcr_para4, pcr_adeno, pcr_metap, pcr_boca, pcr_rino, pcr_outro, ds_pcr_out, tp_am_sor, dt_co_sor, tp_sor, out_sor, sor_out, res_igg, res_igm, res_iga, dt_res) FROM stdin;
    public          postgres    false    212   �U                 0    40964    dados_paciente 
   TABLE DATA             COPY public.dados_paciente (id_dados_paciente, cs_sexo, dt_nasc, nu_idade_n, tp_idade, cs_gestant, cs_raca, cs_etinia, cs_escol_n, pac_cocbo, pac_dscbo, sg_uf, id_rg_resi, co_rg_resi, id_mn_resi, co_mun_res, cs_zona, id_pais, co_pais, cod_idade) FROM stdin;
    public          postgres    false    210   �U                 0    40992    fatores_risco 
   TABLE DATA           �   COPY public.fatores_risco (id_fatores_risco, fator_risc, puerpera, cardiopati, hematologi, sind_down, hepatica, asma, diabetes, neurologic, pneumopati, imunodepre, renal, obesidade, obes_imc, out_morbi, morb_desc) FROM stdin;
    public          postgres    false    214   V       !          0    40999    paciente 
   TABLE DATA           �   COPY public.paciente (id_paciente, dt_notific, sem_not, dt_sin_pri, sem_pri, sg_uf_not, id_municip, co_mun_not, id_regiona, co_regiona, id_unidade, co_uni_not, classi_fin, classi_out, criterio, evolucao, dt_evoluca, dt_encerra, dt_digita) FROM stdin;
    public          postgres    false    216   2V       '          0    41021    sintomas 
   TABLE DATA           �   COPY public.sintomas (id_sintomas, febre, tosse, garganta, dispneia, desc_resp, saturacao, diarreia, vomito, dor_abd, fadiga, perd_olft, perd_pala, outro_sin, outro_des) FROM stdin;
    public          postgres    false    222   OV       5           0    0 !   dados_atendimento_id_paciente_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.dados_atendimento_id_paciente_seq', 1, false);
          public          postgres    false    219            6           0    0    dados_epidemi_id_epidemi_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.dados_epidemi_id_epidemi_seq', 1, false);
          public          postgres    false    217            7           0    0    dados_laboratorio_id_lab_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.dados_laboratorio_id_lab_seq', 1, false);
          public          postgres    false    211            8           0    0    dados_paciente_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dados_paciente_id_seq', 1, false);
          public          postgres    false    209            9           0    0 "   fatores_risco_id_fatores_risco_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.fatores_risco_id_fatores_risco_seq', 1, false);
          public          postgres    false    213            :           0    0    paciente_id_paciente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.paciente_id_paciente_seq', 1, false);
          public          postgres    false    215            ;           0    0    sintomas_id_sintomas_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.sintomas_id_sintomas_seq', 1, false);
          public          postgres    false    221            �           2606    41019 (   dados_atendimento dados_atendimento_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.dados_atendimento
    ADD CONSTRAINT dados_atendimento_pkey PRIMARY KEY (id_paciente);
 R   ALTER TABLE ONLY public.dados_atendimento DROP CONSTRAINT dados_atendimento_pkey;
       public            postgres    false    220            �           2606    41011     dados_epidemi dados_epidemi_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.dados_epidemi
    ADD CONSTRAINT dados_epidemi_pkey PRIMARY KEY (id_epidemi);
 J   ALTER TABLE ONLY public.dados_epidemi DROP CONSTRAINT dados_epidemi_pkey;
       public            postgres    false    218            �           2606    40983 (   dados_laboratorio dados_laboratorio_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.dados_laboratorio
    ADD CONSTRAINT dados_laboratorio_pkey PRIMARY KEY (id_lab);
 R   ALTER TABLE ONLY public.dados_laboratorio DROP CONSTRAINT dados_laboratorio_pkey;
       public            postgres    false    212            �           2606    40969 "   dados_paciente dados_paciente_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.dados_paciente
    ADD CONSTRAINT dados_paciente_pkey PRIMARY KEY (id_dados_paciente);
 L   ALTER TABLE ONLY public.dados_paciente DROP CONSTRAINT dados_paciente_pkey;
       public            postgres    false    210            �           2606    40997     fatores_risco fatores_risco_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.fatores_risco
    ADD CONSTRAINT fatores_risco_pkey PRIMARY KEY (id_fatores_risco);
 J   ALTER TABLE ONLY public.fatores_risco DROP CONSTRAINT fatores_risco_pkey;
       public            postgres    false    214            �           2606    41004    paciente paciente_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id_paciente);
 @   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_pkey;
       public            postgres    false    216            �           2606    41026    sintomas sintomas_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.sintomas
    ADD CONSTRAINT sintomas_pkey PRIMARY KEY (id_sintomas);
 @   ALTER TABLE ONLY public.sintomas DROP CONSTRAINT sintomas_pkey;
       public            postgres    false    222            %      x������ � �      #      x������ � �            x������ � �            x������ � �            x������ � �      !      x������ � �      '   3   x�3�4�4B\�PAK$,9���209A�����<���b���� y�	�     