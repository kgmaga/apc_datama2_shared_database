--
-- datama2mi182QL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

-- Started on 2019-11-14 14:34:58

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



--
-- TOC entry 204 (class 1259 OID 24605)
-- Name: agent; Type: TABLE; Schema: kgmaga; Owner: datama2mi182
--

CREATE TABLE kgmaga.agent (
    "idAgent" integer NOT NULL,
    "fnameAgent" character varying,
    "lnameAgent" character varying,
    "cNumAgent" integer
);


ALTER TABLE kgmaga.agent OWNER TO datama2mi182;

--
-- TOC entry 203 (class 1259 OID 24588)
-- Name: customer; Type: TABLE; Schema: kgmaga; Owner: datama2mi182
--

CREATE TABLE kgmaga.customer (
    idcustomer integer NOT NULL,
    fnamecustomer character varying,
    lnamecustomer character varying,
    "cNumcustomer" integer
);


ALTER TABLE kgmaga.customer OWNER TO datama2mi182;

--
-- TOC entry 205 (class 1259 OID 24629)
-- Name: cus_agent; Type: VIEW; Schema: kgmaga; Owner: datama2mi182
--

CREATE VIEW kgmaga.cus_agent AS
 SELECT customer.fnamecustomer,
    customer.idcustomer
   FROM kgmaga.customer
  WHERE (customer.idcustomer > 1);


ALTER TABLE kgmaga.cus_agent OWNER TO datama2mi182;

--
-- TOC entry 202 (class 1259 OID 24586)
-- Name: customer_idcustomer_seq; Type: SEQUENCE; Schema: kgmaga; Owner: datama2mi182
--

CREATE SEQUENCE kgmaga.customer_idcustomer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kgmaga.customer_idcustomer_seq OWNER TO datama2mi182;

--
-- TOC entry 2842 (class 0 OID 0)
-- Dependencies: 202
-- Name: customer_idcustomer_seq; Type: SEQUENCE OWNED BY; Schema: kgmaga; Owner: datama2mi182
--

ALTER SEQUENCE kgmaga.customer_idcustomer_seq OWNED BY kgmaga.customer.idcustomer;


--
-- TOC entry 206 (class 1259 OID 24633)
-- Name: customer_view; Type: VIEW; Schema: kgmaga; Owner: datama2mi182
--

CREATE VIEW kgmaga.customer_view AS
 SELECT customer.idcustomer,
    customer.fnamecustomer,
    customer.lnamecustomer,
    customer."cNumcustomer"
   FROM kgmaga.customer
  WHERE (customer.idcustomer > 0);


ALTER TABLE kgmaga.customer_view OWNER TO datama2mi182;

--
-- TOC entry 2701 (class 2604 OID 24591)
-- Name: customer idcustomer; Type: DEFAULT; Schema: kgmaga; Owner: datama2mi182
--

ALTER TABLE ONLY kgmaga.customer ALTER COLUMN idcustomer SET DEFAULT nextval('kgmaga.customer_idcustomer_seq'::regclass);


--
-- TOC entry 2836 (class 0 OID 24605)
-- Dependencies: 204
-- Data for Name: agent; Type: TABLE DATA; Schema: kgmaga; Owner: datama2mi182
--

COPY kgmaga.agent ("idAgent", "fnameAgent", "lnameAgent", "cNumAgent") FROM stdin;
1	Felix	Castro	1
2	Joseph	Elise	2
3	Ricard	Yulle	3
\.


--
-- TOC entry 2835 (class 0 OID 24588)
-- Dependencies: 203
-- Data for Name: customer; Type: TABLE DATA; Schema: kgmaga; Owner: datama2mi182
--

COPY kgmaga.customer (idcustomer, fnamecustomer, lnamecustomer, "cNumcustomer") FROM stdin;
1	Francis	Louise	1
2	Red	Lou	2
3	Michelle	Elyssa	3
\.


--
-- TOC entry 2843 (class 0 OID 0)
-- Dependencies: 202
-- Name: customer_idcustomer_seq; Type: SEQUENCE SET; Schema: kgmaga; Owner: datama2mi182
--

SELECT pg_catalog.setval('kgmaga.customer_idcustomer_seq', 1, false);


--
-- TOC entry 2705 (class 2606 OID 24612)
-- Name: agent agent_pkey; Type: CONSTRAINT; Schema: kgmaga; Owner: datama2mi182
--

ALTER TABLE ONLY kgmaga.agent
    ADD CONSTRAINT agent_pkey PRIMARY KEY ("idAgent");


--
-- TOC entry 2703 (class 2606 OID 24596)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: kgmaga; Owner: datama2mi182
--

ALTER TABLE ONLY kgmaga.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (idcustomer);


-- Completed on 2019-11-14 14:34:59

--
-- datama2mi182QL database dump complete
--

