toc.dat                                                                                             0000600 0004000 0002000 00000016441 14337716565 0014466 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           $            
    z         	   indomerit    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16464 	   indomerit    DATABASE     �   CREATE DATABASE indomerit WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE indomerit;
                postgres    false                     3079    16479 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                    0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2         �            1259    16516    bahan_pokok    TABLE     �   CREATE TABLE public.bahan_pokok (
    kode_barang integer NOT NULL,
    nama_produk character varying(30),
    jenis_produk character varying(30),
    harga integer
);
    DROP TABLE public.bahan_pokok;
       public         heap    postgres    false         �            1259    16515    bahan_pokok_kode_barang_seq    SEQUENCE     �   CREATE SEQUENCE public.bahan_pokok_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.bahan_pokok_kode_barang_seq;
       public          postgres    false    220                    0    0    bahan_pokok_kode_barang_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.bahan_pokok_kode_barang_seq OWNED BY public.bahan_pokok.kode_barang;
          public          postgres    false    219         �            1259    16492    makanan_ringan    TABLE     �   CREATE TABLE public.makanan_ringan (
    kode_barang integer NOT NULL,
    nama_produk character varying(50),
    jenis_produk character varying(30),
    harga integer
);
 "   DROP TABLE public.makanan_ringan;
       public         heap    postgres    false         �            1259    16495    makanan_ringan_kode_barang_seq    SEQUENCE     �   CREATE SEQUENCE public.makanan_ringan_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.makanan_ringan_kode_barang_seq;
       public          postgres    false    215                    0    0    makanan_ringan_kode_barang_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.makanan_ringan_kode_barang_seq OWNED BY public.makanan_ringan.kode_barang;
          public          postgres    false    216         �            1259    16500    minuman    TABLE     �   CREATE TABLE public.minuman (
    kode_barang integer NOT NULL,
    nama_produk character varying(50),
    jenis_produk character varying(30),
    harga integer
);
    DROP TABLE public.minuman;
       public         heap    postgres    false         �            1259    16503    minuman_kode_barang_seq    SEQUENCE     �   CREATE SEQUENCE public.minuman_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.minuman_kode_barang_seq;
       public          postgres    false    217                    0    0    minuman_kode_barang_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.minuman_kode_barang_seq OWNED BY public.minuman.kode_barang;
          public          postgres    false    218         r           2604    16519    bahan_pokok kode_barang    DEFAULT     �   ALTER TABLE ONLY public.bahan_pokok ALTER COLUMN kode_barang SET DEFAULT nextval('public.bahan_pokok_kode_barang_seq'::regclass);
 F   ALTER TABLE public.bahan_pokok ALTER COLUMN kode_barang DROP DEFAULT;
       public          postgres    false    219    220    220         p           2604    16504    makanan_ringan kode_barang    DEFAULT     �   ALTER TABLE ONLY public.makanan_ringan ALTER COLUMN kode_barang SET DEFAULT nextval('public.makanan_ringan_kode_barang_seq'::regclass);
 I   ALTER TABLE public.makanan_ringan ALTER COLUMN kode_barang DROP DEFAULT;
       public          postgres    false    216    215         q           2604    16506    minuman kode_barang    DEFAULT     z   ALTER TABLE ONLY public.minuman ALTER COLUMN kode_barang SET DEFAULT nextval('public.minuman_kode_barang_seq'::regclass);
 B   ALTER TABLE public.minuman ALTER COLUMN kode_barang DROP DEFAULT;
       public          postgres    false    218    217                   0    16516    bahan_pokok 
   TABLE DATA           T   COPY public.bahan_pokok (kode_barang, nama_produk, jenis_produk, harga) FROM stdin;
    public          postgres    false    220       3340.dat           0    16492    makanan_ringan 
   TABLE DATA           W   COPY public.makanan_ringan (kode_barang, nama_produk, jenis_produk, harga) FROM stdin;
    public          postgres    false    215       3335.dat 	          0    16500    minuman 
   TABLE DATA           P   COPY public.minuman (kode_barang, nama_produk, jenis_produk, harga) FROM stdin;
    public          postgres    false    217       3337.dat            0    0    bahan_pokok_kode_barang_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.bahan_pokok_kode_barang_seq', 1, false);
          public          postgres    false    219                    0    0    makanan_ringan_kode_barang_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.makanan_ringan_kode_barang_seq', 1, false);
          public          postgres    false    216                    0    0    minuman_kode_barang_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.minuman_kode_barang_seq', 1, false);
          public          postgres    false    218         x           2606    16521    bahan_pokok bahan_pokok_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.bahan_pokok
    ADD CONSTRAINT bahan_pokok_pkey PRIMARY KEY (kode_barang);
 F   ALTER TABLE ONLY public.bahan_pokok DROP CONSTRAINT bahan_pokok_pkey;
       public            postgres    false    220         t           2606    16510 "   makanan_ringan makanan_ringan_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.makanan_ringan
    ADD CONSTRAINT makanan_ringan_pkey PRIMARY KEY (kode_barang);
 L   ALTER TABLE ONLY public.makanan_ringan DROP CONSTRAINT makanan_ringan_pkey;
       public            postgres    false    215         v           2606    16514    minuman minuman_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.minuman
    ADD CONSTRAINT minuman_pkey PRIMARY KEY (kode_barang);
 >   ALTER TABLE ONLY public.minuman DROP CONSTRAINT minuman_pkey;
       public            postgres    false    217                                                                                                                                                                                                                                       3340.dat                                                                                            0000600 0004000 0002000 00000000405 14337716565 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        25742	Beras Bulog 5Kg	Beras	47000
26424	Bimoli 5L	Minyak goreng	120000
26714	Bimoli 2L	Minyak goreng	50000
82523	Gulaku 1Kg	Gula Pasir	12000
27356	Bimoli 1L	Minyak Goreng	30000
36524	Segitiga Biru 1Kg	Tepung terigu	10000
32132	Beras Bulog 10Kg	Beras	90000
\.


                                                                                                                                                                                                                                                           3335.dat                                                                                            0000600 0004000 0002000 00000000321 14337716565 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        68378	Chocolatos	Wafer Roll	2200
89932	Matos	Keripik singkong	13000
37772	Nextar	Brownis coklat	7000
49902	Potabee	Keripik kentang	6000
76821	Pringles	Keripik kentang	5000
39912	Lays	Keripik kentang	7000
\.


                                                                                                                                                                                                                                                                                                               3337.dat                                                                                            0000600 0004000 0002000 00000000410 14337716565 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        43523	AQUA 600 ml	Air mineral	3500
54322	AQUA 240 ml	Air Mineral	1800
54324	AQUA 1500 ml	Air mineral	7000
69989	Club 600 ml	Air Mineral	3000
44903	Ades 600 ml	Air mineral	3200
50394	Coca Cola 250ml	Minuman Bersoda	3000
56798	Sprite 250ml	Minuman Bersoda	3000
\.


                                                                                                                                                                                                                                                        restore.sql                                                                                         0000600 0004000 0002000 00000014710 14337716565 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE indomerit;
--
-- Name: indomerit; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE indomerit WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';


ALTER DATABASE indomerit OWNER TO postgres;

\connect indomerit

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

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bahan_pokok; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bahan_pokok (
    kode_barang integer NOT NULL,
    nama_produk character varying(30),
    jenis_produk character varying(30),
    harga integer
);


ALTER TABLE public.bahan_pokok OWNER TO postgres;

--
-- Name: bahan_pokok_kode_barang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bahan_pokok_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bahan_pokok_kode_barang_seq OWNER TO postgres;

--
-- Name: bahan_pokok_kode_barang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bahan_pokok_kode_barang_seq OWNED BY public.bahan_pokok.kode_barang;


--
-- Name: makanan_ringan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.makanan_ringan (
    kode_barang integer NOT NULL,
    nama_produk character varying(50),
    jenis_produk character varying(30),
    harga integer
);


ALTER TABLE public.makanan_ringan OWNER TO postgres;

--
-- Name: makanan_ringan_kode_barang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.makanan_ringan_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.makanan_ringan_kode_barang_seq OWNER TO postgres;

--
-- Name: makanan_ringan_kode_barang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.makanan_ringan_kode_barang_seq OWNED BY public.makanan_ringan.kode_barang;


--
-- Name: minuman; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.minuman (
    kode_barang integer NOT NULL,
    nama_produk character varying(50),
    jenis_produk character varying(30),
    harga integer
);


ALTER TABLE public.minuman OWNER TO postgres;

--
-- Name: minuman_kode_barang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.minuman_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.minuman_kode_barang_seq OWNER TO postgres;

--
-- Name: minuman_kode_barang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.minuman_kode_barang_seq OWNED BY public.minuman.kode_barang;


--
-- Name: bahan_pokok kode_barang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bahan_pokok ALTER COLUMN kode_barang SET DEFAULT nextval('public.bahan_pokok_kode_barang_seq'::regclass);


--
-- Name: makanan_ringan kode_barang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.makanan_ringan ALTER COLUMN kode_barang SET DEFAULT nextval('public.makanan_ringan_kode_barang_seq'::regclass);


--
-- Name: minuman kode_barang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.minuman ALTER COLUMN kode_barang SET DEFAULT nextval('public.minuman_kode_barang_seq'::regclass);


--
-- Data for Name: bahan_pokok; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bahan_pokok (kode_barang, nama_produk, jenis_produk, harga) FROM stdin;
\.
COPY public.bahan_pokok (kode_barang, nama_produk, jenis_produk, harga) FROM '$$PATH$$/3340.dat';

--
-- Data for Name: makanan_ringan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.makanan_ringan (kode_barang, nama_produk, jenis_produk, harga) FROM stdin;
\.
COPY public.makanan_ringan (kode_barang, nama_produk, jenis_produk, harga) FROM '$$PATH$$/3335.dat';

--
-- Data for Name: minuman; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.minuman (kode_barang, nama_produk, jenis_produk, harga) FROM stdin;
\.
COPY public.minuman (kode_barang, nama_produk, jenis_produk, harga) FROM '$$PATH$$/3337.dat';

--
-- Name: bahan_pokok_kode_barang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bahan_pokok_kode_barang_seq', 1, false);


--
-- Name: makanan_ringan_kode_barang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.makanan_ringan_kode_barang_seq', 1, false);


--
-- Name: minuman_kode_barang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.minuman_kode_barang_seq', 1, false);


--
-- Name: bahan_pokok bahan_pokok_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bahan_pokok
    ADD CONSTRAINT bahan_pokok_pkey PRIMARY KEY (kode_barang);


--
-- Name: makanan_ringan makanan_ringan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.makanan_ringan
    ADD CONSTRAINT makanan_ringan_pkey PRIMARY KEY (kode_barang);


--
-- Name: minuman minuman_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.minuman
    ADD CONSTRAINT minuman_pkey PRIMARY KEY (kode_barang);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        