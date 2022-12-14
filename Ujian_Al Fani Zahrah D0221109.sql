toc.dat                                                                                             0000600 0004000 0002000 00000021467 14341603623 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       +    "            
    z            utsku    15.0    15.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16542    utsku    DATABASE     |   CREATE DATABASE utsku WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE utsku;
                postgres    false         ?            1259    16582    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false         ?            1259    16581    barang_id_barang_seq    SEQUENCE     ?   CREATE SEQUENCE public.barang_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.barang_id_barang_seq;
       public          postgres    false    219                    0    0    barang_id_barang_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.barang_id_barang_seq OWNED BY public.barang.id_barang;
          public          postgres    false    218         ?            1259    16575 	   pelanggan    TABLE     ?   CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    nama_pelanggan character varying(50),
    phone character(15),
    alamat character varying(30)
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false         ?            1259    16574    pelanggan_id_pelanggan_seq    SEQUENCE     ?   CREATE SEQUENCE public.pelanggan_id_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.pelanggan_id_pelanggan_seq;
       public          postgres    false    217                    0    0    pelanggan_id_pelanggan_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.pelanggan_id_pelanggan_seq OWNED BY public.pelanggan.id_pelanggan;
          public          postgres    false    216         ?            1259    16589 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    nomor_pembayaran integer NOT NULL,
    id_pelanggan integer,
    id_barang integer,
    tgl_bayar date,
    jml_barang integer,
    total_bayar integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false         ?            1259    16588    pembayaran_nomor_pembayaran_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembayaran_nomor_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.pembayaran_nomor_pembayaran_seq;
       public          postgres    false    221                    0    0    pembayaran_nomor_pembayaran_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.pembayaran_nomor_pembayaran_seq OWNED BY public.pembayaran.nomor_pembayaran;
          public          postgres    false    220         ?            1259    16568    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30),
    phone character(15),
    alamat character varying(70)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false         ?            1259    16567    supplier_id_supplier_seq    SEQUENCE     ?   CREATE SEQUENCE public.supplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.supplier_id_supplier_seq;
       public          postgres    false    215                    0    0    supplier_id_supplier_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.supplier_id_supplier_seq OWNED BY public.supplier.id_supplier;
          public          postgres    false    214         v           2604    16585    barang id_barang    DEFAULT     t   ALTER TABLE ONLY public.barang ALTER COLUMN id_barang SET DEFAULT nextval('public.barang_id_barang_seq'::regclass);
 ?   ALTER TABLE public.barang ALTER COLUMN id_barang DROP DEFAULT;
       public          postgres    false    218    219    219         u           2604    16578    pelanggan id_pelanggan    DEFAULT     ?   ALTER TABLE ONLY public.pelanggan ALTER COLUMN id_pelanggan SET DEFAULT nextval('public.pelanggan_id_pelanggan_seq'::regclass);
 E   ALTER TABLE public.pelanggan ALTER COLUMN id_pelanggan DROP DEFAULT;
       public          postgres    false    217    216    217         w           2604    16592    pembayaran nomor_pembayaran    DEFAULT     ?   ALTER TABLE ONLY public.pembayaran ALTER COLUMN nomor_pembayaran SET DEFAULT nextval('public.pembayaran_nomor_pembayaran_seq'::regclass);
 J   ALTER TABLE public.pembayaran ALTER COLUMN nomor_pembayaran DROP DEFAULT;
       public          postgres    false    220    221    221         t           2604    16571    supplier id_supplier    DEFAULT     |   ALTER TABLE ONLY public.supplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.supplier_id_supplier_seq'::regclass);
 C   ALTER TABLE public.supplier ALTER COLUMN id_supplier DROP DEFAULT;
       public          postgres    false    215    214    215                   0    16582    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    219       3347.dat           0    16575 	   pelanggan 
   TABLE DATA           P   COPY public.pelanggan (id_pelanggan, nama_pelanggan, phone, alamat) FROM stdin;
    public          postgres    false    217       3345.dat           0    16589 
   pembayaran 
   TABLE DATA           s   COPY public.pembayaran (nomor_pembayaran, id_pelanggan, id_barang, tgl_bayar, jml_barang, total_bayar) FROM stdin;
    public          postgres    false    221       3349.dat           0    16568    supplier 
   TABLE DATA           M   COPY public.supplier (id_supplier, nama_supplier, phone, alamat) FROM stdin;
    public          postgres    false    215       3343.dat             0    0    barang_id_barang_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.barang_id_barang_seq', 1, false);
          public          postgres    false    218         !           0    0    pelanggan_id_pelanggan_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.pelanggan_id_pelanggan_seq', 1, false);
          public          postgres    false    216         "           0    0    pembayaran_nomor_pembayaran_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.pembayaran_nomor_pembayaran_seq', 1, false);
          public          postgres    false    220         #           0    0    supplier_id_supplier_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.supplier_id_supplier_seq', 1, false);
          public          postgres    false    214         }           2606    16587    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    219         {           2606    16580    pelanggan pelanggan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    217                    2606    16594    pembayaran pembayaran_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (nomor_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    221         y           2606    16573    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    215                                                                                                                                                                                                                 3347.dat                                                                                            0000600 0004000 0002000 00000000036 14341603623 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        103	GULA	500000	50	22540
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3345.dat                                                                                            0000600 0004000 0002000 00000000057 14341603623 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2250	Al Fani Zahra	081818774834   	MAMUJU
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3349.dat                                                                                            0000600 0004000 0002000 00000000054 14341603623 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1030811	2250	103	2022-11-03	50	2500000
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    3343.dat                                                                                            0000600 0004000 0002000 00000000062 14341603623 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        22540	PT SIPATUO	085223785123   	CAMPALAGIAN
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000017317 14341603623 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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

DROP DATABASE utsku;
--
-- Name: utsku; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE utsku WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';


ALTER DATABASE utsku OWNER TO postgres;

\connect utsku

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
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- Name: barang_id_barang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barang_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.barang_id_barang_seq OWNER TO postgres;

--
-- Name: barang_id_barang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barang_id_barang_seq OWNED BY public.barang.id_barang;


--
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    nama_pelanggan character varying(50),
    phone character(15),
    alamat character varying(30)
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_id_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_id_pelanggan_seq OWNER TO postgres;

--
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_id_pelanggan_seq OWNED BY public.pelanggan.id_pelanggan;


--
-- Name: pembayaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembayaran (
    nomor_pembayaran integer NOT NULL,
    id_pelanggan integer,
    id_barang integer,
    tgl_bayar date,
    jml_barang integer,
    total_bayar integer
);


ALTER TABLE public.pembayaran OWNER TO postgres;

--
-- Name: pembayaran_nomor_pembayaran_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pembayaran_nomor_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pembayaran_nomor_pembayaran_seq OWNER TO postgres;

--
-- Name: pembayaran_nomor_pembayaran_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pembayaran_nomor_pembayaran_seq OWNED BY public.pembayaran.nomor_pembayaran;


--
-- Name: supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30),
    phone character(15),
    alamat character varying(70)
);


ALTER TABLE public.supplier OWNER TO postgres;

--
-- Name: supplier_id_supplier_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_id_supplier_seq OWNER TO postgres;

--
-- Name: supplier_id_supplier_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supplier_id_supplier_seq OWNED BY public.supplier.id_supplier;


--
-- Name: barang id_barang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang ALTER COLUMN id_barang SET DEFAULT nextval('public.barang_id_barang_seq'::regclass);


--
-- Name: pelanggan id_pelanggan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN id_pelanggan SET DEFAULT nextval('public.pelanggan_id_pelanggan_seq'::regclass);


--
-- Name: pembayaran nomor_pembayaran; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembayaran ALTER COLUMN nomor_pembayaran SET DEFAULT nextval('public.pembayaran_nomor_pembayaran_seq'::regclass);


--
-- Name: supplier id_supplier; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.supplier_id_supplier_seq'::regclass);


--
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
\.
COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM '$$PATH$$/3347.dat';

--
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (id_pelanggan, nama_pelanggan, phone, alamat) FROM stdin;
\.
COPY public.pelanggan (id_pelanggan, nama_pelanggan, phone, alamat) FROM '$$PATH$$/3345.dat';

--
-- Data for Name: pembayaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembayaran (nomor_pembayaran, id_pelanggan, id_barang, tgl_bayar, jml_barang, total_bayar) FROM stdin;
\.
COPY public.pembayaran (nomor_pembayaran, id_pelanggan, id_barang, tgl_bayar, jml_barang, total_bayar) FROM '$$PATH$$/3349.dat';

--
-- Data for Name: supplier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supplier (id_supplier, nama_supplier, phone, alamat) FROM stdin;
\.
COPY public.supplier (id_supplier, nama_supplier, phone, alamat) FROM '$$PATH$$/3343.dat';

--
-- Name: barang_id_barang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barang_id_barang_seq', 1, false);


--
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_id_pelanggan_seq', 1, false);


--
-- Name: pembayaran_nomor_pembayaran_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pembayaran_nomor_pembayaran_seq', 1, false);


--
-- Name: supplier_id_supplier_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supplier_id_supplier_seq', 1, false);


--
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);


--
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);


--
-- Name: pembayaran pembayaran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (nomor_pembayaran);


--
-- Name: supplier supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 