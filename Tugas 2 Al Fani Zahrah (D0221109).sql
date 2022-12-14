toc.dat                                                                                             0000600 0004000 0002000 00000011741 14336667204 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       *                
    z            siakad_unsulbar    14.5    14.5     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                     1262    16689    siakad_unsulbar    DATABASE     r   CREATE DATABASE siakad_unsulbar WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE siakad_unsulbar;
                postgres    false         ?            1259    16711    dosen    TABLE     u   CREATE TABLE public.dosen (
    nmdosen character varying(30),
    mkajar character varying(50),
    umur integer
);
    DROP TABLE public.dosen;
       public         heap    postgres    false         ?            1259    16698 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false         ?            1259    16697    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    210                    0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    209         ?            1259    16705 
   matakuliah    TABLE     ?   CREATE TABLE public.matakuliah (
    idmk integer NOT NULL,
    namamk character varying(30),
    hari character varying(20),
    jam integer
);
    DROP TABLE public.matakuliah;
       public         heap    postgres    false         ?            1259    16704    matakuliah_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.matakuliah_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.matakuliah_idmk_seq;
       public          postgres    false    212                    0    0    matakuliah_idmk_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.matakuliah_idmk_seq OWNED BY public.matakuliah.idmk;
          public          postgres    false    211         e           2604    16701    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    209    210    210         f           2604    16708    matakuliah idmk    DEFAULT     r   ALTER TABLE ONLY public.matakuliah ALTER COLUMN idmk SET DEFAULT nextval('public.matakuliah_idmk_seq'::regclass);
 >   ALTER TABLE public.matakuliah ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    211    212    212         ?          0    16711    dosen 
   TABLE DATA           6   COPY public.dosen (nmdosen, mkajar, umur) FROM stdin;
    public          postgres    false    213       3322.dat ?          0    16698 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    210       3319.dat ?          0    16705 
   matakuliah 
   TABLE DATA           =   COPY public.matakuliah (idmk, namamk, hari, jam) FROM stdin;
    public          postgres    false    212       3321.dat            0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    209                    0    0    matakuliah_idmk_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.matakuliah_idmk_seq', 1, false);
          public          postgres    false    211         h           2606    16703    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    210         j           2606    16710    matakuliah matakuliah_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (idmk);
 D   ALTER TABLE ONLY public.matakuliah DROP CONSTRAINT matakuliah_pkey;
       public            postgres    false    212                                       3322.dat                                                                                            0000600 0004000 0002000 00000000163 14336667204 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Sulayanti	Aljabar Linear	30
Nuralamsyah	PBO dan Python	40
Muzaki	Basis Data	32
Ismaun	IMK dan Apk Komputer	28
\.


                                                                                                                                                                                                                                                                                                                                                                                                             3319.dat                                                                                            0000600 0004000 0002000 00000000222 14336667204 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        221370	Fitriani	Polewali
221369	Mutiara	Mapilli
221109	Al Fani Zahrah	Campalagian
221114	Muh. Muayyat Sabir	Majene
221375	Efortuntrio	Mamasa
\.


                                                                                                                                                                                                                                                                                                                                                                              3321.dat                                                                                            0000600 0004000 0002000 00000000161 14336667204 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1243	PBO	Selasa	9
1543	Pemrograman Web	Rabu	10
1568	Basis Data	Kamis	9
1356	IMK	Jumat	2
1388	Python	Senin	7
\.


                                                                                                                                                                                                                                                                                                                                                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000011157 14336667204 0015404 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE siakad_unsulbar;
--
-- Name: siakad_unsulbar; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE siakad_unsulbar WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';


ALTER DATABASE siakad_unsulbar OWNER TO postgres;

\connect siakad_unsulbar

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dosen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dosen (
    nmdosen character varying(30),
    mkajar character varying(50),
    umur integer
);


ALTER TABLE public.dosen OWNER TO postgres;

--
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);


ALTER TABLE public.mahasiswa OWNER TO postgres;

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mahasiswa_nim_seq OWNER TO postgres;

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;


--
-- Name: matakuliah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matakuliah (
    idmk integer NOT NULL,
    namamk character varying(30),
    hari character varying(20),
    jam integer
);


ALTER TABLE public.matakuliah OWNER TO postgres;

--
-- Name: matakuliah_idmk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matakuliah_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matakuliah_idmk_seq OWNER TO postgres;

--
-- Name: matakuliah_idmk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matakuliah_idmk_seq OWNED BY public.matakuliah.idmk;


--
-- Name: mahasiswa nim; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);


--
-- Name: matakuliah idmk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matakuliah ALTER COLUMN idmk SET DEFAULT nextval('public.matakuliah_idmk_seq'::regclass);


--
-- Data for Name: dosen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dosen (nmdosen, mkajar, umur) FROM stdin;
\.
COPY public.dosen (nmdosen, mkajar, umur) FROM '$$PATH$$/3322.dat';

--
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
\.
COPY public.mahasiswa (nim, nama, alamat) FROM '$$PATH$$/3319.dat';

--
-- Data for Name: matakuliah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matakuliah (idmk, namamk, hari, jam) FROM stdin;
\.
COPY public.matakuliah (idmk, namamk, hari, jam) FROM '$$PATH$$/3321.dat';

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);


--
-- Name: matakuliah_idmk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matakuliah_idmk_seq', 1, false);


--
-- Name: mahasiswa mahasiswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);


--
-- Name: matakuliah matakuliah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (idmk);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 