PGDMP         (            
    z            siakad_unsulbar    14.5    14.5     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16689    siakad_unsulbar    DATABASE     r   CREATE DATABASE siakad_unsulbar WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE siakad_unsulbar;
                postgres    false            ?            1259    16711    dosen    TABLE     u   CREATE TABLE public.dosen (
    nmdosen character varying(30),
    mkajar character varying(50),
    umur integer
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    16698 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16697    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    210                       0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    209            ?            1259    16705 
   matakuliah    TABLE     ?   CREATE TABLE public.matakuliah (
    idmk integer NOT NULL,
    namamk character varying(30),
    hari character varying(20),
    jam integer
);
    DROP TABLE public.matakuliah;
       public         heap    postgres    false            ?            1259    16704    matakuliah_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.matakuliah_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.matakuliah_idmk_seq;
       public          postgres    false    212                       0    0    matakuliah_idmk_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.matakuliah_idmk_seq OWNED BY public.matakuliah.idmk;
          public          postgres    false    211            e           2604    16701    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    209    210    210            f           2604    16708    matakuliah idmk    DEFAULT     r   ALTER TABLE ONLY public.matakuliah ALTER COLUMN idmk SET DEFAULT nextval('public.matakuliah_idmk_seq'::regclass);
 >   ALTER TABLE public.matakuliah ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    211    212    212            ?          0    16711    dosen 
   TABLE DATA           6   COPY public.dosen (nmdosen, mkajar, umur) FROM stdin;
    public          postgres    false    213          ?          0    16698 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    210   ?       ?          0    16705 
   matakuliah 
   TABLE DATA           =   COPY public.matakuliah (idmk, namamk, hari, jam) FROM stdin;
    public          postgres    false    212                     0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    209                       0    0    matakuliah_idmk_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.matakuliah_idmk_seq', 1, false);
          public          postgres    false    211            h           2606    16703    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    210            j           2606    16710    matakuliah matakuliah_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (idmk);
 D   ALTER TABLE ONLY public.matakuliah DROP CONSTRAINT matakuliah_pkey;
       public            postgres    false    212            ?   c   x?.?I?L?+??t??JLJ,R???KM,?46??+-J?I?-?L??p?WHI?S?,????41??,?M,?????K8d+x?????qYp??qqq ??      ?   t   x????0?继?Z?h?n?܌˟??R????????????|?yl??sֶ???!?y (]?l?x	?߰?????}G6w????????ӑ?󪹤??V??~6???x$D      ?   _   x?3421?p??N?I,N???24?????%?&?)??&q%&?r %?,8??3?\K9?s3?A??M?8=}?9?JsK8??b???? ??Z     