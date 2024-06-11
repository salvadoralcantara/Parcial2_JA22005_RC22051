PGDMP  1            
        |            postgres    16.2    16.2 (    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_El Salvador.1252';
    DROP DATABASE postgres;
                postgres    false            I           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4936                        2615    16418    pgagent    SCHEMA        CREATE SCHEMA pgagent;
    DROP SCHEMA pgagent;
                postgres    false            J           0    0    SCHEMA pgagent    COMMENT     6   COMMENT ON SCHEMA pgagent IS 'pgAgent system tables';
                   postgres    false    8                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            K           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    6            �            1259    16398    alumno    TABLE     ~   CREATE TABLE public.alumno (
    id integer NOT NULL,
    nombre character varying(100),
    carnet character varying(100)
);
    DROP TABLE public.alumno;
       public         heap    postgres    false    6            �            1259    16397    alumno_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alumno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.alumno_id_seq;
       public          postgres    false    225    6            L           0    0    alumno_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.alumno_id_seq OWNED BY public.alumno.id;
          public          postgres    false    224            �            1259    16932    materia    TABLE     �   CREATE TABLE public.materia (
    id integer NOT NULL,
    nombre character varying(100),
    descripcion text,
    codigo_materia character varying(20)
);
    DROP TABLE public.materia;
       public         heap    postgres    false    6            �            1259    16903    materia_id_seq    SEQUENCE     w   CREATE SEQUENCE public.materia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.materia_id_seq;
       public          postgres    false    6            �            1259    16931    materia_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.materia_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.materia_id_seq1;
       public          postgres    false    246    6            M           0    0    materia_id_seq1    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.materia_id_seq1 OWNED BY public.materia.id;
          public          postgres    false    245            �            1259    16411    user_seq    SEQUENCE     r   CREATE SEQUENCE public.user_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.user_seq;
       public          postgres    false    6            �            1259    16412    users    TABLE     W   CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false    6            �            1259    16417 	   users_seq    SEQUENCE     s   CREATE SEQUENCE public.users_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.users_seq;
       public          postgres    false    6            d           2604    16401 	   alumno id    DEFAULT     f   ALTER TABLE ONLY public.alumno ALTER COLUMN id SET DEFAULT nextval('public.alumno_id_seq'::regclass);
 8   ALTER TABLE public.alumno ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16935 
   materia id    DEFAULT     i   ALTER TABLE ONLY public.materia ALTER COLUMN id SET DEFAULT nextval('public.materia_id_seq1'::regclass);
 9   ALTER TABLE public.materia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            \          0    16420    pga_jobagent 
   TABLE DATA           I   COPY pgagent.pga_jobagent (jagpid, jaglogintime, jagstation) FROM stdin;
    pgagent          postgres    false    229   �%       ]          0    16429    pga_jobclass 
   TABLE DATA           7   COPY pgagent.pga_jobclass (jclid, jclname) FROM stdin;
    pgagent          postgres    false    231   ;&       ^          0    16439    pga_job 
   TABLE DATA           �   COPY pgagent.pga_job (jobid, jobjclid, jobname, jobdesc, jobhostagent, jobenabled, jobcreated, jobchanged, jobagentid, jobnextrun, joblastrun) FROM stdin;
    pgagent          postgres    false    233   X&       `          0    16487    pga_schedule 
   TABLE DATA           �   COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
    pgagent          postgres    false    237   u&       a          0    16515    pga_exception 
   TABLE DATA           J   COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
    pgagent          postgres    false    239   �&       b          0    16529 
   pga_joblog 
   TABLE DATA           X   COPY pgagent.pga_joblog (jlgid, jlgjobid, jlgstatus, jlgstart, jlgduration) FROM stdin;
    pgagent          postgres    false    241   �&       _          0    16463    pga_jobstep 
   TABLE DATA           �   COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
    pgagent          postgres    false    235   �&       c          0    16545    pga_jobsteplog 
   TABLE DATA           |   COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
    pgagent          postgres    false    243   �&       <          0    16398    alumno 
   TABLE DATA           4   COPY public.alumno (id, nombre, carnet) FROM stdin;
    public          postgres    false    225   '       B          0    16932    materia 
   TABLE DATA           J   COPY public.materia (id, nombre, descripcion, codigo_materia) FROM stdin;
    public          postgres    false    246   D'       >          0    16412    users 
   TABLE DATA           )   COPY public.users (id, name) FROM stdin;
    public          postgres    false    227   '       N           0    0    alumno_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.alumno_id_seq', 79, true);
          public          postgres    false    224            O           0    0    materia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.materia_id_seq', 23, true);
          public          postgres    false    244            P           0    0    materia_id_seq1    SEQUENCE SET     >   SELECT pg_catalog.setval('public.materia_id_seq1', 1, false);
          public          postgres    false    245            Q           0    0    user_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('public.user_seq', 1, false);
          public          postgres    false    226            R           0    0 	   users_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.users_seq', 251, true);
          public          postgres    false    228            �           2606    16403    alumno alumno_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_pkey;
       public            postgres    false    225            �           2606    16939    materia materia_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_pkey;
       public            postgres    false    246            �           2606    16416    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    227            \   ?   x��034�4202�50�54P04�21�26�3355�0�r��{���:9��p��qqq AZ�      ]      x������ � �      ^      x������ � �      `      x������ � �      a      x������ � �      b      x������ � �      _      x������ � �      c      x������ � �      <   .   x���N�)KL�/R�*M,J���r42200�2��L�L����� ۛ	�      B   +   x�3��L�,�L�22�4�4�4�22�L�?.#c+F��� �=�      >   /   x�345�N�)KL�/R�,N�L,�220�t/���I-������� �ma     