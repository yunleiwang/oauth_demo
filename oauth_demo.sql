--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: wangyunlei; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE schema_migrations OWNER TO wangyunlei;

--
-- Name: sys_users; Type: TABLE; Schema: public; Owner: wangyunlei; Tablespace: 
--

CREATE TABLE sys_users (
    id integer NOT NULL,
    username character varying(255),
    password character varying(255),
    email character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE sys_users OWNER TO wangyunlei;

--
-- Name: sys_users_id_seq; Type: SEQUENCE; Schema: public; Owner: wangyunlei
--

CREATE SEQUENCE sys_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sys_users_id_seq OWNER TO wangyunlei;

--
-- Name: sys_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wangyunlei
--

ALTER SEQUENCE sys_users_id_seq OWNED BY sys_users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wangyunlei
--

ALTER TABLE ONLY sys_users ALTER COLUMN id SET DEFAULT nextval('sys_users_id_seq'::regclass);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: wangyunlei
--

COPY schema_migrations (version) FROM stdin;
20160518130228
\.


--
-- Data for Name: sys_users; Type: TABLE DATA; Schema: public; Owner: wangyunlei
--

COPY sys_users (id, username, password, email, created_at, updated_at) FROM stdin;
\.


--
-- Name: sys_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wangyunlei
--

SELECT pg_catalog.setval('sys_users_id_seq', 1, false);


--
-- Name: sys_users_pkey; Type: CONSTRAINT; Schema: public; Owner: wangyunlei; Tablespace: 
--

ALTER TABLE ONLY sys_users
    ADD CONSTRAINT sys_users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: wangyunlei; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: wangyunlei
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM wangyunlei;
GRANT ALL ON SCHEMA public TO wangyunlei;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

