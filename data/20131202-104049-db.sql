--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
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


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: task; Type: TABLE; Schema: public; Owner: opengeo; Tablespace: 
--

CREATE TABLE task (
    id integer NOT NULL,
    label text,
    ts_created timestamp with time zone DEFAULT now()
);


ALTER TABLE public.task OWNER TO opengeo;

--
-- Name: task_contribution; Type: TABLE; Schema: public; Owner: opengeo; Tablespace: 
--

CREATE TABLE task_contribution (
    id integer NOT NULL,
    task_id integer,
    textual text,
    photo_link text
);


ALTER TABLE public.task_contribution OWNER TO opengeo;

--
-- Name: task_contribution_id_seq; Type: SEQUENCE; Schema: public; Owner: opengeo
--

CREATE SEQUENCE task_contribution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_contribution_id_seq OWNER TO opengeo;

--
-- Name: task_contribution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: opengeo
--

ALTER SEQUENCE task_contribution_id_seq OWNED BY task_contribution.id;


--
-- Name: task_contribution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: opengeo
--

SELECT pg_catalog.setval('task_contribution_id_seq', 1, false);


--
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: opengeo
--

CREATE SEQUENCE task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_id_seq OWNER TO opengeo;

--
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: opengeo
--

ALTER SEQUENCE task_id_seq OWNED BY task.id;


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: opengeo
--

SELECT pg_catalog.setval('task_id_seq', 21, true);


--
-- Name: task_undertaken; Type: TABLE; Schema: public; Owner: opengeo; Tablespace: 
--

CREATE TABLE task_undertaken (
    id integer NOT NULL,
    task_id integer,
    ts_undertaken timestamp with time zone
);


ALTER TABLE public.task_undertaken OWNER TO opengeo;

--
-- Name: task_undertaken_id_seq; Type: SEQUENCE; Schema: public; Owner: opengeo
--

CREATE SEQUENCE task_undertaken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_undertaken_id_seq OWNER TO opengeo;

--
-- Name: task_undertaken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: opengeo
--

ALTER SEQUENCE task_undertaken_id_seq OWNED BY task_undertaken.id;


--
-- Name: task_undertaken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: opengeo
--

SELECT pg_catalog.setval('task_undertaken_id_seq', 1, false);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: opengeo
--

ALTER TABLE ONLY task ALTER COLUMN id SET DEFAULT nextval('task_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: opengeo
--

ALTER TABLE ONLY task_contribution ALTER COLUMN id SET DEFAULT nextval('task_contribution_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: opengeo
--

ALTER TABLE ONLY task_undertaken ALTER COLUMN id SET DEFAULT nextval('task_undertaken_id_seq'::regclass);


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: opengeo
--

COPY task (id, label, ts_created) FROM stdin;
1	Illustrate with 5 gestures, good and bad with the first pencil you find	\N
2	Print out the amount of free time you have in blue hues	\N
3	Find an image of the moon by deduction	\N
4	Wear something slightly uncomfortable today and tell us about it	\N
5	Think about what others might be thinking about	\N
6	Submit an instruction for a user-guide	\N
7	Draw a round table	\N
8	Submit the dimensions and colour of a triangle	\N
9	Describe the location you will be in next week	\N
10	Make a sign of a capitalist notion without thinking too much	\N
11	Multiply a collection of orange and red things so it reflects your values	\N
12	Speak a circle for yourself	\N
13	Pair positive images of collective action during work hours	\N
14	Email an incomplete draft with the subject heading 'NOT FINAL'	\N
15	Redefine the meaning of solution	\N
16	Find something that looks like something else	\N
21	Bring an alternative together	2013-12-02 10:27:10.394017+11
20	Improve something over time\n	2013-12-02 10:21:40.508081+11
19	Redesign something new while referring to beehives\n	2013-12-02 10:17:54.446327+11
\.


--
-- Data for Name: task_contribution; Type: TABLE DATA; Schema: public; Owner: opengeo
--

COPY task_contribution (id, task_id, textual, photo_link) FROM stdin;
\.


--
-- Data for Name: task_undertaken; Type: TABLE DATA; Schema: public; Owner: opengeo
--

COPY task_undertaken (id, task_id, ts_undertaken) FROM stdin;
\.


--
-- Name: task_contrib_pk; Type: CONSTRAINT; Schema: public; Owner: opengeo; Tablespace: 
--

ALTER TABLE ONLY task_contribution
    ADD CONSTRAINT task_contrib_pk PRIMARY KEY (id);


--
-- Name: task_pk; Type: CONSTRAINT; Schema: public; Owner: opengeo; Tablespace: 
--

ALTER TABLE ONLY task
    ADD CONSTRAINT task_pk PRIMARY KEY (id);


--
-- Name: task_undertaken_pk; Type: CONSTRAINT; Schema: public; Owner: opengeo; Tablespace: 
--

ALTER TABLE ONLY task_undertaken
    ADD CONSTRAINT task_undertaken_pk PRIMARY KEY (id);


--
-- Name: geometry_columns_delete; Type: RULE; Schema: public; Owner: postgres
--

CREATE RULE geometry_columns_delete AS ON DELETE TO geometry_columns DO INSTEAD NOTHING;


--
-- Name: geometry_columns_insert; Type: RULE; Schema: public; Owner: postgres
--

CREATE RULE geometry_columns_insert AS ON INSERT TO geometry_columns DO INSTEAD NOTHING;


--
-- Name: geometry_columns_update; Type: RULE; Schema: public; Owner: postgres
--

CREATE RULE geometry_columns_update AS ON UPDATE TO geometry_columns DO INSTEAD NOTHING;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

