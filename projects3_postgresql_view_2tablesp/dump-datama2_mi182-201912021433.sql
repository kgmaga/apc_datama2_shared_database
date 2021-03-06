PGDMP         !                w            datama2_mi182 %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)    12.0     �           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16388    datama2_mi182    DATABASE     p   CREATE DATABASE datama2_mi182 WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE datama2_mi182;
                datama2mi182    false                        2615    16741    kgmaga    SCHEMA        CREATE SCHEMA kgmaga;
    DROP SCHEMA kgmaga;
                datama2mi182    false            �           1259    23775    agent    TABLE     �   CREATE TABLE kgmaga.agent (
    "idAgent" integer NOT NULL,
    "fnameAgent" character varying,
    "lnameAgent" character varying,
    "cNumAgent" integer
);
    DROP TABLE kgmaga.agent;
       kgmaga            datama2mi182    false    22            �           1259    23796    customer    TABLE     �   CREATE TABLE kgmaga.customer (
    idcustomer integer NOT NULL,
    fnamecustomer character varying,
    lnamecustomer character varying,
    "cNumcustomer" integer
);
    DROP TABLE kgmaga.customer;
       kgmaga            datama2mi182    false    22            �           1259    23812 	   cus_agent    VIEW     �   CREATE VIEW kgmaga.cus_agent AS
 SELECT customer.fnamecustomer,
    customer.idcustomer
   FROM kgmaga.customer
  WHERE (customer.idcustomer > 1);
    DROP VIEW kgmaga.cus_agent;
       kgmaga          datama2mi182    false    491    491    22            �           1259    23816    customer_idcustomer_seq    SEQUENCE     �   CREATE SEQUENCE kgmaga.customer_idcustomer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE kgmaga.customer_idcustomer_seq;
       kgmaga          datama2mi182    false    491    22            �           0    0    customer_idcustomer_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE kgmaga.customer_idcustomer_seq OWNED BY kgmaga.customer.idcustomer;
          kgmaga          datama2mi182    false    495            �           1259    23820    customer_view    VIEW     �   CREATE VIEW kgmaga.customer_view AS
 SELECT customer.idcustomer,
    customer.fnamecustomer,
    customer.lnamecustomer,
    customer."cNumcustomer"
   FROM kgmaga.customer
  WHERE (customer.idcustomer > 0);
     DROP VIEW kgmaga.customer_view;
       kgmaga          datama2mi182    false    491    491    491    491    22            �          0    23775    agent 
   TABLE DATA           S   COPY kgmaga.agent ("idAgent", "fnameAgent", "lnameAgent", "cNumAgent") FROM stdin;
    kgmaga          datama2mi182    false    490            �          0    23796    customer 
   TABLE DATA           \   COPY kgmaga.customer (idcustomer, fnamecustomer, lnamecustomer, "cNumcustomer") FROM stdin;
    kgmaga          datama2mi182    false    491            �           0    0    customer_idcustomer_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('kgmaga.customer_idcustomer_seq', 1, false);
          kgmaga          datama2mi182    false    495            6           2606    23826    agent agent_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY kgmaga.agent
    ADD CONSTRAINT agent_pkey PRIMARY KEY ("idAgent");
 :   ALTER TABLE ONLY kgmaga.agent DROP CONSTRAINT agent_pkey;
       kgmaga            datama2mi182    false    490            8           2606    23828    customer customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY kgmaga.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (idcustomer);
 @   ALTER TABLE ONLY kgmaga.customer DROP CONSTRAINT customer_pkey;
       kgmaga            datama2mi182    false    491            �      x������ � �      �      x������ � �          �           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16388    datama2_mi182    DATABASE     p   CREATE DATABASE datama2_mi182 WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE datama2_mi182;
                datama2mi182    false                        2615    16741    kgmaga    SCHEMA        CREATE SCHEMA kgmaga;
    DROP SCHEMA kgmaga;
                datama2mi182    false            �           1259    23775    agent    TABLE     �   CREATE TABLE kgmaga.agent (
    "idAgent" integer NOT NULL,
    "fnameAgent" character varying,
    "lnameAgent" character varying,
    "cNumAgent" integer
);
    DROP TABLE kgmaga.agent;
       kgmaga            datama2mi182    false    22            �           1259    23796    customer    TABLE     �   CREATE TABLE kgmaga.customer (
    idcustomer integer NOT NULL,
    fnamecustomer character varying,
    lnamecustomer character varying,
    "cNumcustomer" integer
);
    DROP TABLE kgmaga.customer;
       kgmaga            datama2mi182    false    22            �           1259    23812 	   cus_agent    VIEW     �   CREATE VIEW kgmaga.cus_agent AS
 SELECT customer.fnamecustomer,
    customer.idcustomer
   FROM kgmaga.customer
  WHERE (customer.idcustomer > 1);
    DROP VIEW kgmaga.cus_agent;
       kgmaga          datama2mi182    false    491    491    22            �           1259    23816    customer_idcustomer_seq    SEQUENCE     �   CREATE SEQUENCE kgmaga.customer_idcustomer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE kgmaga.customer_idcustomer_seq;
       kgmaga          datama2mi182    false    491    22            �           0    0    customer_idcustomer_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE kgmaga.customer_idcustomer_seq OWNED BY kgmaga.customer.idcustomer;
          kgmaga          datama2mi182    false    495            �           1259    23820    customer_view    VIEW     �   CREATE VIEW kgmaga.customer_view AS
 SELECT customer.idcustomer,
    customer.fnamecustomer,
    customer.lnamecustomer,
    customer."cNumcustomer"
   FROM kgmaga.customer
  WHERE (customer.idcustomer > 0);
     DROP VIEW kgmaga.customer_view;
       kgmaga          datama2mi182    false    491    491    491    491    22            �          0    23775    agent 
   TABLE DATA           S   COPY kgmaga.agent ("idAgent", "fnameAgent", "lnameAgent", "cNumAgent") FROM stdin;
    kgmaga          datama2mi182    false    490            �          0    23796    customer 
   TABLE DATA           \   COPY kgmaga.customer (idcustomer, fnamecustomer, lnamecustomer, "cNumcustomer") FROM stdin;
    kgmaga          datama2mi182    false    491           �           0    0    customer_idcustomer_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('kgmaga.customer_idcustomer_seq', 1, false);
          kgmaga          datama2mi182    false    495            6           2606    23826    agent agent_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY kgmaga.agent
    ADD CONSTRAINT agent_pkey PRIMARY KEY ("idAgent");
 :   ALTER TABLE ONLY kgmaga.agent DROP CONSTRAINT agent_pkey;
       kgmaga            datama2mi182    false    490            8           2606    23828    customer customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY kgmaga.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (idcustomer);
 @   ALTER TABLE ONLY kgmaga.customer DROP CONSTRAINT customer_pkey;
       kgmaga            datama2mi182    false    491           