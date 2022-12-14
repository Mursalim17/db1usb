PGDMP     0                    z            retail1    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16428    retail1    DATABASE     �   CREATE DATABASE retail1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE retail1;
                postgres    false            �            1259    16434    barang    TABLE     �   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(30),
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    16444 
   pembayaran    TABLE     �   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            �            1259    16439    pembeli    TABLE     �   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30),
    jk character(1),
    alamat character varying(20)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            �            1259    16429    supplier    TABLE     �   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30),
    no_hp character(15),
    alamat character varying(30)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    16449 	   transaksi    TABLE     �   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tangggal date
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16434    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    215   �                 0    16444 
   pembayaran 
   TABLE DATA           ]   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    217   �                 0    16439    pembeli 
   TABLE DATA           G   COPY public.pembeli (id_pembeli, nama_pembeli, jk, alamat) FROM stdin;
    public          postgres    false    216   �                 0    16429    supplier 
   TABLE DATA           M   COPY public.supplier (id_supplier, nama_supplier, no_hp, alamat) FROM stdin;
    public          postgres    false    214   -                 0    16449 	   transaksi 
   TABLE DATA           R   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tangggal) FROM stdin;
    public          postgres    false    218   .       w           2606    16438    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215            {           2606    16448    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    217            y           2606    16443    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    216            u           2606    16433    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    214            }           2606    16453    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    218               �   x�E��j�0E�W_�/(=lg٬��BR�E7rp�	��������	xs�5s��&�.1�X�ˁ))�޻��~AFyQ���G�z����,NsZ�`[F9���πu�ߞq�s[�d�~8���SL}��+�2�*V5����6����o5��8.����n��_���8vkX#�Y�ڐ��K�N�8���%�2݉��d�ΩgQ�#��ܞ�õˠuKS3���s�ͮ�q�%�#	����R��lS         �   x�E���0�oإ'LBHv���8W�
�O��� n!��d4�[����є�Q2(�efɤD�DIP�+n�U�(�A�$e��`�l�i�Sr4a�����(ha��px��)��+�ګ)�f��)������ߏ�� s�C2         �   x�e˽�0����bLşVdr`q��)i�9��ު�zp}�V�_�]�=u�8��:0�����6	���xZQ�pZ���/�P��%ns��vT������t@H4����"S�EW��;P�U�TI��_:��R�`Y�         �   x�uѽn�@��<�����3#��$"H*�C7w�.���}�!�u��[�8��,A\�Ęt/i���Ұ�����|�Ȥ
�p��aK�z�2L��ή�gb�/�����(E�E��x�R�J�p_�� נ���x
���t�r�;δ�%I?7�-t7���?��ă<bQ*f�u���S��;��,J=��7X���~r��,��J��nO�'�?�V9|�m��&Ӫ�p�Q���b         �   x�Eϱ�0����?IQ�.��\ ',�yݕ�
Jrs�e�b�9�7'p��<���'<���n-����y�^�j>��7������a��Gɮ����\RJ�\�KJy3;�R�̎��T6�#.)5��x��
n:H     