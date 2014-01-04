--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

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
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.task_contribution_id_seq OWNER TO opengeo;

--
-- Name: task_contribution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: opengeo
--

ALTER SEQUENCE task_contribution_id_seq OWNED BY task_contribution.id;


--
-- Name: task_contribution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: opengeo
--

SELECT pg_catalog.setval('task_contribution_id_seq', 53, true);


--
-- Name: task_discarded; Type: TABLE; Schema: public; Owner: opengeo; Tablespace: 
--

CREATE TABLE task_discarded (
    id integer NOT NULL,
    label text,
    ts_created timestamp with time zone DEFAULT now()
);


ALTER TABLE public.task_discarded OWNER TO opengeo;

--
-- Name: task_discarded_id_seq; Type: SEQUENCE; Schema: public; Owner: opengeo
--

CREATE SEQUENCE task_discarded_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.task_discarded_id_seq OWNER TO opengeo;

--
-- Name: task_discarded_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: opengeo
--

ALTER SEQUENCE task_discarded_id_seq OWNED BY task_discarded.id;


--
-- Name: task_discarded_id_seq; Type: SEQUENCE SET; Schema: public; Owner: opengeo
--

SELECT pg_catalog.setval('task_discarded_id_seq', 20, true);


--
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: opengeo
--

CREATE SEQUENCE task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.task_id_seq OWNER TO opengeo;

--
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: opengeo
--

ALTER SEQUENCE task_id_seq OWNED BY task.id;


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: opengeo
--

SELECT pg_catalog.setval('task_id_seq', 106, true);


--
-- Name: task_undertaken; Type: TABLE; Schema: public; Owner: opengeo; Tablespace: 
--

CREATE TABLE task_undertaken (
    id integer NOT NULL,
    task_id integer,
    ts_undertaken timestamp with time zone DEFAULT now()
);


ALTER TABLE public.task_undertaken OWNER TO opengeo;

--
-- Name: task_undertaken_id_seq; Type: SEQUENCE; Schema: public; Owner: opengeo
--

CREATE SEQUENCE task_undertaken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.task_undertaken_id_seq OWNER TO opengeo;

--
-- Name: task_undertaken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: opengeo
--

ALTER SEQUENCE task_undertaken_id_seq OWNED BY task_undertaken.id;


--
-- Name: task_undertaken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: opengeo
--

SELECT pg_catalog.setval('task_undertaken_id_seq', 70, true);


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

ALTER TABLE ONLY task_discarded ALTER COLUMN id SET DEFAULT nextval('task_discarded_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: opengeo
--

ALTER TABLE ONLY task_undertaken ALTER COLUMN id SET DEFAULT nextval('task_undertaken_id_seq'::regclass);


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
22	Connect a community in photoshop	2013-12-02 11:51:18.099026+11
23	Replace a banana on the wall	2013-12-02 12:26:52.823854+11
24	Sign at home exactly	2013-12-02 12:34:24.243147+11
25	Abstract in gold with other people	2013-12-02 22:24:07.56306+11
26	Send a newspaper clipping of a small list using watercolour	2013-12-02 22:27:00.171129+11
27	Spend time thinking about a garden to create a completely new image	2013-12-02 22:56:51.721241+11
28	Follow random tasks using only political rhetoric	2013-12-02 22:59:18.770881+11
29	Create  4 synonyms being completely dishonest	2013-12-08 17:12:40.218458+11
30	Maintain a slogan in the colours of your flag	2013-12-09 12:26:22.557507+11
31	Write a collection of edible greens to form a link to the past	2013-12-09 12:50:52.420267+11
32	Represent somehow  sticks over 57 seconds	2013-12-09 12:58:52.535398+11
33	Draw something round with the first pencil you find	2013-12-09 16:16:46.428408+11
34	Document weeds to a stranger	2013-12-09 16:35:17.127064+11
35	Research D.I.Y inside an irregular shape	2013-12-09 16:36:46.645523+11
36	Spend time thinking about a new slogan without telling anyone	2013-12-09 16:37:59.076866+11
37	Represent somehow a fireplace so its function is questionable	2013-12-09 16:40:36.380603+11
38	In your head, formulate the surface hand-drawn	2013-12-09 17:56:58.833465+11
39	Email the moon now	2013-12-09 17:59:07.167236+11
40	Use what you see in the size of a book	2013-12-09 18:02:53.677631+11
41	Design everything you see in the next 9 seconds and attempt to extract a meaning	2013-12-09 18:49:31.56084+11
42	Order acts of resistance in secret	2013-12-09 18:50:26.500179+11
43	Order D.I.Y to capture the moment	2013-12-09 18:50:52.410299+11
44	Use  a set of instructions in your line of sight	2013-12-09 18:52:14.343212+11
45	Explain migration as an indulgence	2013-12-09 18:54:37.38516+11
46	Reverse engineer the number of elastic bands you see on the ground side by side	2013-12-09 19:02:48.282537+11
47	Design simply  thinking about form and function	2013-12-09 19:03:44.141299+11
48	Manage a collection of orange and red things as an indulgence	2013-12-09 19:04:31.829872+11
49	Deliver 3 minutes in hardcopy	2013-12-09 19:04:51.629116+11
50	Find a scene and pick your favourite	2013-12-09 19:06:20.416105+11
51	Cover a banana in public space	2013-12-09 19:20:18.788454+11
52	Find an example of weeds  share it with us	2013-12-09 19:23:49.981195+11
53	In your head, formulate the least used glass from your cupboard in monotone	2013-12-09 19:46:53.820558+11
54	Make D.I.Y online	2013-12-09 19:48:35.665283+11
55	Send through trees inside a square	2013-12-09 19:51:58.415892+11
56	Move to demonstrate while refering to gardening	2013-12-09 20:16:55.515399+11
57	Paint average in your line of sight	2013-12-09 20:35:19.401198+11
60	Perform a new slogan into a ball	2013-12-09 20:36:22.746182+11
61	Find what failure means to you and send it via email	2013-12-09 20:37:36.924894+11
62	Document trees using only political rhetoric	2013-12-09 20:38:39.92065+11
63	Try what you see hand drawn	2013-12-09 20:38:56.944163+11
64	Photocopy the idea of free time in 13 seconds	2013-12-09 20:40:11.809492+11
65	Represent somehow in gold openly	2013-12-09 20:40:20.006382+11
66	Research D.I.Y inside an irregular shape	2013-12-09 20:40:27.800816+11
67	Document by looking down whilst moving	2013-12-09 20:40:37.450764+11
68	Grow the truth in newspaper	2013-12-09 20:42:06.910073+11
69	Take an image in the past today	2013-12-09 20:42:46.92336+11
70	Extract smart-meter data to capture the moment	2013-12-09 20:43:14.99533+11
71	Email a fireplace in 13 seconds	2013-12-09 20:43:22.424906+11
72	Capture light at just the right moment	2013-12-09 20:44:19.280296+11
73	Use a garden and send it to us via email	2013-12-09 20:44:38.80653+11
74	Define a log in public space	2013-12-09 20:45:21.95957+11
75	Send us a new world order by planning the next move	2013-12-09 20:45:35.206541+11
76	Build a new object do this 7 times	2013-12-09 20:46:29.990592+11
78	Deliver something round spontaneously	2013-12-09 20:46:48.858636+11
79	Search your inbox for change	2013-12-09 20:46:57.401448+11
80	Document a collection of logs in public	2013-12-09 20:47:20.743846+11
81	Research the headlines until you are happy with the end result	2013-12-09 20:47:47.729795+11
82	Order 1 minute over and over	2013-12-09 20:47:55.300209+11
83	Type this and that in a closed form	2013-12-09 20:49:32.748444+11
84	Perform something new to the world	2013-12-09 20:49:47.344646+11
85	Capture a sign that says nothing	2013-12-09 20:53:15.482585+11
86	Illustrate the world in 3D	2013-12-09 20:53:34.170856+11
87	Use yellow light to generate an image	2013-12-09 21:01:54.836181+11
88	Create a colour palette using a found photograph	2013-12-09 21:02:45.108211+11
89	Check what is behind you and look forward	2013-12-09 21:03:15.150712+11
90	Share a new object without language	2013-12-09 21:06:08.10957+11
91	Explore out in the open	2013-12-09 21:09:12.52666+11
77	Expose acts of resistance in capitals	2013-12-09 20:46:39.282229+11
92	Take a sample of 26 seconds without thinking too much	2013-12-10 12:22:33.977387+11
93	Speak  the same word the simplest way possible	2013-12-10 21:46:13.076762+11
94	Suggest your camera while referring to beehives	2013-12-15 21:24:56.02371+11
95	Draw social justice like you mean it	2013-12-15 21:31:55.010226+11
96	Find the least used glass from your cupboard with your hands	2013-12-15 21:34:50.550811+11
97	Draw a chair in secret	2013-12-15 22:24:04.511971+11
98	Impose beans in another language	2013-12-17 09:26:44.032359+11
99	Perform a scene during work hours	2013-12-17 10:25:48.493786+11
100	Distribute at home with others	2013-12-17 21:30:50.656165+11
101	Undertake a common approach on the wall	2013-12-22 17:53:47.177432+11
102	Donate social justice while standing still	2014-01-04 15:19:10.109196+11
103	Undo a 3-word manifesto helplessly	2014-01-04 15:20:23.966055+11
104	Turn around your thoughts using an old technique	2014-01-04 16:08:38.683345+11
105	Consider  outside without language	2014-01-04 16:22:47.518452+11
106	Collage a new slogan using statistics	2014-01-04 17:40:24.685336+11
\.


--
-- Data for Name: task_contribution; Type: TABLE DATA; Schema: public; Owner: opengeo
--

COPY task_contribution (id, task_id, textual, photo_link) FROM stdin;
1	1	\N	Paperclip.jpg
2	56	\N	3_Growing Concern.jpg
3	7	\N	Draw a round table.jpg
4	2	\N	hues of blue.png
5	3	\N	Moon.jpg
6	4	\N	Wear something slightly uncomfortable today and tell us about it.jpg
7	10	\N	Capitalist sign on white.jpg
8	11	\N	Red and Orange.jpg
9	16	\N	ladder.jpg
10	34	\N	weed.jpg
11	37	\N	Represent somehow a fireplace so its function is questionable.jpg
12	38	\N	texture.jpg
13	45	\N	migration.jpg
14	47	\N	IMG_1421.jpg
15	55	\N	Send through trees inside a square.jpg
16	54	\N	Make DIY online.jpg
17	52	\N	weeddetails.jpg
18	50	\N	night.jpg
19	44	\N	gate.jpg
20	42	\N	protest.jpg
21	57	\N	Average.jpg
22	60	\N	balls.jpg
23	61	\N	bin.jpg
24	62	\N	Document trees using only political rhetoric.jpg
25	63	\N	Findings.jpg
26	64	\N	FreeTime.jpg
27	65	\N	gold gold gold collage.jpg
28	66	\N	green and pink.jpg
29	67	\N	green.jpg
30	68	\N	Growing Newspaper2.jpg
31	71	\N	IMG_1236.jpg
32	70	\N	IMG_0999.jpg
33	69	\N	horse.jpg
34	72	\N	IMG_9801.jpg
35	73	\N	incinerator.jpg
36	74	\N	Log.jpg
37	75	\N	new_world_order copy.png
38	82	\N	things.jpg
39	81	\N	the guardian.jpg
40	80	\N	snowlogs.jpg
41	79	\N	search_your_inbox_for_change.jpg
42	76	\N	08_Post_it_stack.jpg
43	78	\N	ring.jpg
44	77	\N	Pro.jpg
45	83	\N	This That.jpg
46	84	\N	Triangles.jpg
47	87	\N	bunnings.jpg
48	88	\N	pallettes.jpg
49	89	\N	singapore.jpg
50	46	\N	rubberbands.jpg
51	43	\N	Sunbathing at the Louvre.jpg
52	31	\N	Edible_Greens.jpg
\.


--
-- Data for Name: task_discarded; Type: TABLE DATA; Schema: public; Owner: opengeo
--

COPY task_discarded (id, label, ts_created) FROM stdin;
1	Deliver the number of elastic bands you see on the ground in photoshop	2014-01-04 17:40:02.573803+11
2	Act the amount of free time you have freely	2014-01-04 17:40:09.18527+11
3	Mark a set of instructions relating to a gallery	2014-01-04 17:40:11.39939+11
4	Expand on everything green and white on your own	2014-01-04 17:40:13.048896+11
5	Paint with watercolour a new object without showing anyone	2014-01-04 17:40:13.750233+11
6	Reverse good and bad without telling anyone	2014-01-04 17:40:13.934555+11
7	Group together your favourite image for yourself	2014-01-04 17:40:14.11447+11
8	Give Australian symbolism with the next person you see	2014-01-04 17:40:14.299924+11
9	Undertake  sticks while standing still	2014-01-04 17:40:14.494408+11
10	Converse a new system during business hours	2014-01-04 17:40:14.644706+11
11	Illustrate a debate and pick your favourite	2014-01-04 17:40:14.794721+11
12	Plant a comodity until you are happy with the end result	2014-01-04 17:40:14.954676+11
13	Mark your role within a particular organisational structure spontaneously	2014-01-04 17:40:15.135495+11
14	Whittle a new system in a graph of rainbow colours	2014-01-04 17:40:15.289368+11
15	Suggest the temperature and throw it out the window	2014-01-04 17:40:15.460368+11
16	Print out at home unfairly	2014-01-04 17:40:15.663914+11
17	Deliver the same word on the floor	2014-01-04 17:40:15.808262+11
18	Design a way around a problem with found objects	2014-01-04 17:40:15.984139+11
19	Deliver your role within a particular organisational structure intuitively	2014-01-04 17:40:16.14021+11
20	Collage a new slogan using statistics	2014-01-04 17:40:16.299716+11
\.


--
-- Data for Name: task_undertaken; Type: TABLE DATA; Schema: public; Owner: opengeo
--

COPY task_undertaken (id, task_id, ts_undertaken) FROM stdin;
1	4	2013-12-08 14:41:18.307057+11
2	1	2013-12-08 14:41:26.472752+11
3	6	2013-12-08 16:21:11.848504+11
4	9	2013-12-08 16:23:48.166321+11
5	16	2013-12-08 16:59:32.886166+11
6	29	2013-12-08 17:12:40.746819+11
7	1	2013-12-09 11:00:55.883807+11
8	7	2013-12-09 11:03:12.969143+11
9	4	2013-12-09 12:07:05.720816+11
10	30	2013-12-09 12:26:22.799672+11
11	1	2013-12-09 12:34:39.582347+11
12	30	2013-12-09 11:51:02.264678+11
13	4	2013-12-09 11:51:23.037226+11
14	16	2013-12-09 12:33:18.611113+11
15	1	2013-12-09 12:33:30.691177+11
16	31	2013-12-09 12:50:52.643528+11
17	32	2013-12-09 12:58:52.774404+11
18	33	2013-12-09 16:16:46.71315+11
19	33	2013-12-09 16:34:24.112779+11
20	34	2013-12-09 16:35:17.302678+11
21	35	2013-12-09 16:36:46.799108+11
22	36	2013-12-09 16:37:59.210864+11
23	37	2013-12-09 16:40:36.602722+11
24	38	2013-12-09 17:56:59.141217+11
25	39	2013-12-09 17:59:07.329837+11
26	39	2013-12-09 18:02:16.973675+11
27	39	2013-12-09 18:02:35.889395+11
28	40	2013-12-09 18:02:53.820189+11
29	41	2013-12-09 18:49:31.90534+11
30	42	2013-12-09 18:50:26.64799+11
31	43	2013-12-09 18:50:52.750757+11
32	44	2013-12-09 18:52:15.427087+11
33	45	2013-12-09 18:54:37.520019+11
34	46	2013-12-09 19:02:48.427983+11
35	47	2013-12-09 19:03:44.678056+11
36	48	2013-12-09 19:04:32.113125+11
37	49	2013-12-09 19:04:52.017708+11
38	50	2013-12-09 19:06:20.553643+11
39	51	2013-12-09 19:20:18.923764+11
40	52	2013-12-09 19:23:50.125846+11
41	53	2013-12-09 19:46:53.955496+11
42	54	2013-12-09 19:48:35.820002+11
43	55	2013-12-09 19:51:59.157324+11
44	56	2013-12-09 20:19:36.21875+11
45	51	2013-12-09 20:20:59.420453+11
46	57	2013-12-09 20:35:52.118157+11
47	90	2013-12-09 21:06:08.362267+11
48	50	2013-12-10 14:03:59.803723+11
49	93	2013-12-10 21:46:13.301593+11
50	90	2013-12-15 20:56:25.657218+11
51	50	2013-12-15 20:57:15.989019+11
52	94	2013-12-15 21:24:56.115499+11
53	95	2013-12-15 21:31:55.143918+11
54	96	2013-12-15 21:34:50.665581+11
55	1	2013-12-15 22:20:59.97439+11
56	4	2013-12-15 22:21:48.835135+11
57	97	2013-12-15 22:24:04.699905+11
58	97	2013-12-15 22:31:33.682683+11
59	97	2013-12-16 09:10:39.719766+11
60	98	2013-12-17 09:26:44.648401+11
61	99	2013-12-17 10:25:48.661773+11
62	4	2013-12-17 10:57:43.3224+11
63	100	2013-12-17 21:30:51.446716+11
64	101	2013-12-22 17:53:48.426704+11
65	103	2014-01-04 15:20:49.766582+11
66	103	2014-01-04 15:53:31.093941+11
67	105	2014-01-04 16:22:47.525291+11
68	103	2014-01-04 16:23:33.098622+11
69	1	2014-01-04 16:55:16.541842+11
70	106	2014-01-04 17:40:24.688637+11
\.


--
-- Name: task_contrib_pk; Type: CONSTRAINT; Schema: public; Owner: opengeo; Tablespace: 
--

ALTER TABLE ONLY task_contribution
    ADD CONSTRAINT task_contrib_pk PRIMARY KEY (id);


--
-- Name: task_discarded_pk; Type: CONSTRAINT; Schema: public; Owner: opengeo; Tablespace: 
--

ALTER TABLE ONLY task_discarded
    ADD CONSTRAINT task_discarded_pk PRIMARY KEY (id);


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
-- PostgreSQL database dump complete
--

