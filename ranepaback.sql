PGDMP                          y            postgres    13.1    13.1 P               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13442    postgres    DATABASE     l   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3077                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16431    clients    TABLE     v   CREATE TABLE public.clients (
    id integer NOT NULL,
    name character varying(45),
    total_sum numeric(20,2)
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    16429    clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.clients_id_seq;
       public          postgres    false    208                       0    0    clients_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;
          public          postgres    false    207            �            1259    16418 	   developer    TABLE     �   CREATE TABLE public.developer (
    role character varying(45) NOT NULL,
    level character varying(45),
    project_count integer,
    id integer NOT NULL
);
    DROP TABLE public.developer;
       public         heap    postgres    false            �            1259    16457    developer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.developer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.developer_id_seq;
       public          postgres    false    204            	           0    0    developer_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.developer_id_seq OWNED BY public.developer.id;
          public          postgres    false    210            �            1259    16412 	   employees    TABLE     �   CREATE TABLE public.employees (
    id integer NOT NULL,
    name character varying(45),
    job character varying(45),
    reg_date date,
    salary numeric(10,2),
    weekend integer,
    office_id integer NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    16410    employees_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          postgres    false    203            
           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          postgres    false    202            �            1259    16437    employees_office_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employees_office_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.employees_office_id_seq;
       public          postgres    false    203                       0    0    employees_office_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.employees_office_id_seq OWNED BY public.employees.office_id;
          public          postgres    false    209            �            1259    16404    office    TABLE     [   CREATE TABLE public.office (
    address character varying(45),
    id integer NOT NULL
);
    DROP TABLE public.office;
       public         heap    postgres    false            �            1259    16531    office_id_seq    SEQUENCE     �   CREATE SEQUENCE public.office_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.office_id_seq;
       public          postgres    false    201                       0    0    office_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.office_id_seq OWNED BY public.office.id;
          public          postgres    false    216            �            1259    16423    projects    TABLE       CREATE TABLE public.projects (
    id integer NOT NULL,
    price numeric(15,2),
    started date,
    ended date,
    teamlead_id integer NOT NULL,
    designer_id integer NOT NULL,
    programmer_id integer NOT NULL,
    dbarch_id integer NOT NULL,
    client_id integer NOT NULL
);
    DROP TABLE public.projects;
       public         heap    postgres    false            �            1259    16498    projects_client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.projects_client_id_seq;
       public          postgres    false    206                       0    0    projects_client_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.projects_client_id_seq OWNED BY public.projects.client_id;
          public          postgres    false    215            �            1259    16491    projects_dbArch_id_seq    SEQUENCE     �   CREATE SEQUENCE public."projects_dbArch_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."projects_dbArch_id_seq";
       public          postgres    false    206                       0    0    projects_dbArch_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."projects_dbArch_id_seq" OWNED BY public.projects.dbarch_id;
          public          postgres    false    214            �            1259    16477    projects_designer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_designer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.projects_designer_id_seq;
       public          postgres    false    206                       0    0    projects_designer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.projects_designer_id_seq OWNED BY public.projects.designer_id;
          public          postgres    false    212            �            1259    16421    projects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.projects_id_seq;
       public          postgres    false    206                       0    0    projects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;
          public          postgres    false    205            �            1259    16484    projects_programmer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_programmer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.projects_programmer_id_seq;
       public          postgres    false    206                       0    0    projects_programmer_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.projects_programmer_id_seq OWNED BY public.projects.programmer_id;
          public          postgres    false    213            �            1259    16470    projects_teamlead_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_teamlead_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.projects_teamlead_id_seq;
       public          postgres    false    206                       0    0    projects_teamlead_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.projects_teamlead_id_seq OWNED BY public.projects.teamlead_id;
          public          postgres    false    211            �            1259    16546    test    TABLE     v   CREATE TABLE public.test (
    id integer NOT NULL,
    name character varying(45),
    date date,
    age integer
);
    DROP TABLE public.test;
       public         heap    postgres    false            �            1259    16544    test_id_seq    SEQUENCE     �   CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.test_id_seq;
       public          postgres    false    218                       0    0    test_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;
          public          postgres    false    217            W           2604    16434 
   clients id    DEFAULT     h   ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);
 9   ALTER TABLE public.clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            P           2604    16459    developer id    DEFAULT     l   ALTER TABLE ONLY public.developer ALTER COLUMN id SET DEFAULT nextval('public.developer_id_seq'::regclass);
 ;   ALTER TABLE public.developer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    204            N           2604    16415    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            O           2604    16439    employees office_id    DEFAULT     z   ALTER TABLE ONLY public.employees ALTER COLUMN office_id SET DEFAULT nextval('public.employees_office_id_seq'::regclass);
 B   ALTER TABLE public.employees ALTER COLUMN office_id DROP DEFAULT;
       public          postgres    false    209    203            M           2604    16533 	   office id    DEFAULT     f   ALTER TABLE ONLY public.office ALTER COLUMN id SET DEFAULT nextval('public.office_id_seq'::regclass);
 8   ALTER TABLE public.office ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    201            Q           2604    16426    projects id    DEFAULT     j   ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);
 :   ALTER TABLE public.projects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    206    206            R           2604    16472    projects teamlead_id    DEFAULT     |   ALTER TABLE ONLY public.projects ALTER COLUMN teamlead_id SET DEFAULT nextval('public.projects_teamlead_id_seq'::regclass);
 C   ALTER TABLE public.projects ALTER COLUMN teamlead_id DROP DEFAULT;
       public          postgres    false    211    206            S           2604    16479    projects designer_id    DEFAULT     |   ALTER TABLE ONLY public.projects ALTER COLUMN designer_id SET DEFAULT nextval('public.projects_designer_id_seq'::regclass);
 C   ALTER TABLE public.projects ALTER COLUMN designer_id DROP DEFAULT;
       public          postgres    false    212    206            T           2604    16486    projects programmer_id    DEFAULT     �   ALTER TABLE ONLY public.projects ALTER COLUMN programmer_id SET DEFAULT nextval('public.projects_programmer_id_seq'::regclass);
 E   ALTER TABLE public.projects ALTER COLUMN programmer_id DROP DEFAULT;
       public          postgres    false    213    206            U           2604    16493    projects dbarch_id    DEFAULT     z   ALTER TABLE ONLY public.projects ALTER COLUMN dbarch_id SET DEFAULT nextval('public."projects_dbArch_id_seq"'::regclass);
 A   ALTER TABLE public.projects ALTER COLUMN dbarch_id DROP DEFAULT;
       public          postgres    false    214    206            V           2604    16500    projects client_id    DEFAULT     x   ALTER TABLE ONLY public.projects ALTER COLUMN client_id SET DEFAULT nextval('public.projects_client_id_seq'::regclass);
 A   ALTER TABLE public.projects ALTER COLUMN client_id DROP DEFAULT;
       public          postgres    false    215    206            X           2604    16549    test id    DEFAULT     b   ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);
 6   ALTER TABLE public.test ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    16431    clients 
   TABLE DATA           6   COPY public.clients (id, name, total_sum) FROM stdin;
    public          postgres    false    208   /W       �          0    16418 	   developer 
   TABLE DATA           C   COPY public.developer (role, level, project_count, id) FROM stdin;
    public          postgres    false    204   �W       �          0    16412 	   employees 
   TABLE DATA           X   COPY public.employees (id, name, job, reg_date, salary, weekend, office_id) FROM stdin;
    public          postgres    false    203   wX       �          0    16404    office 
   TABLE DATA           -   COPY public.office (address, id) FROM stdin;
    public          postgres    false    201   %[       �          0    16423    projects 
   TABLE DATA           |   COPY public.projects (id, price, started, ended, teamlead_id, designer_id, programmer_id, dbarch_id, client_id) FROM stdin;
    public          postgres    false    206   }[       �          0    16546    test 
   TABLE DATA           3   COPY public.test (id, name, date, age) FROM stdin;
    public          postgres    false    218   \                  0    0    clients_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.clients_id_seq', 7, true);
          public          postgres    false    207                       0    0    developer_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.developer_id_seq', 26, true);
          public          postgres    false    210                       0    0    employees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employees_id_seq', 40, true);
          public          postgres    false    202                       0    0    employees_office_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.employees_office_id_seq', 1, false);
          public          postgres    false    209                       0    0    office_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.office_id_seq', 7, true);
          public          postgres    false    216                       0    0    projects_client_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.projects_client_id_seq', 1, false);
          public          postgres    false    215                       0    0    projects_dbArch_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."projects_dbArch_id_seq"', 1, false);
          public          postgres    false    214                       0    0    projects_designer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.projects_designer_id_seq', 1, false);
          public          postgres    false    212                       0    0    projects_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.projects_id_seq', 7, true);
          public          postgres    false    205                       0    0    projects_programmer_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.projects_programmer_id_seq', 1, false);
          public          postgres    false    213                       0    0    projects_teamlead_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.projects_teamlead_id_seq', 1, false);
          public          postgres    false    211                       0    0    test_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.test_id_seq', 6, true);
          public          postgres    false    217            b           2606    16436    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    208            ^           2606    16464    developer developer_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.developer
    ADD CONSTRAINT developer_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.developer DROP CONSTRAINT developer_pkey;
       public            postgres    false    204            \           2606    16417    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    203            Z           2606    16538    office office_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.office
    ADD CONSTRAINT office_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.office DROP CONSTRAINT office_pkey;
       public            postgres    false    201            `           2606    16428    projects projects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
       public            postgres    false    206            d           2606    16551    test test_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    218            k           2606    16526    projects client_id    FK CONSTRAINT        ALTER TABLE ONLY public.projects
    ADD CONSTRAINT client_id FOREIGN KEY (client_id) REFERENCES public.clients(id) NOT VALID;
 <   ALTER TABLE ONLY public.projects DROP CONSTRAINT client_id;
       public          postgres    false    2914    206    208            j           2606    16521    projects dbArch_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT "dbArch_id" FOREIGN KEY (dbarch_id) REFERENCES public.developer(id) NOT VALID;
 >   ALTER TABLE ONLY public.projects DROP CONSTRAINT "dbArch_id";
       public          postgres    false    2910    204    206            h           2606    16511    projects designer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT designer_id FOREIGN KEY (designer_id) REFERENCES public.developer(id) NOT VALID;
 >   ALTER TABLE ONLY public.projects DROP CONSTRAINT designer_id;
       public          postgres    false    2910    204    206            f           2606    16465    developer id    FK CONSTRAINT     t   ALTER TABLE ONLY public.developer
    ADD CONSTRAINT id FOREIGN KEY (id) REFERENCES public.employees(id) NOT VALID;
 6   ALTER TABLE ONLY public.developer DROP CONSTRAINT id;
       public          postgres    false    204    2908    203            e           2606    16539    employees office_id    FK CONSTRAINT        ALTER TABLE ONLY public.employees
    ADD CONSTRAINT office_id FOREIGN KEY (office_id) REFERENCES public.office(id) NOT VALID;
 =   ALTER TABLE ONLY public.employees DROP CONSTRAINT office_id;
       public          postgres    false    201    203    2906            i           2606    16516    projects programmer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT programmer_id FOREIGN KEY (programmer_id) REFERENCES public.developer(id) NOT VALID;
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT programmer_id;
       public          postgres    false    206    204    2910            g           2606    16506    projects teamlead_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT teamlead_id FOREIGN KEY (teamlead_id) REFERENCES public.developer(id) NOT VALID;
 >   ALTER TABLE ONLY public.projects DROP CONSTRAINT teamlead_id;
       public          postgres    false    204    206    2910            �   h   x�5�;
�0E��e�@f��R,m�h�	)ܽ"IyOq��6pCD9���_��VQ
L�>`�]��ۣ�T��5�(�&��;9��(�t����E�97Ƽ�N�      �   �   x�m�A�  ϻ�i\P�c�ы-�ڈ6h�_l -p��0l�7���>�X`@��:��`F�&��2��GW������_��vԸ�ߕ�>��@�}~���xn{��.�.LEB�+G��9�*c�X[��c���&�C�(�!�R&�v�f�H uY%GYU�����>˲V�>�givZ"��$v&�vA�/�O��      �   �  x�m�OO1����b���="�P�^\�����l���w�`{��%�ϼ���{�����_?ﭥ�Sn���+�@�Cz�ñdc�2M� ��'+g�8!6���P!�3U���e��a	�1�f�o(��U��	�r���\Ì2K�A�64��o..X�
Y��p+7�i1'�\P<�\x��<��JȒ��[7�÷ÒD�,+�D0x�:l�T��iD��%��<.g��7�����qp���#"���?��X�}H���K�	.��3�!f*��b5���;ͧRB��If4��O\�'Sԅ6��݌�p�M(��5+=��vaǺeԘ���2�
Bm��EaM4<��*t8�MJ`d�de]�����4�w�C�+��	�B7I15�x\���k?-�C�9�E4P9���ЄT�R8bK�1�نy:.VV��2F�:�R>���?.�y<K}�3�e�p�<n�P�&�L�+�'"zXMa���:���e_�u��^�t,I��K].%�.�ĕ�V�meY��&�sݶ ;���YS)�f�ӻK�b(C����nH
�=�٤=c�R�n�%o��Q���O-�}ɣ/�)��5�SQ��Fw�w�ְ�Omaԣ���zF��zT�!�aá����l�Z���3��      �   H   x���/N�/�4�
�IL���,�4���/��)��4�
�L�J��4�r/ʯʫ�4�
MK�4���s��qqq ɳ;      �   �   x�U��D!��Ћ?
h/�����^&�q"����wp�ݨMϸr�B10AQP���]�Y38*�/7ʮkw��C2~��q�i�`�S�b孼�~#O��
����]�:�u��3Q~��o~~K��!�GD�7�6      �   9   x�3��J�M-�4����54�52�41�2�*j�U����W~F^^%���)W� ɻ�     