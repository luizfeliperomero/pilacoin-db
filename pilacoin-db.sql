--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-11-23 18:14:08

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

CREATE DATABASE "Mining" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Mining" OWNER TO postgres;

\connect "Mining"

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
-- TOC entry 222 (class 1259 OID 34897)
-- Name: block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.block (
    nonce numeric(38,0),
    nonce_bloco_anterior numeric(38,0),
    block_id bigint NOT NULL,
    numero_bloco bigint,
    nome_usuario_minerador character varying(255),
    chave_usuario_minerador bytea
);


ALTER TABLE public.block OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 33493)
-- Name: block_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.block_block_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.block_block_id_seq OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 34894)
-- Name: block_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.block_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.block_seq OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 34904)
-- Name: block_transacoes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.block_transacoes (
    block_block_id bigint NOT NULL,
    transacoes_id bigint NOT NULL
);


ALTER TABLE public.block_transacoes OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25245)
-- Name: pila_coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pila_coin (
    data_criacao timestamp(6) without time zone,
    id bigint NOT NULL,
    nome_criador character varying(255),
    nonce character varying(255),
    status character varying(255),
    chave_criador bytea
);


ALTER TABLE public.pila_coin OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25244)
-- Name: pila_coin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pila_coin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pila_coin_id_seq OWNER TO postgres;

--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 216
-- Name: pila_coin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pila_coin_id_seq OWNED BY public.pila_coin.id;


--
-- TOC entry 214 (class 1259 OID 25228)
-- Name: pila_coin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pila_coin_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pila_coin_seq OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 34909)
-- Name: pilacoin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pilacoin (
    data_criacao timestamp(6) without time zone,
    pilacoin_id bigint NOT NULL,
    nome_criador character varying(255),
    nonce character varying(255),
    status character varying(255),
    chave_criador bytea
);


ALTER TABLE public.pilacoin OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 25236)
-- Name: pilacoin_id_pilacoin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pilacoin_id_pilacoin_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pilacoin_id_pilacoin_seq OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 34916)
-- Name: pilacoin_mining_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pilacoin_mining_data (
    pilacoins_mined integer NOT NULL,
    date timestamp(6) without time zone,
    pilacoin_mining_data_id bigint NOT NULL,
    time_elapsed character varying(255)
);


ALTER TABLE public.pilacoin_mining_data OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 34921)
-- Name: pilacoin_mining_data_pilacoins_found_per_difficulty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pilacoin_mining_data_pilacoins_found_per_difficulty (
    pilacoins_found_per_difficulty numeric(100,0),
    pilacoins_found_per_difficulty_key numeric(100,0) NOT NULL,
    pilacoin_mining_data_pilacoin_mining_data_id bigint NOT NULL
);


ALTER TABLE public.pilacoin_mining_data_pilacoins_found_per_difficulty OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 34926)
-- Name: pilacoin_mining_data_pilacoins_found_per_thread; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pilacoin_mining_data_pilacoins_found_per_thread (
    pilacoins_found_per_thread integer,
    pilacoin_mining_data_pilacoin_mining_data_id bigint NOT NULL,
    pilacoins_found_per_thread_key character varying(255) NOT NULL
);


ALTER TABLE public.pilacoin_mining_data_pilacoins_found_per_thread OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 34895)
-- Name: pilacoin_mining_data_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pilacoin_mining_data_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pilacoin_mining_data_seq OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 34896)
-- Name: pilacoin_pilacoin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pilacoin_pilacoin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pilacoin_pilacoin_id_seq OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 34931)
-- Name: transaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaction (
    data_transacao timestamp(6) without time zone,
    id bigint NOT NULL,
    assinatura character varying(255),
    chave_usuario_destino character varying(255),
    chave_usuario_origem character varying(255),
    nonce_pila character varying(255),
    status character varying(255)
);


ALTER TABLE public.transaction OWNER TO postgres;

--
-- TOC entry 3207 (class 2604 OID 34998)
-- Name: pila_coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pila_coin ALTER COLUMN id SET DEFAULT nextval('public.pila_coin_id_seq'::regclass);


--
-- TOC entry 3211 (class 2606 OID 34903)
-- Name: block block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.block
    ADD CONSTRAINT block_pkey PRIMARY KEY (block_id);


--
-- TOC entry 3213 (class 2606 OID 34908)
-- Name: block_transacoes block_transacoes_transacoes_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.block_transacoes
    ADD CONSTRAINT block_transacoes_transacoes_id_key UNIQUE (transacoes_id);


--
-- TOC entry 3209 (class 2606 OID 25252)
-- Name: pila_coin pila_coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pila_coin
    ADD CONSTRAINT pila_coin_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 34967)
-- Name: pilacoin_mining_data_pilacoins_found_per_difficulty pilacoin_mining_data_pilacoins_found_per_difficulty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pilacoin_mining_data_pilacoins_found_per_difficulty
    ADD CONSTRAINT pilacoin_mining_data_pilacoins_found_per_difficulty_pkey PRIMARY KEY (pilacoins_found_per_difficulty_key, pilacoin_mining_data_pilacoin_mining_data_id);


--
-- TOC entry 3221 (class 2606 OID 34930)
-- Name: pilacoin_mining_data_pilacoins_found_per_thread pilacoin_mining_data_pilacoins_found_per_thread_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pilacoin_mining_data_pilacoins_found_per_thread
    ADD CONSTRAINT pilacoin_mining_data_pilacoins_found_per_thread_pkey PRIMARY KEY (pilacoin_mining_data_pilacoin_mining_data_id, pilacoins_found_per_thread_key);


--
-- TOC entry 3217 (class 2606 OID 34920)
-- Name: pilacoin_mining_data pilacoin_mining_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pilacoin_mining_data
    ADD CONSTRAINT pilacoin_mining_data_pkey PRIMARY KEY (pilacoin_mining_data_id);


--
-- TOC entry 3215 (class 2606 OID 34915)
-- Name: pilacoin pilacoin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pilacoin
    ADD CONSTRAINT pilacoin_pkey PRIMARY KEY (pilacoin_id);


--
-- TOC entry 3223 (class 2606 OID 34937)
-- Name: transaction transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 34943)
-- Name: block_transacoes fk77pl353vanlk7go9fba25q09h; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.block_transacoes
    ADD CONSTRAINT fk77pl353vanlk7go9fba25q09h FOREIGN KEY (block_block_id) REFERENCES public.block(block_id);


--
-- TOC entry 3225 (class 2606 OID 34938)
-- Name: block_transacoes fkkfmy68463x2mwkecgijlvytm6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.block_transacoes
    ADD CONSTRAINT fkkfmy68463x2mwkecgijlvytm6 FOREIGN KEY (transacoes_id) REFERENCES public.transaction(id);


--
-- TOC entry 3226 (class 2606 OID 34948)
-- Name: pilacoin_mining_data_pilacoins_found_per_difficulty fkmnhhqi6ompc6mwulosmfecqcw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pilacoin_mining_data_pilacoins_found_per_difficulty
    ADD CONSTRAINT fkmnhhqi6ompc6mwulosmfecqcw FOREIGN KEY (pilacoin_mining_data_pilacoin_mining_data_id) REFERENCES public.pilacoin_mining_data(pilacoin_mining_data_id);


--
-- TOC entry 3227 (class 2606 OID 34953)
-- Name: pilacoin_mining_data_pilacoins_found_per_thread fkobqgypwe2k2fpl6bl0fc7h2sx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pilacoin_mining_data_pilacoins_found_per_thread
    ADD CONSTRAINT fkobqgypwe2k2fpl6bl0fc7h2sx FOREIGN KEY (pilacoin_mining_data_pilacoin_mining_data_id) REFERENCES public.pilacoin_mining_data(pilacoin_mining_data_id);


-- Completed on 2023-11-23 18:14:09

--
-- PostgreSQL database dump complete
--

