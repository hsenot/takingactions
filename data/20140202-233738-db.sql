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
    ts_created timestamp with time zone DEFAULT now(),
    ip character varying(45)
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

SELECT pg_catalog.setval('task_discarded_id_seq', 2071, true);


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

SELECT pg_catalog.setval('task_id_seq', 170, true);


--
-- Name: task_undertaken; Type: TABLE; Schema: public; Owner: opengeo; Tablespace: 
--

CREATE TABLE task_undertaken (
    id integer NOT NULL,
    task_id integer,
    ts_undertaken timestamp with time zone DEFAULT now(),
    ip character varying(45)
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

SELECT pg_catalog.setval('task_undertaken_id_seq', 141, true);


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
107	Build a capitalist notion as if functional	2014-01-05 18:06:09.315104+11
108	Bring a word you heard today then cut that in half	2014-01-05 22:18:06.084846+11
109	Gather nothing so it reflects your values	2014-01-10 12:19:15.252063+11
110	Donate the rules of tennis as a map	2014-01-10 12:53:18.41396+11
111	Hack the moon with your hands	2014-01-10 14:12:01.841314+11
112	Act a handshake  share it with us	2014-01-12 14:05:12.483364+11
113	Act a handshake  share it with us	2014-01-12 14:13:20.574816+11
114	Improve an impracticle object and explain why	2014-01-14 09:46:59.745237+11
115	Expand on this and that like you mean it	2014-01-14 10:03:55.308121+11
116	Move  sticks quickly	2014-01-14 10:40:39.862614+11
117	Send through a small list during business hours	2014-01-14 12:13:34.49646+11
118	Detail the future in black and white	2014-01-14 12:13:52.076564+11
119	Mime something openly	2014-01-14 12:14:16.351576+11
120	Cut and paste a circle diplomatically	2014-01-14 12:14:29.56938+11
121	Research the world openly	2014-01-14 12:46:16.468114+11
122	Manage a collection of blue things with the next person you see	2014-01-14 12:46:52.60456+11
123	Change a sculpture using statistics	2014-01-14 12:47:03.508621+11
124	Create your thoughts as a list	2014-01-14 12:47:11.393229+11
125	Make revolution in the form of instructions	2014-01-14 12:47:27.564268+11
126	Colour in  something with a pencil	2014-01-14 13:24:21.548668+11
127	Change a limited edition referencing the idea of dis-organisation	2014-01-14 13:33:07.014704+11
128	Give a meal in hardcopy	2014-01-14 14:11:22.514674+11
129	Distribute what you see over 57 seconds	2014-01-14 14:21:13.65809+11
130	Expand on your love of a particular person like a robot	2014-01-14 21:52:43.414744+11
131	Donate a slogan temporarily	2014-01-14 21:57:53.335532+11
132	Detail a banana thinking about form and function	2014-01-14 22:02:09.430915+11
133	Research growth so its function is questionable	2014-01-14 22:49:16.591148+11
134	Research a community in a graph of rainbow colours	2014-01-15 14:30:16.129024+11
135	Illustrate space in a variety of ways	2014-01-15 14:31:32.811618+11
136	Find an example of what success means to you and double it	2014-01-15 14:32:09.89377+11
137	Discuss space over time	2014-01-15 14:32:20.117494+11
138	Systematise practical objects without language	2014-01-15 14:32:32.12569+11
139	Investigate food supply chains as an indulgence	2014-01-15 14:33:25.008295+11
140	Continue a 10-word manifesto without using words	2014-01-15 14:33:34.312468+11
141	Categorise the city diplomatically	2014-01-15 14:34:32.232566+11
142	Take a sample of  two people using a recording device	2014-01-16 15:42:31.855643+11
143	Observe the city without assistance	2014-01-16 15:42:50.229663+11
144	Photocopy something intricate and connect the dots	2014-01-16 15:46:15.842977+11
145	Discuss D.I.Y on the floor	2014-01-16 15:47:30.896239+11
146	Collage the newspaper through a process of elimination	2014-01-16 15:48:18.970817+11
147	Send 8 images  share it with us	2014-01-16 15:49:32.356883+11
148	Define how your mobile phone is used on any given day and use it as currency	2014-01-16 15:50:56.605329+11
149	Make the newspaper in another language	2014-01-16 15:51:15.022055+11
150	Identify branches diplomatically	2014-01-18 16:54:49.732407+11
151	Try a piece of paper seriously	2014-01-18 16:55:49.231986+11
152	Act on an atlas in the form of a ransom note	2014-01-18 17:18:12.273779+11
153	Try two parties slowly	2014-01-19 15:38:59.807468+11
154	Form an atlas efficiently	2014-01-19 15:39:22.658882+11
155	Photograph your camera and question your findings	2014-01-19 21:06:11.483763+11
156	Split the crowd like it will change the world	2014-01-20 21:01:58.832693+11
157	Shape suburbs as a pie chart	2014-01-20 21:05:13.348011+11
158	Make the economy addictively	2014-01-21 23:07:05.7264+11
159	Order a meeting in the form of a ransom note	2014-01-21 23:12:20.334196+11
160	Model the idea of nationality diplomatically	2014-01-23 21:05:23.792868+11
161	Plant a commodity directly on the wall	2014-01-24 11:45:50.132117+11
162	Toss a chair directly on the wall	2014-01-24 11:54:11.566279+11
163	Produce the world so its function is questionable	2014-01-24 11:55:09.30626+11
164	Identify the risks so that we will be really surprised	2014-01-24 16:52:09.892593+11
165	Read the garden systematically	2014-01-28 09:08:10.333181+11
166	Rearrange particular ideas and connect the dots	2014-01-28 09:13:54.868267+11
167	Learn about two people with scepticism	2014-01-28 09:43:53.68005+11
168	Replace everything and double it	2014-01-29 23:39:41.801586+11
169	Hand out a capitalist notion as an indulgence	2014-01-31 14:17:39.02991+11
170	Connect  sticks and send it to us via email	2014-02-02 20:27:20.600993+11
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

COPY task_discarded (id, label, ts_created, ip) FROM stdin;
1	Deliver the number of elastic bands you see on the ground in photoshop	2014-01-04 17:40:02.573803+11	\N
2	Act the amount of free time you have freely	2014-01-04 17:40:09.18527+11	\N
3	Mark a set of instructions relating to a gallery	2014-01-04 17:40:11.39939+11	\N
4	Expand on everything green and white on your own	2014-01-04 17:40:13.048896+11	\N
5	Paint with watercolour a new object without showing anyone	2014-01-04 17:40:13.750233+11	\N
6	Reverse good and bad without telling anyone	2014-01-04 17:40:13.934555+11	\N
7	Group together your favourite image for yourself	2014-01-04 17:40:14.11447+11	\N
8	Give Australian symbolism with the next person you see	2014-01-04 17:40:14.299924+11	\N
9	Undertake  sticks while standing still	2014-01-04 17:40:14.494408+11	\N
10	Converse a new system during business hours	2014-01-04 17:40:14.644706+11	\N
11	Illustrate a debate and pick your favourite	2014-01-04 17:40:14.794721+11	\N
12	Plant a comodity until you are happy with the end result	2014-01-04 17:40:14.954676+11	\N
13	Mark your role within a particular organisational structure spontaneously	2014-01-04 17:40:15.135495+11	\N
14	Whittle a new system in a graph of rainbow colours	2014-01-04 17:40:15.289368+11	\N
15	Suggest the temperature and throw it out the window	2014-01-04 17:40:15.460368+11	\N
16	Print out at home unfairly	2014-01-04 17:40:15.663914+11	\N
17	Deliver the same word on the floor	2014-01-04 17:40:15.808262+11	\N
18	Design a way around a problem with found objects	2014-01-04 17:40:15.984139+11	\N
19	Deliver your role within a particular organisational structure intuitively	2014-01-04 17:40:16.14021+11	\N
20	Collage a new slogan using statistics	2014-01-04 17:40:16.299716+11	\N
21	Draw suburbs with no preconceived idea	2014-01-04 18:01:08.567105+11	\N
22	Learn about a gathering being completely dishonest	2014-01-04 18:02:26.727209+11	\N
23	Arrange your love of a particular person in the gallery	2014-01-04 18:10:23.766087+11	\N
24	Model companion plants with scepticism	2014-01-04 18:10:24.521201+11	\N
25	Collect D.I.Y randomly	2014-01-04 18:10:25.492108+11	\N
26	Record one minute with other people	2014-01-04 18:10:26.352447+11	\N
27	Explore nothing obsessively	2014-01-04 18:10:29.048572+11	\N
28	Try a banana and put two and two together	2014-01-04 19:20:16.56993+11	\N
29	Paint with watercolour your location quickly	2014-01-04 19:53:20.434299+11	\N
30	Wear a see-saw unfairly	2014-01-04 19:53:20.434516+11	\N
31	Categorise something damaged with the next person you see	2014-01-04 19:53:21.125956+11	\N
32	Split your favourite image and speak the result in monotone	2014-01-05 16:38:00.779042+11	\N
33	Continue an organisation  with the first pencil you find	2014-01-05 17:52:56.023115+11	\N
34	Protect a megaphone without showing anyone	2014-01-05 17:53:05.997168+11	\N
35	Define your role within a particular organisational structure to form a link to the past	2014-01-05 17:54:31.090792+11	\N
36	Audit a community so it reflects your values	2014-01-05 17:54:34.982514+11	\N
37	Invent a get-together then cut that in half	2014-01-05 17:54:36.169325+11	\N
38	Produce acts of resistance directly	2014-01-05 17:54:37.211505+11	\N
39	Investigate the fourth world together	2014-01-05 17:54:40.882037+11	\N
40	Teach two parties then examine how it relates to the idea of revolution	2014-01-05 17:54:42.077828+11	\N
41	Wander silver coins to preexisting conditions	2014-01-05 17:54:43.894525+11	\N
42	Explore the fourth world diplomatically	2014-01-05 17:54:46.175943+11	\N
43	Take a sample of  the colour palette of an image in the colours of your flag	2014-01-05 17:54:47.615726+11	\N
44	Seek the garden in the right order	2014-01-05 17:54:50.472202+11	\N
45	Redesign this and that without touching	2014-01-05 17:54:52.316867+11	\N
46	Price a capitalist notion over 57 seconds	2014-01-05 17:54:53.547313+11	\N
47	Create practical objects using blu-tak	2014-01-05 17:54:54.957458+11	\N
48	Undo a way around a problem in the simplest way possible	2014-01-05 18:05:15.342988+11	\N
49	Create a pamphlet explaining the economy to capture the moment	2014-01-05 18:05:27.555344+11	\N
50	Describe images of other people  do this 7 times	2014-01-05 18:05:35.572667+11	\N
51	Make one minute do this 7 times	2014-01-05 18:05:41.987573+11	\N
52	Build a capitalist notion as if functional	2014-01-05 18:05:48.419407+11	\N
53	Replicate a collection of blue things intuitively	2014-01-05 18:07:27.442052+11	\N
54	Manage a way around a problem like a spy	2014-01-05 18:07:28.853196+11	\N
55	Investigate something new as a map	2014-01-05 18:07:49.305808+11	\N
56	Make up the game of tug-of-war in 12 sentences	2014-01-05 18:07:51.023887+11	\N
57	Ruin the crowd obsessively	2014-01-05 18:08:00.370571+11	\N
58	Reverse engineer what failure means to you repeatedly	2014-01-05 18:08:02.753965+11	\N
59	Exhaust something with a double meaning thinking about form and function	2014-01-05 18:08:03.919823+11	\N
60	Calculate Australian symbolism with your hands	2014-01-05 18:08:06.834448+11	\N
61	Create a banner which refers to the first 10 things referencing the idea of dis-organisation	2014-01-05 18:08:08.295235+11	\N
62	Examine two parties in 5 sentences	2014-01-05 18:08:10.254788+11	\N
63	Redesign a new slogan and speak the result in monotone	2014-01-05 18:12:48.622133+11	\N
64	In your head, formulate energy   confidently	2014-01-05 18:12:52.639576+11	\N
65	Observe a video  into a ball	2014-01-05 18:12:55.565314+11	\N
66	Find currency helplessly	2014-01-05 18:12:58.795414+11	\N
67	Deliver energy efficiency helplessly	2014-01-05 18:25:53.500212+11	\N
68	Build a user-guide convincingly	2014-01-05 18:25:54.474756+11	\N
69	Discuss in gold with tape	2014-01-05 18:25:54.479918+11	\N
70	Replicate food supply chains using found materials	2014-01-05 18:25:55.300592+11	\N
71	Act out a video  addictively	2014-01-05 18:25:56.289577+11	\N
72	Picture your love of a particular person in photoshop	2014-01-05 18:25:56.966297+11	\N
73	Improve data as a list	2014-01-05 18:25:58.27607+11	\N
74	Borrow something intricate in the colours of your flag	2014-01-05 18:25:59.615191+11	\N
75	Move the world secretly	2014-01-05 18:26:01.541162+11	\N
76	Make a colour palette of time using the name of someone great	2014-01-05 18:26:02.56306+11	\N
77	Break one minute together	2014-01-05 18:33:22.87631+11	\N
78	Identify your thoughts without assistance	2014-01-05 18:33:23.265695+11	\N
79	Sing something over 12 minutes	2014-01-05 18:33:23.706243+11	\N
80	Write a letter about a chair on the nature strip	2014-01-05 18:33:24.136627+11	\N
81	Visualise your location diplomatically	2014-01-05 18:33:24.599767+11	\N
82	Change a word you heard today on the floor	2014-01-05 18:33:25.505483+11	\N
83	Form social justice without thinking	2014-01-05 18:33:29.640832+11	\N
84	Dis-organise something with a double meaning in a graph of rainbow colours	2014-01-05 18:33:30.655935+11	\N
85	Take a sample of  a common approach in a minute	2014-01-05 18:33:31.096628+11	\N
86	Wander D.I.Y to form a link to the past	2014-01-05 18:33:31.525454+11	\N
87	Speak about something damaged in capitals	2014-01-05 18:33:31.971467+11	\N
88	Deliver a collection of blue things in the right order	2014-01-05 18:33:32.406137+11	\N
89	Type everything green and white as an indulgence	2014-01-05 18:33:33.625617+11	\N
90	Find a banana directly	2014-01-05 18:33:34.021206+11	\N
91	Investigate the ideal newspaper in public	2014-01-05 18:33:34.396078+11	\N
92	Find an example of what you see over 57 seconds	2014-01-05 18:33:35.056026+11	\N
93	Visualise a game of cards secretly	2014-01-05 18:33:35.95161+11	\N
94	Cut and paste at home as though your life depends on it	2014-01-05 18:33:36.396003+11	\N
95	Explore everything you see in the next 22 seconds through trade	2014-01-05 18:33:36.826093+11	\N
96	Identify a meeting as a map	2014-01-05 18:33:37.186285+11	\N
97	Photograph a flier over 57 seconds	2014-01-05 18:33:37.57135+11	\N
98	Scrunch a program using free software	2014-01-05 18:33:40.274937+11	\N
99	Donate the world with the next person you see	2014-01-05 18:34:00.458515+11	\N
100	Suggest management on the nature strip	2014-01-05 18:34:02.132602+11	\N
101	Split the crowd in photoshop	2014-01-05 18:34:06.503601+11	\N
102	Illustrate a program while referring to beehives	2014-01-05 18:34:10.375641+11	\N
103	Sculpt the same word and send it to us via email	2014-01-05 18:34:11.200119+11	\N
104	Play a slogan in a minute	2014-01-05 18:34:11.505148+11	\N
105	Find a way around a problem in capitals	2014-01-05 18:34:11.959774+11	\N
106	Make up spectacles side by side	2014-01-05 18:34:12.324562+11	\N
107	Bring about a see-saw on a piece of paper	2014-01-05 18:34:12.684541+11	\N
108	Pair a useful object with your hands	2014-01-05 18:34:13.030021+11	\N
109	Bring a number you consider to be quite big and explain why	2014-01-05 18:34:13.410409+11	\N
110	Paint with watercolour something small  using an old technique	2014-01-05 18:34:49.283115+11	\N
111	Give free time in capitals	2014-01-05 18:40:50.150072+11	\N
112	Grow what failure means to you with no preconceived idea	2014-01-05 18:40:51.255726+11	\N
113	Act on the idea of happiness helplessly	2014-01-05 18:40:58.409226+11	\N
114	Use  what failure means to you secretly	2014-01-05 18:40:59.454561+11	\N
115	Re-write time and pick your favourite	2014-01-05 18:41:01.609215+11	\N
116	Bring a new world order openly	2014-01-05 18:41:06.950208+11	\N
117	Split spectacles in your line of sight	2014-01-05 18:41:14.403613+11	\N
118	Tap into one minute helplessly	2014-01-05 18:41:16.444254+11	\N
119	Write a letter about then photograph to a stranger	2014-01-05 18:41:17.58431+11	\N
120	Rewrite sticks and stones in the simplest way possible	2014-01-05 18:41:24.213384+11	\N
121	Maintain power in monotone	2014-01-05 18:41:27.669662+11	\N
122	Explore a get-together thinking about form and function	2014-01-05 18:46:05.503776+11	\N
123	Seek management systematically	2014-01-05 18:46:06.211701+11	\N
124	Act beans directly	2014-01-05 18:46:06.776877+11	\N
125	Colour in  a sculpture freely	2014-01-05 18:46:08.453052+11	\N
126	Maintain a chair in pen	2014-01-05 18:46:08.743197+11	\N
127	Exhaust a useful object backing it up with research	2014-01-05 18:46:09.223989+11	\N
128	Email a word you heard today and connect the dots	2014-01-05 18:46:09.700577+11	\N
129	Write a letter about future technologies for yourself	2014-01-05 18:46:10.083554+11	\N
130	Pair a powerpoint presentation using a recording device	2014-01-05 18:46:13.222362+11	\N
131	Discover migration referring to your favourite	2014-01-05 18:46:13.778321+11	\N
132	Perform outside referring to your favourite	2014-01-05 18:46:14.433595+11	\N
133	Gather weeds to closely notice the details	2014-01-05 18:46:15.429132+11	\N
134	Whittle anything directly on the wall	2014-01-05 18:46:15.939332+11	\N
135	Converse the rules of tennis like it will change the world	2014-01-05 18:46:16.4601+11	\N
136	Continue a set of instructions using only political rhetoric	2014-01-05 18:46:16.908772+11	\N
137	Collate with a stranger temporarily	2014-01-05 18:46:17.414106+11	\N
138	Write about everything green and white as an indulgence	2014-01-05 18:46:17.693769+11	\N
139	Research something systematically	2014-01-05 18:46:18.330964+11	\N
140	Split a hole like you mean it	2014-01-05 18:46:18.650474+11	\N
141	Categorise government in black and white	2014-01-05 18:46:19.391189+11	\N
142	Split the political privately	2014-01-05 18:46:20.480136+11	\N
143	Borrow the ideal newspaper in photoshop	2014-01-05 18:46:20.851542+11	\N
144	Share a water source as a list	2014-01-05 18:46:21.266666+11	\N
145	Find an example of everything green and white unfairly	2014-01-05 18:46:22.225734+11	\N
146	Form your thoughts using a recording device	2014-01-05 18:46:22.791411+11	\N
147	Move the garden differently	2014-01-05 18:46:23.791689+11	\N
148	Examine a scene without telling anyone	2014-01-05 18:46:24.231722+11	\N
149	Pair the amount of free time you have in capitals	2014-01-05 18:46:26.156777+11	\N
150	Create a pamphlet explaining the same word using blu-tak	2014-01-05 18:46:27.342827+11	\N
151	Mark a 9-word manifesto without language	2014-01-05 18:46:27.913252+11	\N
152	Produce self-directed seriously	2014-01-05 18:46:29.226756+11	\N
153	Cover change do this 6 times	2014-01-05 18:46:30.674483+11	\N
154	Try currency like a robot	2014-01-05 18:46:31.12659+11	\N
155	Gather together the colour palette of an image using statistics	2014-01-05 18:46:31.516085+11	\N
156	Colour in  a water source without using words	2014-01-05 18:46:32.182642+11	\N
157	Connect your thoughts and explain why	2014-01-05 18:46:32.447643+11	\N
158	Introduce positive images of collective action in capitals	2014-01-05 18:46:32.65816+11	\N
159	List a collection of edible greens and document the findings to share	2014-01-05 18:46:32.889431+11	\N
160	List the amount of free time you have now	2014-01-05 18:46:33.088356+11	\N
161	Research trees confidently	2014-01-05 19:07:14.033616+11	\N
162	Distribute the same thing with the next person you see	2014-01-05 19:07:16.369306+11	\N
163	Define the city on the floor	2014-01-05 19:07:20.026156+11	\N
164	Invent the surface privately	2014-01-05 19:07:26.843626+11	\N
165	Speak  a sculpture secretly	2014-01-05 19:07:31.433227+11	\N
166	Plant what success means to you using only political rhetoric	2014-01-05 19:07:32.761044+11	\N
167	Toss something small  using an old technique	2014-01-05 19:07:37.725755+11	\N
168	Give a handshake with a public outcome in mind	2014-01-05 19:07:41.95612+11	\N
169	Undo particular ideas in a graph of rainbow colours	2014-01-05 19:09:40.576687+11	\N
170	Fill the city in another language	2014-01-05 19:09:43.398251+11	\N
171	Un-mechanise information until you are happy with the end result	2014-01-05 19:09:45.943225+11	\N
172	Raise a meal together	2014-01-05 19:09:47.133657+11	\N
173	Draw a new world order with no preconceived idea	2014-01-05 19:09:48.22958+11	\N
174	Explore a see-saw relating to a gallery	2014-01-05 19:09:51.330556+11	\N
175	Converse revolution in public space	2014-01-05 19:09:53.946791+11	\N
176	Calculate your thoughts thoughtfully	2014-01-05 19:10:02.27552+11	\N
177	Make a colour palette of a slogan addictively	2014-01-05 21:51:35.50274+11	\N
178	Consider  everything green and white with the next person you see	2014-01-05 21:51:35.770222+11	\N
179	Define then photograph with the first pencil you find	2014-01-05 21:51:37.001053+11	\N
180	Price an impracticle object do this 6 times	2014-01-05 21:51:37.301011+11	\N
181	Connect the fourth world temporarily	2014-01-05 21:51:37.501021+11	\N
182	Protect a collection of edible greens then cut that in half	2014-01-05 21:51:37.651056+11	\N
183	Deliver silver coins thoroughly checking	2014-01-05 21:56:43.810613+11	\N
184	Undertake the colour palette of an image of the future	2014-01-05 21:56:44.153991+11	\N
185	Turn around positive images of collective action without showing any proof	2014-01-05 21:56:44.573858+11	\N
186	Gather a 2-word manifesto to form a link to the past	2014-01-05 21:56:45.018966+11	\N
187	Sing free time systematically	2014-01-05 21:56:45.413467+11	\N
188	Toss the game of tug-of-war and put two and two together	2014-01-05 21:56:48.129935+11	\N
189	Toss average with others	2014-01-05 21:56:48.808501+11	\N
190	Shape time like a robot	2014-01-05 21:56:50.05505+11	\N
191	Define one minute using free software	2014-01-05 21:56:51.108118+11	\N
192	Paint your love of a particular person to closely notice the details	2014-01-05 21:56:51.50603+11	\N
193	Grow spectacles through trade	2014-01-05 21:56:51.894953+11	\N
194	Re-write a meeting in a variety of ways	2014-01-05 21:56:52.254518+11	\N
195	Reverse a new object in public	2014-01-05 21:56:52.870864+11	\N
196	Replace 8 steps helplessly	2014-01-05 21:56:53.011504+11	\N
197	Speak  spectacles using blu-tak	2014-01-05 21:56:53.192506+11	\N
198	Visualise a game of cards  share it with us	2014-01-05 21:56:53.237622+11	\N
199	Calculate management openly	2014-01-05 22:17:28.033675+11	\N
200	Snap an image-editing program and attempt to extract a meaning	2014-01-05 22:17:34.178059+11	\N
201	Perform an impracticle object convincingly	2014-01-05 22:17:40.456979+11	\N
202	Bring a word you heard today then cut that in half	2014-01-05 22:17:47.752087+11	\N
203	Send through the number of elastic bands you see on the ground into a ball	2014-01-05 22:18:32.729888+11	\N
204	Write about your job thinking about form and function	2014-01-05 22:34:01.08782+11	\N
205	Draw suburbs with no preconceived idea	2014-01-06 03:54:39.020214+11	\N
206	Read the surface and question your findings	2014-01-08 09:27:07.374228+11	\N
207	Make a colour palette of positive images of collective action using watercolour	2014-01-08 09:27:12.636819+11	\N
208	Define something with a double meaning and connect the dots	2014-01-08 10:12:30.58986+11	\N
209	Teach a collection of edible greens loudly	2014-01-08 10:12:33.860373+11	\N
210	Produce migration by swapping	2014-01-08 10:14:52.869934+11	\N
211	Bring a slogan using free software	2014-01-08 10:14:53.870576+11	\N
212	Illustrate a log over 11 minutes	2014-01-08 10:14:57.690301+11	\N
213	Collage the future online	2014-01-08 10:15:10.730737+11	\N
214	Replace everything you see in the next 21 seconds in a closed form	2014-01-08 10:15:23.642593+11	\N
215	Mark with a stranger with optimism	2014-01-08 10:15:27.836311+11	\N
216	Subvert religiously in a closed form	2014-01-08 10:15:36.735121+11	\N
217	Photocopy a hole in a closed form	2014-01-08 10:15:38.966095+11	\N
218	Improve weeds spontaneously	2014-01-08 10:16:07.17582+11	\N
219	Multiply time by deduction	2014-01-08 10:16:25.289383+11	\N
220	Use  your role within a particular organisational structure then cut that in half	2014-01-08 10:16:28.705256+11	\N
221	Grow particular ideas so its function is questionable	2014-01-08 10:16:39.752293+11	\N
222	Impose an organisation  efficiently	2014-01-08 10:16:51.655588+11	\N
223	Walk  the chain of evidence online	2014-01-08 10:16:54.502199+11	\N
224	Confuse transparency and attempt it only once	2014-01-08 10:16:56.161525+11	\N
225	Categorise a powerpoint presentation directly	2014-01-08 10:17:16.113398+11	\N
226	Donate what is within reach without showing anyone	2014-01-08 10:17:25.536629+11	\N
227	Audit two parties secretly	2014-01-08 10:17:30.854241+11	\N
228	Form what you see using only political rhetoric	2014-01-08 10:17:32.270826+11	\N
229	Observe a balloon in secret	2014-01-08 10:17:46.618526+11	\N
230	Reverse engineer the same thing to capture the moment	2014-01-08 10:18:35.878167+11	\N
231	Investigate how you might begin to withdraw your dependency on technology differently	2014-01-08 10:18:37.502743+11	\N
232	Redesign the best times in a graph of blue hues	2014-01-08 10:18:40.84261+11	\N
233	Scrunch a new world order for yourself	2014-01-08 10:18:50.867613+11	\N
234	Say the colour palette of an image helplessly	2014-01-08 10:20:05.37516+11	\N
235	Price something with a double meaning temporarily	2014-01-08 10:20:07.911214+11	\N
236	Record a handshake over 8 minutes	2014-01-08 10:20:13.300548+11	\N
237	Re-write revolution referring to your favourite	2014-01-08 10:20:23.034941+11	\N
238	Photocopy a meeting one way	2014-01-08 10:20:26.905051+11	\N
239	Undo the world inside a square	2014-01-08 10:20:28.143203+11	\N
240	Extract a movement with optimism	2014-01-08 10:20:29.689486+11	\N
241	Design the number of elastic bands you see on the ground as a map	2014-01-08 10:20:31.250765+11	\N
242	Bring 6 steps and combine	2014-01-08 10:20:34.363042+11	\N
243	Illustrate revolution so its function is questionable	2014-01-08 10:20:44.086446+11	\N
244	Test 4 synonyms without touching	2014-01-08 10:20:45.300574+11	\N
245	Build an organisation  in a minute	2014-01-08 10:20:46.676875+11	\N
246	In your head, formulate a chair and use it as currency	2014-01-08 10:20:50.030435+11	\N
247	Hack something and attempt to extract a meaning	2014-01-08 10:21:00.936066+11	\N
248	Form political rhetoric in the colours of your flag	2014-01-08 10:21:03.078899+11	\N
249	Cover suburbs mindfully	2014-01-08 10:21:27.056604+11	\N
250	Suggest your camera in secret	2014-01-08 10:21:30.132918+11	\N
251	Test the surface to initiate progress	2014-01-08 10:21:31.407283+11	\N
252	Make up in the most innovative way you can think of; in your line of sight	2014-01-08 10:22:03.126891+11	\N
253	Send a newspaper clipping of the fourth world freely	2014-01-08 10:22:05.200665+11	\N
254	Subvert trees to form a link to the past	2014-01-08 10:22:08.201964+11	\N
255	Find something new side by side	2014-01-08 10:22:17.304227+11	\N
256	Wear a garden spontaneously	2014-01-08 10:22:18.820527+11	\N
257	Multiply social justice over time	2014-01-08 10:22:23.60374+11	\N
258	Act on the political in public space	2014-01-08 10:22:24.757473+11	\N
259	Undo a gathering without thinking too much	2014-01-08 10:22:25.836138+11	\N
260	Follow a debate then examine how it relates to the idea of revolution	2014-01-08 10:22:27.512606+11	\N
261	Write a list of  an organisation  without telling anyone	2014-01-08 10:22:48.529028+11	\N
262	Identify the impossible and attempt to extract a meaning	2014-01-08 10:22:49.892996+11	\N
263	Cover the temperature online	2014-01-08 10:23:04.06292+11	\N
264	Continue 8 images using found materials	2014-01-08 10:24:12.056472+11	\N
265	Reverse engineer 8 images mindfully	2014-01-08 10:24:14.294434+11	\N
266	Modify the best times in a graph of blue hues	2014-01-08 10:24:16.186093+11	\N
267	Bring about the temperature then cut that in half	2014-01-08 10:24:19.177219+11	\N
268	Hack a meeting as a map	2014-01-08 10:24:30.962823+11	\N
269	Seek a program privately	2014-01-08 10:24:45.684179+11	\N
270	Swap a dollar in the form of instructions	2014-01-08 10:24:46.972887+11	\N
271	Follow trees do this 5 times	2014-01-08 10:24:49.883509+11	\N
272	Maintain a new object without language	2014-01-08 10:25:10.13722+11	\N
273	Carve food supply chains while standing still	2014-01-08 10:25:11.201455+11	\N
274	Swap energy   and question your findings	2014-01-08 10:25:51.623874+11	\N
275	Expand on an organisation  over five minutes	2014-01-08 10:25:52.658136+11	\N
276	Grow a flier in the form of instructions	2014-01-08 10:25:55.173155+11	\N
277	Perform a see-saw on a piece of paper	2014-01-08 10:25:57.394267+11	\N
278	Describe your job to closely notice the details	2014-01-08 10:26:28.544537+11	\N
279	Deliberate a word you heard today over time	2014-01-08 10:26:29.81789+11	\N
280	Gather the chain of evidence without showing anyone	2014-01-08 18:58:06.327574+11	\N
281	Replace an image-editing program online	2014-01-08 18:58:07.567728+11	\N
282	Act out self-directed loudly	2014-01-08 18:59:42.440695+11	\N
283	Break down into numbers a see-saw to the world	2014-01-08 18:59:43.966968+11	\N
284	Suggest a slogan to preexisting conditions	2014-01-08 18:59:48.987573+11	\N
285	Observe one minute during business hours	2014-01-08 18:59:50.553063+11	\N
286	Detail at home to preexisting conditions	2014-01-08 18:59:55.032324+11	\N
287	Detail transparency together	2014-01-08 18:59:56.484585+11	\N
288	Build a dollar on your own	2014-01-08 18:59:57.499011+11	\N
289	Seek in 3 minutes quietly	2014-01-08 18:59:58.300654+11	\N
290	Write about what is within reach in secret	2014-01-08 18:59:59.468916+11	\N
291	Define government in a minute	2014-01-08 19:00:01.305404+11	\N
292	Calculate sticks and stones loudly	2014-01-08 19:00:02.403329+11	\N
293	Create a banner which refers to a community in secret	2014-01-08 19:00:03.878314+11	\N
294	Collage a megaphone relating to a gallery	2014-01-08 19:00:06.259311+11	\N
295	Exhaust the economy diplomatically	2014-01-08 19:00:08.554786+11	\N
296	Dis-organise the best times using statistics	2014-01-08 19:00:10.209997+11	\N
297	Fill your camera in the form of a ransom note	2014-01-08 19:00:11.319639+11	\N
298	Plot on a graph then photograph while referring to gardening	2014-01-08 19:00:15.53548+11	\N
299	Speak  everything and record what you find	2014-01-08 19:00:17.747649+11	\N
300	Assemble the ideal newspaper through trade	2014-01-08 19:00:31.79898+11	\N
301	Subvert the least used glass from your cupboard in the gallery	2014-01-08 19:00:33.790498+11	\N
302	Swap a piece of paper during business hours	2014-01-08 19:00:35.538668+11	\N
303	Break down into numbers a balloon with tape	2014-01-08 19:00:41.825165+11	\N
304	Model the impossible and collate the results	2014-01-08 19:00:43.845286+11	\N
305	Use  Australian symbolism as though your life depends on it	2014-01-08 19:00:45.271273+11	\N
306	Assemble management so its function is questionable	2014-01-08 19:00:46.88668+11	\N
307	Create the garden in photographic form	2014-01-08 19:00:48.915343+11	\N
308	Protect an impracticle object so it is equal	2014-01-08 19:00:50.246167+11	\N
309	Share your camera convincingly	2014-01-08 19:00:53.214213+11	\N
310	Undo the first 10 things while referring to gardening	2014-01-08 19:00:55.761673+11	\N
311	Connect nothing with found objects	2014-01-08 19:00:57.871423+11	\N
312	Create in 5 ways like you mean it	2014-01-08 19:00:59.426625+11	\N
313	Build patience mindfully	2014-01-08 19:01:01.45776+11	\N
314	Maintain a collection of blue things over five minutes	2014-01-08 19:01:05.72167+11	\N
315	Document everything you see in the next 21 seconds with a public outcome in mind	2014-01-09 09:10:41.621009+11	\N
316	Manage a movement during business hours	2014-01-09 09:10:44.752251+11	\N
317	Photocopy  sticks so you are affected	2014-01-09 09:10:46.223263+11	\N
318	Form a nation-state in the colours of your flag	2014-01-09 09:10:48.493527+11	\N
319	Undo tools online	2014-01-09 09:10:55.564044+11	\N
320	Impose in 4 minutes thoughtfully	2014-01-09 09:10:56.467384+11	\N
321	Converse a see-saw as an indulgence	2014-01-09 09:10:58.126015+11	\N
322	Model spectacles then examine how it relates to the idea of revolution	2014-01-09 09:11:03.846272+11	\N
323	Source what is within reach and question your findings	2014-01-09 09:11:07.204554+11	\N
324	Wear patience and connect the dots	2014-01-09 09:11:10.485048+11	\N
325	Say a game of cards using the name of someone great	2014-01-09 09:11:15.35737+11	\N
326	Observe a log into a ball	2014-01-09 09:11:19.081912+11	\N
327	Wear a meal in a closed form	2014-01-09 09:11:20.125077+11	\N
328	Maintain a word you heard today in a graph of rainbow colours	2014-01-09 09:11:22.88218+11	\N
329	Break down the newspaper in pen	2014-01-09 09:11:26.698796+11	\N
330	Investigate a collection of blue things using a recording device	2014-01-09 09:11:28.097767+11	\N
331	Draw a community to a stranger	2014-01-09 09:11:30.228563+11	\N
332	Model government using found materials	2014-01-09 09:11:31.25422+11	\N
333	Make a 3-word manifesto so you are affected	2014-01-09 09:11:33.063379+11	\N
334	Draw a gathering in photoshop	2014-01-09 09:11:35.130996+11	\N
335	Play the least used glass from your cupboard efficiently	2014-01-09 09:11:36.150961+11	\N
336	Carve religiously like a spy	2014-01-09 09:11:37.601612+11	\N
337	Bring about government like it will change the world	2014-01-09 09:11:40.174164+11	\N
338	Multiply a word you heard today in a graph of rainbow colours	2014-01-09 09:11:41.929948+11	\N
339	Walk  the number of elastic bands you see on the ground directly	2014-01-09 09:11:44.443603+11	\N
340	Print out transparency into a drawing	2014-01-09 10:35:09.010185+11	\N
341	Take a sample of  in 7 ways so it is equal	2014-01-09 11:25:51.022209+11	\N
342	Price positive images of collective action into a ball	2014-01-09 11:25:54.522748+11	\N
343	Dis-organise a powerpoint presentation in a minute	2014-01-09 11:25:57.873274+11	\N
344	Explain a user-guide differently	2014-01-09 11:26:00.840018+11	\N
345	Take a sample of  the truth and send it to us via email	2014-01-09 22:33:19.010868+11	\N
346	Consider  using spray paint simply	2014-01-09 22:33:20.182519+11	\N
347	Print out outside as an indulgence	2014-01-09 22:33:22.258481+11	\N
348	Expand on the garden seriously	2014-01-09 22:33:23.937344+11	\N
349	Create a banner which refers to revolution while standing still	2014-01-09 22:33:24.963407+11	\N
350	Plan a small list during business hours	2014-01-09 22:33:27.36839+11	\N
351	Group multiple images of your thoughts while standing still	2014-01-09 22:33:28.875374+11	\N
352	Cut and paste future technologies imagining you are in isolation	2014-01-09 22:33:30.683503+11	\N
353	Model a comodity and document the findings to share	2014-01-09 22:33:32.079222+11	\N
354	Discover a nation-state efficiently	2014-01-09 22:33:33.732961+11	\N
355	Plan the amount of free time you have with a public outcome in mind	2014-01-09 22:33:35.123246+11	\N
356	Sing suburbs unintuitively	2014-01-09 22:33:35.863657+11	\N
357	Scrunch growth on the floor	2014-01-09 22:33:36.185433+11	\N
358	Paint an atlas openly	2014-01-09 22:33:36.358237+11	\N
359	Introduce currency with a catchy title	2014-01-09 22:33:36.508112+11	\N
360	Record religiously without language	2014-01-09 22:33:36.653436+11	\N
361	Paint revolution seriously	2014-01-09 22:33:36.882976+11	\N
362	Throw nothing without language	2014-01-09 22:33:37.029229+11	\N
363	Re-write a dollar using found materials	2014-01-09 22:33:38.139099+11	\N
364	Record a collection of edible greens backing it up with research	2014-01-09 22:33:38.284757+11	\N
365	Bring about something like a robot	2014-01-09 22:33:38.450067+11	\N
366	Redesign an image-editing program in the right order	2014-01-09 22:33:38.619022+11	\N
367	Bring about your camera by planning the next move	2014-01-09 22:33:40.135096+11	\N
368	Make up positive images of collective action as if functional	2014-01-09 22:33:41.77481+11	\N
369	Break down out the front of your house in a graph of blue hues	2014-01-09 22:33:44.414784+11	\N
370	Sing social justice of the future	2014-01-09 22:33:46.986754+11	\N
371	In your head, formulate a hole as a pie chart	2014-01-09 22:33:49.017832+11	\N
372	Source the political in a graph of blue hues	2014-01-09 22:33:51.22284+11	\N
373	Expand on everything into a drawing	2014-01-09 22:33:52.915415+11	\N
374	Collate something new like you mean it	2014-01-09 22:33:54.25635+11	\N
375	Turn around the ideal newspaper creatively	2014-01-09 22:33:54.685722+11	\N
376	Find an example of a new system in photographic form	2014-01-10 12:14:18.897791+11	\N
377	Toss practical objects as if functional	2014-01-10 12:14:51.11015+11	\N
378	Un-mechanise the impossible to closely notice the details	2014-01-10 12:14:51.983242+11	\N
379	Distribute the surface on your own	2014-01-10 12:14:54.655358+11	\N
380	Rearrange an organisation  over and over	2014-01-10 12:14:55.722896+11	\N
381	Seek a border now	2014-01-10 12:14:56.792533+11	\N
382	Write a letter about the political while referring to beehives	2014-01-10 12:14:57.76418+11	\N
383	Whittle a collection of blue things do this 4 times	2014-01-10 12:15:00.522796+11	\N
384	Pair the crowd thoughtfully	2014-01-10 12:15:02.282818+11	\N
385	Shape growth convincingly	2014-01-10 12:15:05.062806+11	\N
386	Change beans quickly	2014-01-10 12:15:06.072762+11	\N
387	Wander a user-guide like a robot	2014-01-10 12:15:08.703006+11	\N
388	Exhaust companion plants and connect the dots	2014-01-10 12:15:11.118455+11	\N
389	Toss around a uniform when you should be doing something else	2014-01-10 12:15:13.911923+11	\N
390	Read outside and document the findings to share	2014-01-10 12:15:19.051978+11	\N
391	Audit the idea of happiness temporarily	2014-01-10 12:15:22.852589+11	\N
392	Gather nothing so it reflects your values	2014-01-10 12:15:24.943373+11	\N
393	Collect the garden when you should be doing something else	2014-01-10 12:21:07.969369+11	\N
394	In your head, formulate your thoughts temporarily	2014-01-10 12:52:33.462834+11	\N
395	List a new world order when you should be doing something else	2014-01-10 12:52:36.493239+11	\N
396	Donate the rules of tennis as a map	2014-01-10 12:52:37.997498+11	\N
397	Colour in  something small  online	2014-01-10 13:14:32.284929+11	\N
398	Extract a piece of paper and speak the result in monotone	2014-01-10 13:14:32.285456+11	\N
399	Snap silver coins so it is equal	2014-01-10 13:14:32.288491+11	\N
400	Document practical objects in secret	2014-01-10 13:14:32.294701+11	\N
401	Take a sample of  future technologies without showing anyone	2014-01-10 13:14:32.29942+11	\N
402	Pair what failure means to you without thinking too much	2014-01-10 13:14:32.430355+11	\N
403	Confuse a useless thing then examine how it relates to the idea of revolution	2014-01-10 13:14:32.50543+11	\N
404	Price money and collate the results	2014-01-10 14:11:09.866116+11	\N
405	Define the rules of tennis while walking	2014-01-10 14:11:13.340532+11	\N
406	Redesign energy efficiency actively	2014-01-10 14:11:19.012143+11	\N
407	Rearrange a program in the right order	2014-01-10 14:11:21.810014+11	\N
408	Make a colour palette of the notion of work  hand-drawn	2014-01-10 14:11:29.954823+11	\N
409	Subvert a program in the form of instructions	2014-01-10 14:11:30.805405+11	\N
410	Paint a safe without thinking	2014-01-10 14:11:38.132666+11	\N
411	Follow an image-editing program and throw it out the window	2014-01-10 14:11:39.677501+11	\N
412	Toss around everything green and white actively	2014-01-10 14:11:42.097732+11	\N
413	Group multiple images of political rhetoric in the right order	2014-01-10 14:11:44.381452+11	\N
414	Represent the moon directly on the wall	2014-01-10 14:11:47.822696+11	\N
415	Hack the moon with your hands	2014-01-10 14:11:49.877418+11	\N
416	Maintain debt being completely dishonest	2014-01-10 14:12:19.403804+11	\N
417	Follow a gathering into a drawing	2014-01-10 14:12:20.182999+11	\N
418	Ruin a round table and question your findings	2014-01-10 14:12:21.139218+11	\N
419	Send through a megaphone one way	2014-01-10 14:12:22.40362+11	\N
420	Bring about a movement in a minute	2014-01-10 18:10:59.698215+11	\N
421	Abstract self-directed to a stranger	2014-01-12 11:32:59.009876+11	\N
422	Find the city efficiently	2014-01-12 11:33:05.827568+11	\N
423	Bring about something round like you mean it	2014-01-12 11:33:08.107577+11	\N
424	Act on a community using statistics	2014-01-12 11:33:10.503253+11	\N
425	Collect transparency privately	2014-01-12 11:33:12.303163+11	\N
426	Expand on a comodity then cut that in half	2014-01-12 11:33:12.767543+11	\N
427	Break down D.I.Y and pick your favourite	2014-01-12 11:33:13.301971+11	\N
428	Sculpt social justice and use it as currency	2014-01-12 11:33:13.804394+11	\N
429	Donate the headlines in another language	2014-01-12 11:33:14.384982+11	\N
430	Maintain a slogan online	2014-01-12 11:33:14.906146+11	\N
431	Suggest what you see backing it up with research	2014-01-12 11:33:15.425584+11	\N
432	Raise energy efficiency in a graph of blue hues	2014-01-12 11:33:15.961352+11	\N
433	Observe a movement like it will change the world	2014-01-12 11:33:16.845148+11	\N
434	Fill 5 steps as an indulgence	2014-01-12 11:33:17.319542+11	\N
435	Undo transparency freely	2014-01-12 11:33:17.720594+11	\N
436	Try the political as an indulgence	2014-01-12 11:33:18.186277+11	\N
437	Systematise something damaged to preexisting conditions	2014-01-12 11:33:18.616092+11	\N
438	Email a megaphone do this 3 times	2014-01-12 11:33:19.490499+11	\N
439	Exhaust everything green and white once	2014-01-12 11:33:20.02026+11	\N
440	Carve in 9 ways using only political rhetoric	2014-01-12 11:33:20.434831+11	\N
441	Follow the risks on the nature strip	2014-01-12 11:33:20.940029+11	\N
442	Split a capitalist notion side by side	2014-01-12 11:33:21.341088+11	\N
443	Order food supply chains do this 3 times	2014-01-12 11:33:21.786466+11	\N
444	Test the garden efficiently	2014-01-12 11:33:22.210007+11	\N
445	Un-mechanise the fourth world in monotone	2014-01-12 11:33:22.619685+11	\N
446	Gather together Australian symbolism on the floor	2014-01-12 11:33:23.075927+11	\N
447	Observe what you see to the public	2014-01-12 11:33:23.515327+11	\N
448	Draw a way around a problem unintuitively	2014-01-12 11:33:24.078234+11	\N
449	Break down into numbers a nation-state quietly	2014-01-12 11:33:24.633231+11	\N
450	Create a pamphlet explaining the truth like a robot	2014-01-12 11:33:26.168785+11	\N
451	Define something inside an irregular shape	2014-01-12 11:33:28.313009+11	\N
452	Photocopy in 6 minutes quickly	2014-01-12 11:33:30.058577+11	\N
453	Ruin migration inside an irregular shape	2014-01-12 11:33:30.863166+11	\N
454	Expand on the rules   to a stranger	2014-01-12 11:33:31.43284+11	\N
455	Make up particular ideas on a piece of paper	2014-01-12 11:33:31.883443+11	\N
456	Plant a user-guide spontaneously	2014-01-12 11:33:38.797128+11	\N
457	Subvert a nation-state without using words	2014-01-12 11:33:40.267394+11	\N
458	Follow an orchestra while talking to people	2014-01-12 11:33:40.787159+11	\N
459	Snap in gold thinking about form and function	2014-01-12 11:33:41.382379+11	\N
460	Discover a communal dinner to create a completely new image	2014-01-12 11:33:43.361992+11	\N
461	Bring what you see quietly	2014-01-12 11:33:50.748728+11	\N
462	Scrunch in 5 ways in public	2014-01-12 11:33:54.194292+11	\N
463	Impose something intricate unfairly	2014-01-12 11:33:57.499496+11	\N
464	Sew the least used glass from your cupboard in public space	2014-01-12 11:34:38.82761+11	\N
465	Create a limited edition in black and white	2014-01-12 11:34:40.53459+11	\N
466	Represent tools out the window	2014-01-12 11:34:40.909396+11	\N
467	Donate something damaged without showing anyone	2014-01-12 11:34:48.135049+11	\N
468	Throw 8 steps like you mean it	2014-01-12 11:34:48.659195+11	\N
469	Tap into something with a double meaning using a recording device	2014-01-12 11:34:49.034008+11	\N
470	Define an alternative with a public outcome in mind	2014-01-12 11:34:49.319092+11	\N
471	Collect something with a double meaning over 5 minutes	2014-01-12 11:34:49.468022+11	\N
472	Paint sticks and stones through a process of elimination	2014-01-12 11:35:33.051532+11	\N
473	Expand on what success means to you into a drawing	2014-01-12 11:35:58.830785+11	\N
474	Create a pamphlet explaining political rhetoric when you should be doing something else	2014-01-12 11:36:47.635547+11	\N
475	Create a banner which refers to a fireplace using statistics	2014-01-12 11:37:50.871914+11	\N
476	Define 7 synonyms in another language	2014-01-12 11:37:55.147492+11	\N
477	Bring about with a stranger when you should be doing something else	2014-01-12 11:37:58.208341+11	\N
478	Toss the future in public	2014-01-12 11:37:58.703885+11	\N
479	Invent your password while standing still	2014-01-12 11:37:58.847805+11	\N
480	Hack two people confidently	2014-01-12 11:37:59.068383+11	\N
481	Replicate the political over 12 minutes	2014-01-12 11:38:06.354732+11	\N
482	Discuss a garden creatively	2014-01-12 11:38:07.224517+11	\N
483	Gather a piece of paper in monotone	2014-01-12 11:38:07.63503+11	\N
484	Record in the most innovative way you can think of; into a drawing	2014-01-12 11:38:08.055874+11	\N
485	Test spectacles once	2014-01-12 11:38:08.335357+11	\N
486	Modify a megaphone repeatedly	2014-01-12 11:38:09.76266+11	\N
487	Build a useful object over 57 seconds	2014-01-12 11:38:10.15411+11	\N
488	Turn around in 2 minutes directly on the wall	2014-01-12 11:38:10.273438+11	\N
489	Research an organisation  to a stranger	2014-01-12 11:38:10.388583+11	\N
490	Try the garden with others	2014-01-12 11:38:10.723984+11	\N
491	Assemble a trail of destruction with optimism	2014-01-12 11:38:11.229482+11	\N
492	Act a common approach and question your findings	2014-01-12 11:38:11.495384+11	\N
493	Make a colour palette of two parties in the size of a book	2014-01-12 11:38:11.841197+11	\N
494	Use  a powerpoint presentation openly	2014-01-12 11:38:12.276902+11	\N
495	Toss around an orchestra one way	2014-01-12 11:38:38.003169+11	\N
496	Reverse engineer a set of instructions while referring to gardening	2014-01-12 11:38:38.093074+11	\N
497	Reverse in the most innovative way you can think of; imagining you are in isolation	2014-01-12 11:38:38.183463+11	\N
498	Colour data to preexisting conditions	2014-01-12 11:38:38.273043+11	\N
499	Define two people confidently	2014-01-12 11:38:38.403267+11	\N
500	Create a pamphlet explaining something intricate through trade	2014-01-12 11:38:38.498469+11	\N
501	Exhaust the surface in the right order	2014-01-12 11:38:38.604006+11	\N
502	Observe an orchestra and attempt it only once	2014-01-12 11:38:38.698698+11	\N
503	Undo a banana on a piece of paper	2014-01-12 11:38:38.789712+11	\N
504	Walk  9 steps in a closed form	2014-01-12 11:38:38.959663+11	\N
505	Email the chain of evidence secretly	2014-01-12 11:38:39.034635+11	\N
506	Sculpt an image-editing program loudly	2014-01-12 11:38:39.190632+11	\N
507	Replace your password without telling anyone	2014-01-12 11:38:39.310511+11	\N
508	Act on in gold  share it with us	2014-01-12 11:38:39.410751+11	\N
509	Picture with a stranger over time	2014-01-12 11:38:45.032988+11	\N
510	Create a banner which refers to a way around a problem through a process of elimination	2014-01-12 11:38:45.142614+11	\N
511	Wear the idea of nationality and question your findings	2014-01-12 11:38:45.212676+11	\N
512	Picture anything and send it to us via email	2014-01-12 11:38:45.36814+11	\N
513	Shape suburbs referring to your favourite	2014-01-12 11:38:45.43759+11	\N
514	Create debt in a closed form	2014-01-12 11:38:45.522868+11	\N
515	Seek a banana with the next person you see	2014-01-12 11:38:45.609813+11	\N
516	Split a community directly on the wall	2014-01-12 11:38:45.717364+11	\N
517	Move the notion of work  with other people	2014-01-12 11:38:45.827384+11	\N
518	Assemble a balloon referring to your favourite	2014-01-12 11:38:45.912682+11	\N
519	Raise how you might begin to withdraw your dependency on technology with optimism	2014-01-12 11:38:45.993818+11	\N
520	Photograph the rules of tennis hand-drawn	2014-01-12 11:38:46.092563+11	\N
521	Play everything green and white simply	2014-01-12 11:38:46.212771+11	\N
522	Deliberate a border using an old technique	2014-01-12 11:38:46.317876+11	\N
523	Act on change one way	2014-01-12 11:38:46.397002+11	\N
524	Picture transparency  share it with us	2014-01-12 11:39:06.896755+11	\N
525	Redesign something small  mindfully	2014-01-12 11:39:07.337024+11	\N
526	Use  a set of instructions as though your life depends on it	2014-01-12 11:39:07.677322+11	\N
554	Research collective action and explain why	2014-01-12 12:49:00.950083+11	\N
527	Systematise everything you see in the next 16 seconds like you mean it	2014-01-12 11:39:08.262971+11	\N
528	Write a list of  a new world order in capitals	2014-01-12 11:39:11.018876+11	\N
529	Cover the city loudly	2014-01-12 11:39:11.443766+11	\N
530	Carve the temperature out the window	2014-01-12 11:39:11.593913+11	\N
531	Explain a comodity with a catchy title	2014-01-12 11:39:11.713912+11	\N
532	Speak  a safe online	2014-01-12 11:39:11.899173+11	\N
533	Toss the first 10 things while talking to people	2014-01-12 11:39:12.128881+11	\N
534	Check real progress in the simplest way possible	2014-01-12 11:39:12.384101+11	\N
535	Undo management and combine	2014-01-12 11:39:12.588816+11	\N
536	Bring power hand-drawn	2014-01-12 11:39:12.783152+11	\N
537	Draw a meeting and attempt to extract a meaning	2014-01-12 11:39:12.994567+11	\N
538	Share the least used glass from your cupboard to capture the moment	2014-01-12 11:39:13.201893+11	\N
539	Take a sample of  a new object in your line of sight	2014-01-12 11:39:13.411456+11	\N
540	Define a dollar intuitively	2014-01-12 11:39:13.638268+11	\N
541	Collage a dollar by planning the next move	2014-01-12 11:39:13.903465+11	\N
542	Turn around in the most innovative way you can think of; in a closed form	2014-01-12 11:39:14.129915+11	\N
543	Take a photo of the colour palette of an image thinking about form and function	2014-01-12 11:39:14.364767+11	\N
544	Turn around a sculpture hand-drawn	2014-01-12 11:39:14.589295+11	\N
545	Price a collection of blue things without using words	2014-01-12 11:39:15.343406+11	\N
546	Move a debate while walking	2014-01-12 11:39:15.563799+11	\N
547	Scrunch companion plants diplomatically	2014-01-12 11:39:15.789041+11	\N
548	Snap a gathering in monotone	2014-01-12 11:39:16.023967+11	\N
549	Donate companion plants on the wall	2014-01-12 11:39:16.290896+11	\N
550	Undo something new unintuitively	2014-01-12 11:39:47.114977+11	\N
551	Discover management in a variety of ways	2014-01-12 11:39:51.326487+11	\N
552	Undo a chair to a stranger	2014-01-12 11:39:53.366051+11	\N
553	Reverse energy   online	2014-01-12 11:39:53.846281+11	\N
555	Send through Australian symbolism by planning the next move	2014-01-12 13:12:30.145329+11	\N
571	Hack migration so that we will be really surprised	2014-01-12 14:04:06.742426+11	\N
572	In your head, formulate currency on the wall	2014-01-12 14:04:07.576863+11	\N
573	Detail something intricate over five minutes	2014-01-12 14:04:09.534484+11	\N
556	Explain a see-saw referring to your favourite	2014-01-12 13:50:55.956309+11	\N
557	Find an example of a balloon inside an irregular shape	2014-01-12 13:51:08.656812+11	\N
558	Exhaust space with a public outcome in mind	2014-01-12 13:51:16.318359+11	\N
559	Wander outside in the right order	2014-01-12 13:51:30.628521+11	\N
560	Plan a safe in pen	2014-01-12 13:51:34.237349+11	\N
561	Toss around Australian symbolism without assistance	2014-01-12 13:51:40.201984+11	\N
562	Write about a community while referring to beehives	2014-01-12 13:51:47.198707+11	\N
563	Reverse suburbs unintuitively	2014-01-12 13:51:50.173628+11	\N
564	Ruin your thoughts for yourself	2014-01-12 13:51:52.912906+11	\N
565	Swap a nation-state with a catchy title	2014-01-12 13:51:57.539636+11	\N
566	Learn about energy efficiency in public	2014-01-12 13:52:04.494064+11	\N
567	Redesign patience in photographic form	2014-01-12 13:52:10.18283+11	\N
568	Introduce tools using a recording device	2014-01-12 13:52:19.06653+11	\N
569	Photograph power to capture the moment	2014-01-12 13:52:19.971404+11	\N
570	Speak  the least used glass from your cupboard hand-drawn	2014-01-12 14:03:34.028951+11	\N
574	Gather a collection of blue things using statistics	2014-01-12 14:04:39.081787+11	\N
575	Break money without assistance	2014-01-12 14:04:42.457909+11	\N
576	Split how your mobile phone is used on any given day imagining you are in isolation	2014-01-12 14:04:50.001568+11	\N
577	Systematise a chair side by side	2014-01-12 14:04:53.308778+11	\N
578	Explore a safe side by side	2014-01-12 14:04:54.026946+11	\N
579	Act a handshake  share it with us	2014-01-12 14:04:57.779753+11	\N
580	Form using spray paint thoroughly checking	2014-01-12 14:27:20.159348+11	\N
581	Email a uniform and record what you find	2014-01-12 14:27:21.7417+11	\N
582	Arrange debt and attempt it only once	2014-01-12 14:27:23.87976+11	\N
583	Check money without touching	2014-01-12 14:27:25.038971+11	\N
584	Check a small list and attempt it only once	2014-01-12 14:27:26.05209+11	\N
585	Colour in  a video  when you should be doing something else	2014-01-12 14:27:27.421426+11	\N
586	Break the fourth world to create a completely new image	2014-01-12 14:27:28.838456+11	\N
587	Give then photograph then examine how it relates to the idea of revolution	2014-01-12 14:27:30.538383+11	\N
588	Paint a boat thoroughly checking	2014-01-12 14:27:36.525974+11	\N
589	Collate a border quickly	2014-01-12 14:29:55.383305+11	\N
590	Undertake what is within reach thinking about form and function	2014-01-12 14:29:57.437527+11	\N
591	Donate the garden when you should be doing something else	2014-01-12 14:29:58.93395+11	\N
592	Colour in  a circle and put two and two together	2014-01-12 14:30:00.221491+11	\N
593	Paint in the most innovative way you can think of; using statistics	2014-01-12 14:30:01.998697+11	\N
594	Break down the best times freely	2014-01-12 14:30:04.003079+11	\N
595	Split a new world order in the simplest way possible	2014-01-12 14:30:05.39566+11	\N
596	Build a banana in the gallery	2014-01-12 14:30:49.923257+11	\N
597	Subvert the headlines without using words	2014-01-12 14:32:32.241543+11	\N
598	Calculate a hole so that we will be really surprised	2014-01-12 14:32:33.715326+11	\N
599	Dis-organise this and that directly on the wall	2014-01-12 14:32:35.64967+11	\N
600	Speak about a hole on your own	2014-01-12 14:32:39.092493+11	\N
601	Fill what is within reach for yourself	2014-01-12 14:32:40.907885+11	\N
602	Redesign particular ideas in pen	2014-01-12 14:32:41.366514+11	\N
603	Check Australian symbolism with optimism	2014-01-12 14:32:41.678818+11	\N
604	Send a newspaper clipping of a see-saw and throw it out the window	2014-01-12 14:32:42.094967+11	\N
605	Find an example of the risks in pen	2014-01-12 14:32:42.341849+11	\N
606	Systematise a powerpoint presentation without language	2014-01-12 14:32:42.767909+11	\N
607	Seek what failure means to you in a minute	2014-01-12 14:32:43.155601+11	\N
608	Act out something small  with others	2014-01-12 14:32:44.43866+11	\N
609	Extract in 6 minutes in public space	2014-01-12 14:32:46.418503+11	\N
610	Undo 5 steps so it reflects your values	2014-01-12 14:34:54.067859+11	\N
611	Paint the impossible in the form of a ransom note	2014-01-12 14:34:56.745981+11	\N
612	Bring how you are implicated in systems using blu-tak	2014-01-12 14:34:58.639312+11	\N
613	Break spectacles like it will change the world	2014-01-12 14:35:01.185394+11	\N
614	Follow currency without thinking	2014-01-12 14:35:02.972074+11	\N
615	Throw the risks in a graph of blue hues	2014-01-12 14:35:04.252921+11	\N
616	Photograph a powerpoint presentation using blu-tak	2014-01-12 14:35:09.351309+11	\N
617	Distribute a boat using a recording device	2014-01-12 14:35:11.22552+11	\N
618	Audit then photograph on a piece of paper	2014-01-12 14:35:12.572311+11	\N
619	Split a way around a problem for yourself	2014-01-12 14:35:14.857196+11	\N
620	Mark average while standing still	2014-01-12 14:35:53.908124+11	\N
621	Dis-organise the colour palette of an image and explain why	2014-01-12 14:35:56.491026+11	\N
622	Sign migration in a public place	2014-01-12 14:35:59.711742+11	\N
623	Act on particular ideas so you are affected	2014-01-12 14:36:00.750252+11	\N
624	Identify a balloon over and over	2014-01-12 14:36:01.666725+11	\N
625	Raise the game of tug-of-war quietly	2014-01-12 14:36:02.621464+11	\N
626	Draw your favourite image directly on the wall	2014-01-12 14:36:04.520611+11	\N
627	Make up beans in public	2014-01-12 14:36:04.969359+11	\N
628	Photocopy a small list and document the findings to share	2014-01-12 14:36:05.253007+11	\N
629	Whittle a nation-state with found objects	2014-01-12 14:36:05.448956+11	\N
630	Ruin something and explain why	2014-01-12 15:00:45.026394+11	\N
631	Photocopy D.I.Y in the simplest way possible	2014-01-12 15:00:49.959344+11	\N
632	Make 8 synonyms thoroughly checking	2014-01-12 15:00:57.651001+11	\N
633	Confuse the economy in photographic form	2014-01-12 15:01:01.032545+11	\N
634	Define the rules   without touching	2014-01-12 15:01:07.283511+11	\N
635	Raise something small  in secret	2014-01-12 15:01:08.6997+11	\N
636	Use  the fourth world directly	2014-01-12 15:01:10.452087+11	\N
637	In your head, formulate a boat like a spy	2014-01-12 15:01:12.024403+11	\N
638	Create a banner which refers to trees using only political rhetoric	2014-01-12 15:01:19.526247+11	\N
639	Illustrate something and combine	2014-01-12 15:01:21.802007+11	\N
640	Undo what failure means to you hand-drawn	2014-01-12 15:01:23.121879+11	\N
641	Group together spectacles like you mean it	2014-01-12 15:01:58.294174+11	\N
642	Take a sample of  5 steps in photoshop	2014-01-12 15:02:12.202737+11	\N
643	Change money in public	2014-01-12 15:02:16.463199+11	\N
644	Expose transparency in a minute	2014-01-12 15:02:21.123706+11	\N
645	Model sticks and stones into a ball	2014-01-12 15:02:53.10167+11	\N
646	Form 8 images without showing any proof	2014-01-12 15:05:16.636474+11	\N
647	Mark a circle with others	2014-01-12 16:32:30.413731+11	\N
648	Wander silver coins slowly	2014-01-12 16:32:31.262627+11	\N
649	Discover a useless thing seriously	2014-01-12 16:32:39.394309+11	\N
650	Cover silver coins in a public place	2014-01-12 16:32:45.096425+11	\N
651	Replicate spectacles confidently	2014-01-12 16:32:45.865388+11	\N
652	Cut and paste the colour palette of an image of the future	2014-01-12 16:32:46.942016+11	\N
653	Create a pamphlet explaining anything with a catchy title	2014-01-12 16:32:47.893651+11	\N
654	Continue an impracticle object in the right order	2014-01-12 16:32:48.181527+11	\N
655	Mark something inside a square	2014-01-12 16:32:50.004186+11	\N
656	Toss companion plants secretly	2014-01-12 16:32:50.3796+11	\N
657	Destroy companion plants considering last century	2014-01-12 16:32:50.724437+11	\N
658	Ruin a powerpoint presentation like a spy	2014-01-12 16:32:50.909793+11	\N
659	Carve everything you see in the next 16 seconds diplomatically	2014-01-12 16:32:53.885055+11	\N
660	Cut and paste Australian symbolism in public space	2014-01-12 16:32:54.702657+11	\N
661	Paint a debate inside a square	2014-01-12 16:32:58.174196+11	\N
662	Tap into what success means to you without showing any proof	2014-01-12 16:32:59.452285+11	\N
663	Dis-organise how you might begin to withdraw your dependency on technology so that we will be really surprised	2014-01-12 16:33:02.030406+11	\N
664	Form a scene using statistics	2014-01-12 16:33:02.734364+11	\N
671	Deliberate practical objects efficiently	2014-01-12 16:42:43.274928+11	\N
672	Undo collective action using an old technique	2014-01-12 16:42:51.003614+11	\N
673	Break down a border using only political rhetoric	2014-01-12 16:42:55.560281+11	\N
674	Deliberate weeds in secret	2014-01-12 16:42:56.965314+11	\N
675	Hand out everything using found materials	2014-01-12 16:42:58.361528+11	\N
676	Create a pamphlet explaining self-directed unintuitively	2014-01-12 16:42:59.804267+11	\N
677	Collage a fireplace unintuitively	2014-01-12 16:43:01.132515+11	\N
665	Describe space on the nature strip	2014-01-12 16:33:22.853117+11	\N
666	Group together at home while referring to gardening	2014-01-12 16:33:49.751978+11	\N
667	Draw a flier in the form of a ransom note	2014-01-12 16:33:51.284998+11	\N
668	Act on the political being completely dishonest	2014-01-12 16:33:53.195746+11	\N
669	Email a small list and record what you find	2014-01-12 16:33:55.055292+11	\N
670	Take a photo of a new slogan as a list	2014-01-12 16:37:24.771985+11	\N
678	Distribute energy   openly	2014-01-12 16:43:18.834498+11	\N
679	Speak  Australian symbolism as if functional	2014-01-12 16:43:21.24703+11	\N
680	Modify positive images of collective action diplomatically	2014-01-12 16:43:23.725235+11	\N
681	Take a sample of  this and that with tape	2014-01-12 16:43:25.164273+11	\N
682	Categorise power with found objects	2014-01-12 16:43:27.433044+11	\N
683	Wear a hole in the form of a ransom note	2014-01-12 16:43:28.940608+11	\N
684	Explain anything diplomatically	2014-01-12 16:43:32.663813+11	\N
685	Paint with watercolour beans mindfully	2014-01-12 16:44:55.54057+11	\N
686	Find silver coins by deduction	2014-01-12 16:44:56.22115+11	\N
687	Price the city without assistance	2014-01-12 16:44:57.95333+11	\N
688	Write about in 8 ways over 7 minutes	2014-01-12 16:44:59.276543+11	\N
689	Invent data in the form of instructions	2014-01-12 16:45:00.645257+11	\N
690	Sign what success means to you for yourself	2014-01-12 16:45:02.001652+11	\N
691	Redesign migration with found objects	2014-01-12 16:45:03.530668+11	\N
692	Seek focussed objects in the right order	2014-01-12 16:45:04.53289+11	\N
693	List management so you are affected	2014-01-12 16:45:13.752773+11	\N
694	Undo time in photoshop	2014-01-12 16:45:43.240316+11	\N
695	Paint with watercolour free time as a map	2014-01-12 16:45:44.24981+11	\N
696	Fill a water source loudly	2014-01-12 16:45:45.844125+11	\N
697	Swap a handshake as an indulgence	2014-01-12 16:45:47.497731+11	\N
698	Systematise acts of resistance in a graph of blue hues	2014-01-12 16:45:50.44026+11	\N
699	Collage one minute by deduction	2014-01-12 16:45:53.427987+11	\N
700	Take a sample of  money without showing any proof	2014-01-12 16:45:54.472219+11	\N
701	Hand out the rules   in photoshop	2014-01-12 16:45:56.335864+11	\N
702	Grow something with a double meaning using only political rhetoric	2014-01-12 16:45:57.33794+11	\N
703	Plant the truth by deduction	2014-01-12 16:45:58.246567+11	\N
704	Detail how you are implicated in systems thoroughly checking	2014-01-12 16:45:59.103895+11	\N
705	Cut and paste  sticks and record what you find	2014-01-12 16:46:36.3102+11	\N
706	Photocopy social justice over time	2014-01-12 16:46:37.301693+11	\N
707	Expand on a number you consider to be quite big in the form of a ransom note	2014-01-12 16:46:39.294932+11	\N
708	Price a limited edition openly	2014-01-12 16:46:41.337041+11	\N
709	Subvert your location mindfully	2014-01-12 16:46:43.366038+11	\N
710	Hack an image-editing program and attempt it only once	2014-01-12 16:46:44.242943+11	\N
711	Abstract a circle  share it with us	2014-01-12 16:47:23.764905+11	\N
712	Extract the amount of free time you have as if functional	2014-01-12 16:47:25.881718+11	\N
713	Speak  a flier and pick your favourite	2014-01-12 16:47:26.981682+11	\N
714	Tap into  sticks using statistics	2014-01-12 16:47:28.754411+11	\N
715	Collage a border to closely notice the details	2014-01-12 16:47:29.7426+11	\N
716	Break down into numbers self-directed on the wall	2014-01-12 16:47:32.630598+11	\N
717	Carve what you see on the wall	2014-01-12 16:47:33.674415+11	\N
718	Split how you are implicated in systems in a minute	2014-01-12 16:47:34.923601+11	\N
719	Teach a program randomly	2014-01-12 16:47:36.728037+11	\N
720	Create a banner which refers to a useful object using the name of someone great	2014-01-12 16:47:39.072381+11	\N
721	Expand on acts of resistance side by side	2014-01-12 16:47:40.217733+11	\N
722	Plant the future  share it with us	2014-01-12 16:47:41.787187+11	\N
723	Discover the moon while walking	2014-01-12 16:47:43.634635+11	\N
724	Destroy something with a double meaning in a closed form	2014-01-12 16:48:13.469124+11	\N
725	Make a colour palette of a slogan then cut that in half	2014-01-12 16:48:15.051546+11	\N
726	Destroy a boat with a public outcome in mind	2014-01-12 16:48:31.715013+11	\N
727	Define weeds in public space	2014-01-12 16:48:32.704167+11	\N
728	Cut and paste a 5-word manifesto using free software	2014-01-12 16:48:34.250772+11	\N
729	Consider  two people and double it	2014-01-12 16:48:35.387314+11	\N
730	Cut and paste out the front of your house over 2 minutes	2014-01-12 16:49:36.591398+11	\N
731	Replace a game of cards unintuitively	2014-01-12 16:49:37.333513+11	\N
732	Distribute the first 10 things with the next person you see	2014-01-12 16:49:43.37003+11	\N
733	Observe in 7 minutes when you should be doing something else	2014-01-12 16:49:51.678288+11	\N
734	Subvert branches privately	2014-01-12 16:51:15.117282+11	\N
735	Carve the least used glass from your cupboard using found materials	2014-01-12 16:51:19.118999+11	\N
736	Wander everything you see in the next 25 seconds unfairly	2014-01-12 16:51:19.823928+11	\N
737	Sign companion plants in the colours of your flag	2014-01-12 16:51:20.824752+11	\N
738	Find an example of a banana in a closed form	2014-01-12 16:51:21.741917+11	\N
739	Expand on companion plants to the world	2014-01-12 16:51:31.571571+11	\N
740	Walk  social justice in monotone	2014-01-12 16:51:38.097207+11	\N
741	Scratch positive images of collective action in photoshop	2014-01-12 16:51:50.590943+11	\N
742	Undo a flagpole like a spy	2014-01-12 16:51:53.311463+11	\N
743	Systematise something new on your own	2014-01-12 16:51:55.990065+11	\N
744	Type a border in a public place	2014-01-12 16:51:57.29216+11	\N
745	Invent energy   secretly	2014-01-12 16:52:00.891073+11	\N
746	Reverse the first 10 things using blu-tak	2014-01-14 09:46:33.20238+11	\N
747	Break a sculpture inside an irregular shape	2014-01-14 09:46:33.749991+11	\N
748	Collate Australian symbolism by planning the next move	2014-01-14 09:46:35.121939+11	\N
749	Grow the world over 57 seconds	2014-01-14 09:46:36.56576+11	\N
750	Email migration then cut that in half	2014-01-14 09:46:38.718282+11	\N
751	Source a user-guide as if functional	2014-01-14 09:46:41.085031+11	\N
752	Swap silver coins and speak the result in monotone	2014-01-14 09:46:44.603803+11	\N
753	Donate a water source in the colours of your flag	2014-01-14 09:46:46.569909+11	\N
754	Improve an impracticle object and explain why	2014-01-14 09:46:48.117094+11	\N
755	Investigate a positive gesture inside an irregular shape	2014-01-14 09:48:06.594536+11	\N
756	Exhaust something with a double meaning hand-drawn	2014-01-14 09:48:08.900313+11	\N
757	Expand on this and that like you mean it	2014-01-14 09:48:11.121067+11	\N
758	Make real progress in photographic form	2014-01-14 10:39:27.99679+11	\N
759	Send through a video  so its function is questionable	2014-01-14 10:39:29.087569+11	\N
760	Read nothing and combine	2014-01-14 10:39:30.721772+11	\N
761	Audit images of other people  and connect the dots	2014-01-14 10:39:31.826055+11	\N
762	Gather together what success means to you and connect the dots	2014-01-14 10:39:33.265412+11	\N
763	Gather your location quickly	2014-01-14 10:39:35.236703+11	\N
764	Raise real progress with the next person you see	2014-01-14 10:39:36.873118+11	\N
765	Borrow an organisation  in a graph of rainbow colours	2014-01-14 10:39:37.757399+11	\N
766	Bring about an atlas without using words	2014-01-14 10:39:38.611124+11	\N
767	Break down into numbers a flagpole mindfully	2014-01-14 10:39:38.855247+11	\N
768	Make up how your mobile phone is used on any given day do this 3 times	2014-01-14 10:39:38.8612+11	\N
769	Dis-organise a new world order with a pencil	2014-01-14 10:39:38.865275+11	\N
770	Use  what is within reach with scepticism	2014-01-14 10:39:39.504019+11	\N
771	Write about a useful object with other people	2014-01-14 10:39:40.055974+11	\N
774	Email sticks and stones for yourself	2014-01-14 12:13:25.308307+11	\N
775	Send through a small list during business hours	2014-01-14 12:13:26.176096+11	\N
772	Plot on a graph silver coins imagining you are in isolation	2014-01-14 10:39:40.061723+11	\N
787	Find an example of free time by planning the next move	2014-01-14 12:14:18.749124+11	\N
788	Categorise a debate by planning the next move	2014-01-14 12:14:20.873913+11	\N
789	Calculate your favourite image inside a square	2014-01-14 12:14:22.385568+11	\N
790	Cut and paste a circle diplomatically	2014-01-14 12:14:23.935624+11	\N
773	Move  sticks quickly	2014-01-14 10:39:40.097277+11	\N
780	Define the truth using statistics	2014-01-14 12:13:53.755708+11	\N
781	Find practical objects randomly	2014-01-14 12:13:56.927093+11	\N
782	Write a list of  the garden and use it as currency	2014-01-14 12:13:58.48501+11	\N
783	Perform Australian symbolism like you mean it	2014-01-14 12:13:59.886523+11	\N
784	Create a banner which refers to what is within reach and attempt it only once	2014-01-14 12:14:00.815831+11	\N
785	Write a letter about data into a ball	2014-01-14 12:14:03.069534+11	\N
786	Mime something openly	2014-01-14 12:14:06.531794+11	\N
791	Consider  the first 10 things to the public	2014-01-14 12:14:32.232149+11	\N
792	Paint with watercolour 8 images to closely notice the details	2014-01-14 12:14:34.131584+11	\N
793	Exhaust a small list helplessly	2014-01-14 12:14:35.679716+11	\N
794	Consider  self-directed to the world	2014-01-14 12:14:36.978162+11	\N
795	Write a letter about good and bad while walking	2014-01-14 12:14:38.089447+11	\N
796	Extract a balloon slowly	2014-01-14 12:14:39.72874+11	\N
797	Spend time thinking about a debate through trade	2014-01-14 12:14:42.244763+11	\N
776	Pair the notion of work  side by side	2014-01-14 12:13:36.098369+11	\N
777	Research currency like a robot	2014-01-14 12:13:37.686633+11	\N
778	Collect the fourth world while talking to people	2014-01-14 12:13:41.793611+11	\N
779	Detail the future in black and white	2014-01-14 12:13:43.663215+11	\N
798	Pair the best times in black and white	2014-01-14 12:40:01.115606+11	\N
799	Use  a new slogan thoughtfully	2014-01-14 12:40:02.8343+11	\N
800	Undo a scene over 57 seconds	2014-01-14 12:40:07.067572+11	\N
801	Subvert a communal dinner now	2014-01-14 12:40:09.363083+11	\N
802	Send a newspaper clipping of how your mobile phone is used on any given day with the next person you see	2014-01-14 12:40:11.587589+11	\N
803	Plot on a graph a word you heard today randomly	2014-01-14 12:40:14.396383+11	\N
804	Raise a new object and send it to us via email	2014-01-14 12:40:17.703172+11	\N
805	Email an alternative in the form of instructions	2014-01-14 12:40:19.387446+11	\N
806	Arrange random tasks on the wall	2014-01-14 12:40:20.762819+11	\N
807	Change a handshake with the next person you see	2014-01-14 12:40:23.633286+11	\N
808	Create a pamphlet explaining a get-together freely	2014-01-14 12:40:28.478696+11	\N
809	Seek a video  on the floor	2014-01-14 12:40:32.332268+11	\N
810	Take a photo of what is within reach do this 3 times	2014-01-14 12:40:33.578279+11	\N
811	Hack a community over 57 seconds	2014-01-14 12:40:37.408723+11	\N
812	Grow your favourite image efficiently	2014-01-14 12:40:38.46746+11	\N
813	Connect practical objects in a variety of ways	2014-01-14 12:40:39.794672+11	\N
814	Undo an image-editing program without telling anyone	2014-01-14 12:40:42.814355+11	\N
815	Maintain a powerpoint presentation to capture the moment	2014-01-14 12:40:46.392054+11	\N
816	Design time unfairly	2014-01-14 12:40:48.068274+11	\N
817	Throw a nation-state then cut that in half	2014-01-14 12:40:50.136183+11	\N
818	Collect a game of cards backing it up with research	2014-01-14 12:40:51.804254+11	\N
819	Toss 8 synonyms while walking	2014-01-14 12:40:58.07591+11	\N
820	Borrow the amount of free time you have then cut that in half	2014-01-14 12:41:00.227781+11	\N
821	Research the game of tug-of-war using only political rhetoric	2014-01-14 12:41:23.945296+11	\N
822	Find beans and throw it out the window	2014-01-14 12:41:25.385148+11	\N
823	Send a newspaper clipping of the crowd over 5 minutes	2014-01-14 12:41:27.012784+11	\N
824	Learn about the crowd side by side	2014-01-14 12:41:28.823878+11	\N
825	Split the game of tug-of-war with the next person you see	2014-01-14 12:41:30.457831+11	\N
826	Describe a circle and collate the results	2014-01-14 12:41:31.715087+11	\N
827	Send a newspaper clipping of the colour palette of an image without assistance	2014-01-14 12:41:35.840777+11	\N
828	Redesign something to a stranger	2014-01-14 12:41:38.260241+11	\N
829	Break down something round on your own	2014-01-14 12:41:40.93707+11	\N
830	Visualise a way around a problem without assistance	2014-01-14 12:41:46.615659+11	\N
831	Suggest a balloon in another language	2014-01-14 12:41:49.794343+11	\N
832	Write about a common approach using statistics	2014-01-14 12:41:50.963612+11	\N
833	Pair a collection of edible greens so that we will be really surprised	2014-01-14 12:41:54.205761+11	\N
834	Expose a game of cards on your own	2014-01-14 12:42:06.285733+11	\N
835	Scrunch a 12-word manifesto using only political rhetoric	2014-01-14 12:42:09.181906+11	\N
836	Take a sample of  how you might begin to withdraw your dependency on technology on your own	2014-01-14 12:42:11.116836+11	\N
837	In your head, formulate energy   hand-drawn	2014-01-14 12:42:13.706659+11	\N
838	Systematise a program confidently	2014-01-14 12:42:15.295392+11	\N
839	Collage the garden to capture the moment	2014-01-14 12:42:19.649963+11	\N
840	Shape trees systematically	2014-01-14 12:42:28.167245+11	\N
841	Collage a way around a problem unfairly	2014-01-14 12:42:30.878413+11	\N
842	Collect average in the simplest way possible	2014-01-14 12:42:32.940707+11	\N
843	Carve the best times backing it up with research	2014-01-14 12:42:34.717007+11	\N
844	Destroy the least used glass from your cupboard in capitals	2014-01-14 12:42:35.683673+11	\N
845	Check your location in 5 sentences	2014-01-14 12:42:38.464218+11	\N
846	Identify 5 steps as if functional	2014-01-14 12:42:40.026727+11	\N
847	Follow at home using statistics	2014-01-14 12:42:41.48778+11	\N
848	Arrange particular ideas out the window	2014-01-14 12:42:42.636922+11	\N
849	Find a log like a robot	2014-01-14 12:42:45.910643+11	\N
850	Check your love of a particular person relating to a gallery	2014-01-14 12:42:48.965463+11	\N
851	Scrunch a community confidently	2014-01-14 12:42:54.683923+11	\N
852	Redesign growth side by side	2014-01-14 12:42:56.037727+11	\N
853	Turn around how you are implicated in systems to a stranger	2014-01-14 12:42:58.033206+11	\N
854	Un-mechanise a gathering in a variety of ways	2014-01-14 12:43:01.430708+11	\N
855	Categorise a commodity directly	2014-01-14 12:43:02.865396+11	\N
856	Redesign Australian symbolism relating to a gallery	2014-01-14 12:43:04.86993+11	\N
857	Send random tasks do this 3 times	2014-01-14 12:43:09.194139+11	\N
858	Pair transparency and attempt it only once	2014-01-14 12:43:13.476219+11	\N
859	Collate revolution in the size of a book	2014-01-14 12:43:15.54924+11	\N
860	Check your password spontaneously	2014-01-14 12:43:23.768299+11	\N
861	Play spectacles while referring to gardening	2014-01-14 12:43:26.790149+11	\N
862	Break down into numbers your job once	2014-01-14 12:43:28.772029+11	\N
863	Play real progress as a pie chart	2014-01-14 12:43:30.567119+11	\N
864	Source future technologies repeatedly	2014-01-14 12:43:31.548844+11	\N
865	Dis-organise an impracticle object in the colours of your flag	2014-01-14 12:43:32.968505+11	\N
866	Make a word you heard today over five minutes	2014-01-14 12:43:34.639644+11	\N
867	Make a small list relating to a gallery	2014-01-14 12:43:36.47901+11	\N
868	Wander companion plants side by side	2014-01-14 12:43:43.710697+11	\N
869	Scratch positive images of collective action using only political rhetoric	2014-01-14 12:43:46.381429+11	\N
870	Gather together nothing in small-scale	2014-01-14 12:43:49.074938+11	\N
871	Categorise your location now	2014-01-14 12:43:51.710603+11	\N
872	Define a number you consider to be quite big to create a completely new image	2014-01-14 12:44:48.555847+11	\N
873	Subvert your favourite image slowly	2014-01-14 12:44:51.875698+11	\N
874	Audit a log unfairly	2014-01-14 12:44:56.030023+11	\N
875	Assemble a game of cards on the wall	2014-01-14 12:44:58.557358+11	\N
876	Reverse engineer the chain of evidence in secret	2014-01-14 12:45:02.723942+11	\N
877	Represent sticks and stones to a stranger	2014-01-14 12:45:04.815923+11	\N
878	Type migration one way	2014-01-14 12:45:13.041844+11	\N
879	Snap in the most innovative way you can think of; on the floor	2014-01-14 12:45:20.236584+11	\N
880	Colour in  a community addictively	2014-01-14 12:45:25.734888+11	\N
881	Expand on social justice helplessly	2014-01-14 12:45:29.809713+11	\N
882	Define a number you consider to be quite big during business hours	2014-01-14 12:45:36.528682+11	\N
883	Hand out a limited edition by deduction	2014-01-14 12:45:38.375845+11	\N
884	Gather together random tasks through trade	2014-01-14 12:45:41.799363+11	\N
885	Whittle a community using blu-tak	2014-01-14 12:45:43.735975+11	\N
1047	Use  two people unfairly	2014-01-14 21:55:32.036786+11	\N
886	Walk  with a stranger to the public	2014-01-14 12:45:48.821503+11	\N
887	Collect average without showing any proof	2014-01-14 12:45:50.354818+11	\N
888	Destroy what failure means to you do this 3 times	2014-01-14 12:45:52.894991+11	\N
889	Redesign everything to create a completely new image	2014-01-14 12:45:56.121512+11	\N
890	Assemble an image-editing program by deduction	2014-01-14 12:45:58.72652+11	\N
891	Represent a round table imagining you are in isolation	2014-01-14 12:46:01.103297+11	\N
892	Research the world openly	2014-01-14 12:46:04.010349+11	\N
893	Play nothing slowly	2014-01-14 12:46:19.163659+11	\N
894	Visualise 4 steps to initiate progress	2014-01-14 12:46:23.220456+11	\N
895	Toss around food supply chains do this 7 times	2014-01-14 12:46:31.075562+11	\N
896	Throw the fourth world randomly	2014-01-14 12:46:34.150683+11	\N
897	Draw food supply chains of the future	2014-01-14 12:46:35.463906+11	\N
898	Cut and paste D.I.Y without showing any proof	2014-01-14 12:46:36.810586+11	\N
899	Manage a collection of blue things with the next person you see	2014-01-14 12:46:38.192949+11	\N
900	Change a sculpture using statistics	2014-01-14 12:46:55.167678+11	\N
901	Create your thoughts as a list	2014-01-14 12:47:05.042119+11	\N
902	Speak about a boat and combine	2014-01-14 12:47:17.751498+11	\N
903	Make revolution in the form of instructions	2014-01-14 12:47:20.974218+11	\N
904	Photocopy a game of cards randomly	2014-01-14 12:47:30.140653+11	\N
905	Discover the rules of tennis to create a completely new image	2014-01-14 12:47:31.794893+11	\N
906	Form two parties and document the findings to share	2014-01-14 12:47:35.065767+11	\N
907	Deliver a limited edition in black and white	2014-01-14 12:47:45.188011+11	\N
908	Collate 11 synonyms and throw it out the window	2014-01-14 12:47:49.512524+11	\N
909	Plan an impracticle object helplessly	2014-01-14 12:47:50.830903+11	\N
910	Price 8 images out the window	2014-01-14 13:19:54.772215+11	\N
911	Paint the best times for yourself	2014-01-14 13:19:56.030544+11	\N
912	Swap free time without thinking too much	2014-01-14 13:19:57.060899+11	\N
913	Write about a collection of edible greens quietly	2014-01-14 13:19:58.536239+11	\N
914	Extract acts of resistance without thinking too much	2014-01-14 13:20:01.790604+11	\N
915	Describe a user-guide using watercolour	2014-01-14 13:20:03.273575+11	\N
916	Continue silver coins using the name of someone great	2014-01-14 13:20:04.695723+11	\N
917	Type your job do this 4 times	2014-01-14 13:20:09.413401+11	\N
918	Source a small list so it reflects your values	2014-01-14 13:20:10.802616+11	\N
919	Reverse engineer a new object creatively	2014-01-14 13:20:15.192394+11	\N
920	Type something without language	2014-01-14 13:20:16.549007+11	\N
921	Scrunch a trail of destruction as a map	2014-01-14 13:20:17.68897+11	\N
922	Design weeds to the public	2014-01-14 13:20:27.934551+11	\N
923	Subvert particular ideas in a minute	2014-01-14 13:20:36.004003+11	\N
924	Test social justice when you should be doing something else	2014-01-14 13:20:40.679908+11	\N
925	Photograph the first 10 things referring to your favourite	2014-01-14 13:20:42.47717+11	\N
930	Play out the front of your house do this 3 times	2014-01-14 13:21:41.972258+11	\N
931	Identify something in the gallery	2014-01-14 13:21:46.489407+11	\N
932	Rearrange the newspaper to the world	2014-01-14 13:21:48.800963+11	\N
933	Give a gathering while referring to beehives	2014-01-14 13:21:50.607451+11	\N
934	Design food supply chains over and over	2014-01-14 13:21:53.058441+11	\N
926	Shape an alternative quietly	2014-01-14 13:21:10.563664+11	\N
927	Write anything with a pencil	2014-01-14 13:21:14.931136+11	\N
928	Examine the ideal newspaper convincingly	2014-01-14 13:21:25.030405+11	\N
929	Make a colour palette of the political repeatedly	2014-01-14 13:21:26.844955+11	\N
935	Speak  something randomly	2014-01-14 13:21:57.760964+11	\N
936	Check the crowd in capitals	2014-01-14 13:21:59.784653+11	\N
937	Replace government together	2014-01-14 13:22:04.754316+11	\N
938	Create a banner which refers to tools without assistance	2014-01-14 13:22:06.125696+11	\N
939	Consider  an orchestra by deduction	2014-01-14 13:22:38.130572+11	\N
940	Split revolution with found objects	2014-01-14 13:22:42.765137+11	\N
941	Create a collection of edible greens online	2014-01-14 13:22:43.797005+11	\N
942	Toss around a hole and speak the result in monotone	2014-01-14 13:22:45.180346+11	\N
943	Detail transparency with a catchy title	2014-01-14 13:22:48.332661+11	\N
944	Check the economy while referring to beehives	2014-01-14 13:22:54.748096+11	\N
945	Define social justice while standing still	2014-01-14 13:22:56.170891+11	\N
946	Source government like you mean it	2014-01-14 13:22:57.735754+11	\N
947	Wander an image-editing program freely	2014-01-14 13:23:00.021412+11	\N
948	Teach the fourth world imagining you are in isolation	2014-01-14 13:23:01.628653+11	\N
949	Consider  6 synonyms like it will change the world	2014-01-14 13:23:04.132078+11	\N
950	Try at home online	2014-01-14 13:23:07.509371+11	\N
951	Type a movement using an old technique	2014-01-14 13:23:08.748699+11	\N
952	Borrow the rules of tennis systematically	2014-01-14 13:23:10.042788+11	\N
953	Colour suburbs in public space	2014-01-14 13:23:19.863445+11	\N
954	Multiply revolution with optimism	2014-01-14 13:23:24.118689+11	\N
955	Give in gold with the next person you see	2014-01-14 13:23:25.38548+11	\N
956	Follow the colour palette of an image in a graph of blue hues	2014-01-14 13:23:27.833551+11	\N
957	Modify the world thinking about form and function	2014-01-14 13:23:30.86476+11	\N
958	Extract a debate as an indulgence	2014-01-14 13:23:33.065345+11	\N
959	Grow the city referring to your favourite	2014-01-14 13:23:34.305511+11	\N
960	Confuse a garden like a robot	2014-01-14 13:23:43.027378+11	\N
961	Un-mechanise space into a drawing	2014-01-14 13:23:46.769638+11	\N
962	Describe a scene through trade	2014-01-14 13:23:49.937726+11	\N
963	Categorise the least used glass from your cupboard through trade	2014-01-14 13:23:50.905508+11	\N
964	Re-write 6 steps quickly	2014-01-14 13:23:52.940737+11	\N
965	Define a movement of the future	2014-01-14 13:23:54.053961+11	\N
966	Paint with watercolour your job using found materials	2014-01-14 13:24:05.840974+11	\N
967	Illustrate political rhetoric so that we will be really surprised	2014-01-14 13:24:06.061169+11	\N
968	Find an example of a piece of paper loudly	2014-01-14 13:24:09.280222+11	\N
969	Colour in  something with a pencil	2014-01-14 13:24:14.658935+11	\N
970	Cut and paste the game of tug-of-war in the gallery	2014-01-14 13:24:42.625705+11	\N
971	Replace a commodity to the public	2014-01-14 13:24:43.986361+11	\N
972	Undo a collection of blue things while talking to people	2014-01-14 13:24:55.038549+11	\N
973	Follow  sticks and send it to us via email	2014-01-14 13:25:00.548439+11	\N
974	Define acts of resistance in a variety of ways	2014-01-14 13:25:06.864421+11	\N
975	Write about one minute without showing any proof	2014-01-14 13:25:21.154863+11	\N
976	Collate anything through a process of elimination	2014-01-14 13:25:28.801623+11	\N
977	Modify real progress in the simplest way possible	2014-01-14 13:25:50.758247+11	\N
978	Detail a word you heard today helplessly	2014-01-14 13:25:54.844885+11	\N
979	Create a banner which refers to what failure means to you side by side	2014-01-14 13:25:59.168267+11	\N
980	Draw a circle quietly	2014-01-14 13:26:06.748147+11	\N
981	Borrow a 11-word manifesto using watercolour	2014-01-14 13:32:38.45904+11	\N
982	Change a limited edition referencing the idea of dis-organisation	2014-01-14 13:32:41.907648+11	\N
983	Modify how you might begin to withdraw your dependency on technology and use it as currency	2014-01-14 13:48:18.729021+11	\N
984	Discover practical objects in another language	2014-01-14 13:48:21.282197+11	\N
985	Introduce a flagpole creatively	2014-01-14 13:48:22.520911+11	\N
986	Visualise the newspaper using only political rhetoric	2014-01-14 13:48:23.21569+11	\N
987	Write a list of  nothing when you should be doing something else	2014-01-14 13:48:24.454911+11	\N
988	Define the crowd in 7 sentences	2014-01-14 13:48:24.975636+11	\N
989	Draw an image-editing program and collate the results	2014-01-14 13:48:25.750748+11	\N
990	Act out the risks with your hands	2014-01-14 13:48:26.264192+11	\N
991	Calculate a get-together then examine how it relates to the idea of revolution	2014-01-14 13:48:26.933884+11	\N
992	Impose a capitalist notion repeatedly	2014-01-14 13:48:27.576829+11	\N
993	Make a colour palette of a useful object in small-scale	2014-01-14 13:48:27.979979+11	\N
994	Create a pamphlet explaining your favourite image as though your life depends on it	2014-01-14 13:48:28.516544+11	\N
995	Confuse the least used glass from your cupboard referring to your favourite	2014-01-14 13:48:29.025439+11	\N
996	Form a 12-word manifesto in a minute	2014-01-14 13:48:53.372767+11	\N
997	Discover time in photoshop	2014-01-14 13:48:53.589265+11	\N
998	Impose good and bad now	2014-01-14 13:48:53.754057+11	\N
999	Paint with watercolour a community so it is equal	2014-01-14 13:48:53.886587+11	\N
1000	Create a meal to create a completely new image	2014-01-14 13:48:54.013716+11	\N
1001	Make the same thing privately	2014-01-14 14:10:40.373875+11	\N
1002	Protect a slogan like it will change the world	2014-01-14 14:10:44.901231+11	\N
1003	Break an image-editing program through trade	2014-01-14 14:10:46.624916+11	\N
1004	Toss the risks and attempt it only once	2014-01-14 14:10:56.197185+11	\N
1005	Throw outside inside an irregular shape	2014-01-14 14:11:01.034309+11	\N
1006	Give a meal in hardcopy	2014-01-14 14:11:02.424759+11	\N
1007	Collate the least used glass from your cupboard as a map	2014-01-14 14:12:17.963344+11	\N
1008	Visualise social justice like a robot	2014-01-14 14:12:19.964971+11	\N
1009	Price a way around a problem in small-scale	2014-01-14 14:12:21.339227+11	\N
1010	Document the world in a variety of ways	2014-01-14 14:12:29.957161+11	\N
1011	Sing political rhetoric repeatedly	2014-01-14 14:12:30.720854+11	\N
1012	Send through change like you mean it	2014-01-14 14:20:37.860743+11	\N
1013	Introduce political rhetoric like it will change the world	2014-01-14 14:20:40.057719+11	\N
1014	Suggest a scene with a pencil	2014-01-14 14:20:42.64784+11	\N
1015	Distribute what you see over 57 seconds	2014-01-14 14:20:45.415187+11	\N
1016	Undo what you see with the first pencil you find	2014-01-14 17:13:20.033729+11	\N
1017	Mark acts of resistance without touching	2014-01-14 17:13:33.096393+11	\N
1018	Extract a water source like you mean it	2014-01-14 17:14:22.263966+11	\N
1019	Fill Australian symbolism without showing any proof	2014-01-14 21:50:50.914617+11	\N
1020	Exhaust the same thing diplomatically	2014-01-14 21:51:00.264912+11	\N
1021	Invent good and bad by deduction	2014-01-14 21:51:06.332718+11	\N
1022	Investigate patience in secret	2014-01-14 21:51:07.907556+11	\N
1023	Distribute what success means to you in the simplest way possible	2014-01-14 21:51:09.292859+11	\N
1024	Cover the amount of free time you have into a drawing	2014-01-14 21:51:11.408274+11	\N
1025	Confuse something over 3 minutes	2014-01-14 21:51:13.012582+11	\N
1026	Walk  a collection of blue things using a recording device	2014-01-14 21:51:14.741797+11	\N
1027	Colour in  a trail of destruction when you should be doing something else	2014-01-14 21:51:17.521876+11	\N
1028	Write a letter about the world in pen	2014-01-14 21:51:18.946749+11	\N
1029	Detail a banana thinking about form and function	2014-01-14 21:51:19.966303+11	\N
1075	Send images of other people  without language	2014-01-14 22:33:55.321343+11	\N
1076	Consider  something in a minute	2014-01-14 22:33:57.581448+11	\N
1077	Categorise average to the world	2014-01-14 22:34:00.373076+11	\N
1078	Picture how you are implicated in systems so it is equal	2014-01-14 22:34:01.986285+11	\N
1030	Make up an alternative backing it up with research	2014-01-14 21:51:32.960257+11	\N
1031	Speak  the number of elastic bands you see on the ground with others	2014-01-14 21:51:35.767613+11	\N
1032	Deliberate everything green and white using an old technique	2014-01-14 21:51:36.572598+11	\N
1033	Raise what you see considering last century	2014-01-14 21:51:37.246781+11	\N
1034	Examine a safe on your own	2014-01-14 21:51:37.732356+11	\N
1035	Plan everything secretly	2014-01-14 21:51:38.006869+11	\N
1036	Raise the number of elastic bands you see on the ground to initiate progress	2014-01-14 21:51:38.22662+11	\N
1037	Follow a 8-word manifesto in the simplest way possible	2014-01-14 21:51:38.442532+11	\N
1038	Destroy a set of instructions in the simplest way possible	2014-01-14 21:51:41.626887+11	\N
1039	Plot on a graph a dollar with your hands	2014-01-14 21:51:49.940687+11	\N
1040	In your head, formulate energy   relating to a gallery	2014-01-14 21:51:58.380485+11	\N
1041	Arrange a border intuitively	2014-01-14 21:52:03.781568+11	\N
1042	Find an example of a safe differently	2014-01-14 21:52:05.677382+11	\N
1043	Investigate in 2 ways and use it as currency	2014-01-14 21:52:08.067092+11	\N
1044	Model focussed objects without touching	2014-01-14 21:52:16.399269+11	\N
1045	Consider  companion plants without thinking too much	2014-01-14 21:52:22.151329+11	\N
1046	Expand on your love of a particular person like a robot	2014-01-14 21:52:23.92554+11	\N
1058	Toss around a common approach without assistance	2014-01-14 21:57:57.21684+11	\N
1059	Un-mechanise an image-editing program thinking about form and function	2014-01-14 21:57:59.646178+11	\N
1060	Write future technologies using statistics	2014-01-14 21:58:01.742671+11	\N
1061	Learn about a water source using statistics	2014-01-14 21:58:05.905689+11	\N
1062	Visualise the temperature one way	2014-01-14 21:58:07.935811+11	\N
1063	Produce a meeting and explain why	2014-01-14 21:58:09.944112+11	\N
1064	Assemble the garden like you mean it	2014-01-14 21:58:13.318055+11	\N
1065	Introduce a game of cards with found objects	2014-01-14 21:58:14.896424+11	\N
1066	Cover a handshake to create a completely new image	2014-01-14 21:58:17.615105+11	\N
1067	Explore a trail of destruction differently	2014-01-14 21:58:24.52119+11	\N
1068	Document money in pen	2014-01-14 21:58:26.426556+11	\N
1069	Redesign in gold using an old technique	2014-01-14 21:58:28.797723+11	\N
1070	Act on real progress so you are affected	2014-01-14 21:58:31.636331+11	\N
1071	Wear a chair diplomatically	2014-01-14 21:58:35.970417+11	\N
1072	Write a letter about government with scepticism	2014-01-14 21:58:37.954074+11	\N
1073	Find an example of a capitalist notion differently	2014-01-14 21:58:39.994435+11	\N
1074	Consider  the ideal newspaper with others	2014-01-14 21:58:40.565119+11	\N
1048	Form a 2-word manifesto and speak the result in monotone	2014-01-14 21:57:14.423865+11	\N
1049	Build a dollar randomly	2014-01-14 21:57:18.107882+11	\N
1050	Speak  the colour palette of an image so you are affected	2014-01-14 21:57:19.501342+11	\N
1051	Cover something imagining you are in isolation	2014-01-14 21:57:21.889984+11	\N
1052	Impose sticks and stones over time	2014-01-14 21:57:25.135952+11	\N
1053	Examine D.I.Y mindfully	2014-01-14 21:57:27.268655+11	\N
1054	Carve a gathering as an indulgence	2014-01-14 21:57:28.67748+11	\N
1055	Plant patience online	2014-01-14 21:57:30.740395+11	\N
1056	Deliberate an atlas hand-drawn	2014-01-14 21:57:32.114648+11	\N
1057	Donate a slogan temporarily	2014-01-14 21:57:33.720518+11	\N
1079	Break down into numbers a piece of paper and connect the dots	2014-01-14 22:36:11.003965+11	\N
1080	Colour a word you heard today imagining you are in isolation	2014-01-14 22:36:13.142693+11	\N
1081	Protect practical objects confidently	2014-01-14 22:36:13.651924+11	\N
1082	Play the temperature during work hours	2014-01-14 22:36:14.092933+11	\N
1083	Collage a positive gesture while referring to gardening	2014-01-14 22:36:14.532117+11	\N
1084	Take a photo of 7 steps diplomatically	2014-01-14 22:36:14.95765+11	\N
1085	Break down anything with your hands	2014-01-14 22:36:16.317431+11	\N
1086	Deliberate a video  and document the findings to share	2014-01-14 22:36:16.587118+11	\N
1087	Un-mechanise debt once	2014-01-14 22:36:16.852159+11	\N
1088	Break down into numbers an impracticle object and attempt to extract a meaning	2014-01-14 22:36:17.102147+11	\N
1089	Dis-organise a set of instructions to capture the moment	2014-01-14 22:36:17.391809+11	\N
1090	Re-write something intricate without touching	2014-01-14 22:48:01.501961+11	\N
1091	Scrunch political rhetoric on the floor	2014-01-14 22:48:03.3961+11	\N
1092	Represent Australian symbolism and combine	2014-01-14 22:48:04.576046+11	\N
1093	Cut and paste a small list over five minutes	2014-01-14 22:48:05.586904+11	\N
1094	Tap into the least used glass from your cupboard creatively	2014-01-14 22:48:08.009908+11	\N
1095	Fill a megaphone so its function is questionable	2014-01-14 22:48:09.895729+11	\N
1096	Make a colour palette of spectacles being completely dishonest	2014-01-14 22:48:17.103189+11	\N
1097	Learn about political rhetoric using an old technique	2014-01-14 22:48:25.384643+11	\N
1098	Manage focussed objects unintuitively	2014-01-14 22:48:28.144192+11	\N
1099	Cut and paste the risks with a pencil	2014-01-14 22:48:31.514106+11	\N
1100	Publicly declare a list of rules in the form of instructions	2014-01-14 22:48:34.32156+11	\N
1101	Improve suburbs in hardcopy	2014-01-14 22:48:38.477339+11	\N
1102	Write about everything you see in the next 29 seconds and collate the results	2014-01-14 22:48:41.039281+11	\N
1103	Cut and paste a safe confidently	2014-01-14 22:48:44.952319+11	\N
1104	Calculate a piece of paper in photographic form	2014-01-14 22:48:46.71964+11	\N
1105	Move average to preexisting conditions	2014-01-14 22:48:49.931605+11	\N
1106	Try an orchestra relating to a gallery	2014-01-14 22:48:53.999822+11	\N
1107	Undo a gathering on the nature strip	2014-01-14 22:48:57.906093+11	\N
1108	Research growth so its function is questionable	2014-01-14 22:49:01.672949+11	\N
1109	Deliver a game of cards openly	2014-01-15 08:23:16.479571+11	\N
1110	Draw 11 synonyms online	2014-01-15 11:10:20.324279+11	\N
1111	Split branches online	2014-01-15 11:10:22.345158+11	\N
1112	Model a new object on the floor	2014-01-15 11:10:23.597206+11	\N
1113	Snap something intricate on a piece of paper	2014-01-15 11:10:25.707896+11	\N
1114	Dis-organise money and throw it out the window	2014-01-15 11:10:27.642404+11	\N
1115	Group multiple images of an alternative in small-scale	2014-01-15 11:10:30.157177+11	\N
1116	Gather what is within reach using found materials	2014-01-15 11:10:33.109142+11	\N
1117	Speak about Australian symbolism and explain why	2014-01-15 11:10:36.574605+11	\N
1118	Protect a list of rules in the form of instructions	2014-01-15 11:10:40.556479+11	\N
1119	Throw this and that without assistance	2014-01-15 11:10:43.254554+11	\N
1120	Plant a flier quietly	2014-01-15 11:10:45.382153+11	\N
1121	Sew the notion of work  without language	2014-01-15 14:28:56.717823+11	\N
1122	Sign a community side by side	2014-01-15 14:29:00.981471+11	\N
1123	Gather a useful object online	2014-01-15 14:29:06.844766+11	\N
1124	Seek an orchestra while talking to people	2014-01-15 14:29:08.818696+11	\N
1125	Check how you might begin to withdraw your dependency on technology convincingly	2014-01-15 14:29:11.707858+11	\N
1126	Donate nothing without touching	2014-01-15 14:29:19.741178+11	\N
1127	Collate self-directed to form a link to the past	2014-01-15 14:29:28.898536+11	\N
1128	Speak  random tasks by swapping	2014-01-15 14:29:34.439136+11	\N
1129	Create a pamphlet explaining energy efficiency without assistance	2014-01-15 14:29:37.976958+11	\N
1130	Break down into numbers your camera in monotone	2014-01-15 14:29:42.772436+11	\N
1131	Make free time with the next person you see	2014-01-15 14:29:47.761467+11	\N
1132	Research a community in a graph of rainbow colours	2014-01-15 14:29:51.081799+11	\N
1133	Gather together in 4 ways in a closed form	2014-01-15 14:30:19.696725+11	\N
1134	Whittle the first 10 things to preexisting conditions	2014-01-15 14:30:22.305899+11	\N
1135	Identify the surface over 3 minutes	2014-01-15 14:30:25.718383+11	\N
1136	Sculpt images of other people  over five minutes	2014-01-15 14:30:29.654705+11	\N
1137	Cover suburbs directly on the wall	2014-01-15 14:30:33.589499+11	\N
1138	Exhaust self-directed like it will change the world	2014-01-15 14:30:46.588394+11	\N
1139	Produce a handshake into a drawing	2014-01-15 14:30:51.724771+11	\N
1140	Break down into numbers something intricate on the floor	2014-01-15 14:30:56.364717+11	\N
1141	Re-write a meeting temporarily	2014-01-15 14:31:13.93225+11	\N
1142	Illustrate space in a variety of ways	2014-01-15 14:31:21.085212+11	\N
1143	Move a meeting then examine how it relates to the idea of revolution	2014-01-15 14:31:52.822199+11	\N
1144	Find an example of what success means to you and double it	2014-01-15 14:31:58.694005+11	\N
1145	Plant the garden in black and white	2014-01-15 14:32:12.983804+11	\N
1146	Discuss space over time	2014-01-15 14:32:15.201443+11	\N
1147	Systematise practical objects without language	2014-01-15 14:32:23.869129+11	\N
1148	Photocopy what failure means to you and attempt to extract a meaning	2014-01-15 14:32:35.061005+11	\N
1149	Impose the future in the gallery	2014-01-15 14:32:50.041244+11	\N
1150	Arrange a meeting in public space	2014-01-15 14:32:56.793371+11	\N
1151	Investigate food supply chains as an indulgence	2014-01-15 14:33:19.015999+11	\N
1152	Continue a 10-word manifesto without using words	2014-01-15 14:33:28.23403+11	\N
1153	Create a pamphlet explaining sticks and stones and attempt it only once	2014-01-15 14:33:37.649043+11	\N
1154	Plot on a graph debt using free software	2014-01-15 14:33:43.273464+11	\N
1155	Assemble space side by side	2014-01-15 14:33:46.103566+11	\N
1156	Collect the headlines mindfully	2014-01-15 14:33:49.366892+11	\N
1157	Hand out the headlines and record what you find	2014-01-15 14:33:51.557457+11	\N
1158	Break the surface on the wall	2014-01-15 14:33:56.167618+11	\N
1159	Paint with watercolour an image-editing program as an indulgence	2014-01-15 14:34:01.28026+11	\N
1160	Continue your camera through a process of elimination	2014-01-15 14:34:06.186756+11	\N
1161	Protect debt in photoshop	2014-01-15 14:34:11.123139+11	\N
1162	Publicly declare what success means to you and speak the result in monotone	2014-01-15 14:34:14.003825+11	\N
1163	Replace the surface thoughtfully	2014-01-15 14:34:19.304917+11	\N
1164	Arrange a hole online	2014-01-15 14:34:23.618811+11	\N
1165	Categorise the city diplomatically	2014-01-15 14:34:25.912738+11	\N
1166	Improve with a stranger in a public place	2014-01-15 15:51:30.482466+11	\N
1167	Un-mechanise the rules   addictively	2014-01-15 18:26:18.18973+11	\N
1168	Sing positive images of collective action unfairly	2014-01-15 18:26:19.236159+11	\N
1169	Distribute a megaphone while standing still	2014-01-15 18:26:19.660194+11	\N
1170	Introduce in gold using a recording device	2014-01-15 18:26:20.026173+11	\N
1171	Group multiple images of  sticks and attempt it only once	2014-01-15 18:26:20.199638+11	\N
1172	Plant a trail of destruction unfairly	2014-01-15 18:26:20.36685+11	\N
1173	Paint patience openly	2014-01-15 18:26:20.517442+11	\N
1174	Expose the game of tug-of-war being completely dishonest	2014-01-15 18:26:21.000007+11	\N
1175	Subvert anything in the simplest way possible	2014-01-15 18:26:22.391535+11	\N
1176	Explore silver coins repeatedly	2014-01-15 18:26:23.179598+11	\N
1177	Sew something small  to initiate progress	2014-01-15 18:26:23.713662+11	\N
1178	Categorise religiously while talking to people	2014-01-15 18:26:24.094648+11	\N
1179	Systematise real progress without assistance	2014-01-15 18:26:24.649178+11	\N
1180	Wander the first 10 things intuitively	2014-01-15 18:26:25.984001+11	\N
1181	Learn about revolution in the colours of your flag	2014-01-15 18:26:26.870059+11	\N
1182	Paint political rhetoric in the form of instructions	2014-01-15 18:26:27.309167+11	\N
1183	Replicate the political in a variety of ways	2014-01-15 18:26:27.811518+11	\N
1184	Act on the truth actively	2014-01-15 18:26:28.161031+11	\N
1185	Use  the least used glass from your cupboard once	2014-01-15 18:26:28.742229+11	\N
1186	Paint a positive gesture and pick your favourite	2014-01-15 18:26:28.971792+11	\N
1187	Speak about time obsessively	2014-01-15 18:26:32.431053+11	\N
1188	Discuss a trail of destruction in the colours of your flag	2014-01-15 18:26:32.630515+11	\N
1189	Check a meeting quietly	2014-01-15 18:26:32.800938+11	\N
1190	Protect a game of cards and combine	2014-01-15 18:26:33.026622+11	\N
1191	Cover in 3 minutes and connect the dots	2014-01-15 18:26:33.180448+11	\N
1192	Change something intricate to the world	2014-01-15 18:26:33.315999+11	\N
1193	Turn around a number you consider to be quite big into a drawing	2014-01-15 18:27:02.37669+11	\N
1194	Bring in the most innovative way you can think of; directly	2014-01-15 18:27:32.75383+11	\N
1195	Improve a collection of edible greens online	2014-01-15 18:27:32.956139+11	\N
1196	Plan data as a map	2014-01-15 18:27:33.425139+11	\N
1197	Share the rules of tennis differently	2014-01-15 18:27:33.805454+11	\N
1198	Distribute religiously with other people	2014-01-15 18:27:34.079904+11	\N
1199	Grow your location in the right order	2014-01-15 18:27:34.330505+11	\N
1200	Collage power in black and white	2014-01-15 18:27:34.698063+11	\N
1201	Speak about suburbs using blu-tak	2014-01-15 18:27:34.86223+11	\N
1202	Identify the best times without showing any proof	2014-01-15 18:27:35.027621+11	\N
1203	Make a flier to create a completely new image	2014-01-16 09:38:49.603525+11	\N
1204	Create a pamphlet explaining future technologies so that we will be really surprised	2014-01-16 09:45:50.124068+11	\N
1205	List government with other people	2014-01-16 09:45:50.302129+11	\N
1206	Whittle something so that we will be really surprised	2014-01-16 09:45:50.459642+11	\N
1207	Gather in the most innovative way you can think of; as a list	2014-01-16 09:45:52.232839+11	\N
1208	Throw the chain of evidence quietly	2014-01-16 09:45:53.922817+11	\N
1209	Categorise a user-guide temporarily	2014-01-16 09:45:54.989346+11	\N
1210	Break something with a double meaning helplessly	2014-01-16 09:45:55.443593+11	\N
1211	Hand out a trail of destruction in a graph of blue hues	2014-01-16 09:45:56.08003+11	\N
1212	Change the headlines using free software	2014-01-16 09:45:56.487454+11	\N
1213	Wander good and bad of the future	2014-01-16 09:45:56.744421+11	\N
1214	Fill a round table in black and white	2014-01-16 09:45:56.90744+11	\N
1215	Define D.I.Y of the future	2014-01-16 09:45:57.117244+11	\N
1216	Snap the rules of tennis while standing still	2014-01-16 09:45:57.374381+11	\N
1217	Mark random tasks unfairly	2014-01-16 09:45:57.54814+11	\N
1218	Act debt and collate the results	2014-01-16 09:45:57.749056+11	\N
1219	Collect a new system quietly	2014-01-16 09:45:57.930322+11	\N
1220	Design future technologies without touching	2014-01-16 09:45:58.138594+11	\N
1221	Wander a sculpture into a ball	2014-01-16 09:45:58.362135+11	\N
1222	Test power to capture the moment	2014-01-16 09:45:58.570718+11	\N
1223	Suggest a debate directly on the wall	2014-01-16 09:45:58.738652+11	\N
1224	Photocopy religiously with scepticism	2014-01-16 09:45:58.888831+11	\N
1225	Toss around a fireplace without assistance	2014-01-16 09:45:59.041291+11	\N
1226	Borrow a capitalist notion using free software	2014-01-16 09:45:59.183102+11	\N
1227	Design collective action in a minute	2014-01-16 09:45:59.325852+11	\N
1228	Write about the future openly	2014-01-16 09:45:59.464381+11	\N
1229	Expand on a limited edition in hardcopy	2014-01-16 09:45:59.608653+11	\N
1230	Sew a game of cards in a graph of rainbow colours	2014-01-16 09:45:59.910658+11	\N
1231	Act the garden in your line of sight	2014-01-16 09:46:00.23063+11	\N
1249	Play  sticks in black and white	2014-01-16 09:47:00.949729+11	\N
1250	Create something now	2014-01-16 09:47:02.838248+11	\N
1251	Change the amount of free time you have in another language	2014-01-16 09:47:03.699803+11	\N
1252	Discover a new world order repeatedly	2014-01-16 09:47:09.640753+11	\N
1253	Reverse engineer what you see backing it up with research	2014-01-16 09:47:10.13983+11	\N
1254	Change food supply chains secretly	2014-01-16 09:47:13.974969+11	\N
1255	Observe acts of resistance to preexisting conditions	2014-01-16 09:47:15.204653+11	\N
1256	Raise in gold with scepticism	2014-01-16 09:47:16.810898+11	\N
1257	Hand out a piece of paper in the gallery	2014-01-16 09:47:18.176106+11	\N
1258	Arrange an image-editing program by planning the next move	2014-01-16 09:47:19.30286+11	\N
1259	Carve migration together	2014-01-16 09:47:21.251567+11	\N
1260	Examine how your mobile phone is used on any given day using statistics	2014-01-16 09:47:22.11373+11	\N
1232	Un-mechanise the city confidently	2014-01-16 09:46:00.248392+11	\N
1233	Collate an image-editing program like you mean it	2014-01-16 09:46:00.33505+11	\N
1234	Introduce in gold without thinking	2014-01-16 09:46:00.471685+11	\N
1235	Turn around a limited edition with other people	2014-01-16 09:46:00.694434+11	\N
1236	Multiply what you see relating to a gallery	2014-01-16 09:46:00.829588+11	\N
1237	Gather your favourite image without telling anyone	2014-01-16 09:46:01.030023+11	\N
1238	Scrunch the temperature without showing anyone	2014-01-16 09:46:01.174489+11	\N
1239	Raise with a stranger in the size of a book	2014-01-16 09:46:01.318791+11	\N
1240	Check a nation-state through trade	2014-01-16 09:46:01.464344+11	\N
1241	Destroy the chain of evidence addictively	2014-01-16 09:46:01.598891+11	\N
1242	Arrange political rhetoric directly on the wall	2014-01-16 09:46:01.733775+11	\N
1243	Cover an image-editing program in a graph of blue hues	2014-01-16 09:46:02.001753+11	\N
1244	Sculpt the ideal newspaper to the world	2014-01-16 09:46:02.116731+11	\N
1245	Act on migration in a closed form	2014-01-16 09:46:02.219466+11	\N
1246	Wander a limited edition using the name of someone great	2014-01-16 09:46:02.346386+11	\N
1247	Shape suburbs over five minutes	2014-01-16 09:46:02.481606+11	\N
1248	Introduce a uniform as a list	2014-01-16 09:46:02.682544+11	\N
1261	Calculate acts of resistance in black and white	2014-01-16 09:47:57.659325+11	\N
1262	Manage a round table to form a link to the past	2014-01-16 09:47:59.544972+11	\N
1263	Picture outside to closely notice the details	2014-01-16 09:48:02.998923+11	\N
1264	Make up something intricate with no preconceived idea	2014-01-16 09:48:06.431562+11	\N
1265	Photocopy something new in hardcopy	2014-01-16 09:48:08.389725+11	\N
1266	Plan everything you see in the next 19 seconds using found materials	2014-01-16 09:48:17.22984+11	\N
1267	Manage transparency and explain why	2014-01-16 09:48:20.330917+11	\N
1268	Price suburbs in your line of sight	2014-01-16 09:48:28.288683+11	\N
1269	Destroy your thoughts when you should be doing something else	2014-01-16 09:48:36.351254+11	\N
1270	Write about something on the wall	2014-01-16 09:48:37.863298+11	\N
1271	Research your job and send it to us via email	2014-01-16 10:09:02.255505+11	\N
1272	Impose transparency of the future	2014-01-16 11:06:42.80883+11	\N
1273	Make up revolution without thinking	2014-01-16 11:06:44.00892+11	\N
1274	Turn around in the most innovative way you can think of; using a recording device	2014-01-16 11:06:45.192781+11	\N
1275	Investigate a user-guide efficiently	2014-01-16 11:06:45.294704+11	\N
1276	Undo the risks and document the findings to share	2014-01-16 11:06:48.937486+11	\N
1277	Exhaust a flagpole in your line of sight	2014-01-16 11:06:50.749878+11	\N
1278	Test focussed objects quickly	2014-01-16 11:21:17.290622+11	\N
1279	Colour a word you heard today diplomatically	2014-01-16 11:21:18.355157+11	\N
1280	Exhaust suburbs in a graph of rainbow colours	2014-01-16 11:21:20.559615+11	\N
1281	Colour in 9 ways obsessively	2014-01-16 11:21:22.345653+11	\N
1282	Draw a chair confidently	2014-01-16 11:21:23.714658+11	\N
1283	Collate energy   creatively	2014-01-16 11:21:30.035464+11	\N
1284	Turn around a boat and document the findings to share	2014-01-16 11:21:31.955159+11	\N
1285	Multiply positive images of collective action obsessively	2014-01-16 11:21:56.819201+11	\N
1286	Categorise focussed objects referring to your favourite	2014-01-16 11:21:58.485612+11	\N
1287	Price future technologies when you should be doing something else	2014-01-16 11:22:00.376621+11	\N
1288	Perform the amount of free time you have without thinking	2014-01-16 11:22:01.91759+11	\N
1289	Bring a water source as though your life depends on it	2014-01-16 11:22:19.256765+11	\N
1290	Multiply a small list in the gallery	2014-01-16 11:22:20.7843+11	\N
1291	Form a list of rules of the future	2014-01-16 11:22:23.111813+11	\N
1292	Type a limited edition in monotone	2014-01-16 11:22:25.25044+11	\N
1293	Categorise using spray paint and speak the result in monotone	2014-01-16 11:23:26.338761+11	\N
1294	Price the same word and throw it out the window	2014-01-16 11:23:28.124112+11	\N
1295	Make everything green and white thinking about form and function	2014-01-16 11:23:29.608482+11	\N
1296	Play how you might begin to withdraw your dependency on technology so that we will be really surprised	2014-01-16 11:23:31.28827+11	\N
1297	Draw a word you heard today to initiate progress	2014-01-16 11:23:34.189071+11	\N
1298	Suggest a balloon to preexisting conditions	2014-01-16 11:23:38.770037+11	\N
1299	Photograph a number you consider to be quite big and speak the result in monotone	2014-01-16 11:23:40.14216+11	\N
1300	Change a meal in monotone	2014-01-16 11:23:42.653708+11	\N
1301	Rearrange a meal simply	2014-01-16 11:23:44.499855+11	\N
1302	Hand out the game of tug-of-war into a drawing	2014-01-16 11:23:46.108856+11	\N
1303	Email a garden without telling anyone	2014-01-16 11:23:48.911898+11	\N
1304	Say a sculpture through a process of elimination	2014-01-16 11:23:56.261432+11	\N
1305	Document in gold during business hours	2014-01-16 11:24:50.831349+11	\N
1306	Mark the impossible considering last century	2014-01-16 11:24:52.076774+11	\N
1307	Wander money to form a link to the past	2014-01-16 11:24:52.187113+11	\N
1308	Collect a new world order and double it	2014-01-16 11:24:53.341214+11	\N
1309	Reverse a communal dinner with a public outcome in mind	2014-01-16 11:24:54.525871+11	\N
1310	Break down into numbers 8 images in photoshop	2014-01-16 11:24:55.857179+11	\N
1311	Observe a banana while referring to gardening	2014-01-16 11:24:57.970625+11	\N
1312	Write a list of  something in another language	2014-01-16 11:24:59.186098+11	\N
1313	Extract a way around a problem in 7 sentences	2014-01-16 11:25:02.68406+11	\N
1314	Paint a chair with scepticism	2014-01-16 11:25:04.164792+11	\N
1315	Define the impossible inside an irregular shape	2014-01-16 11:25:05.29361+11	\N
1316	Replace the political differently	2014-01-16 11:25:06.701305+11	\N
1317	Walk  the political on a piece of paper	2014-01-16 11:25:09.549879+11	\N
1318	Arrange everything with found objects	2014-01-16 11:25:30.240835+11	\N
1319	Make up a piece of paper on the wall	2014-01-16 11:25:31.707358+11	\N
1320	Build a new world order and throw it out the window	2014-01-16 11:25:32.991468+11	\N
1321	Illustrate the rules of tennis do this 6 times	2014-01-16 11:25:34.574559+11	\N
1322	Test how your mobile phone is used on any given day with tape	2014-01-16 11:25:38.200909+11	\N
1323	Carve a water source and attempt it only once	2014-01-16 11:25:39.503967+11	\N
1324	List a common approach on a piece of paper	2014-01-16 11:25:41.00614+11	\N
1325	In your head, formulate a small list and combine	2014-01-16 11:25:42.720135+11	\N
1326	Wander a useless thing randomly	2014-01-16 11:25:44.41456+11	\N
1327	Explore power to form a link to the past	2014-01-16 11:25:46.340595+11	\N
1328	Type a new object as an indulgence	2014-01-16 11:25:47.835218+11	\N
1329	Plant how you might begin to withdraw your dependency on technology temporarily	2014-01-16 11:25:49.132218+11	\N
1330	Visualise a new world order  share it with us	2014-01-16 11:25:50.555335+11	\N
1331	Split energy   directly	2014-01-16 11:26:08.427766+11	\N
1332	Find an example of two parties during work hours	2014-01-16 11:26:12.048008+11	\N
1333	Sew a gathering and collate the results	2014-01-16 11:26:15.743635+11	\N
1334	Group multiple images of an orchestra as a pie chart	2014-01-16 11:26:28.771809+11	\N
1335	Walk  in the most innovative way you can think of; with scepticism	2014-01-16 11:26:30.429538+11	\N
1336	Cut and paste what you see intuitively	2014-01-16 11:26:50.154473+11	\N
1339	Expand on a new system to closely notice the details	2014-01-16 15:41:47.36225+11	\N
1340	Mime what is within reach in capitals	2014-01-16 15:41:50.822232+11	\N
1341	Collage your love of a particular person addictively	2014-01-16 15:41:52.512682+11	\N
1342	Publicly declare a new system diplomatically	2014-01-16 15:41:54.750338+11	\N
1343	Snap tools over 21 hours	2014-01-16 15:41:56.184033+11	\N
1344	Visualise your love of a particular person creatively	2014-01-16 15:42:02.851766+11	\N
1345	Take a sample of  two people using a recording device	2014-01-16 15:42:07.225561+11	\N
1393	Borrow food supply chains over time	2014-01-16 15:50:59.160831+11	\N
1394	Explore social justice in monotone	2014-01-16 15:51:01.848921+11	\N
1395	Find an example of the political in pen	2014-01-16 15:51:02.867624+11	\N
1396	Make the newspaper in another language	2014-01-16 15:51:04.818784+11	\N
1416	Shape 8 steps in the gallery	2014-01-16 16:02:17.960956+11	\N
1417	Visualise a 5-word manifesto in pen	2014-01-16 16:02:24.180126+11	\N
1418	Break a new system efficiently	2014-01-16 16:02:27.684054+11	\N
1419	Invent the political  share it with us	2014-01-16 16:02:28.699654+11	\N
1420	Carve a limited edition without showing anyone	2014-01-16 16:02:29.835556+11	\N
1421	Undo 8 images of the future	2014-01-16 16:02:32.106328+11	\N
1422	Plant the number of elastic bands you see on the ground now	2014-01-16 16:02:37.436659+11	\N
1423	Destroy a useful object temporarily	2014-01-16 16:02:39.268825+11	\N
1424	Expose the rules of tennis repeatedly	2014-01-16 16:02:51.362367+11	\N
1425	Write a list of  an atlas efficiently	2014-01-16 16:02:55.322221+11	\N
1426	Break a log then examine how it relates to the idea of revolution	2014-01-16 16:02:58.851752+11	\N
1427	Scratch future technologies to create a completely new image	2014-01-16 16:03:03.888822+11	\N
1428	Build the best times do this 7 times	2014-01-16 16:03:06.459865+11	\N
1429	Define the surface in the simplest way possible	2014-01-16 16:03:08.109473+11	\N
1337	Gather together particular ideas quickly	2014-01-16 12:22:46.42364+11	\N
1338	Invent in 5 minutes do this 6 times	2014-01-16 13:15:25.539281+11	\N
1348	Borrow food supply chains without language	2014-01-16 15:45:23.118499+11	\N
1349	Find images of other people  without language	2014-01-16 15:45:24.159304+11	\N
1350	Deliberate transparency and record what you find	2014-01-16 15:45:29.135055+11	\N
1351	Rewrite the first 10 things using the name of someone great	2014-01-16 15:45:32.56443+11	\N
1352	Document everything green and white in a variety of ways	2014-01-16 15:45:36.805844+11	\N
1353	Hack the colour palette of an image to the public	2014-01-16 15:45:40.570268+11	\N
1354	Paint this and that in your line of sight	2014-01-16 15:45:45.935865+11	\N
1355	Collate particular ideas and double it	2014-01-16 15:45:50.750094+11	\N
1356	Play out the front of your house privately	2014-01-16 15:45:52.614343+11	\N
1357	Break down your password imagining you are in isolation	2014-01-16 15:45:54.196345+11	\N
1358	Grow a water source in your line of sight	2014-01-16 15:46:00.91163+11	\N
1359	Walk  a border efficiently	2014-01-16 15:46:03.230377+11	\N
1360	Send through the rules   and combine	2014-01-16 15:46:05.770189+11	\N
1361	Publicly declare political rhetoric diplomatically	2014-01-16 15:46:08.835303+11	\N
1362	Photocopy something intricate and connect the dots	2014-01-16 15:46:10.524072+11	\N
1374	Speak about your favourite image in photoshop	2014-01-16 15:48:56.366454+11	\N
1375	Send two parties to the public	2014-01-16 15:48:59.519484+11	\N
1376	Fill growth when you should be doing something else	2014-01-16 15:49:05.86884+11	\N
1377	Tap into the political intuitively	2014-01-16 15:49:07.994903+11	\N
1378	Send 8 images  share it with us	2014-01-16 15:49:09.15579+11	\N
1399	Throw a new world order in photographic form	2014-01-16 16:00:00.811501+11	\N
1346	Sign the number of elastic bands you see on the ground like a robot	2014-01-16 15:42:35.4491+11	\N
1347	Observe the city without assistance	2014-01-16 15:42:39.246406+11	\N
1363	Hand out at home with no preconceived idea	2014-01-16 15:47:11.814709+11	\N
1364	Gather a fireplace temporarily	2014-01-16 15:47:13.555694+11	\N
1365	Source to demonstrate  and collate the results	2014-01-16 15:47:18.637428+11	\N
1366	Discuss D.I.Y on the floor	2014-01-16 15:47:23.804103+11	\N
1397	Source the temperature imagining you are in isolation	2014-01-16 15:51:47.544255+11	\N
1367	Act on what success means to you helplessly	2014-01-16 15:47:34.81637+11	\N
1368	Un-mechanise a 4-word manifesto and connect the dots	2014-01-16 15:47:38.465387+11	\N
1369	Make a colour palette of something small  online	2014-01-16 15:47:52.508695+11	\N
1370	Perform a powerpoint presentation in the form of a ransom note	2014-01-16 15:48:03.507778+11	\N
1371	Plant future technologies to closely notice the details	2014-01-16 15:48:05.023574+11	\N
1372	Consider  a water source intuitively	2014-01-16 15:48:07.222837+11	\N
1373	Collage the newspaper through a process of elimination	2014-01-16 15:48:08.397345+11	\N
1379	Colour a hole slowly	2014-01-16 15:49:46.685453+11	\N
1380	Group together how you might begin to withdraw your dependency on technology using only political rhetoric	2014-01-16 15:49:57.146621+11	\N
1381	Expose beans actively	2014-01-16 15:49:58.691878+11	\N
1382	Collect patience mindfully	2014-01-16 15:50:01.635906+11	\N
1383	Seek a garden directly	2014-01-16 15:50:02.694672+11	\N
1384	Act at home actively	2014-01-16 15:50:04.366652+11	\N
1385	Manage the risks in a public place	2014-01-16 15:50:05.57957+11	\N
1386	Follow something small  using an old technique	2014-01-16 15:50:07.882857+11	\N
1400	Plan using spray paint relating to a gallery	2014-01-16 16:00:23.358852+11	\N
1401	Write about the same thing to capture the moment	2014-01-16 16:00:25.86945+11	\N
1402	Borrow in the most innovative way you can think of; with a catchy title	2014-01-16 16:00:27.404342+11	\N
1403	Sign self-directed in monotone	2014-01-16 16:00:29.795034+11	\N
1404	Distribute how you might begin to withdraw your dependency on technology in the size of a book	2014-01-16 16:00:33.243125+11	\N
1405	Change with a stranger convincingly	2014-01-16 16:00:35.724175+11	\N
1406	Collage something so it is equal	2014-01-16 16:00:37.516634+11	\N
1407	Whittle your camera and use it as currency	2014-01-16 16:00:51.54608+11	\N
1408	Snap the notion of work  by deduction	2014-01-16 16:00:55.312233+11	\N
1409	Reverse a banana over time	2014-01-16 16:00:59.847238+11	\N
1410	Plot on a graph an impracticle object on a piece of paper	2014-01-16 16:01:05.264103+11	\N
1411	Act an alternative together	2014-01-16 16:01:13.042786+11	\N
1412	Test the least used glass from your cupboard out the window	2014-01-16 16:01:14.579326+11	\N
1413	Price the first 10 things and document the findings to share	2014-01-16 16:01:17.019113+11	\N
1430	Grow the idea of happiness without assistance	2014-01-16 16:03:35.038758+11	\N
1431	Cut and paste a round table of the future	2014-01-16 16:03:36.287701+11	\N
1432	Rearrange sticks and stones in public space	2014-01-16 16:03:38.664528+11	\N
1387	Make up a user-guide with others	2014-01-16 15:50:28.816195+11	\N
1388	Confuse the colour palette of an image over time	2014-01-16 15:50:31.683181+11	\N
1389	Collage a slogan directly	2014-01-16 15:50:34.010408+11	\N
1390	Ruin the number of elastic bands you see on the ground in small-scale	2014-01-16 15:50:41.50306+11	\N
1391	Say a community as though your life depends on it	2014-01-16 15:50:44.163353+11	\N
1392	Define how your mobile phone is used on any given day and use it as currency	2014-01-16 15:50:47.998452+11	\N
1398	Multiply a circle diplomatically	2014-01-16 15:59:07.013177+11	\N
1414	Check a limited edition on the wall	2014-01-16 16:01:49.47447+11	\N
1415	Create a banner which refers to information in public space	2014-01-16 16:01:51.90618+11	\N
1433	Collate Australian symbolism hand-drawn	2014-01-16 16:03:56.165884+11	\N
1434	Undertake a video  on a piece of paper	2014-01-16 16:03:57.718731+11	\N
1435	Investigate currency considering last century	2014-01-16 16:03:59.314018+11	\N
1436	Check anything through a process of elimination	2014-01-16 16:04:07.470782+11	\N
1437	Price a collection of edible greens and collate the results	2014-01-16 16:04:09.445362+11	\N
1438	Research the best times like a robot	2014-01-16 16:04:12.030399+11	\N
1439	Calculate a list of rules one way	2014-01-16 16:04:13.676949+11	\N
1440	Give how your mobile phone is used on any given day and attempt it only once	2014-01-16 16:04:16.098664+11	\N
1441	Rearrange one minute together	2014-01-16 16:04:18.921996+11	\N
1442	Carve what success means to you repeatedly	2014-01-16 16:04:20.93374+11	\N
1443	Type a flagpole and put two and two together	2014-01-16 16:04:22.077442+11	\N
1444	Try a debate and pick your favourite	2014-01-16 16:04:27.283817+11	\N
1445	Arrange the chain of evidence efficiently	2014-01-16 16:04:28.607385+11	\N
1446	Picture a chair being completely dishonest	2014-01-16 16:04:30.06153+11	\N
1447	Take a sample of  one minute in another language	2014-01-16 16:04:46.514697+11	\N
1448	Break the future so it reflects your values	2014-01-16 16:04:48.708789+11	\N
1449	Undo the surface using free software	2014-01-16 16:04:55.982387+11	\N
1450	Expand on an alternative repeatedly	2014-01-16 16:04:57.545319+11	\N
1451	Find companion plants with a catchy title	2014-01-16 16:04:59.159553+11	\N
1452	Expose a slogan and attempt to extract a meaning	2014-01-16 16:05:00.626997+11	\N
1453	Source a collection of edible greens on a piece of paper	2014-01-16 16:05:02.642503+11	\N
1454	Find an example of everything  share it with us	2014-01-16 16:05:04.303292+11	\N
1455	Consider  a round table inside an irregular shape	2014-01-16 16:05:25.822685+11	\N
1456	Paint with watercolour the best times actively	2014-01-16 16:05:49.088641+11	\N
1457	Pair government and explain why	2014-01-16 16:05:50.822144+11	\N
1458	Pair something round being completely dishonest	2014-01-16 16:05:52.602419+11	\N
1459	Plan your favourite image freely	2014-01-16 16:05:54.171315+11	\N
1460	Seek what success means to you randomly	2014-01-16 16:05:57.205757+11	\N
1461	Examine the rules   and throw it out the window	2014-01-16 16:05:58.386185+11	\N
1462	Write about the idea of nationality during work hours	2014-01-16 16:06:00.944398+11	\N
1463	Spend time thinking about a log to preexisting conditions	2014-01-16 16:06:10.868721+11	\N
1464	Collect focussed objects intuitively	2014-01-16 17:19:13.72839+11	\N
1465	Spend time thinking about a chair and put two and two together	2014-01-16 17:19:14.868232+11	\N
1466	Sign the moon on a piece of paper	2014-01-17 16:40:31.160081+11	\N
1467	Reverse good and bad as a pie chart	2014-01-17 16:40:36.033606+11	\N
1468	Categorise your camera while talking to people	2014-01-18 16:54:33.147271+11	\N
1469	Colour a get-together as an indulgence	2014-01-18 16:54:36.032655+11	\N
1470	Identify branches diplomatically	2014-01-18 16:54:36.788203+11	\N
1471	Try a piece of paper seriously	2014-01-18 16:55:35.714452+11	\N
1472	Replace  sticks as if functional	2014-01-18 17:16:34.192661+11	118.209.81.43
1473	Sing space to initiate progress	2014-01-18 17:16:40.294625+11	118.209.81.43
1474	Act on an atlas in the form of a ransom note	2014-01-18 17:16:49.263283+11	118.209.81.43
1475	Gather together energy efficiency with other people	2014-01-18 22:23:46.612148+11	66.249.64.37
1476	Design an orchestra with no preconceived idea	2014-01-19 12:44:54.545906+11	118.209.81.43
1477	List a collection of edible greens and pick your favourite	2014-01-19 12:44:58.261426+11	118.209.81.43
1478	Exhaust a meeting in photoshop	2014-01-19 12:45:04.147352+11	118.209.81.43
1479	Multiply one minute without telling anyone	2014-01-19 12:45:05.781164+11	118.209.81.43
1480	Spend time thinking about a uniform over 57 seconds	2014-01-19 15:02:50.196566+11	139.216.147.253
1481	Paint with watercolour something efficiently	2014-01-19 15:03:03.934767+11	139.216.147.253
1482	Act on out the front of your house to the world	2014-01-19 15:04:42.656432+11	139.216.147.253
1483	Seek energy efficiency one way	2014-01-19 15:04:46.705392+11	139.216.147.253
1484	Walk  a fireplace using free software	2014-01-19 15:04:47.14495+11	139.216.147.253
1485	Colour a movement and collate the results	2014-01-19 15:04:47.536358+11	139.216.147.253
1486	Take a photo of weeds quickly	2014-01-19 15:04:47.83712+11	139.216.147.253
1487	Observe what success means to you by swapping	2014-01-19 15:04:48.046241+11	139.216.147.253
1488	Reverse engineer a trail of destruction without using words	2014-01-19 15:04:48.25037+11	139.216.147.253
1489	Grow a set of instructions while referring to beehives	2014-01-19 15:04:48.43032+11	139.216.147.253
1490	Share a round table while standing still	2014-01-19 15:04:48.630858+11	139.216.147.253
1491	Define money by deduction	2014-01-19 15:04:48.805132+11	139.216.147.253
1492	Swap the first 10 things while referring to gardening	2014-01-19 15:04:48.995089+11	139.216.147.253
1493	Collate images of other people  once	2014-01-19 15:04:49.136485+11	139.216.147.253
1494	Investigate your favourite image on the wall	2014-01-19 15:04:49.293716+11	139.216.147.253
1495	Hack branches over time	2014-01-19 15:04:49.459368+11	139.216.147.253
1496	Collate the least used glass from your cupboard simply	2014-01-19 15:04:49.603792+11	139.216.147.253
1497	Break down into numbers the surface to a stranger	2014-01-19 15:04:49.77047+11	139.216.147.253
1498	Extract a commodity as a pie chart	2014-01-19 15:04:49.948987+11	139.216.147.253
1499	Paint a trail of destruction diplomatically	2014-01-19 15:04:50.115512+11	139.216.147.253
1500	Collage 9 steps into a ball	2014-01-19 15:04:50.313068+11	139.216.147.253
1501	Represent an image-editing program using blu-tak	2014-01-19 15:04:50.42087+11	139.216.147.253
1502	Systematise the fourth world diplomatically	2014-01-19 15:04:50.583929+11	139.216.147.253
1503	Multiply out the front of your house while walking	2014-01-19 15:04:50.741561+11	139.216.147.253
1504	Reverse practical objects in the gallery	2014-01-19 15:04:50.914248+11	139.216.147.253
1505	Rewrite the world like you mean it	2014-01-19 15:04:51.064271+11	139.216.147.253
1506	Take a sample of  the political like a robot	2014-01-19 15:04:51.241304+11	139.216.147.253
1507	Define growth of the future	2014-01-19 15:04:51.416392+11	139.216.147.253
1508	Find information to create a completely new image	2014-01-19 15:04:51.55911+11	139.216.147.253
1509	Make a colour palette of your camera while referring to gardening	2014-01-19 15:04:51.716054+11	139.216.147.253
1510	Form currency backing it up with research	2014-01-19 15:04:51.861178+11	139.216.147.253
1511	Carve a community unfairly	2014-01-19 15:04:53.257343+11	139.216.147.253
1512	Calculate the idea of nationality referencing the idea of dis-organisation	2014-01-19 15:04:54.195563+11	139.216.147.253
1513	Publicly declare a safe in a minute	2014-01-19 15:04:54.915318+11	139.216.147.253
1514	Continue the colour palette of an image using a recording device	2014-01-19 15:04:55.340765+11	139.216.147.253
1515	Maintain the notion of work  in the form of instructions	2014-01-19 15:04:55.651766+11	139.216.147.253
1516	Write a letter about a 13-word manifesto in a public place	2014-01-19 15:08:41.312106+11	139.216.147.253
1517	Converse a user-guide without language	2014-01-19 15:08:52.913922+11	139.216.147.253
1518	Subvert a community in pen	2014-01-19 15:08:54.092503+11	139.216.147.253
1519	Plot on a graph one minute temporarily	2014-01-19 15:08:55.22178+11	139.216.147.253
1520	Systematise an atlas inside a square	2014-01-19 15:08:55.537546+11	139.216.147.253
1521	Research religiously with others	2014-01-19 15:08:57.384742+11	139.216.147.253
1523	Read a new world order in photographic form	2014-01-19 15:08:57.44966+11	139.216.147.253
1525	Hack space intuitively	2014-01-19 15:08:57.496136+11	139.216.147.253
1526	Redesign positive images of collective action like a robot	2014-01-19 15:08:57.567648+11	139.216.147.253
1527	Teach a new world order without thinking	2014-01-19 15:08:57.792296+11	139.216.147.253
1528	Photocopy a handshake with scepticism	2014-01-19 15:08:58.651105+11	139.216.147.253
1529	Replicate a meeting during work hours	2014-01-19 15:08:58.926433+11	139.216.147.253
1532	Swap a number you consider to be quite big so its function is questionable	2014-01-19 15:08:59.67018+11	139.216.147.253
1533	Break 8 steps to the world	2014-01-19 15:09:00.493467+11	139.216.147.253
1535	Gather together the number of elastic bands you see on the ground in public	2014-01-19 15:09:00.63562+11	139.216.147.253
1538	Manage focussed objects one way	2014-01-19 15:09:02.200216+11	139.216.147.253
1539	Detail power confidently	2014-01-19 15:09:02.316029+11	139.216.147.253
1542	Subvert in gold by deduction	2014-01-19 15:09:03.249455+11	139.216.147.253
1543	Undo energy   over 25 hours	2014-01-19 15:09:04.01666+11	139.216.147.253
1544	Collage everything you see in the next 20 seconds until you are happy with the end result	2014-01-19 15:09:04.221285+11	139.216.147.253
1545	Extract a meeting and speak the result in monotone	2014-01-19 15:09:06.047879+11	139.216.147.253
1550	Define acts of resistance online	2014-01-19 15:09:07.901801+11	139.216.147.253
1552	Test time over 12 hours	2014-01-19 15:09:09.887911+11	139.216.147.253
1553	Break down the chain of evidence over 57 seconds	2014-01-19 15:09:11.275464+11	139.216.147.253
1554	Hack information now	2014-01-19 15:09:19.405566+11	139.216.147.253
1555	Cut and paste the future and collate the results	2014-01-19 15:33:09.335882+11	139.216.147.253
1556	Sculpt at home of the future	2014-01-19 15:36:26.592876+11	101.119.28.4
1557	Undo something round hand-drawn	2014-01-19 15:38:13.622658+11	139.216.147.253
1558	Systematise a log during work hours	2014-01-19 15:38:18.964034+11	139.216.147.253
1559	Audit a collection of edible greens relating to a gallery	2014-01-19 15:38:37.359022+11	139.216.147.253
1560	Try two parties slowly	2014-01-19 15:38:42.279082+11	139.216.147.253
1584	Source your love of a particular person thinking about form and function	2014-01-19 22:52:20.693338+11	118.209.81.43
1585	Pair an impracticle object using statistics	2014-01-19 22:52:20.905123+11	118.209.81.43
1586	Model how you might begin to withdraw your dependency on technology in a graph of blue hues	2014-01-19 22:52:22.362962+11	118.209.81.43
1587	Make a useful object inside a square	2014-01-19 22:52:23.697732+11	118.209.81.43
1588	Cover management in the size of a book	2014-01-19 22:52:24.989039+11	118.209.81.43
1589	Break in 3 minutes with other people	2014-01-19 22:52:26.699593+11	118.209.81.43
1590	Donate a scene in a graph of rainbow colours	2014-01-19 22:52:27.738447+11	118.209.81.43
1591	Toss around future technologies loudly	2014-01-19 22:52:28.45777+11	118.209.81.43
1592	Try a slogan with tape	2014-01-19 22:52:29.583167+11	118.209.81.43
1522	Act out then photograph referring to your favourite	2014-01-19 15:08:57.428221+11	139.216.147.253
1524	Email a positive gesture slowly	2014-01-19 15:08:57.489782+11	139.216.147.253
1530	Scratch the risks and collate the results	2014-01-19 15:08:59.608861+11	139.216.147.253
1531	Ruin the colour palette of an image quietly	2014-01-19 15:08:59.639485+11	139.216.147.253
1534	Share a useful object as if functional	2014-01-19 15:09:00.498769+11	139.216.147.253
1536	Play religiously using a recording device	2014-01-19 15:09:01.114655+11	139.216.147.253
1537	Rewrite your location over 29 hours	2014-01-19 15:09:01.899765+11	139.216.147.253
1540	Record the surface referring to your favourite	2014-01-19 15:09:02.383302+11	139.216.147.253
1541	Write about a community in a variety of ways	2014-01-19 15:09:02.812684+11	139.216.147.253
1546	Sing space without thinking	2014-01-19 15:09:06.347271+11	139.216.147.253
1547	Destroy your favourite image with found objects	2014-01-19 15:09:07.564851+11	139.216.147.253
1548	Consider  a scene confidently	2014-01-19 15:09:07.616556+11	139.216.147.253
1549	Email a new world order creatively	2014-01-19 15:09:07.665704+11	139.216.147.253
1551	Scratch something with a double meaning on the floor	2014-01-19 15:09:09.225827+11	139.216.147.253
1561	Spend time thinking about time like you mean it	2014-01-19 15:39:07.461281+11	139.216.147.253
1562	Form an atlas efficiently	2014-01-19 15:39:08.926437+11	139.216.147.253
1563	Cut and paste something small  by deduction	2014-01-19 16:13:02.27865+11	139.216.147.253
1564	Learn about a meeting relating to a gallery	2014-01-19 16:13:04.348092+11	139.216.147.253
1565	Write a letter about a fireplace on the nature strip	2014-01-19 16:13:04.963954+11	139.216.147.253
1566	Photograph the least used glass from your cupboard slowly	2014-01-19 16:13:07.068895+11	139.216.147.253
1567	Donate beans while talking to people	2014-01-19 16:13:13.482097+11	139.216.147.253
1568	Multiply a meeting in a graph of blue hues	2014-01-19 16:13:20.47806+11	139.216.147.253
1569	Send a newspaper clipping of practical objects then examine how it relates to the idea of revolution	2014-01-19 16:13:22.428457+11	139.216.147.253
1570	Picture an alternative without telling anyone	2014-01-19 18:33:17.506059+11	139.216.147.253
1571	Illustrate trees by deduction	2014-01-19 18:33:54.071151+11	139.216.147.253
1572	Sing a collection of edible greens with scepticism	2014-01-19 18:34:58.130203+11	139.216.147.253
1573	Colour D.I.Y and collate the results	2014-01-19 21:05:36.84133+11	118.209.81.43
1574	Discover money then examine how it relates to the idea of revolution	2014-01-19 21:05:37.588584+11	118.209.81.43
1575	Donate a way around a problem until you are happy with the end result	2014-01-19 21:05:40.945713+11	118.209.81.43
1576	Shape transparency in public	2014-01-19 21:05:48.802834+11	118.209.81.43
1577	Continue a banana and pick your favourite	2014-01-19 21:05:51.477834+11	118.209.81.43
1578	Photograph your camera and question your findings	2014-01-19 21:05:55.226003+11	118.209.81.43
1579	Represent in 6 ways privately	2014-01-19 21:26:59.662876+11	118.209.81.43
1580	Snap a hole and pick your favourite	2014-01-19 22:40:23.741561+11	118.209.81.43
1581	Whittle the chain of evidence by deduction	2014-01-19 22:40:27.169677+11	118.209.81.43
1582	Explain the city openly	2014-01-19 22:40:28.847023+11	118.209.81.43
1583	Pair management and attempt to extract a meaning	2014-01-19 22:40:33.323312+11	118.209.81.43
1593	Improve with a stranger in a public place	2014-01-20 11:51:14.829654+11	66.249.75.213
1594	Speak about the same thing in a minute	2014-01-20 19:11:58.751398+11	118.209.81.43
1595	Calculate beans to a stranger	2014-01-20 19:24:32.769909+11	118.209.81.43
1596	Bring energy   in a graph of blue hues	2014-01-20 19:24:33.249273+11	118.209.81.43
1597	Throw a banana diplomatically	2014-01-20 19:24:33.424354+11	118.209.81.43
1598	Examine a gathering loudly	2014-01-20 19:24:33.76403+11	118.209.81.43
1599	Split energy efficiency through a process of elimination	2014-01-20 19:24:34.234197+11	118.209.81.43
1600	Rewrite something quietly	2014-01-20 19:24:34.38508+11	118.209.81.43
1601	Plant sticks and stones and connect the dots	2014-01-20 19:24:34.640747+11	118.209.81.43
1602	Ruin a game of cards unfairly	2014-01-20 19:24:34.749133+11	118.209.81.43
1603	Walk  a positive gesture quietly	2014-01-20 19:24:34.840087+11	118.209.81.43
1604	List the political in the size of a book	2014-01-20 19:24:34.965806+11	118.209.81.43
1605	Whittle the amount of free time you have like it will change the world	2014-01-20 19:24:35.079993+11	118.209.81.43
1606	Re-write spectacles and question your findings	2014-01-20 19:24:35.194437+11	118.209.81.43
1607	Grow the garden thinking about form and function	2014-01-20 19:24:35.884709+11	118.209.81.43
1608	Discover the political using a recording device	2014-01-20 19:24:36.099481+11	118.209.81.43
1609	Collate a limited edition diplomatically	2014-01-20 19:24:36.224681+11	118.209.81.43
1610	Split in 7 ways inside an irregular shape	2014-01-20 19:24:36.474257+11	118.209.81.43
1611	Define the surface with other people	2014-01-20 21:01:39.299256+11	118.209.81.43
1612	Form the institution spontaneously	2014-01-20 21:01:41.515372+11	118.209.81.43
1613	Un-mechanise free time once	2014-01-20 21:01:43.230364+11	118.209.81.43
1614	Split the crowd like it will change the world	2014-01-20 21:01:44.375251+11	118.209.81.43
1615	Record how you might begin to withdraw your dependency on technology without thinking too much	2014-01-20 21:04:30.078527+11	118.209.81.43
1616	Un-mechanise your favourite image quickly	2014-01-20 21:04:35.202984+11	118.209.81.43
1617	Read real progress actively	2014-01-20 21:04:38.738529+11	118.209.81.43
1618	Draw nothing with a public outcome in mind	2014-01-20 21:04:40.628352+11	118.209.81.43
1619	Calculate the colour palette of an image convincingly	2014-01-20 21:04:45.286533+11	118.209.81.43
1620	Confuse random tasks using free software	2014-01-20 21:04:48.507076+11	118.209.81.43
1621	Introduce companion plants without using words	2014-01-20 21:04:51.070984+11	118.209.81.43
1622	Share your thoughts then examine how it relates to the idea of revolution	2014-01-20 21:04:54.16739+11	118.209.81.43
1623	Use  acts of resistance then cut that in half	2014-01-20 21:04:56.215137+11	118.209.81.43
1624	Shape suburbs as a pie chart	2014-01-20 21:05:00.436049+11	118.209.81.43
1625	Learn about the political and put two and two together	2014-01-20 21:05:25.119746+11	118.209.81.43
1626	Act out something round in the colours of your flag	2014-01-20 21:05:27.54538+11	118.209.81.43
1627	Make a colour palette of the crowd quickly	2014-01-20 21:05:30.733795+11	118.209.81.43
1628	Wear the first 10 things to the world	2014-01-20 21:05:32.773889+11	118.209.81.43
1629	Paint something damaged once	2014-01-20 21:21:04.340946+11	118.209.81.43
1630	Send a newspaper clipping of food supply chains using watercolour	2014-01-20 22:07:14.405644+11	118.209.81.43
1631	Represent energy efficiency in a closed form	2014-01-20 22:07:15.655393+11	118.209.81.43
1632	Subvert 8 images in a variety of ways	2014-01-20 22:07:16.074635+11	118.209.81.43
1633	Give something and speak the result in monotone	2014-01-20 22:07:16.465643+11	118.209.81.43
1634	Categorise a useless thing in small-scale	2014-01-20 22:07:16.660615+11	118.209.81.43
1635	Act on a scene through a process of elimination	2014-01-20 22:07:16.854336+11	118.209.81.43
1636	Bring about a slogan actively	2014-01-20 22:07:17.030407+11	118.209.81.43
1637	In your head, formulate your camera and explain why	2014-01-20 22:07:17.190645+11	118.209.81.43
1638	Research a border thoughtfully	2014-01-20 22:07:17.380078+11	118.209.81.43
1639	Record a debate until you are happy with the end result	2014-01-20 22:07:17.58995+11	118.209.81.43
1640	Bring about future technologies freely	2014-01-20 22:07:17.765443+11	118.209.81.43
1641	Wander what failure means to you so its function is questionable	2014-01-20 22:07:18.192463+11	118.209.81.43
1642	Invent good and bad without assistance	2014-01-20 22:07:18.455367+11	118.209.81.43
1643	Produce future technologies diplomatically	2014-01-20 22:07:19.090524+11	118.209.81.43
1644	Cut and paste what you see like a robot	2014-01-20 22:07:27.058818+11	118.209.81.43
1645	Toss a meeting with a public outcome in mind	2014-01-20 22:54:25.27793+11	118.209.81.43
1646	Define data freely	2014-01-20 22:54:25.791221+11	118.209.81.43
1647	Follow the idea of nationality and connect the dots	2014-01-20 22:54:25.961654+11	118.209.81.43
1648	Pair a logo online	2014-01-20 22:54:26.175938+11	118.209.81.43
1649	Toss around a nation-state quietly	2014-01-20 22:54:26.496193+11	118.209.81.43
1650	Sculpt the newspaper in the form of instructions	2014-01-21 04:41:04.704562+11	66.249.77.230
1651	Turn around a word you heard today in monotone	2014-01-21 08:03:08.989206+11	118.209.81.43
1652	Undo the truth in a variety of ways	2014-01-21 08:03:14.453329+11	118.209.81.43
1653	Exhaust this and that over five minutes	2014-01-21 08:03:17.003164+11	118.209.81.43
1654	Split a water source to preexisting conditions	2014-01-21 08:03:18.898967+11	118.209.81.43
1655	Write your thoughts using blu-tak	2014-01-21 08:03:21.551308+11	118.209.81.43
1656	Systematise the fourth world obsessively	2014-01-21 08:03:23.508086+11	118.209.81.43
1657	Research growth backing it up with research	2014-01-21 08:03:29.864471+11	118.209.81.43
1658	Bring the institution of the future	2014-01-21 08:03:33.059641+11	118.209.81.43
1659	Replicate debt with others	2014-01-21 08:03:36.08959+11	118.209.81.43
1660	Rewrite a meeting in a graph of rainbow colours	2014-01-21 08:03:38.980538+11	118.209.81.43
1661	Colour a log with a pencil	2014-01-21 08:03:43.069023+11	118.209.81.43
1662	Plot on a graph  sticks privately	2014-01-21 08:03:45.578951+11	118.209.81.43
1663	Raise a chair in the form of a ransom note	2014-01-21 08:03:50.204598+11	118.209.81.43
1664	Undo the city loudly	2014-01-21 08:03:53.509863+11	118.209.81.43
1665	Produce your favourite image without telling anyone	2014-01-21 08:03:55.305558+11	118.209.81.43
1666	Document a piece of paper using only political rhetoric	2014-01-21 08:03:57.520112+11	118.209.81.43
1667	Explore money with a public outcome in mind	2014-01-21 08:04:02.129867+11	118.209.81.43
1668	Group together a program unintuitively	2014-01-21 08:04:04.608769+11	118.209.81.43
1669	Collate currency during business hours	2014-01-21 08:04:07.444541+11	118.209.81.43
1670	Cut and paste the political for yourself	2014-01-21 08:04:09.299395+11	118.209.81.43
1671	Converse a list of rules openly	2014-01-21 08:04:11.02015+11	118.209.81.43
1672	Create a set of instructions efficiently	2014-01-21 08:04:13.496551+11	118.209.81.43
1673	Dis-organise practical objects in public	2014-01-21 08:04:15.322144+11	118.209.81.43
1674	Brainstorm what success means to you one way	2014-01-21 08:04:16.897192+11	118.209.81.43
1675	Replicate at home by planning the next move	2014-01-21 14:28:43.76437+11	203.217.57.96
1676	Present a useless thing over 29 hours	2014-01-21 14:28:45.213055+11	203.217.57.96
1677	Improve with a stranger in a public place	2014-01-21 22:35:20.692648+11	118.209.81.43
1678	In your head, formulate your favourite image in a public place	2014-01-21 22:38:41.967518+11	66.249.74.155
1679	Abstract everything once	2014-01-21 22:44:35.661083+11	118.209.81.43
1680	Converse a hole thoroughly checking	2014-01-21 22:44:41.886986+11	118.209.81.43
1687	Grow your thoughts referencing the idea of dis-organisation	2014-01-21 23:05:41.361597+11	118.209.81.43
1688	Send a communal dinner unfairly	2014-01-21 23:05:45.014703+11	118.209.81.43
1689	Check a balloon while walking	2014-01-21 23:05:48.709671+11	118.209.81.43
1690	Sculpt a positive gesture and double it	2014-01-21 23:05:50.723453+11	118.209.81.43
1691	Build anything while referring to beehives	2014-01-21 23:05:53.920117+11	118.209.81.43
1692	Undo the impossible for yourself	2014-01-21 23:06:02.028659+11	118.209.81.43
1709	In your head, formulate your favourite image in a public place	2014-01-23 19:11:44.592478+11	66.249.74.101
1721	Research Australian symbolism now	2014-01-23 22:59:35.330977+11	118.209.81.43
1728	Write a letter about outside unintuitively	2014-01-24 11:17:52.895753+11	118.209.81.43
1729	Snap average as a map	2014-01-24 11:45:07.605234+11	118.209.81.43
1730	Undertake your camera directly	2014-01-24 11:45:12.107251+11	118.209.81.43
1731	Use  the moon to create a completely new image	2014-01-24 11:45:14.492942+11	118.209.81.43
1732	Say average when you should be doing something else	2014-01-24 11:45:17.114685+11	118.209.81.43
1733	Raise a round table without showing anyone	2014-01-24 11:45:20.299464+11	118.209.81.43
1734	Pair the risks with others	2014-01-24 11:45:22.93937+11	118.209.81.43
1735	Replicate at home to the world	2014-01-24 11:45:25.109851+11	118.209.81.43
1736	Plant a commodity directly on the wall	2014-01-24 11:45:28.517333+11	118.209.81.43
1738	Reverse engineer a meal directly	2014-01-24 11:53:50.475082+11	118.209.81.43
1739	Modify what you see to form a link to the past	2014-01-24 11:53:53.754626+11	118.209.81.43
1740	Explore branches quietly	2014-01-24 11:53:56.192121+11	118.209.81.43
1741	Toss a chair directly on the wall	2014-01-24 11:53:57.712291+11	118.209.81.43
1746	Print out a log in photographic form	2014-01-24 12:25:57.688651+11	118.209.81.43
1747	Illustrate a new system when you should be doing something else	2014-01-24 12:26:00.733305+11	118.209.81.43
1748	Snap how your mobile phone is used on any given day being completely dishonest	2014-01-24 12:26:02.526869+11	118.209.81.43
1749	Act a nation-state and attempt to extract a meaning	2014-01-24 12:26:04.642843+11	118.209.81.43
1750	Confuse the impossible diplomatically	2014-01-24 12:26:05.812089+11	118.209.81.43
1751	Distribute a dollar so you are affected	2014-01-24 12:26:07.68185+11	118.209.81.43
1752	Produce an orchestra together	2014-01-24 12:26:10.247825+11	118.209.81.43
1753	Connect weeds in photoshop	2014-01-24 12:26:13.127643+11	118.209.81.43
1758	Represent in 6 ways while standing still	2014-01-24 16:52:35.187365+11	118.209.81.43
1681	Wear a water source randomly	2014-01-21 23:04:56.80675+11	118.209.81.43
1682	Price a round table in hardcopy	2014-01-21 23:04:59.186845+11	118.209.81.43
1683	Throw everything green and white in public space	2014-01-21 23:05:03.911747+11	118.209.81.43
1684	Make a colour palette of the amount of free time you have so that we will be really surprised	2014-01-21 23:05:05.185974+11	118.209.81.43
1685	Send space with found objects	2014-01-21 23:05:11.99444+11	118.209.81.43
1686	Sew your job without showing any proof	2014-01-21 23:05:15.005762+11	118.209.81.43
1693	Bring what you see in the colours of your flag	2014-01-21 23:06:39.241842+11	118.209.81.43
1694	Make the economy addictively	2014-01-21 23:06:48.788783+11	118.209.81.43
1695	Toss a dollar in the gallery	2014-01-21 23:11:34.144228+11	118.209.81.43
1696	Define a video  in a graph of rainbow colours	2014-01-21 23:11:44.613663+11	118.209.81.43
1697	Walk  the garden in the gallery	2014-01-21 23:11:45.517583+11	118.209.81.43
1698	Publicly declare beans one way	2014-01-21 23:11:46.818232+11	118.209.81.43
1699	Send a newspaper clipping of using spray paint confidently	2014-01-21 23:11:49.12478+11	118.209.81.43
1700	Discuss a border with your hands	2014-01-21 23:11:50.92382+11	118.209.81.43
1701	Photograph acts of resistance to capture the moment	2014-01-21 23:11:54.125028+11	118.209.81.43
1702	Picture political rhetoric without touching	2014-01-21 23:11:55.430301+11	118.209.81.43
1703	Walk  your job then examine how it relates to the idea of revolution	2014-01-21 23:11:57.324768+11	118.209.81.43
1704	Gather together beans as a map	2014-01-21 23:11:59.227561+11	118.209.81.43
1705	Order a meeting in the form of a ransom note	2014-01-21 23:12:01.826645+11	118.209.81.43
1706	Paint with watercolour an alternative over 10 minutes	2014-01-21 23:12:26.061769+11	118.209.81.43
1707	Find an example of the world in the right order	2014-01-21 23:12:26.741514+11	118.209.81.43
1708	Break how you are implicated in systems in a closed form	2014-01-21 23:12:27.341351+11	118.209.81.43
1710	Replicate a megaphone  share it with us	2014-01-23 21:04:16.154777+11	118.209.81.43
1711	Write trees while standing still	2014-01-23 21:04:44.734653+11	118.209.81.43
1712	Exhaust everything you see in the next 7 seconds in a closed form	2014-01-23 21:04:47.46487+11	118.209.81.43
1713	Seek something round unfairly	2014-01-23 21:04:50.815739+11	118.209.81.43
1714	Collage self-directed using only political rhetoric	2014-01-23 21:04:52.45386+11	118.209.81.43
1715	Fill something inside a square	2014-01-23 21:04:56.96058+11	118.209.81.43
1716	Expand on to demonstrate  to preexisting conditions	2014-01-23 21:04:58.957559+11	118.209.81.43
1717	Model the idea of nationality diplomatically	2014-01-23 21:05:02.421562+11	118.209.81.43
1718	Send a newspaper clipping of management in pen	2014-01-23 21:05:28.211663+11	118.209.81.43
1719	Undo a handshake and combine	2014-01-23 21:35:54.095979+11	118.209.81.43
1720	Calculate a fireplace diplomatically	2014-01-23 21:42:18.466538+11	118.209.81.43
1722	Throw with a stranger repeatedly	2014-01-23 23:02:14.548713+11	118.209.81.43
1723	Visualise trees as a list	2014-01-23 23:02:15.47799+11	118.209.81.43
1724	Shape meaning once	2014-01-23 23:02:16.40732+11	118.209.81.43
1725	Draw the same thing to closely notice the details	2014-01-23 23:02:17.283451+11	118.209.81.43
1726	Cover the chain of evidence until you are happy with the end result	2014-01-23 23:41:39.410131+11	118.209.81.43
1727	Wear a new world order during work hours	2014-01-23 23:48:38.242313+11	118.209.81.43
1737	Extract the garden in another language	2014-01-24 11:49:02.872269+11	118.209.81.43
1742	Confuse 8 images as an indulgence	2014-01-24 11:54:43.520586+11	118.209.81.43
1743	Produce the world so its function is questionable	2014-01-24 11:54:52.339326+11	118.209.81.43
1744	Follow what is within reach over five minutes	2014-01-24 12:11:19.44756+11	118.209.81.43
1745	Find an example of a meal to initiate progress	2014-01-24 12:11:24.813194+11	118.209.81.43
1754	Form currency addictively	2014-01-24 12:51:28.071192+11	118.209.81.43
1755	Deliberate a positive gesture into a ball	2014-01-24 16:50:49.629281+11	118.209.81.43
1756	Plot on a graph the future using a recording device	2014-01-24 16:51:44.421553+11	118.209.81.43
1757	Identify the risks so that we will be really surprised	2014-01-24 16:51:47.694447+11	118.209.81.43
1759	Find an example of an atlas obsessively	2014-01-24 16:54:59.187637+11	118.209.81.43
1760	Scratch how your mobile phone is used on any given day without telling anyone	2014-01-24 16:55:11.657696+11	118.209.81.43
1761	Undo collective action on the floor	2014-01-24 16:55:16.2126+11	118.209.81.43
1762	Identify the ideal newspaper addictively	2014-01-27 09:00:27.807324+11	199.30.24.153
1763	Paint a scene with a public outcome in mind	2014-01-27 10:21:21.02565+11	203.27.47.245
1764	Write an organisation  hand-drawn	2014-01-27 10:21:27.870788+11	203.27.47.245
1765	Seek time using a recording device	2014-01-27 10:25:14.775102+11	203.27.47.245
1766	Mark your camera in a public place	2014-01-27 10:25:19.392765+11	203.27.47.245
1767	Detail meaning with optimism	2014-01-27 10:42:10.370195+11	157.55.33.29
1768	Plan the game of tug-of-war until you are happy with the end result	2014-01-28 09:07:53.302312+11	131.170.90.4
1769	Illustrate the same thing secretly	2014-01-28 09:07:54.342075+11	131.170.90.4
1770	Check the least used glass from your cupboard by swapping	2014-01-28 09:07:54.668196+11	131.170.90.4
1771	Present nothing so its function is questionable	2014-01-28 09:07:54.940019+11	131.170.90.4
1772	Snap the ideal newspaper while referring to gardening	2014-01-28 09:07:55.11613+11	131.170.90.4
1773	Read the garden systematically	2014-01-28 09:07:55.25996+11	131.170.90.4
1774	Plot on a graph the colour palette of an image and use it as currency	2014-01-28 09:08:18.578747+11	131.170.90.4
1775	Confuse something with a double meaning with the first pencil you find	2014-01-28 09:11:14.853926+11	131.170.90.4
1776	Shape a new object secretly	2014-01-28 09:11:32.799752+11	131.170.90.4
1777	Rearrange particular ideas and connect the dots	2014-01-28 09:13:45.537112+11	131.170.90.4
1778	Discover a user-guide and send it to us via email	2014-01-28 09:16:33.444867+11	131.170.90.4
1779	Take a photo of a see-saw simply	2014-01-28 09:43:30.030917+11	203.219.105.78
1780	Tap into the rules   using only political rhetoric	2014-01-28 09:43:31.984795+11	203.219.105.78
1781	Turn around silver coins as a pie chart	2014-01-28 09:43:33.596243+11	203.219.105.78
1782	Abstract a new object as a pie chart	2014-01-28 09:43:36.07481+11	203.219.105.78
1783	Confuse a movement thoroughly checking	2014-01-28 09:43:39.810171+11	203.219.105.78
1784	Model a get-together repeatedly	2014-01-28 09:43:41.067633+11	203.219.105.78
1785	Learn about two people with scepticism	2014-01-28 09:43:42.471797+11	203.219.105.78
1786	Scratch in gold online	2014-01-28 09:44:37.438833+11	203.219.105.78
1787	Picture the chain of evidence without showing any proof	2014-01-28 13:44:22.348201+11	49.184.104.253
1788	Reverse engineer a see-saw without showing anyone	2014-01-28 14:36:30.890091+11	131.170.90.4
1789	Replace everything and double it	2014-01-29 23:39:12.047193+11	118.209.81.43
1790	Borrow the temperature like you mean it	2014-01-31 14:16:54.533413+11	131.170.5.2
1791	Record an image-editing program in the colours of your flag	2014-01-31 14:16:57.852111+11	131.170.5.2
1792	Spend time thinking about a word you heard today over and over	2014-01-31 14:17:02.35417+11	131.170.5.2
1793	Build average using blu-tak	2014-01-31 14:17:06.445137+11	131.170.5.2
1794	Use  the first 10 things over 57 seconds	2014-01-31 14:17:09.340421+11	131.170.5.2
1795	Expand on something over 9 minutes	2014-01-31 14:17:13.010768+11	131.170.5.2
1796	Collate in 7 ways in hardcopy	2014-01-31 14:17:16.146347+11	131.170.5.2
1797	Sew the political inside an irregular shape	2014-01-31 14:17:18.834505+11	131.170.5.2
1798	Carve the truth thoroughly checking	2014-01-31 14:17:21.626221+11	131.170.5.2
1799	Hand out a capitalist notion as an indulgence	2014-01-31 14:17:24.101783+11	131.170.5.2
1800	Photocopy anything over five minutes	2014-01-31 14:19:29.049305+11	131.170.5.2
1804	Publicly declare in 6 minutes by deduction	2014-01-31 19:49:58.481098+11	118.209.81.43
1805	Gather something for yourself	2014-01-31 19:50:06.156697+11	118.209.81.43
1806	Throw what is within reach quietly	2014-01-31 19:50:07.7208+11	118.209.81.43
1807	Rewrite the future until you are happy with the end result	2014-01-31 19:50:09.265968+11	118.209.81.43
1808	Visualise with a stranger slowly	2014-01-31 19:50:11.936255+11	118.209.81.43
1809	Mark information as though your life depends on it	2014-01-31 19:50:13.669129+11	118.209.81.43
1810	Play a megaphone without telling anyone	2014-01-31 19:50:15.813263+11	118.209.81.43
1811	Exhaust time when you should be doing something else	2014-01-31 19:50:18.7899+11	118.209.81.43
1812	Photograph the crowd to create a completely new image	2014-01-31 19:50:20.619462+11	118.209.81.43
1813	Plan a meal with optimism	2014-01-31 19:50:22.714451+11	118.209.81.43
1814	Redesign an orchestra as if functional	2014-01-31 19:50:23.929736+11	118.209.81.43
1815	Break down the notion of work  by deduction	2014-01-31 19:50:25.119917+11	118.209.81.43
1816	Write about the amount of free time you have over time	2014-01-31 19:50:26.648884+11	118.209.81.43
1817	Describe weeds diplomatically	2014-01-31 19:50:28.282412+11	118.209.81.43
1818	Make up a small list and speak the result in monotone	2014-01-31 19:50:33.889036+11	118.209.81.43
1819	Categorise the first 10 things using statistics	2014-01-31 19:50:35.824212+11	118.209.81.43
1820	Categorise a garden in secret	2014-01-31 19:50:39.277423+11	118.209.81.43
1821	Type a word you heard today with scepticism	2014-01-31 19:50:41.10122+11	118.209.81.43
1822	Photograph a slogan in public space	2014-01-31 19:50:49.665541+11	118.209.81.43
1823	Undo political rhetoric spontaneously	2014-01-31 19:50:50.98534+11	118.209.81.43
1824	Create a banner which refers to transparency in a minute	2014-01-31 19:50:52.313809+11	118.209.81.43
1825	Find food supply chains freely	2014-01-31 19:50:55.736803+11	118.209.81.43
1826	In your head, formulate focussed objects with others	2014-01-31 19:50:57.336216+11	118.209.81.43
1827	Give a positive gesture as a map	2014-01-31 20:17:11.997947+11	118.209.81.43
1828	Create a log in small-scale	2014-01-31 20:17:18.50087+11	118.209.81.43
1829	Speak about collective action and pick your favourite	2014-01-31 20:17:26.324075+11	118.209.81.43
1830	Discuss a meeting in small-scale	2014-01-31 20:17:29.908981+11	118.209.81.43
1831	Sing change by planning the next move	2014-01-31 20:17:31.404634+11	118.209.81.43
1832	Photocopy growth and attempt it only once	2014-01-31 20:17:33.31966+11	118.209.81.43
1833	Un-mechanise your location in another language	2014-01-31 20:17:35.141823+11	118.209.81.43
1834	Scratch a useless thing being completely dishonest	2014-01-31 20:17:37.148337+11	118.209.81.43
1835	Replace something with a double meaning unfairly	2014-01-31 20:17:39.749542+11	118.209.81.43
1836	Take a photo of space convincingly	2014-01-31 20:17:41.279573+11	118.209.81.43
1837	Cover a get-together in photoshop	2014-01-31 20:17:42.715381+11	118.209.81.43
1838	Split this and that by swapping	2014-01-31 20:17:43.754942+11	118.209.81.43
1839	Picture social justice on a piece of paper	2014-01-31 20:17:46.858995+11	118.209.81.43
1840	Swap a communal dinner to preexisting conditions	2014-01-31 20:17:48.220678+11	118.209.81.43
1841	Wear political rhetoric without thinking too much	2014-01-31 20:17:49.878118+11	118.209.81.43
1842	Wear a meal using the name of someone great	2014-01-31 20:17:51.76895+11	118.209.81.43
1843	Publicly declare revolution with found objects	2014-01-31 20:17:53.325274+11	118.209.81.43
1844	Arrange the best times using an old technique	2014-01-31 20:17:56.680809+11	118.209.81.43
1845	Act out positive images of collective action and double it	2014-01-31 20:17:58.520142+11	118.209.81.43
1846	Share something secretly	2014-01-31 20:18:00.186146+11	118.209.81.43
1847	Picture a list of rules inside a square	2014-01-31 20:18:04.369761+11	118.209.81.43
1848	Multiply revolution addictively	2014-01-31 20:18:07.901302+11	118.209.81.43
1849	Brainstorm your thoughts using the name of someone great	2014-01-31 20:18:11.670924+11	118.209.81.43
1850	Investigate what failure means to you and combine	2014-01-31 20:18:15.477244+11	118.209.81.43
1801	Collate the first 10 things convincingly	2014-01-31 14:22:03.159934+11	131.170.5.2
1802	Perform the notion of work  backing it up with research	2014-01-31 14:22:11.629115+11	131.170.5.2
1803	Cover an alternative by swapping	2014-01-31 19:49:06.743511+11	118.209.81.43
1854	Reverse a boat over 12 hours	2014-01-31 20:18:54.814428+11	118.209.81.43
1851	Photocopy a scene without touching	2014-01-31 20:18:30.860944+11	118.209.81.43
1852	Invent 7 synonyms and collate the results	2014-01-31 20:18:34.182916+11	118.209.81.43
1853	Discover how you might begin to withdraw your dependency on technology to preexisting conditions	2014-01-31 20:18:36.164043+11	118.209.81.43
1855	Improve an atlas freely	2014-01-31 21:03:09.633191+11	118.209.81.43
1856	Check everything green and white in a graph of rainbow colours	2014-01-31 21:03:12.436745+11	118.209.81.43
1857	Price your love of a particular person during work hours	2014-01-31 21:03:14.875611+11	118.209.81.43
1858	Price the rules   until you are happy with the end result	2014-01-31 21:03:17.100649+11	118.209.81.43
1859	Break a round table mindfully	2014-01-31 21:03:19.604136+11	118.209.81.43
1860	Make up a community in the form of instructions	2014-01-31 21:03:21.489269+11	118.209.81.43
1861	Perform self-directed systematically	2014-01-31 21:03:25.388942+11	118.209.81.43
1862	Create a banner which refers to everything you see in the next 17 seconds once	2014-01-31 21:03:27.003434+11	118.209.81.43
1863	Throw an impracticle object using the name of someone great	2014-01-31 21:03:30.928404+11	118.209.81.43
1864	Bring about a megaphone creatively	2014-01-31 21:03:33.278072+11	118.209.81.43
1865	Carve the rules   over and over	2014-01-31 21:03:35.424195+11	118.209.81.43
1866	Define the same word with scepticism	2014-01-31 21:03:36.974719+11	118.209.81.43
1867	Present religiously as an indulgence	2014-01-31 21:03:38.680138+11	118.209.81.43
1868	Extract the moon online	2014-01-31 21:03:41.985409+11	118.209.81.43
1869	Model currency and record what you find	2014-01-31 21:03:44.795158+11	118.209.81.43
1870	Illustrate your location on your own	2014-01-31 21:03:46.409641+11	118.209.81.43
1871	Carve revolution without language	2014-01-31 21:03:48.005245+11	118.209.81.43
1872	Carve a uniform and use it as currency	2014-01-31 21:03:49.711104+11	118.209.81.43
1873	Shape practical objects while referring to gardening	2014-01-31 21:03:51.516895+11	118.209.81.43
1874	Read a water source of the future	2014-01-31 21:03:53.836827+11	118.209.81.43
1875	Break down into numbers beans over time	2014-01-31 21:03:55.236477+11	118.209.81.43
1876	Raise 7 steps so you are affected	2014-01-31 21:03:57.056839+11	118.209.81.43
1877	Invent a get-together differently	2014-01-31 21:03:58.536668+11	118.209.81.43
1878	Try transparency for yourself	2014-01-31 21:03:59.842265+11	118.209.81.43
1879	Bring about the temperature with a pencil	2014-01-31 21:04:01.125932+11	118.209.81.43
1880	Make a collection of blue things randomly	2014-01-31 21:04:02.936741+11	118.209.81.43
1881	Produce a debate unintuitively	2014-01-31 21:04:11.330618+11	118.209.81.43
1882	Gather together a common approach loudly	2014-01-31 21:04:12.920243+11	118.209.81.43
1883	Expose a get-together with scepticism	2014-01-31 21:04:14.780151+11	118.209.81.43
1884	Write about a program to a stranger	2014-01-31 21:04:16.295192+11	118.209.81.43
1885	Brainstorm a meeting randomly	2014-01-31 21:04:19.041173+11	118.209.81.43
1886	Read practical objects so you are affected	2014-01-31 21:04:20.700181+11	118.209.81.43
1887	Present a word you heard today as though your life depends on it	2014-01-31 21:04:22.305386+11	118.209.81.43
1888	Undertake the first 10 things in a public place	2014-01-31 21:04:26.300242+11	118.209.81.43
1889	Abstract a set of instructions secretly	2014-01-31 21:04:27.961253+11	118.209.81.43
1890	Hand out anything in secret	2014-01-31 21:04:29.271588+11	118.209.81.43
1891	Try a list of rules referencing the idea of dis-organisation	2014-01-31 21:04:32.651379+11	118.209.81.43
1892	Write about a scene then examine how it relates to the idea of revolution	2014-01-31 21:04:35.711826+11	118.209.81.43
1893	Undo nothing do this 6 times	2014-01-31 21:04:38.876161+11	118.209.81.43
1894	Present positive images of collective action once	2014-01-31 21:04:41.036647+11	118.209.81.43
1895	Price what you see as though your life depends on it	2014-01-31 21:04:43.621124+11	118.209.81.43
1896	Swap spectacles in monotone	2014-01-31 21:04:45.347026+11	118.209.81.43
1897	Fill a game of cards and question your findings	2014-01-31 21:04:47.846319+11	118.209.81.43
1898	Shape the same thing mindfully	2014-01-31 21:04:50.235326+11	118.209.81.43
1899	Collate everything freely	2014-01-31 21:04:53.1002+11	118.209.81.43
1900	Scrunch your password do this 5 times	2014-01-31 21:04:54.840211+11	118.209.81.43
1901	Toss around 5 steps being completely dishonest	2014-01-31 21:04:56.945637+11	118.209.81.43
1902	Converse images of other people  side by side	2014-01-31 21:04:58.788739+11	118.209.81.43
1903	Maintain branches during business hours	2014-01-31 21:05:01.693383+11	118.209.81.43
1904	Plan what is within reach to create a completely new image	2014-01-31 21:05:05.093698+11	118.209.81.43
1905	Cut and paste a collection of edible greens using found materials	2014-01-31 21:05:07.901435+11	118.209.81.43
1906	Exhaust growth and record what you find	2014-01-31 21:05:10.769936+11	118.209.81.43
1907	Whittle something small  and use it as currency	2014-01-31 21:05:12.180934+11	118.209.81.43
1908	Swap something like a robot	2014-01-31 21:05:13.920386+11	118.209.81.43
1909	Seek one minute like you mean it	2014-01-31 21:05:16.249485+11	118.209.81.43
1910	Multiply what is within reach using an old technique	2014-01-31 21:05:17.739105+11	118.209.81.43
1911	Collate patience in the right order	2014-01-31 21:05:19.558893+11	118.209.81.43
1912	Discover a movement thoroughly checking	2014-01-31 21:05:21.072842+11	118.209.81.43
1913	Connect the first 10 things while walking	2014-01-31 21:05:24.334486+11	118.209.81.43
1914	Act your camera and speak the result in monotone	2014-01-31 21:05:25.574645+11	118.209.81.43
1915	Break acts of resistance by deduction	2014-01-31 21:05:27.102908+11	118.209.81.43
1916	Multiply the best times helplessly	2014-01-31 21:05:28.673081+11	118.209.81.43
1917	Calculate an organisation  to a stranger	2014-01-31 21:05:30.017779+11	118.209.81.43
1918	Send a slogan with the next person you see	2014-01-31 21:05:31.932544+11	118.209.81.43
1919	Spend time thinking about something small  in your line of sight	2014-01-31 21:05:33.343251+11	118.209.81.43
1920	Explain the colour palette of an image diplomatically	2014-01-31 21:05:35.593044+11	118.209.81.43
1921	Create nothing using a recording device	2014-01-31 21:05:37.771036+11	118.209.81.43
1922	Write a list of  the impossible to form a link to the past	2014-01-31 21:05:43.141478+11	118.209.81.43
1923	Scrunch an impracticle object while standing still	2014-01-31 21:05:45.151948+11	118.209.81.43
1924	Represent the notion of work  to the world	2014-01-31 21:05:46.816631+11	118.209.81.43
1925	Define with a stranger quietly	2014-01-31 21:05:49.086142+11	118.209.81.43
1926	Collage a piece of paper on the nature strip	2014-01-31 21:05:50.326538+11	118.209.81.43
1927	Speak about a user-guide referencing the idea of dis-organisation	2014-01-31 21:05:52.021227+11	118.209.81.43
1928	Picture something using found materials	2014-01-31 21:05:54.511737+11	118.209.81.43
1929	Define a new system without thinking	2014-01-31 21:05:56.046667+11	118.209.81.43
1930	Write about everything openly	2014-01-31 21:05:58.73263+11	118.209.81.43
1931	Use  outside in hardcopy	2014-01-31 21:06:00.192365+11	118.209.81.43
1932	Sign at home and question your findings	2014-01-31 21:06:01.997721+11	118.209.81.43
1933	Paint a community to initiate progress	2014-01-31 21:06:04.7874+11	118.209.81.43
1934	Break down into numbers growth quickly	2014-01-31 21:06:06.341873+11	118.209.81.43
1935	Teach money to the public	2014-01-31 21:06:08.192185+11	118.209.81.43
1936	Snap knowledge over 12 hours	2014-01-31 21:06:09.616607+11	118.209.81.43
1937	Create a pamphlet explaining a trail of destruction without thinking too much	2014-01-31 21:06:11.682934+11	118.209.81.43
1938	Seek a useful object actively	2014-01-31 21:06:14.465897+11	118.209.81.43
1939	Order the newspaper thoughtfully	2014-01-31 21:06:16.105754+11	118.209.81.43
1940	Modify a meeting do this 3 times	2014-01-31 21:06:18.350518+11	118.209.81.43
1941	Observe a megaphone in a public place	2014-01-31 21:06:20.411443+11	118.209.81.43
1942	Try the future differently	2014-01-31 21:06:23.141009+11	118.209.81.43
1943	Pair 9 steps on your own	2014-01-31 21:06:24.642272+11	118.209.81.43
1944	Connect a handshake to closely notice the details	2014-01-31 21:06:26.401791+11	118.209.81.43
1945	Check something with a double meaning during work hours	2014-01-31 21:06:27.753865+11	118.209.81.43
1946	Mime a garden in the form of instructions	2014-01-31 21:06:29.337422+11	118.209.81.43
1947	Assemble the number of elastic bands you see on the ground in the colours of your flag	2014-01-31 21:06:35.351225+11	118.209.81.43
1948	Draw something intricate slowly	2014-01-31 21:06:38.951261+11	118.209.81.43
1949	Invent a see-saw unfairly	2014-01-31 21:06:40.701428+11	118.209.81.43
1950	Replace a collection of edible greens to closely notice the details	2014-01-31 21:06:42.287831+11	118.209.81.43
1951	Sculpt a positive gesture in photoshop	2014-01-31 21:06:44.022278+11	118.209.81.43
1952	Scratch an alternative with found objects	2014-01-31 21:06:45.436731+11	118.209.81.43
1953	In your head, formulate two people without showing anyone	2014-01-31 21:06:47.056932+11	118.209.81.43
1954	Turn around management mindfully	2014-01-31 21:06:50.026336+11	118.209.81.43
1955	Rewrite the number of elastic bands you see on the ground in pen	2014-01-31 21:06:51.532009+11	118.209.81.43
1956	Find an example of the headlines quietly	2014-01-31 21:06:53.686948+11	118.209.81.43
1957	Mark a garden and put two and two together	2014-01-31 21:06:55.641274+11	118.209.81.43
1958	Act on weeds while talking to people	2014-01-31 21:06:58.161287+11	118.209.81.43
1959	Create a pamphlet explaining a hole using blu-tak	2014-01-31 21:06:59.902209+11	118.209.81.43
1960	Define the chain of evidence helplessly	2014-01-31 21:07:02.021598+11	118.209.81.43
1961	Find a handshake intuitively	2014-01-31 21:07:06.557179+11	118.209.81.43
1962	Pair nothing by planning the next move	2014-01-31 21:07:13.46415+11	118.209.81.43
1963	Find with a stranger slowly	2014-01-31 21:07:14.878783+11	118.209.81.43
1964	Research the best times while referring to gardening	2014-01-31 21:07:16.1152+11	118.209.81.43
1965	Bring about free time unintuitively	2014-01-31 21:07:18.338273+11	118.209.81.43
1966	Protect revolution mindfully	2014-01-31 21:07:19.698113+11	118.209.81.43
1967	Fill debt over five minutes	2014-01-31 21:07:23.328529+11	118.209.81.43
1968	Confuse a movement to closely notice the details	2014-01-31 21:07:25.185123+11	118.209.81.43
1969	Cut and paste a fireplace inside a square	2014-01-31 21:07:28.177213+11	118.209.81.43
1970	Send a newspaper clipping of a water source on your own	2014-01-31 21:07:29.817141+11	118.209.81.43
1971	Break trees like a robot	2014-01-31 21:07:31.498448+11	118.209.81.43
1972	Converse companion plants and attempt to extract a meaning	2014-01-31 21:07:40.276835+11	118.209.81.43
1973	Check beans in pen	2014-01-31 21:07:42.951595+11	118.209.81.43
1974	Design acts of resistance and attempt it only once	2014-01-31 21:07:45.182271+11	118.209.81.43
1975	Maintain change to create a completely new image	2014-01-31 21:07:46.96782+11	118.209.81.43
1976	Act power using watercolour	2014-01-31 21:07:48.826347+11	118.209.81.43
1977	Publicly declare a logo on a piece of paper	2014-01-31 21:07:50.298108+11	118.209.81.43
1978	Carve the notion of work  over 57 seconds	2014-01-31 21:07:53.737021+11	118.209.81.43
1979	Read the world spontaneously	2014-01-31 21:07:56.653026+11	118.209.81.43
1980	Research data in your line of sight	2014-01-31 21:07:58.109143+11	118.209.81.43
1981	Sing spectacles temporarily	2014-01-31 21:08:00.593409+11	118.209.81.43
1982	Produce a commodity  share it with us	2014-01-31 21:08:02.044806+11	118.209.81.43
1983	Photograph the ideal newspaper in a public place	2014-01-31 21:08:05.679646+11	118.209.81.43
1984	Undo real progress and use it as currency	2014-01-31 21:08:07.162342+11	118.209.81.43
1985	Act on a useless thing inside a square	2014-01-31 21:08:09.167076+11	118.209.81.43
1986	Record this and that over 24 hours	2014-01-31 21:08:10.911562+11	118.209.81.43
1987	Break down something small  out the window	2014-01-31 21:08:52.213791+11	118.209.81.43
1988	Tap into your love of a particular person and use it as currency	2014-01-31 21:08:53.88759+11	118.209.81.43
1989	Email a meal referring to your favourite	2014-01-31 21:08:56.487459+11	118.209.81.43
1990	Split a meeting like a robot	2014-01-31 21:08:58.958248+11	118.209.81.43
1991	Pair the garden being completely dishonest	2014-01-31 21:09:00.563576+11	118.209.81.43
1992	Send through everything with scepticism	2014-01-31 21:09:01.883738+11	118.209.81.43
1993	Expose a collection of blue things until you are happy with the end result	2014-01-31 21:09:03.564862+11	118.209.81.43
1994	Write a letter about then photograph in your line of sight	2014-01-31 21:09:09.548171+11	118.209.81.43
1995	Split a way around a problem without telling anyone	2014-01-31 21:09:18.790568+11	118.209.81.43
1996	Confuse a log in small-scale	2014-01-31 21:09:21.605071+11	118.209.81.43
1997	Collage a log referencing the idea of dis-organisation	2014-01-31 21:09:23.550516+11	118.209.81.43
1998	Source self-directed in a closed form	2014-01-31 21:09:25.629919+11	118.209.81.43
1999	Speak  a round table without showing anyone	2014-01-31 21:09:27.048246+11	118.209.81.43
2000	Plan a capitalist notion over and over	2014-01-31 21:09:28.27867+11	118.209.81.43
2001	Multiply everything thoughtfully	2014-02-01 14:17:49.467478+11	101.119.29.233
2002	In your head, formulate your favourite image in a public place	2014-02-01 21:52:40.401318+11	66.249.74.212
2003	Throw the impossible to closely notice the details	2014-02-02 19:34:38.019143+11	118.209.81.43
2004	Identify a new world order with scepticism	2014-02-02 19:34:40.643476+11	118.209.81.43
2005	Carve a limited edition to the world	2014-02-02 19:34:42.19126+11	118.209.81.43
2006	List the rules of tennis over 57 seconds	2014-02-02 19:34:45.292577+11	118.209.81.43
2007	Expose a balloon and speak the result in monotone	2014-02-02 19:34:45.325439+11	118.209.81.43
2008	Take a sample of  a movement so it is equal	2014-02-02 19:34:47.80751+11	118.209.81.43
2009	Collate two parties while referring to beehives	2014-02-02 19:34:49.89028+11	118.209.81.43
2010	Bring the city intuitively	2014-02-02 19:34:51.247522+11	118.209.81.43
2011	Sing practical objects in a graph of rainbow colours	2014-02-02 19:34:52.278701+11	118.209.81.43
2012	Play a balloon quietly	2014-02-02 19:34:54.338449+11	118.209.81.43
2013	Make a colour palette of a community unfairly	2014-02-02 19:34:55.182942+11	118.209.81.43
2014	Audit a sculpture inside a square	2014-02-02 19:34:57.978145+11	118.209.81.43
2015	Act companion plants to capture the moment	2014-02-02 19:34:59.338299+11	118.209.81.43
2016	Take a photo of money in a public place	2014-02-02 19:35:00.67858+11	118.209.81.43
2017	Document an image-editing program creatively	2014-02-02 19:35:08.014034+11	118.209.81.43
2018	Replicate the idea of happiness on a piece of paper	2014-02-02 19:35:09.778596+11	118.209.81.43
2019	Examine something round with scepticism	2014-02-02 19:35:11.473469+11	118.209.81.43
2020	Plot on a graph a trail of destruction then examine how it relates to the idea of revolution	2014-02-02 19:35:12.818443+11	118.209.81.43
2021	Distribute trees and explain why	2014-02-02 19:35:15.46236+11	118.209.81.43
2022	Bring Australian symbolism into a drawing	2014-02-02 19:35:18.538925+11	118.209.81.43
2023	Investigate tools without touching	2014-02-02 19:35:22.174195+11	118.209.81.43
2024	Multiply a meeting freely	2014-02-02 19:35:25.074265+11	118.209.81.43
2025	Change your camera spontaneously	2014-02-02 19:35:28.877204+11	118.209.81.43
2026	Plant a piece of paper on a piece of paper	2014-02-02 19:35:32.401938+11	118.209.81.43
2027	Introduce a small list like it will change the world	2014-02-02 19:35:35.928428+11	118.209.81.43
2028	Replicate a logo over 30 hours	2014-02-02 19:35:37.402977+11	118.209.81.43
2029	Bring what is within reach without showing any proof	2014-02-02 19:35:39.945855+11	118.209.81.43
2030	Donate positive images of collective action addictively	2014-02-02 19:35:42.539637+11	118.209.81.43
2031	Gather together your favourite image in your line of sight	2014-02-02 19:35:43.790995+11	118.209.81.43
2032	Make up a slogan over 9 minutes	2014-02-02 19:35:44.535917+11	118.209.81.43
2033	Toss your job on the floor	2014-02-02 20:26:58.554221+11	118.209.81.43
2034	Destroy a meeting and attempt to extract a meaning	2014-02-02 20:27:03.728843+11	118.209.81.43
2035	Scratch knowledge to preexisting conditions	2014-02-02 20:27:05.379354+11	118.209.81.43
2036	Systematise an alternative with found objects	2014-02-02 20:27:06.639146+11	118.209.81.43
2037	Rewrite your thoughts and speak the result in monotone	2014-02-02 20:27:08.104766+11	118.209.81.43
2038	Connect  sticks and send it to us via email	2014-02-02 20:27:09.640102+11	118.209.81.43
2039	Group together religiously confidently	2014-02-02 21:17:47.166088+11	118.209.81.43
2040	Grow a game of cards side by side	2014-02-02 21:17:47.409105+11	118.209.81.43
2041	Impose at home once	2014-02-02 21:17:47.61071+11	118.209.81.43
2042	Redesign weeds spontaneously	2014-02-02 21:17:47.770482+11	118.209.81.43
2043	Create a pamphlet explaining currency in the form of instructions	2014-02-02 21:17:47.972682+11	118.209.81.43
2044	Gather how you are implicated in systems in pen	2014-02-02 21:17:48.056939+11	118.209.81.43
2045	Donate a useless thing with the next person you see	2014-02-02 21:17:48.192017+11	118.209.81.43
2046	Use  everything you see in the next 29 seconds with a catchy title	2014-02-02 22:42:06.458088+11	118.209.81.43
2047	Email the idea of nationality as a list	2014-02-02 23:32:47.944586+11	118.209.81.43
2048	Examine a way around a problem simply	2014-02-02 23:35:24.013712+11	118.209.81.43
2049	Wear a dollar imagining you are in isolation	2014-02-02 23:35:26.135603+11	118.209.81.43
2050	Wander an atlas and record what you find	2014-02-02 23:35:30.85616+11	118.209.81.43
2051	Discuss something new as though your life depends on it	2014-02-02 23:35:34.587531+11	118.209.81.43
2052	Take a photo of a debate until you are happy with the end result	2014-02-02 23:35:39.017555+11	118.209.81.43
2053	Type a powerpoint presentation and connect the dots	2014-02-02 23:35:41.84806+11	118.209.81.43
2054	Draw beans backing it up with research	2014-02-02 23:35:44.783826+11	118.209.81.43
2055	Abstract a list of rules without touching	2014-02-02 23:35:48.265464+11	118.209.81.43
2056	Write a list of  data with your hands	2014-02-02 23:35:50.738374+11	118.209.81.43
2057	Print out a useful object directly	2014-02-02 23:35:53.089221+11	118.209.81.43
2058	Write a letter about then photograph then cut that in half	2014-02-02 23:35:56.120287+11	118.209.81.43
2059	Extract then photograph in public	2014-02-02 23:36:01.354897+11	118.209.81.43
2060	Send a newspaper clipping of this and that backing it up with research	2014-02-02 23:36:06.976066+11	118.209.81.43
2061	Observe to demonstrate  while referring to beehives	2014-02-02 23:36:10.487167+11	118.209.81.43
2062	Break a hole systematically	2014-02-02 23:36:13.702024+11	118.209.81.43
2063	Replace space once	2014-02-02 23:36:20.787418+11	118.209.81.43
2064	Illustrate D.I.Y with others	2014-02-02 23:36:23.8167+11	118.209.81.43
2065	Spend time thinking about a new world order in a variety of ways	2014-02-02 23:36:26.40256+11	118.209.81.43
2066	Find a program in pen	2014-02-02 23:36:28.915726+11	118.209.81.43
2067	Document the impossible with the first pencil you find	2014-02-02 23:36:30.487767+11	118.209.81.43
2068	Wear the idea of happiness referring to your favourite	2014-02-02 23:36:49.283616+11	118.209.81.43
2069	Take a photo of acts of resistance as an indulgence	2014-02-02 23:37:02.989532+11	118.209.81.43
2070	Break down something during business hours	2014-02-02 23:37:03.995726+11	118.209.81.43
2071	Examine the truth by swapping	2014-02-02 23:37:05.444476+11	118.209.81.43
\.


--
-- Data for Name: task_undertaken; Type: TABLE DATA; Schema: public; Owner: opengeo
--

COPY task_undertaken (id, task_id, ts_undertaken, ip) FROM stdin;
1	4	2013-12-08 14:41:18.307057+11	\N
2	1	2013-12-08 14:41:26.472752+11	\N
3	6	2013-12-08 16:21:11.848504+11	\N
4	9	2013-12-08 16:23:48.166321+11	\N
5	16	2013-12-08 16:59:32.886166+11	\N
6	29	2013-12-08 17:12:40.746819+11	\N
7	1	2013-12-09 11:00:55.883807+11	\N
8	7	2013-12-09 11:03:12.969143+11	\N
9	4	2013-12-09 12:07:05.720816+11	\N
10	30	2013-12-09 12:26:22.799672+11	\N
11	1	2013-12-09 12:34:39.582347+11	\N
12	30	2013-12-09 11:51:02.264678+11	\N
13	4	2013-12-09 11:51:23.037226+11	\N
14	16	2013-12-09 12:33:18.611113+11	\N
15	1	2013-12-09 12:33:30.691177+11	\N
16	31	2013-12-09 12:50:52.643528+11	\N
17	32	2013-12-09 12:58:52.774404+11	\N
18	33	2013-12-09 16:16:46.71315+11	\N
19	33	2013-12-09 16:34:24.112779+11	\N
20	34	2013-12-09 16:35:17.302678+11	\N
21	35	2013-12-09 16:36:46.799108+11	\N
22	36	2013-12-09 16:37:59.210864+11	\N
23	37	2013-12-09 16:40:36.602722+11	\N
24	38	2013-12-09 17:56:59.141217+11	\N
25	39	2013-12-09 17:59:07.329837+11	\N
26	39	2013-12-09 18:02:16.973675+11	\N
27	39	2013-12-09 18:02:35.889395+11	\N
28	40	2013-12-09 18:02:53.820189+11	\N
29	41	2013-12-09 18:49:31.90534+11	\N
30	42	2013-12-09 18:50:26.64799+11	\N
31	43	2013-12-09 18:50:52.750757+11	\N
32	44	2013-12-09 18:52:15.427087+11	\N
33	45	2013-12-09 18:54:37.520019+11	\N
34	46	2013-12-09 19:02:48.427983+11	\N
35	47	2013-12-09 19:03:44.678056+11	\N
36	48	2013-12-09 19:04:32.113125+11	\N
37	49	2013-12-09 19:04:52.017708+11	\N
38	50	2013-12-09 19:06:20.553643+11	\N
39	51	2013-12-09 19:20:18.923764+11	\N
40	52	2013-12-09 19:23:50.125846+11	\N
41	53	2013-12-09 19:46:53.955496+11	\N
42	54	2013-12-09 19:48:35.820002+11	\N
43	55	2013-12-09 19:51:59.157324+11	\N
44	56	2013-12-09 20:19:36.21875+11	\N
45	51	2013-12-09 20:20:59.420453+11	\N
46	57	2013-12-09 20:35:52.118157+11	\N
47	90	2013-12-09 21:06:08.362267+11	\N
48	50	2013-12-10 14:03:59.803723+11	\N
49	93	2013-12-10 21:46:13.301593+11	\N
50	90	2013-12-15 20:56:25.657218+11	\N
51	50	2013-12-15 20:57:15.989019+11	\N
52	94	2013-12-15 21:24:56.115499+11	\N
53	95	2013-12-15 21:31:55.143918+11	\N
54	96	2013-12-15 21:34:50.665581+11	\N
55	1	2013-12-15 22:20:59.97439+11	\N
56	4	2013-12-15 22:21:48.835135+11	\N
57	97	2013-12-15 22:24:04.699905+11	\N
58	97	2013-12-15 22:31:33.682683+11	\N
59	97	2013-12-16 09:10:39.719766+11	\N
60	98	2013-12-17 09:26:44.648401+11	\N
61	99	2013-12-17 10:25:48.661773+11	\N
62	4	2013-12-17 10:57:43.3224+11	\N
63	100	2013-12-17 21:30:51.446716+11	\N
64	101	2013-12-22 17:53:48.426704+11	\N
65	103	2014-01-04 15:20:49.766582+11	\N
66	103	2014-01-04 15:53:31.093941+11	\N
67	105	2014-01-04 16:22:47.525291+11	\N
68	103	2014-01-04 16:23:33.098622+11	\N
69	1	2014-01-04 16:55:16.541842+11	\N
70	106	2014-01-04 17:40:24.688637+11	\N
71	107	2014-01-05 18:06:09.435302+11	\N
72	108	2014-01-05 22:18:06.166247+11	\N
73	109	2014-01-10 12:19:15.350019+11	\N
74	110	2014-01-10 12:53:18.419274+11	\N
75	111	2014-01-10 14:12:01.845642+11	\N
76	112	2014-01-12 14:05:12.538124+11	\N
77	113	2014-01-12 14:13:20.579505+11	\N
78	108	2014-01-12 21:41:19.210031+11	\N
79	111	2014-01-13 03:30:58.06541+11	\N
80	114	2014-01-14 09:46:59.79728+11	\N
81	115	2014-01-14 10:03:55.401336+11	\N
82	116	2014-01-14 10:40:39.864503+11	\N
83	117	2014-01-14 12:13:34.500367+11	\N
84	118	2014-01-14 12:13:52.080246+11	\N
85	119	2014-01-14 12:14:16.354805+11	\N
86	120	2014-01-14 12:14:29.578846+11	\N
87	120	2014-01-14 12:41:22.573336+11	\N
88	121	2014-01-14 12:46:16.471091+11	\N
89	122	2014-01-14 12:46:52.608667+11	\N
90	123	2014-01-14 12:47:03.511591+11	\N
91	124	2014-01-14 12:47:11.423475+11	\N
92	125	2014-01-14 12:47:27.567434+11	\N
93	126	2014-01-14 13:24:21.554869+11	\N
94	127	2014-01-14 13:33:07.01915+11	\N
95	127	2014-01-14 13:48:47.118844+11	\N
96	128	2014-01-14 14:11:22.524041+11	\N
97	129	2014-01-14 14:21:13.660565+11	\N
98	130	2014-01-14 21:52:43.636606+11	\N
99	131	2014-01-14 21:57:53.33986+11	\N
100	132	2014-01-14 22:02:09.4358+11	\N
101	133	2014-01-14 22:49:16.595336+11	\N
102	124	2014-01-14 22:51:19.956893+11	\N
103	134	2014-01-15 14:30:16.132416+11	\N
104	135	2014-01-15 14:31:32.816501+11	\N
105	136	2014-01-15 14:32:09.896429+11	\N
106	137	2014-01-15 14:32:20.121316+11	\N
107	138	2014-01-15 14:32:32.128544+11	\N
108	139	2014-01-15 14:33:25.011361+11	\N
109	140	2014-01-15 14:33:34.315622+11	\N
110	141	2014-01-15 14:34:32.238489+11	\N
111	109	2014-01-16 03:31:31.33801+11	\N
112	142	2014-01-16 15:42:32.003009+11	\N
113	143	2014-01-16 15:42:50.233276+11	\N
114	144	2014-01-16 15:46:15.84576+11	\N
115	145	2014-01-16 15:47:30.898786+11	\N
116	146	2014-01-16 15:48:18.97617+11	\N
117	147	2014-01-16 15:49:32.374413+11	\N
118	148	2014-01-16 15:50:56.608429+11	\N
119	149	2014-01-16 15:51:15.025088+11	\N
120	150	2014-01-18 16:54:49.777466+11	\N
121	151	2014-01-18 16:55:49.236777+11	\N
122	152	2014-01-18 17:18:12.284689+11	118.209.81.43
123	152	2014-01-19 12:45:21.718435+11	118.209.81.43
124	153	2014-01-19 15:38:59.843768+11	139.216.147.253
125	154	2014-01-19 15:39:22.664107+11	139.216.147.253
126	155	2014-01-19 21:06:11.639313+11	118.209.81.43
127	156	2014-01-20 21:01:58.853213+11	118.209.81.43
128	157	2014-01-20 21:05:13.351927+11	118.209.81.43
129	158	2014-01-21 23:07:05.868678+11	118.209.81.43
130	159	2014-01-21 23:12:20.337616+11	118.209.81.43
131	160	2014-01-23 21:05:23.940365+11	118.209.81.43
132	161	2014-01-24 11:45:50.147286+11	118.209.81.43
133	162	2014-01-24 11:54:11.571247+11	118.209.81.43
134	163	2014-01-24 11:55:09.313214+11	118.209.81.43
135	164	2014-01-24 16:52:09.896564+11	118.209.81.43
136	165	2014-01-28 09:08:10.495928+11	131.170.90.4
137	166	2014-01-28 09:13:54.872018+11	131.170.90.4
138	167	2014-01-28 09:43:53.684052+11	203.219.105.78
139	168	2014-01-29 23:39:41.918708+11	118.209.81.43
140	169	2014-01-31 14:17:39.048501+11	131.170.5.2
141	170	2014-02-02 20:27:20.795476+11	118.209.81.43
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

