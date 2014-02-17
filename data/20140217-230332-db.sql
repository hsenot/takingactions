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

SELECT pg_catalog.setval('task_discarded_id_seq', 6677, true);


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

SELECT pg_catalog.setval('task_id_seq', 312, true);


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

SELECT pg_catalog.setval('task_undertaken_id_seq', 294, true);


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
171	Donate a log systematically	2014-02-05 17:27:03.604734+11
172	Toss around a new slogan like it will change the world	2014-02-05 17:27:23.66314+11
173	Detail the rules   as a pie chart	2014-02-05 17:58:26.374997+11
174	Scrunch a megaphone as if functional	2014-02-05 17:58:45.770183+11
175	Build a piece of paper seriously	2014-02-05 18:00:38.895644+11
176	Multiply a list of rules while standing still	2014-02-06 17:21:45.360403+11
177	Teach a limited edition in capitals	2014-02-06 17:21:57.055588+11
178	Collect something damaged without showing any proof	2014-02-06 17:22:13.833415+11
179	Visualise with a stranger and connect the dots	2014-02-06 17:22:22.312871+11
180	Plot on a graph the colour palette of an image confidently	2014-02-06 17:23:32.644529+11
181	Collate the idea of happiness without assistance	2014-02-06 17:25:12.360027+11
182	Send through the risks in public	2014-02-06 17:25:38.361016+11
183	Write the world privately	2014-02-06 17:25:46.646805+11
184	Say the same word on a piece of paper	2014-02-06 17:27:21.951694+11
185	Collate average addictively	2014-02-06 19:35:30.759395+11
186	Examine particular ideas in the form of instructions	2014-02-06 19:48:02.314419+11
187	Undo your job to closely notice the details	2014-02-07 08:32:48.565912+11
188	Photograph how you are implicated in systems quietly	2014-02-07 08:47:35.676968+11
189	Grow a small list in the form of a ransom note	2014-02-07 08:56:45.151558+11
190	Write a letter about a useless thing in capitals	2014-02-07 11:12:24.694673+11
191	Email the impossible over time	2014-02-07 12:07:19.440072+11
192	Form tools together	2014-02-07 13:38:15.171135+11
193	Form a hole to create a completely new image	2014-02-07 13:40:25.199591+11
194	Produce a collection of blue things without thinking	2014-02-07 13:40:33.949425+11
195	Read then photograph while walking	2014-02-07 13:45:24.245308+11
196	Continue something backing it up with research	2014-02-07 15:56:22.243344+11
197	Record trees with a public outcome in mind	2014-02-07 15:56:54.956287+11
198	Undertake something intricate mindfully	2014-02-07 15:57:19.685814+11
201	Produce silver coins creatively	2014-02-07 16:13:41.128437+11
202	Investigate the temperature as though your life depends on it	2014-02-07 16:18:52.09135+11
205	Bring salvaged material and attempt to extract a meaning	2014-02-07 16:39:57.108557+11
206	Store something into a drawing	2014-02-07 16:47:07.15013+11
215	Post bureaucracy in the colours of your flag	2014-02-07 22:21:56.8334+11
216	Walk  your thoughts into a ball	2014-02-07 22:22:04.591441+11
217	Assemble a garden in the form of instructions	2014-02-07 22:22:42.518712+11
218	Improve information by swapping	2014-02-07 22:23:06.385879+11
219	Build a flagpole and attempt it only once	2014-02-07 22:23:18.150586+11
220	Create a hole quickly	2014-02-07 22:23:30.392402+11
221	Undo time in the most innovative way you can think of	2014-02-07 22:24:27.299658+11
222	Photocopy random tasks into a ball	2014-02-07 22:25:08.322904+11
223	Donate a set of instructions and send it to us via email	2014-02-07 22:25:26.249464+11
199	Print out branches diplomatically	2014-02-07 16:11:04.332844+11
224	Perform a manual using found materials	2014-02-07 22:26:06.048058+11
225	Carve a community with others	2014-02-07 22:26:16.56008+11
200	Build this and that randomly	2014-02-07 16:13:22.123824+11
203	Present good and bad arbritrarily	2014-02-07 16:22:36.385233+11
204	Plot on a graph elastic bands thinking about form and function	2014-02-07 16:27:22.744723+11
207	Find data simply	2014-02-07 16:53:26.92258+11
208	Invent a new system creatively	2014-02-07 16:54:23.155149+11
209	Suggest a dictionary in the simplest way possible	2014-02-07 22:16:33.513056+11
210	Write about a game of cards intuitively	2014-02-07 22:17:42.888297+11
211	Tweet the future arbritrarily	2014-02-07 22:17:57.166049+11
212	Fill the surface in hardcopy	2014-02-07 22:19:18.411776+11
213	Create a secret handshake in a new order	2014-02-07 22:19:50.405163+11
214	Change change to a stranger	2014-02-07 22:20:20.7797+11
226	Paint seeds and pick your favourite	2014-02-07 22:27:35.465645+11
227	Try something small  in 2 ways	2014-02-07 22:27:48.76727+11
228	Move a sculpture creatively	2014-02-07 22:28:05.480651+11
229	Define free time openly	2014-02-07 22:28:19.339061+11
230	Make meaning through trade	2014-02-07 22:29:07.182913+11
231	Teach the crowd while standing still	2014-02-07 22:29:16.477775+11
232	Write a letter about the fourth world as a drawing	2014-02-08 14:14:36.267679+11
233	Tweet something with a double meaning now	2014-02-08 17:14:56.464961+11
234	Discover your location on the nature strip	2014-02-09 12:03:43.674428+11
235	Observe weeds in pen	2014-02-09 12:05:37.745067+11
236	Whistle political rhetoric trustfully	2014-02-09 12:12:22.3042+11
237	Throw a new system to a stranger	2014-02-09 21:36:44.323072+11
238	Consider  everything simply	2014-02-09 21:38:04.59824+11
239	Form suburbs creatively	2014-02-09 21:39:10.694938+11
240	Publicly declare transparency in 9 sentences	2014-02-09 21:40:53.138893+11
241	Perform political rhetoric to capture the moment	2014-02-09 21:55:34.917773+11
242	Sew the economy as a map	2014-02-09 22:00:58.71106+11
243	Define the economy arbritrarily	2014-02-11 18:50:29.78731+11
244	Colour the temperature diplomatically	2014-02-11 18:52:21.149251+11
245	Extract a positive gesture through trade	2014-02-12 09:13:19.35858+11
246	Create a safe in gold	2014-02-12 13:03:36.48782+11
247	Draw a useless thing then cut that in half	2014-02-12 14:13:54.725145+11
248	Send through a number you consider to be quite big online	2014-02-12 14:18:14.074928+11
249	Toss around beans in public space	2014-02-12 14:20:50.11866+11
250	Write about the temperature on the wall	2014-02-12 14:22:25.068563+11
251	Sing a new system loudly	2014-02-12 15:49:02.961726+11
252	Find an example of a circle unintuitively	2014-02-12 15:49:50.90731+11
253	Detail your location on a piece of paper	2014-02-12 15:50:26.708906+11
254	Toss a useful object while standing still	2014-02-12 15:51:17.8025+11
255	Move a log and connect the dots	2014-02-12 15:51:30.35821+11
256	Store images of other people  and send it to us via email	2014-02-12 15:51:38.916384+11
257	Multiply trees in gold	2014-02-12 15:52:03.459119+11
258	Move government without using words	2014-02-12 16:04:00.810848+11
259	Source tools and collate the results	2014-02-12 16:04:58.039746+11
260	Tweet a movement so its function is questionable	2014-02-12 16:05:06.719009+11
261	Collate an agreement and pick your favourite	2014-02-12 16:28:38.568516+11
262	Make a colour palette of the ideal newspaper in a graph of rainbow colours	2014-02-12 16:29:06.646322+11
263	Brainstorm a 8-word manifesto in a graph of rainbow colours	2014-02-12 17:09:26.876852+11
264	Manage information with a pencil	2014-02-12 17:10:57.353956+11
265	Cut and paste a positive gesture like you mean it	2014-02-12 18:40:37.14862+11
266	Consider  what you see in photographic form	2014-02-12 18:41:36.220601+11
267	Take a photo of stationery during work hours	2014-02-12 18:42:00.926165+11
268	Build this and that on a piece of paper	2014-02-12 18:52:13.423178+11
269	Take a photo of an atlas in public	2014-02-12 18:52:51.942553+11
270	Create a boat in secret	2014-02-12 22:10:14.095246+11
271	Identify a border with a catchy title	2014-02-12 22:12:00.313481+11
272	Confuse an atlas diplomatically	2014-02-12 22:12:39.631172+11
273	Reinvent a video  in the usual way	2014-02-12 22:13:16.355596+11
274	Find an example of a mug with a catchy title	2014-02-12 22:13:37.596539+11
275	Invent a common approach in 4 sentences	2014-02-12 22:14:12.639321+11
276	Bring a secret handshake using an old technique	2014-02-12 22:14:25.76039+11
277	Observe your thoughts directly on the wall	2014-02-12 22:15:28.322741+11
278	Decipher stone arbritrarily	2014-02-12 22:15:51.685839+11
279	Visualise trees as though your life depends on it	2014-02-12 22:17:33.397565+11
280	Create something with a double meaning using only political rhetoric	2014-02-12 22:17:44.918176+11
281	Try a communal dinner online	2014-02-12 22:18:19.28337+11
282	Find something damaged and send it to us via email	2014-02-13 16:57:00.232341+11
283	Trust the economy secretly	2014-02-13 16:58:19.132665+11
284	Hack a dictionary temporarily	2014-02-13 19:15:05.453547+11
285	Replicate elastic bands and double it	2014-02-13 22:02:10.970541+11
286	Exhaust a water source with a pencil	2014-02-13 22:02:44.71285+11
287	Paint with watercolour trees quietly	2014-02-13 22:10:15.481422+11
288	Colour in  stationery with other people	2014-02-14 10:30:01.569872+11
289	Write about a direction of the future	2014-02-14 10:34:06.13051+11
290	Cut and paste something by deduction	2014-02-14 10:42:07.189713+11
291	Rearrange something and document the findings to share	2014-02-14 10:42:39.664112+11
292	Present something intricate and attempt it only once	2014-02-14 12:37:19.140574+11
293	Turn around cycle in a variety of ways	2014-02-14 12:38:02.801792+11
294	Divulge a new object diplomatically	2014-02-14 20:32:21.526838+11
295	Pair two people arbritrarily	2014-02-15 21:23:03.932778+11
296	Reassess a slogan as a drawing	2014-02-15 22:52:02.804793+11
297	Describe the idea of nationality without using words	2014-02-16 22:06:21.048274+11
298	Paint a hole helplessly	2014-02-16 22:06:30.038586+11
299	Suggest something now	2014-02-16 22:07:01.512959+11
300	Plant beans using statistics	2014-02-17 11:30:03.871861+11
301	Teach the institution to preexisting conditions	2014-02-17 11:41:58.303543+11
302	Continue the notion of work  without telling anyone	2014-02-17 12:21:33.040555+11
303	Source something with a double meaning immediately	2014-02-17 12:21:53.937148+11
304	Record nothing once	2014-02-17 12:45:41.229953+11
305	Arrange plants intuitively	2014-02-17 14:23:48.603751+11
306	Divulge your inbox loudly	2014-02-17 15:49:14.732522+11
307	Cut and paste the truth and double it	2014-02-17 22:28:54.048379+11
308	Model a useless thing to closely notice the details	2014-02-17 22:30:05.404375+11
309	Raise a flier imagining you are in isolation	2014-02-17 22:54:41.884972+11
310	Reverse engineer images of other people  openly	2014-02-17 22:55:20.228255+11
311	List the impossible with others	2014-02-17 22:55:30.673811+11
312	Demonstrate your thoughts immediately	2014-02-17 22:55:44.13971+11
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
2072	Manage Australian symbolism for yourself	2014-02-02 23:39:09.198131+11	118.209.81.43
2073	Walk  power in pen	2014-02-02 23:39:11.211747+11	118.209.81.43
2074	Assemble a circle without showing anyone	2014-02-02 23:39:15.926642+11	118.209.81.43
2075	Break down a new object so that we will be really surprised	2014-02-02 23:39:18.697531+11	118.209.81.43
2076	Shape what success means to you by swapping	2014-02-02 23:39:25.821127+11	118.209.81.43
2077	Converse the rules   to initiate progress	2014-02-02 23:39:28.487119+11	118.209.81.43
2078	Detail a useless thing with tape	2014-02-02 23:39:33.475923+11	118.209.81.43
2079	Break down into numbers a handshake privately	2014-02-02 23:39:36.377424+11	118.209.81.43
2080	Sew everything green and white with no preconceived idea	2014-02-02 23:39:44.676891+11	118.209.81.43
2081	Plant the least used glass from your cupboard in a graph of rainbow colours	2014-02-02 23:39:48.942973+11	118.209.81.43
2082	Swap a debate directly	2014-02-02 23:39:53.887665+11	118.209.81.43
2083	Snap in 2 minutes in secret	2014-02-02 23:39:56.138786+11	118.209.81.43
2084	Form companion plants over 31 hours	2014-02-02 23:39:58.562224+11	118.209.81.43
2085	Picture the idea of nationality relating to a gallery	2014-02-02 23:40:02.177267+11	118.209.81.43
2086	Deliver a circle do this 4 times	2014-02-02 23:40:06.822141+11	118.209.81.43
2087	Break the number of elastic bands you see on the ground in the right order	2014-02-02 23:40:11.960394+11	118.209.81.43
2088	Act on practical objects without assistance	2014-02-02 23:40:15.261468+11	118.209.81.43
2089	Audit a communal dinner in photoshop	2014-02-02 23:40:18.152202+11	118.209.81.43
2090	Design the garden over 23 hours	2014-02-02 23:40:20.381527+11	118.209.81.43
2091	Audit a game of cards by deduction	2014-02-02 23:40:22.421873+11	118.209.81.43
2092	Change your role within a particular organisational structure like a robot	2014-02-02 23:40:24.351114+11	118.209.81.43
2093	Group multiple images of a 6-word manifesto during business hours	2014-02-02 23:40:27.829577+11	118.209.81.43
2094	Paint with watercolour free time over 2 minutes	2014-02-02 23:40:37.155108+11	118.209.81.43
2095	Turn around a nation-state with optimism	2014-02-02 23:40:52.39787+11	118.209.81.43
2096	Make a circle using the name of someone great	2014-02-02 23:40:56.648269+11	118.209.81.43
2097	Photograph the economy temporarily	2014-02-02 23:41:00.09699+11	118.209.81.43
2098	Toss around something new with a catchy title	2014-02-02 23:41:04.796845+11	118.209.81.43
2099	Find an example of how your mobile phone is used on any given day until you are happy with the end result	2014-02-02 23:41:08.542609+11	118.209.81.43
2100	Perform the chain of evidence using an old technique	2014-02-02 23:41:22.272207+11	118.209.81.43
2101	Print out with a stranger helplessly	2014-02-02 23:41:29.302341+11	118.209.81.43
2102	Suggest everything you see in the next 10 seconds on your own	2014-02-02 23:41:32.291893+11	118.209.81.43
2103	Research collective action and collate the results	2014-02-02 23:41:36.913084+11	118.209.81.43
2104	Perform branches efficiently	2014-02-02 23:41:39.736548+11	118.209.81.43
2105	Photograph with a stranger simply	2014-02-02 23:41:42.500399+11	118.209.81.43
2106	Wander the rules   with a public outcome in mind	2014-02-02 23:41:44.452046+11	118.209.81.43
2107	Plot on a graph a scene as a map	2014-02-02 23:41:48.81282+11	118.209.81.43
2108	Model a useless thing now	2014-02-03 12:26:16.522914+11	131.170.5.4
2109	Draw a communal dinner now	2014-02-03 12:50:26.553956+11	131.170.5.5
2110	Represent the colour palette of an image so that we will be really surprised	2014-02-03 12:50:28.03252+11	131.170.5.5
2111	Plan a logo openly	2014-02-03 13:02:45.297134+11	131.170.90.6
2112	Break down a community during work hours	2014-02-03 13:02:47.143823+11	131.170.90.6
2113	Snap government while talking to people	2014-02-03 13:02:47.389435+11	131.170.90.6
2114	Mark a log openly	2014-02-03 13:02:47.548399+11	131.170.90.6
2115	Subvert transparency differently	2014-02-03 13:02:47.700615+11	131.170.90.6
2116	Discuss a see-saw using the name of someone great	2014-02-03 13:02:47.925982+11	131.170.90.6
2117	Collate food supply chains in the colours of your flag	2014-02-03 13:02:48.126072+11	131.170.90.6
2118	List something new quietly	2014-02-03 13:02:55.006904+11	131.170.90.6
2119	Paint food supply chains diplomatically	2014-02-03 13:02:55.58023+11	131.170.90.6
2120	Make debt with your hands	2014-02-03 13:02:55.839284+11	131.170.90.6
2121	Act a game of cards over five minutes	2014-02-03 13:02:55.986885+11	131.170.90.6
2122	Play the fourth world and pick your favourite	2014-02-03 13:03:24.315692+11	131.170.90.6
2123	Take a photo of the fourth world once	2014-02-03 13:18:10.849449+11	203.206.226.224
2124	Read a new object confidently	2014-02-03 13:18:15.087716+11	203.206.226.224
2125	Discuss the idea of nationality in black and white	2014-02-03 13:18:15.932094+11	203.206.226.224
2126	Mark religiously as an indulgence	2014-02-03 17:47:34.325565+11	118.209.81.43
2127	Invent two people systematically	2014-02-03 19:07:59.519774+11	120.149.82.82
2128	Continue your job while referring to gardening	2014-02-03 21:57:48.87746+11	118.209.81.43
2129	Order a meeting simply	2014-02-03 21:57:50.89728+11	118.209.81.43
2130	Sew then photograph while walking	2014-02-03 21:57:51.833682+11	118.209.81.43
2131	Identify food supply chains in photographic form	2014-02-03 21:57:52.318894+11	118.209.81.43
2132	Follow in 5 minutes helplessly	2014-02-03 21:57:52.642709+11	118.209.81.43
2133	Type a new slogan actively	2014-02-03 21:57:54.613293+11	118.209.81.43
2134	Sculpt focussed objects using watercolour	2014-02-03 21:57:55.493414+11	118.209.81.43
2135	Observe time with scepticism	2014-02-03 21:57:56.579493+11	118.209.81.43
2136	Confuse the rules   privately	2014-02-03 21:57:57.004171+11	118.209.81.43
2137	Scratch an orchestra to closely notice the details	2014-02-03 21:57:57.369658+11	118.209.81.43
2138	Tap into a handshake over and over	2014-02-03 21:57:57.710029+11	118.209.81.43
2139	Bring about in 3 minutes and connect the dots	2014-02-03 21:57:58.666152+11	118.209.81.43
2140	Discover weeds in another language	2014-02-03 21:58:00.136372+11	118.209.81.43
2141	Colour in  outside while talking to people	2014-02-03 21:58:01.746363+11	118.209.81.43
2142	Email anything over 12 minutes	2014-02-03 21:58:04.529549+11	118.209.81.43
2143	Collate energy   using statistics	2014-02-03 21:58:08.567119+11	118.209.81.43
2144	Photocopy a round table together	2014-02-03 21:58:09.894176+11	118.209.81.43
2145	Picture out the front of your house addictively	2014-02-03 21:58:11.031457+11	118.209.81.43
2146	Send a newspaper clipping of your password without using words	2014-02-03 21:58:12.514756+11	118.209.81.43
2147	Raise the surface with other people	2014-02-03 21:58:15.337604+11	118.209.81.43
2148	Split a collection of blue things using free software	2014-02-03 21:58:17.650342+11	118.209.81.43
2149	Donate your favourite image to preexisting conditions	2014-02-03 21:58:19.580539+11	118.209.81.43
2150	Plot on a graph self-directed obsessively	2014-02-03 21:58:21.019435+11	118.209.81.43
2151	Tap into a new object like you mean it	2014-02-03 21:58:22.559195+11	118.209.81.43
2152	Cut and paste a piece of paper and put two and two together	2014-02-03 21:58:24.350633+11	118.209.81.43
2153	Produce D.I.Y thoroughly checking	2014-02-03 21:58:27.324571+11	118.209.81.43
2154	Grow energy   and connect the dots	2014-02-03 21:58:28.196357+11	118.209.81.43
2155	Group multiple images of information intuitively	2014-02-03 21:58:29.496746+11	118.209.81.43
2156	Cover the garden without thinking	2014-02-03 21:58:32.241594+11	118.209.81.43
2157	Build a fireplace efficiently	2014-02-03 21:58:33.657342+11	118.209.81.43
2158	Un-mechanise in gold over 22 hours	2014-02-03 21:58:47.585457+11	118.209.81.43
2159	Create a banner which refers to tools in a public place	2014-02-03 21:58:50.736433+11	118.209.81.43
2160	Picture debt to the world	2014-02-03 21:58:51.09984+11	118.209.81.43
2161	Make up the rules   without thinking	2014-02-03 21:58:52.147076+11	118.209.81.43
2162	Research money unfairly	2014-02-03 21:58:53.940156+11	118.209.81.43
2163	Protect a commodity to create a completely new image	2014-02-03 21:58:55.059526+11	118.209.81.43
2164	Protect a piece of paper over 19 hours	2014-02-03 21:58:56.39009+11	118.209.81.43
2165	Rearrange the garden simply	2014-02-03 21:58:59.08696+11	118.209.81.43
2166	Record self-directed as a list	2014-02-03 21:59:01.013225+11	118.209.81.43
2167	Create with a stranger so it is equal	2014-02-03 21:59:02.379029+11	118.209.81.43
2168	Shape political rhetoric and document the findings to share	2014-02-03 21:59:03.799324+11	118.209.81.43
2169	Detail a log to create a completely new image	2014-02-03 21:59:06.538897+11	118.209.81.43
2170	In your head, formulate your favourite image in a public place	2014-02-04 19:11:38.949902+11	66.249.74.143
2171	Improve a word you heard today in pen	2014-02-04 20:24:13.83828+11	62.255.170.147
2172	Draw knowledge in hardcopy	2014-02-05 11:12:39.056817+11	203.217.57.96
2173	Check a chair referring to your favourite	2014-02-05 11:16:37.497413+11	203.217.57.96
2174	Bring about a movement in the gallery	2014-02-05 14:42:22.083034+11	59.167.38.73
2175	Act a new system until you are happy with the end result	2014-02-05 14:42:30.40012+11	59.167.38.73
2176	Undo your camera thoroughly checking	2014-02-05 14:42:34.352996+11	59.167.38.73
2177	Extract a positive gesture through trade	2014-02-05 14:42:41.407169+11	59.167.38.73
2178	Bring a movement thinking about form and function	2014-02-05 17:11:04.067404+11	139.216.147.253
2179	Present religiously to a stranger	2014-02-05 17:11:06.628358+11	139.216.147.253
2180	Grow a word you heard today into a ball	2014-02-05 17:11:08.860858+11	139.216.147.253
2181	Subvert the moon to the public	2014-02-05 17:11:13.066462+11	139.216.147.253
2182	Modify the temperature without showing any proof	2014-02-05 17:11:15.485268+11	139.216.147.253
2183	Explain a get-together differently	2014-02-05 17:11:19.12638+11	139.216.147.253
2184	Create a banner which refers to a commodity and throw it out the window	2014-02-05 17:11:22.039011+11	139.216.147.253
2185	Subvert branches in pen	2014-02-05 17:11:28.027382+11	139.216.147.253
2186	Audit growth to the public	2014-02-05 17:11:29.949253+11	139.216.147.253
2187	Seek sticks and stones being completely dishonest	2014-02-05 17:11:31.495588+11	139.216.147.253
2188	Wander a get-together confidently	2014-02-05 17:11:33.52837+11	139.216.147.253
2189	Consider  the crowd like a spy	2014-02-05 17:11:35.053415+11	139.216.147.253
2190	Introduce your job as an indulgence	2014-02-05 17:11:36.105595+11	139.216.147.253
2191	Suggest an impracticle object like a spy	2014-02-05 17:11:37.926871+11	139.216.147.253
2192	Seek weeds when you should be doing something else	2014-02-05 17:11:40.455624+11	139.216.147.253
2193	Write a letter about a set of instructions while walking	2014-02-05 17:11:44.214409+11	139.216.147.253
2194	Donate the impossible using the name of someone great	2014-02-05 17:11:46.869638+11	139.216.147.253
2195	Swap a flier thoroughly checking	2014-02-05 17:11:48.62323+11	139.216.147.253
2196	Read then photograph thinking about form and function	2014-02-05 17:11:50.610689+11	139.216.147.253
2197	Continue something intricate seriously	2014-02-05 17:11:53.438879+11	139.216.147.253
2198	Pair one minute thoughtfully	2014-02-05 17:11:57.933113+11	139.216.147.253
2199	Find an example of migration and double it	2014-02-05 17:26:09.571047+11	139.216.147.253
2200	Gather together something damaged over and over	2014-02-05 17:26:10.722297+11	139.216.147.253
2201	Act migration obsessively	2014-02-05 17:26:12.224052+11	139.216.147.253
2202	Model a common approach in pen	2014-02-05 17:26:13.155945+11	139.216.147.253
2203	Document a communal dinner so you are affected	2014-02-05 17:26:15.088983+11	139.216.147.253
2204	Say then photograph creatively	2014-02-05 17:26:17.642738+11	139.216.147.253
2205	Borrow an impracticle object in secret	2014-02-05 17:26:22.731052+11	139.216.147.253
2206	Calculate your camera one way	2014-02-05 17:26:24.564088+11	139.216.147.253
2207	Replicate how your mobile phone is used on any given day over five minutes	2014-02-05 17:26:25.951985+11	139.216.147.253
2208	Research the idea of happiness convincingly	2014-02-05 17:26:28.218594+11	139.216.147.253
2209	Photocopy space in a minute	2014-02-05 17:26:30.069863+11	139.216.147.253
2210	Sculpt a see-saw without language	2014-02-05 17:26:36.82181+11	139.216.147.253
2211	Bring about a hole thinking about form and function	2014-02-05 17:26:37.670173+11	139.216.147.253
2212	Mime a balloon and question your findings	2014-02-05 17:26:39.375212+11	139.216.147.253
2213	Deliver a piece of paper in public	2014-02-05 17:26:44.221352+11	139.216.147.253
2214	Break your thoughts to a stranger	2014-02-05 17:26:47.499549+11	139.216.147.253
2215	Use  the rules   so it is equal	2014-02-05 17:26:49.315929+11	139.216.147.253
2216	Donate a log systematically	2014-02-05 17:26:50.648329+11	139.216.147.253
2217	Wander free time referencing the idea of dis-organisation	2014-02-05 17:27:09.965828+11	139.216.147.253
2218	Examine a new slogan without showing any proof	2014-02-05 17:27:11.483598+11	139.216.147.253
2219	Explain a collection of edible greens helplessly	2014-02-05 17:27:13.214471+11	139.216.147.253
2220	Send through something damaged by swapping	2014-02-05 17:27:14.641274+11	139.216.147.253
2221	Toss around a new slogan like it will change the world	2014-02-05 17:27:18.019683+11	139.216.147.253
2222	Swap a community on the floor	2014-02-05 17:27:49.891116+11	139.216.147.253
2257	Design a fireplace then examine how it relates to the idea of revolution	2014-02-06 10:02:12.151266+11	59.167.38.73
2258	Plot on a graph your password until you are happy with the end result	2014-02-06 10:02:36.184153+11	59.167.38.73
2259	Colour your job systematically	2014-02-06 10:02:45.20549+11	59.167.38.73
2260	Brainstorm future technologies simply	2014-02-06 10:02:59.931806+11	59.167.38.73
2261	Examine something over 57 seconds	2014-02-06 10:03:03.811874+11	59.167.38.73
2262	Use  the ideal newspaper differently	2014-02-06 10:03:09.041701+11	59.167.38.73
2263	Learn about the same thing spontaneously	2014-02-06 10:03:14.686944+11	59.167.38.73
2264	In your head, formulate at home side by side	2014-02-06 10:03:19.24515+11	59.167.38.73
2265	Break down the amount of free time you have during business hours	2014-02-06 10:03:29.81035+11	59.167.38.73
2223	Speak  an atlas and put two and two together	2014-02-05 17:56:50.373047+11	139.216.147.253
2224	Introduce spectacles into a ball	2014-02-05 17:56:51.941279+11	139.216.147.253
2225	Dis-organise future technologies thinking about form and function	2014-02-05 17:56:53.35899+11	139.216.147.253
2226	Shape practical objects inside a square	2014-02-05 17:56:55.798147+11	139.216.147.253
2227	Build how your mobile phone is used on any given day with tape	2014-02-05 17:56:58.439288+11	139.216.147.253
2228	Un-mechanise growth in black and white	2014-02-05 17:56:59.597893+11	139.216.147.253
2229	Move a uniform while talking to people	2014-02-05 17:57:01.127584+11	139.216.147.253
2230	Protect a useful object into a ball	2014-02-05 17:57:02.493611+11	139.216.147.253
2231	Mime Australian symbolism without showing any proof	2014-02-05 17:57:06.735288+11	139.216.147.253
2232	Describe something in the size of a book	2014-02-05 17:57:09.020997+11	139.216.147.253
2233	Take a photo of the headlines as a list	2014-02-05 17:57:10.713397+11	139.216.147.253
2234	Illustrate the ideal newspaper in public	2014-02-05 17:57:15.933378+11	139.216.147.253
2235	Scrunch an image-editing program hand-drawn	2014-02-05 17:57:18.994301+11	139.216.147.253
2236	Check the fourth world without telling anyone	2014-02-05 17:57:20.248398+11	139.216.147.253
2237	Cover the notion of work  without assistance	2014-02-05 17:57:21.799038+11	139.216.147.253
2238	Explore debt in secret	2014-02-05 17:57:23.187325+11	139.216.147.253
2239	Discover a see-saw while referring to gardening	2014-02-05 17:57:24.655093+11	139.216.147.253
2240	Produce the same thing creatively	2014-02-05 17:57:25.818646+11	139.216.147.253
2241	Detail the rules   as a pie chart	2014-02-05 17:57:26.946239+11	139.216.147.253
2242	Snap a set of instructions  share it with us	2014-02-05 17:58:29.022669+11	139.216.147.253
2243	Undertake a banana and double it	2014-02-05 17:58:30.711258+11	139.216.147.253
2244	Scrunch a megaphone as if functional	2014-02-05 17:58:32.92975+11	139.216.147.253
2245	Expose in 3 ways using an old technique	2014-02-05 18:00:27.96195+11	139.216.147.253
2246	Teach religiously and put two and two together	2014-02-05 18:00:29.225384+11	139.216.147.253
2247	Protect a small list privately	2014-02-05 18:00:30.414895+11	139.216.147.253
2248	Cover debt by planning the next move	2014-02-05 18:00:31.900022+11	139.216.147.253
2249	Build a piece of paper seriously	2014-02-05 18:00:33.08109+11	139.216.147.253
2250	Undertake your camera with a catchy title	2014-02-06 10:01:01.651411+11	59.167.38.73
2251	Categorise in the most innovative way you can think of; in photographic form	2014-02-06 10:01:09.888929+11	59.167.38.73
2252	Brainstorm the idea of happiness referencing the idea of dis-organisation	2014-02-06 10:01:15.159379+11	59.167.38.73
2253	Scrunch practical objects while referring to beehives	2014-02-06 10:01:37.128465+11	59.167.38.73
2254	Audit a limited edition diplomatically	2014-02-06 10:01:40.376136+11	59.167.38.73
2255	Maintain what success means to you and document the findings to share	2014-02-06 10:01:44.907154+11	59.167.38.73
2256	Create a banner which refers to a slogan using only political rhetoric	2014-02-06 10:01:55.646192+11	59.167.38.73
2266	Colour in  migration into a drawing	2014-02-06 10:03:46.979194+11	59.167.38.73
2267	Follow a set of instructions during business hours	2014-02-06 10:03:50.575475+11	59.167.38.73
2268	Hack a small list actively	2014-02-06 10:03:57.056696+11	59.167.38.73
2269	Document everything you see in the next 23 seconds to initiate progress	2014-02-06 10:04:11.018293+11	59.167.38.73
2270	Improve positive images of collective action like a robot	2014-02-06 10:04:17.701833+11	59.167.38.73
2271	Write about something new and send it to us via email	2014-02-06 10:04:27.331942+11	59.167.38.73
2272	Define a garden to initiate progress	2014-02-06 10:04:34.143905+11	59.167.38.73
2273	Check social justice as an indulgence	2014-02-06 10:04:44.103167+11	59.167.38.73
2274	Write at home using free software	2014-02-06 10:04:52.293974+11	59.167.38.73
2275	Distribute a slogan inside an irregular shape	2014-02-06 10:04:54.893951+11	59.167.38.73
2276	Donate  sticks in the gallery	2014-02-06 10:05:05.197267+11	59.167.38.73
2277	Hand out the impossible with the first pencil you find	2014-02-06 10:05:07.304208+11	59.167.38.73
2278	Manage focussed objects so it is equal	2014-02-06 10:05:10.811323+11	59.167.38.73
2279	Write a list of  your camera in 9 sentences	2014-02-06 10:05:12.216271+11	59.167.38.73
2280	Reverse patience hand-drawn	2014-02-06 10:05:14.52545+11	59.167.38.73
2281	Collect a debate to the public	2014-02-06 10:05:16.040159+11	59.167.38.73
2282	Record how you might begin to withdraw your dependency on technology in a closed form	2014-02-06 10:05:17.359771+11	59.167.38.73
2283	Plant a see-saw in a public place	2014-02-06 10:05:23.065814+11	59.167.38.73
2346	Define the future online	2014-02-06 17:24:02.867326+11	203.5.246.14
2347	Sew everything you see in the next 6 seconds spontaneously	2014-02-06 17:24:06.114526+11	203.5.246.14
2348	Play a new world order and collate the results	2014-02-06 17:24:09.475189+11	203.5.246.14
2349	Extract in 4 ways with your hands	2014-02-06 17:24:18.728815+11	203.5.246.14
2350	Define self-directed to closely notice the details	2014-02-06 17:24:22.824366+11	203.5.246.14
2351	Plan your thoughts so it reflects your values	2014-02-06 17:24:34.568538+11	203.5.246.14
2352	Write about the first 10 things thoughtfully	2014-02-06 17:24:37.575103+11	203.5.246.14
2353	Scratch two people to closely notice the details	2014-02-06 17:24:39.622178+11	203.5.246.14
2354	Split positive images of collective action over 23 hours	2014-02-06 17:24:42.168794+11	203.5.246.14
2355	Send a newspaper clipping of practical objects in the colours of your flag	2014-02-06 17:24:46.34666+11	203.5.246.14
2356	Whittle the best times quietly	2014-02-06 17:24:50.296348+11	203.5.246.14
2357	Subvert a list of rules and speak the result in monotone	2014-02-06 17:24:54.25521+11	203.5.246.14
2358	Cover a get-together without showing any proof	2014-02-06 17:24:58.830992+11	203.5.246.14
2359	Say the temperature to preexisting conditions	2014-02-06 17:25:04.02667+11	203.5.246.14
2360	Collate the idea of happiness without assistance	2014-02-06 17:25:06.28724+11	203.5.246.14
2284	Brainstorm a water source in public	2014-02-06 10:12:29.148034+11	59.167.38.73
2285	Design a flagpole diplomatically	2014-02-06 10:12:31.565073+11	59.167.38.73
2286	Design something intricate to a stranger	2014-02-06 10:12:32.986105+11	59.167.38.73
2287	Toss your role within a particular organisational structure in the form of instructions	2014-02-06 10:12:37.617387+11	59.167.38.73
2288	Change the rules of tennis over time	2014-02-06 10:12:42.514969+11	59.167.38.73
2289	Break down into numbers your password without showing any proof	2014-02-06 10:12:46.980556+11	59.167.38.73
2290	Explain a meal to a stranger	2014-02-06 10:12:52.003627+11	59.167.38.73
2291	Plan a get-together quietly	2014-02-06 10:12:55.615107+11	59.167.38.73
2292	Manage what failure means to you and put two and two together	2014-02-06 10:12:57.596596+11	59.167.38.73
2293	Turn around good and bad by deduction	2014-02-06 10:13:00.139833+11	59.167.38.73
2294	Break down into numbers the institution using only political rhetoric	2014-02-06 10:13:04.900815+11	59.167.38.73
2295	Expose a new slogan in public space	2014-02-06 10:13:08.64958+11	59.167.38.73
2296	Cut and paste Australian symbolism simply	2014-02-06 10:13:17.164795+11	59.167.38.73
2297	Walk  your favourite image using watercolour	2014-02-06 10:13:18.89525+11	59.167.38.73
2298	Describe the surface helplessly	2014-02-06 10:13:20.468162+11	59.167.38.73
2299	Design branches so that we will be really surprised	2014-02-06 10:13:30.124832+11	59.167.38.73
2300	Break down into numbers particular ideas in the colours of your flag	2014-02-06 10:13:32.778371+11	59.167.38.73
2301	Detail weeds into a ball	2014-02-06 10:13:39.14472+11	59.167.38.73
2302	Exhaust a trail of destruction thinking about form and function	2014-02-06 10:13:40.241295+11	59.167.38.73
2303	Borrow the fourth world with others	2014-02-06 10:13:43.814067+11	59.167.38.73
2304	Type at home openly	2014-02-06 10:13:45.505396+11	59.167.38.73
2305	Change the economy directly on the wall	2014-02-06 10:13:46.957993+11	59.167.38.73
2306	Define 7 synonyms together	2014-02-06 10:13:58.688334+11	59.167.38.73
2307	Identify with a stranger relating to a gallery	2014-02-06 10:14:00.033037+11	59.167.38.73
2308	Explore the future do this 4 times	2014-02-06 10:14:03.269036+11	59.167.38.73
2309	Photograph a number you consider to be quite big loudly	2014-02-06 10:14:04.885341+11	59.167.38.73
2310	Describe energy efficiency in another language	2014-02-06 10:14:07.196757+11	59.167.38.73
2311	Write about an organisation  systematically	2014-02-06 10:14:10.076004+11	59.167.38.73
2312	Plot on a graph a commodity without using words	2014-02-06 10:14:11.462845+11	59.167.38.73
2313	Colour a 3-word manifesto considering last century	2014-02-06 10:14:15.687967+11	59.167.38.73
2314	Present an alternative using a recording device	2014-02-06 10:14:18.049763+11	59.167.38.73
2315	Invent a sculpture considering last century	2014-02-06 10:14:28.762+11	59.167.38.73
2316	Borrow the ideal newspaper in a public place	2014-02-06 10:14:30.824626+11	59.167.38.73
2317	Paint anything side by side	2014-02-06 10:14:33.561694+11	59.167.38.73
2318	Borrow something with a double meaning and record what you find	2014-02-06 10:14:35.360593+11	59.167.38.73
2319	Teach 8 images referring to your favourite	2014-02-06 10:14:38.623784+11	59.167.38.73
2320	Read suburbs imagining you are in isolation	2014-02-06 10:14:39.791118+11	59.167.38.73
2321	Send through average in the colours of your flag	2014-02-06 10:39:52.748654+11	203.5.246.14
2322	Define power considering last century	2014-02-06 10:40:02.12733+11	203.5.246.14
2323	Plant trees in a graph of rainbow colours	2014-02-06 17:21:22.354972+11	203.5.246.14
2324	Invent silver coins freely	2014-02-06 17:21:24.959423+11	203.5.246.14
2325	Make something in a graph of rainbow colours	2014-02-06 17:21:30.077819+11	203.5.246.14
2326	Multiply a list of rules while standing still	2014-02-06 17:21:37.155935+11	203.5.246.14
2327	Replicate a program on the nature strip	2014-02-06 17:21:47.892458+11	203.5.246.14
2328	Teach a limited edition in capitals	2014-02-06 17:21:50.498727+11	203.5.246.14
2329	Define suburbs in monotone	2014-02-06 17:21:59.257307+11	203.5.246.14
2330	Collect something damaged without showing any proof	2014-02-06 17:22:08.243803+11	203.5.246.14
2331	Visualise with a stranger and connect the dots	2014-02-06 17:22:15.68655+11	203.5.246.14
2332	Present a border over 57 seconds	2014-02-06 17:22:24.941872+11	203.5.246.14
2333	Draw meaning while referring to beehives	2014-02-06 17:22:27.678708+11	203.5.246.14
2334	Replace the idea of happiness without language	2014-02-06 17:22:35.32478+11	203.5.246.14
2335	Identify transparency using statistics	2014-02-06 17:22:44.329284+11	203.5.246.14
2336	Undo a user-guide and use it as currency	2014-02-06 17:22:52.594546+11	203.5.246.14
2337	Write a letter about a logo and explain why	2014-02-06 17:22:55.485935+11	203.5.246.14
2338	Illustrate the ideal newspaper in public space	2014-02-06 17:22:58.141543+11	203.5.246.14
2339	Find an example of the idea of nationality referencing the idea of dis-organisation	2014-02-06 17:23:08.909134+11	203.5.246.14
2340	Plot on a graph weeds while walking	2014-02-06 17:23:18.657454+11	203.5.246.14
2341	Plot on a graph the colour palette of an image confidently	2014-02-06 17:23:21.912803+11	203.5.246.14
2342	Find the risks to preexisting conditions	2014-02-06 17:23:34.861067+11	203.5.246.14
2343	Try using spray paint and question your findings	2014-02-06 17:23:38.605193+11	203.5.246.14
2344	Send a newspaper clipping of an organisation  in a closed form	2014-02-06 17:23:40.827423+11	203.5.246.14
2345	In your head, formulate patience as a map	2014-02-06 17:23:45.1764+11	203.5.246.14
2361	Follow a new object in hardcopy	2014-02-06 17:25:14.612137+11	203.5.246.14
2362	Collect debt by deduction	2014-02-06 17:25:20.198389+11	203.5.246.14
2363	Impose currency and document the findings to share	2014-02-06 17:25:28.134213+11	203.5.246.14
2364	Send through the risks in public	2014-02-06 17:25:32.180443+11	203.5.246.14
2365	Hand out 9 synonyms in the form of a ransom note	2014-02-06 17:25:40.665423+11	203.5.246.14
2366	Write the world privately	2014-02-06 17:25:42.348325+11	203.5.246.14
2367	Undo a community secretly	2014-02-06 17:27:03.54733+11	203.5.246.14
2368	Write the notion of work  backing it up with research	2014-02-06 17:27:05.344837+11	203.5.246.14
2369	Consider  the truth in secret	2014-02-06 17:27:08.407135+11	203.5.246.14
2370	Observe a flagpole side by side	2014-02-06 17:27:12.72024+11	203.5.246.14
2371	Cut and paste a capitalist notion and pick your favourite	2014-02-06 17:27:14.486661+11	203.5.246.14
2372	Pair a flagpole imagining you are in isolation	2014-02-06 17:27:16.693805+11	203.5.246.14
2373	Say the same word on a piece of paper	2014-02-06 17:27:18.131987+11	203.5.246.14
2374	Draw a hole while referring to beehives	2014-02-06 17:27:24.849151+11	203.5.246.14
2375	Draw a set of instructions slowly	2014-02-06 19:33:17.782939+11	49.184.71.248
2376	Play with a stranger in hardcopy	2014-02-06 19:33:38.025347+11	49.184.71.248
2377	Send a newspaper clipping of something new for yourself	2014-02-06 19:33:52.3831+11	49.184.71.248
2378	Send the surface in capitals	2014-02-06 19:33:52.46696+11	49.184.71.248
2379	Hack in the most innovative way you can think of; with a catchy title	2014-02-06 19:33:52.478222+11	49.184.71.248
2380	Create a log and combine	2014-02-06 19:33:52.802874+11	49.184.71.248
2381	Mime a communal dinner seriously	2014-02-06 19:33:53.190427+11	49.184.71.248
2382	Picture trees so its function is questionable	2014-02-06 19:33:53.557102+11	49.184.71.248
2383	Bring about the game of tug-of-war during business hours	2014-02-06 19:33:54.394686+11	49.184.71.248
2384	Donate a new system privately	2014-02-06 19:33:57.118622+11	49.184.71.248
2385	Plant everything green and white by deduction	2014-02-06 19:33:58.951489+11	49.184.71.248
2386	Visualise the political and pick your favourite	2014-02-06 19:34:01.125563+11	49.184.71.248
2387	Impose a limited edition using only political rhetoric	2014-02-06 19:34:01.775273+11	49.184.71.248
2388	Donate a balloon in the colours of your flag	2014-02-06 19:34:01.838369+11	49.184.71.248
2389	Destroy nothing in the gallery	2014-02-06 19:34:01.841211+11	49.184.71.248
2390	Hand out a meal while referring to beehives	2014-02-06 19:34:01.838692+11	49.184.71.248
2391	Act out self-directed on your own	2014-02-06 19:34:01.848399+11	49.184.71.248
2392	Grow a circle by deduction	2014-02-06 19:34:01.90986+11	49.184.71.248
2393	Print out collective action for yourself	2014-02-06 19:34:01.934666+11	49.184.71.248
2394	Say random tasks backing it up with research	2014-02-06 19:34:01.934886+11	49.184.71.248
2395	Pair the impossible into a drawing	2014-02-06 19:34:01.954369+11	49.184.71.248
2396	Picture in 5 minutes in your line of sight	2014-02-06 19:34:04.359231+11	49.184.71.248
2397	Record a meal randomly	2014-02-06 19:34:04.724223+11	49.184.71.248
2398	Paint with watercolour a word you heard today in a closed form	2014-02-06 19:34:28.813628+11	49.184.71.248
2399	Observe practical objects  share it with us	2014-02-06 19:34:29.217693+11	49.184.71.248
2400	Find an impracticle object as a list	2014-02-06 19:34:29.598641+11	49.184.71.248
2401	Make up everything with a pencil	2014-02-06 19:34:29.909116+11	49.184.71.248
2402	Bring about the world mindfully	2014-02-06 19:34:31.168022+11	49.184.71.248
2403	Make a colour palette of a meeting using a recording device	2014-02-06 19:34:31.18894+11	49.184.71.248
2404	Record beans and attempt it only once	2014-02-06 19:34:31.19281+11	49.184.71.248
2405	Spend time thinking about a handshake using the name of someone great	2014-02-06 19:34:31.192971+11	49.184.71.248
2406	Ruin the headlines as a list	2014-02-06 19:34:31.220575+11	49.184.71.248
2407	Photocopy a uniform one way	2014-02-06 19:34:31.333859+11	49.184.71.248
2408	Detail spectacles in monotone	2014-02-06 19:34:31.576361+11	49.184.71.248
2409	Draw  sticks for yourself	2014-02-06 19:34:31.746008+11	49.184.71.248
2410	Re-write random tasks in 4 sentences	2014-02-06 19:34:31.968152+11	49.184.71.248
2411	Wear the chain of evidence on your own	2014-02-06 19:34:32.163867+11	49.184.71.248
2412	Move energy efficiency unintuitively	2014-02-06 19:34:32.712589+11	49.184.71.248
2413	Try energy   with other people	2014-02-06 19:34:35.822269+11	49.184.71.248
2414	Converse a list of rules diplomatically	2014-02-06 19:34:36.732937+11	49.184.71.248
2415	Group multiple images of migration and connect the dots	2014-02-06 19:34:37.007979+11	49.184.71.248
2416	Act out time in a minute	2014-02-06 19:34:46.09642+11	49.184.71.248
2417	Learn about 8 images once	2014-02-06 19:34:46.108246+11	49.184.71.248
2418	Picture a dollar over 9 minutes	2014-02-06 19:34:46.133866+11	49.184.71.248
2419	Bring Australian symbolism by swapping	2014-02-06 19:35:09.143979+11	49.184.71.248
2420	Record  sticks helplessly	2014-02-06 19:35:09.160939+11	49.184.71.248
2421	Discuss the headlines as a map	2014-02-06 19:35:09.233572+11	49.184.71.248
2422	Toss the city using a recording device	2014-02-06 19:35:09.233895+11	49.184.71.248
2423	Borrow out the front of your house with found objects	2014-02-06 19:35:09.234126+11	49.184.71.248
2424	Send a newspaper clipping of government in black and white	2014-02-06 19:35:09.270986+11	49.184.71.248
2425	Collate average addictively	2014-02-06 19:35:09.495299+11	49.184.71.248
2426	Un-mechanise something small  in your line of sight	2014-02-06 19:35:39.479085+11	49.184.71.248
2427	Find an example of a uniform as a pie chart	2014-02-06 19:35:39.829458+11	49.184.71.248
2428	Bring about positive images of collective action while referring to beehives	2014-02-06 19:35:40.017485+11	49.184.71.248
2429	Paint a capitalist notion in small-scale	2014-02-06 19:35:40.233003+11	49.184.71.248
2430	Abstract a get-together seriously	2014-02-06 19:35:40.361194+11	49.184.71.248
2431	Pair a boat like it will change the world	2014-02-06 19:35:40.515861+11	49.184.71.248
2432	Write about something in a graph of blue hues	2014-02-06 19:35:40.626055+11	49.184.71.248
2433	Find an example of the notion of work  using only political rhetoric	2014-02-06 19:35:40.773234+11	49.184.71.248
2434	Consider  something intricate slowly	2014-02-06 19:35:40.891488+11	49.184.71.248
2435	Collect 8 images to form a link to the past	2014-02-06 19:35:41.179834+11	49.184.71.248
2436	Gather with a stranger temporarily	2014-02-06 19:35:41.357038+11	49.184.71.248
2437	Audit random tasks quietly	2014-02-06 19:35:41.492454+11	49.184.71.248
2438	Audit the city once	2014-02-06 19:35:41.655091+11	49.184.71.248
2439	Break down into numbers information mindfully	2014-02-06 19:35:41.940515+11	49.184.71.248
2440	Define revolution and put two and two together	2014-02-06 19:35:42.046774+11	49.184.71.248
2441	Plan power while talking to people	2014-02-06 19:35:42.170934+11	49.184.71.248
2442	Reverse engineer a hole with others	2014-02-06 19:35:42.445143+11	49.184.71.248
2443	Price the temperature in the simplest way possible	2014-02-06 19:35:42.654666+11	49.184.71.248
2444	Ruin something with a double meaning referring to your favourite	2014-02-06 19:35:42.922985+11	49.184.71.248
2446	Photograph spectacles over and over	2014-02-06 19:35:43.164995+11	49.184.71.248
2448	Source how you are implicated in systems by deduction	2014-02-06 19:35:43.43063+11	49.184.71.248
2450	Produce a limited edition with other people	2014-02-06 19:35:43.737336+11	49.184.71.248
2452	Make up a debate without thinking	2014-02-06 19:35:44.095144+11	49.184.71.248
2522	Examine particular ideas in the form of instructions	2014-02-06 19:47:44.342569+11	49.184.71.248
2525	Discuss everything green and white so it reflects your values	2014-02-07 08:20:23.026436+11	131.170.5.2
2526	Scrunch everything you see in the next 25 seconds in public space	2014-02-07 08:20:24.162023+11	131.170.5.2
2527	Say money temporarily	2014-02-07 08:20:25.133616+11	131.170.5.2
2528	Bring sticks and stones online	2014-02-07 08:20:26.072613+11	131.170.5.2
2529	Continue a piece of paper in a minute	2014-02-07 08:20:26.870071+11	131.170.5.2
2530	Extract the same thing relating to a gallery	2014-02-07 08:20:27.399203+11	131.170.5.2
2625	Abstract the rules of tennis as though your life depends on it	2014-02-07 13:35:20.980101+11	101.119.28.10
2445	Abstract a log spontaneously	2014-02-06 19:35:43.06453+11	49.184.71.248
2447	Arrange a commodity and question your findings	2014-02-06 19:35:43.261041+11	49.184.71.248
2449	Reverse a capitalist notion as a map	2014-02-06 19:35:43.592006+11	49.184.71.248
2451	Write about a round table privately	2014-02-06 19:35:43.90587+11	49.184.71.248
2453	Give something damaged in another language	2014-02-06 19:38:28.87988+11	49.184.71.248
2454	Break an image-editing program in 9 sentences	2014-02-06 19:38:29.258072+11	49.184.71.248
2455	Reverse knowledge secretly	2014-02-06 19:38:29.621826+11	49.184.71.248
2456	Distribute something being completely dishonest	2014-02-06 19:38:29.992045+11	49.184.71.248
2457	Write a list of  the garden slowly	2014-02-06 19:38:30.72152+11	49.184.71.248
2458	Plant your love of a particular person actively	2014-02-06 19:38:31.151124+11	49.184.71.248
2459	Send a newspaper clipping of currency without using words	2014-02-06 19:38:32.084252+11	49.184.71.248
2467	Paint with watercolour currency over 7 minutes	2014-02-06 19:39:20.649915+11	49.184.71.248
2470	Observe D.I.Y unfairly	2014-02-06 19:39:20.747513+11	49.184.71.248
2472	Detail in the most innovative way you can think of; and send it to us via email	2014-02-06 19:39:21.489728+11	49.184.71.248
2476	Multiply a common approach once	2014-02-06 19:39:30.614388+11	49.184.71.248
2479	Visualise time convincingly	2014-02-06 19:39:31.279881+11	49.184.71.248
2482	Sew an image-editing program convincingly	2014-02-06 19:39:31.730018+11	49.184.71.248
2485	Ruin an image-editing program then examine how it relates to the idea of revolution	2014-02-06 19:39:32.226526+11	49.184.71.248
2488	Wear free time like it will change the world	2014-02-06 19:39:32.594279+11	49.184.71.248
2491	Split a log over 18 hours	2014-02-06 19:39:33.144434+11	49.184.71.248
2493	Speak about self-directed in your line of sight	2014-02-06 19:40:19.372925+11	49.184.71.248
2505	Scrunch a round table considering last century	2014-02-06 19:47:20.393932+11	49.184.71.248
2521	Impose in 4 minutes over time	2014-02-06 19:47:44.301893+11	49.184.71.248
2531	Reverse engineer the surface by planning the next move	2014-02-07 08:31:59.609589+11	131.170.5.3
2532	Publicly declare religiously until you are happy with the end result	2014-02-07 08:32:02.385897+11	131.170.5.3
2533	Scratch time in the form of instructions	2014-02-07 08:32:05.452042+11	131.170.5.3
2534	Write a trail of destruction mindfully	2014-02-07 08:32:08.085722+11	131.170.5.3
2535	Draw in gold thoroughly checking	2014-02-07 08:32:14.648078+11	131.170.5.3
2536	Ruin a game of cards on a piece of paper	2014-02-07 08:32:18.657928+11	131.170.5.3
2537	Collect everything referring to your favourite	2014-02-07 08:32:21.894205+11	131.170.5.3
2538	Modify a collection of edible greens in the right order	2014-02-07 08:32:23.922085+11	131.170.5.3
2539	Scrunch a commodity and question your findings	2014-02-07 08:32:32.567827+11	131.170.5.3
2540	Continue the game of tug-of-war without showing any proof	2014-02-07 08:32:35.021791+11	131.170.5.3
2541	Undo your job to closely notice the details	2014-02-07 08:32:37.277843+11	131.170.5.3
2550	Multiply the future without telling anyone	2014-02-07 08:56:25.388662+11	131.170.5.5
2551	Donate a new object in photographic form	2014-02-07 08:56:27.791154+11	131.170.5.5
2552	Order the political on the wall	2014-02-07 08:56:33.138355+11	131.170.5.5
2553	Plot on a graph a nation-state to form a link to the past	2014-02-07 08:56:35.415557+11	131.170.5.5
2554	Grow a small list in the form of a ransom note	2014-02-07 08:56:39.129683+11	131.170.5.5
2556	Represent trees on the wall	2014-02-07 10:10:48.507327+11	139.216.147.253
2564	Re-write D.I.Y referencing the idea of dis-organisation	2014-02-07 11:11:57.664231+11	139.216.147.253
2565	Un-mechanise energy efficiency quickly	2014-02-07 11:11:58.855018+11	139.216.147.253
2566	Research a log by deduction	2014-02-07 11:12:00.51991+11	139.216.147.253
2567	Colour two parties using found materials	2014-02-07 11:12:03.377334+11	139.216.147.253
2568	Photocopy what is within reach over time	2014-02-07 11:12:08.585635+11	139.216.147.253
2569	Deliver the economy without telling anyone	2014-02-07 11:12:09.733943+11	139.216.147.253
2570	Distribute a new object then cut that in half	2014-02-07 11:12:11.07372+11	139.216.147.253
2571	Write a letter about a useless thing in capitals	2014-02-07 11:12:12.838103+11	139.216.147.253
2620	Document a nation-state on the nature strip	2014-02-07 13:32:43.329331+11	139.216.147.253
2621	Identify outside temporarily	2014-02-07 13:32:43.993906+11	139.216.147.253
2622	Cover anything as if functional	2014-02-07 13:34:57.261615+11	101.119.28.10
2460	Improve a 12-word manifesto in the size of a book	2014-02-06 19:38:35.221585+11	49.184.71.248
2461	Plant change in photographic form	2014-02-06 19:38:35.573732+11	49.184.71.248
2462	Converse a useless thing creatively	2014-02-06 19:38:35.877528+11	49.184.71.248
2468	Teach free time and combine	2014-02-06 19:39:20.715378+11	49.184.71.248
2473	Undertake acts of resistance during business hours	2014-02-06 19:39:24.385271+11	49.184.71.248
2494	Type suburbs to preexisting conditions	2014-02-06 19:40:43.307427+11	49.184.71.248
2495	Collate out the front of your house privately	2014-02-06 19:40:44.723666+11	49.184.71.248
2496	Continue a positive gesture in a minute	2014-02-06 19:40:48.05035+11	49.184.71.248
2543	Picture acts of resistance and double it	2014-02-07 08:42:37.771854+11	14.201.97.148
2544	Write focussed objects without thinking too much	2014-02-07 08:43:38.598731+11	14.201.97.148
2546	Brainstorm collective action simply	2014-02-07 08:47:21.230676+11	131.170.5.4
2547	Discover at home referring to your favourite	2014-02-07 08:47:22.460975+11	131.170.5.4
2548	Break branches on the nature strip	2014-02-07 08:47:24.559429+11	131.170.5.4
2549	Photograph how you are implicated in systems quietly	2014-02-07 08:47:27.695508+11	131.170.5.4
2594	Throw the city obsessively	2014-02-07 12:50:24.321111+11	131.170.90.6
2596	Detail government in the form of a ransom note	2014-02-07 13:01:20.971631+11	131.170.90.6
2597	Arrange money and put two and two together	2014-02-07 13:01:29.844659+11	131.170.90.6
2629	Picture the notion of work  during work hours	2014-02-07 13:37:25.236369+11	139.216.147.253
2630	Visualise something damaged thoughtfully	2014-02-07 13:37:28.365345+11	139.216.147.253
2631	Suggest space for yourself	2014-02-07 13:37:29.658544+11	139.216.147.253
2632	Take a photo of a set of instructions in the colours of your flag	2014-02-07 13:37:30.899645+11	139.216.147.253
2633	Document collective action so it reflects your values	2014-02-07 13:37:32.828333+11	139.216.147.253
2634	Arrange practical objects over time	2014-02-07 13:37:34.594099+11	139.216.147.253
2635	Impose a collection of edible greens so you are affected	2014-02-07 13:37:40.869198+11	139.216.147.253
2636	Maintain a border on your own	2014-02-07 13:37:41.99729+11	139.216.147.253
2637	Illustrate something round seriously	2014-02-07 13:37:43.135871+11	139.216.147.253
2638	Colour in  growth being completely dishonest	2014-02-07 13:37:44.878286+11	139.216.147.253
2639	Consider  a safe online	2014-02-07 13:37:46.740738+11	139.216.147.253
2640	Break the impossible on your own	2014-02-07 13:37:48.888815+11	139.216.147.253
2641	Multiply a capitalist notion and throw it out the window	2014-02-07 13:37:49.888849+11	139.216.147.253
2642	Group together your love of a particular person with your hands	2014-02-07 13:37:51.853549+11	139.216.147.253
2643	Destroy the ideal newspaper with optimism	2014-02-07 13:37:55.426912+11	139.216.147.253
2644	Make a colour palette of the chain of evidence as a pie chart	2014-02-07 13:37:56.797942+11	139.216.147.253
2645	Read anything through a process of elimination	2014-02-07 13:37:58.338469+11	139.216.147.253
2646	Change currency in monotone	2014-02-07 13:37:59.917935+11	139.216.147.253
2647	Form tools together	2014-02-07 13:38:01.080835+11	139.216.147.253
2648	Represent the political over 28 hours	2014-02-07 13:38:18.801361+11	139.216.147.253
2649	Grow Australian symbolism as though your life depends on it	2014-02-07 13:38:20.031467+11	139.216.147.253
2650	Borrow out the front of your house with your hands	2014-02-07 13:38:21.609465+11	139.216.147.253
2651	Redesign a log convincingly	2014-02-07 13:38:23.375746+11	139.216.147.253
2652	Record a logo  share it with us	2014-02-07 13:38:25.151515+11	139.216.147.253
2653	Deliberate religiously with scepticism	2014-02-07 13:38:27.284926+11	139.216.147.253
2654	Write your job with your hands	2014-02-07 13:38:28.539267+11	139.216.147.253
2655	Replace in 5 minutes using watercolour	2014-02-07 13:38:40.18356+11	139.216.147.253
2656	Act on government while walking	2014-02-07 13:38:41.825225+11	139.216.147.253
2657	Publicly declare suburbs in the form of a ransom note	2014-02-07 13:38:43.671752+11	139.216.147.253
2463	Photocopy a collection of edible greens for yourself	2014-02-06 19:39:17.890146+11	49.184.71.248
2464	Present a collection of edible greens quietly	2014-02-06 19:39:18.315702+11	49.184.71.248
2465	Reverse engineer weeds quietly	2014-02-06 19:39:18.62454+11	49.184.71.248
2466	Walk  a fireplace and question your findings	2014-02-06 19:39:18.925514+11	49.184.71.248
2503	Fill a user-guide as if functional	2014-02-06 19:44:43.293339+11	49.184.71.248
2624	Wander something in the form of a ransom note	2014-02-07 13:35:14.634389+11	101.119.28.10
2469	Abstract the risks when you should be doing something else	2014-02-06 19:39:20.733249+11	49.184.71.248
2474	Identify the amount of free time you have thoughtfully	2014-02-06 19:39:28.915833+11	49.184.71.248
2477	Modify everything green and white using free software	2014-02-06 19:39:30.857603+11	49.184.71.248
2480	Walk  two parties and use it as currency	2014-02-06 19:39:31.373675+11	49.184.71.248
2483	Brainstorm a collection of edible greens actively	2014-02-06 19:39:31.909533+11	49.184.71.248
2487	Scrunch the economy actively	2014-02-06 19:39:32.530684+11	49.184.71.248
2489	Document suburbs unfairly	2014-02-06 19:39:32.693766+11	49.184.71.248
2492	Assemble a debate without thinking	2014-02-06 19:39:35.162684+11	49.184.71.248
2516	Sew a communal dinner in the size of a book	2014-02-06 19:47:42.176166+11	49.184.71.248
2518	Order revolution in a variety of ways	2014-02-06 19:47:42.427523+11	49.184.71.248
2520	Borrow the truth using only political rhetoric	2014-02-06 19:47:42.826499+11	49.184.71.248
2545	Consider  something round to closely notice the details	2014-02-07 08:47:02.161852+11	131.170.5.4
2557	Protect the least used glass from your cupboard directly	2014-02-07 11:09:50.7973+11	139.216.147.253
2558	Rearrange a set of instructions with the next person you see	2014-02-07 11:09:52.211078+11	139.216.147.253
2559	Plant the surface using free software	2014-02-07 11:09:54.113636+11	139.216.147.253
2560	Un-mechanise your camera and throw it out the window	2014-02-07 11:09:55.122177+11	139.216.147.253
2561	Improve the idea of happiness one way	2014-02-07 11:09:56.639016+11	139.216.147.253
2562	Picture something new and throw it out the window	2014-02-07 11:09:58.291027+11	139.216.147.253
2563	Rewrite a garden in monotone	2014-02-07 11:09:59.519356+11	139.216.147.253
2599	Whittle self-directed when you should be doing something else	2014-02-07 13:04:52.324913+11	131.170.90.6
2600	Make up religiously then cut that in half	2014-02-07 13:04:55.412912+11	131.170.90.6
2601	Group multiple images of the idea of happiness by deduction	2014-02-07 13:04:58.259711+11	131.170.90.6
2602	Share something new out the window	2014-02-07 13:05:06.187422+11	131.170.90.6
2603	Impose a powerpoint presentation over time	2014-02-07 13:05:10.428272+11	131.170.90.6
2604	Consider  8 images side by side	2014-02-07 13:05:15.803456+11	131.170.90.6
2605	Impose the temperature like you mean it	2014-02-07 13:05:18.442904+11	131.170.90.6
2606	Modify space in the simplest way possible	2014-02-07 13:05:26.731269+11	131.170.90.6
2607	Play everything green and white to initiate progress	2014-02-07 13:05:29.802757+11	131.170.90.6
2608	Plan a useless thing and explain why	2014-02-07 13:05:32.731096+11	131.170.90.6
2609	Price a dollar helplessly	2014-02-07 13:05:38.883354+11	131.170.90.6
2612	Replicate in 2 minutes and record what you find	2014-02-07 13:25:44.957589+11	101.173.127.240
2613	Learn about silver coins of the future	2014-02-07 13:25:53.928723+11	101.173.127.240
2623	Plot on a graph  sticks directly	2014-02-07 13:35:09.671627+11	101.119.28.10
2626	Build out the front of your house confidently	2014-02-07 13:35:44.093469+11	139.216.147.253
2627	Cover your job without thinking	2014-02-07 13:35:46.029956+11	139.216.147.253
2471	Speak about management diplomatically	2014-02-06 19:39:20.963668+11	49.184.71.248
2475	Borrow the notion of work  in monotone	2014-02-06 19:39:30.327448+11	49.184.71.248
2478	Find an example of debt and document the findings to share	2014-02-06 19:39:31.030497+11	49.184.71.248
2481	Act on two people confidently	2014-02-06 19:39:31.507494+11	49.184.71.248
2484	Connect one minute without language	2014-02-06 19:39:32.083152+11	49.184.71.248
2486	Record a boat in a closed form	2014-02-06 19:39:32.530417+11	49.184.71.248
2490	Take a sample of  space and question your findings	2014-02-06 19:39:32.862148+11	49.184.71.248
2497	Collate a number you consider to be quite big into a ball	2014-02-06 19:43:54.346741+11	49.184.71.248
2498	Whittle the crowd repeatedly	2014-02-06 19:43:55.123481+11	49.184.71.248
2499	Move a flagpole in a variety of ways	2014-02-06 19:43:55.554045+11	49.184.71.248
2500	Converse a handshake quietly	2014-02-06 19:43:55.893599+11	49.184.71.248
2501	Create a pamphlet explaining the same word and attempt it only once	2014-02-06 19:43:56.083224+11	49.184.71.248
2506	Continue at home in your line of sight	2014-02-06 19:47:39.971038+11	49.184.71.248
2507	Whittle the same word and attempt it only once	2014-02-06 19:47:40.273077+11	49.184.71.248
2508	Email a logo until you are happy with the end result	2014-02-06 19:47:40.640535+11	49.184.71.248
2509	Rearrange an image-editing program in the colours of your flag	2014-02-06 19:47:40.844829+11	49.184.71.248
2510	Play something damaged considering last century	2014-02-06 19:47:41.025363+11	49.184.71.248
2511	Observe good and bad quickly	2014-02-06 19:47:41.182755+11	49.184.71.248
2512	Impose what success means to you in the simplest way possible	2014-02-06 19:47:41.31533+11	49.184.71.248
2513	Hand out management in photoshop	2014-02-06 19:47:41.459305+11	49.184.71.248
2514	Bring about a communal dinner with a catchy title	2014-02-06 19:47:41.742464+11	49.184.71.248
2515	Find Australian symbolism in the right order	2014-02-06 19:47:41.986548+11	49.184.71.248
2517	Present branches in your line of sight	2014-02-06 19:47:42.203154+11	49.184.71.248
2519	Calculate a nation-state unintuitively	2014-02-06 19:47:42.656825+11	49.184.71.248
2524	Protect your location as a pie chart	2014-02-06 19:47:44.781531+11	49.184.71.248
2542	Bring about the temperature and explain why	2014-02-07 08:42:37.767052+11	14.201.97.148
2610	Present a powerpoint presentation using found materials	2014-02-07 13:07:00.405541+11	131.170.90.6
2611	Calculate meaning in a public place	2014-02-07 13:25:05.004244+11	101.173.127.240
2614	Illustrate particular ideas in photographic form	2014-02-07 13:32:17.172138+11	139.216.147.253
2615	Toss around a sculpture and attempt it only once	2014-02-07 13:32:18.259267+11	139.216.147.253
2616	Produce an impracticle object of the future	2014-02-07 13:32:18.881646+11	139.216.147.253
2617	Picture data without showing anyone	2014-02-07 13:32:19.19467+11	139.216.147.253
2618	Spend time thinking about a chair on a piece of paper	2014-02-07 13:32:19.364105+11	139.216.147.253
2619	Introduce a logo so you are affected	2014-02-07 13:32:19.511922+11	139.216.147.253
2502	Wander a game of cards and pick your favourite	2014-02-06 19:44:43.203385+11	49.184.71.248
2504	Explain acts of resistance and throw it out the window	2014-02-06 19:44:43.3001+11	49.184.71.248
2583	Continue a balloon now	2014-02-07 12:06:44.887348+11	131.170.90.3
2584	Produce a piece of paper without telling anyone	2014-02-07 12:06:47.010763+11	131.170.90.3
2585	Wander in 5 ways using a recording device	2014-02-07 12:06:48.57197+11	131.170.90.3
2586	Deliver debt with no preconceived idea	2014-02-07 12:06:49.866856+11	131.170.90.3
2587	Send a new system backing it up with research	2014-02-07 12:06:52.162733+11	131.170.90.3
2588	Invent beans while talking to people	2014-02-07 12:06:54.314647+11	131.170.90.3
2589	Visualise the surface in the form of a ransom note	2014-02-07 12:06:55.851335+11	131.170.90.3
2590	Improve companion plants so it reflects your values	2014-02-07 12:06:59.020282+11	131.170.90.3
2591	Undo images of other people  in public space	2014-02-07 12:07:02.914782+11	131.170.90.3
2592	Create a pamphlet explaining 8 images to the public	2014-02-07 12:07:05.234193+11	131.170.90.3
2593	Email the impossible over time	2014-02-07 12:07:12.092287+11	131.170.90.3
2595	Check to demonstrate  until you are happy with the end result	2014-02-07 12:57:04.413973+11	131.170.90.6
2523	Calculate the risks as a map	2014-02-06 19:47:44.489543+11	49.184.71.248
2555	Photograph an organisation  actively	2014-02-07 10:10:46.225372+11	139.216.147.253
2572	Deliberate images of other people  considering last century	2014-02-07 11:12:48.745988+11	139.216.147.253
2573	Find transparency without assistance	2014-02-07 11:12:50.342051+11	139.216.147.253
2574	Destroy one minute using found materials	2014-02-07 11:12:51.364199+11	139.216.147.253
2575	Scrunch weeds through a process of elimination	2014-02-07 11:12:54.159592+11	139.216.147.253
2576	Gather together a round table side by side	2014-02-07 11:13:01.947313+11	139.216.147.253
2577	Take a photo of information without telling anyone	2014-02-07 11:13:06.05235+11	139.216.147.253
2578	Confuse how you might begin to withdraw your dependency on technology using statistics	2014-02-07 11:13:07.860008+11	139.216.147.253
2579	Bring about data over and over	2014-02-07 11:13:12.767727+11	139.216.147.253
2580	Take a sample of  the rules   together	2014-02-07 11:13:13.981661+11	139.216.147.253
2581	Deliberate the economy by swapping	2014-02-07 11:13:15.850518+11	139.216.147.253
2582	Photocopy 8 images diplomatically	2014-02-07 11:13:17.312118+11	139.216.147.253
2598	Test random tasks differently	2014-02-07 13:01:49.5892+11	131.170.90.6
2628	Move in 4 minutes with others	2014-02-07 13:37:08.735822+11	101.119.28.10
2658	Describe the ideal newspaper in a closed form	2014-02-07 13:38:45.121749+11	139.216.147.253
2659	Seek a balloon  share it with us	2014-02-07 13:38:46.50902+11	139.216.147.253
2660	Investigate a community to closely notice the details	2014-02-07 13:38:47.68233+11	139.216.147.253
2661	Modify a chair while referring to beehives	2014-02-07 13:38:48.98463+11	139.216.147.253
2662	Brainstorm a gathering mindfully	2014-02-07 13:38:50.268949+11	139.216.147.253
2663	Seek space efficiently	2014-02-07 13:38:51.821846+11	139.216.147.253
2664	Order money to a stranger	2014-02-07 13:38:52.932702+11	139.216.147.253
2665	Wander a meeting seriously	2014-02-07 13:38:54.395638+11	139.216.147.253
2666	Learn about a gathering in public	2014-02-07 13:38:56.820404+11	139.216.147.253
2667	Colour in  a border in a graph of blue hues	2014-02-07 13:38:58.881031+11	139.216.147.253
2668	Rewrite energy efficiency through a process of elimination	2014-02-07 13:39:11.74666+11	139.216.147.253
2669	Collect the institution using an old technique	2014-02-07 13:39:12.954055+11	139.216.147.253
2670	Improve a meeting without assistance	2014-02-07 13:39:14.311628+11	139.216.147.253
2671	Identify your location in 9 sentences	2014-02-07 13:39:17.368237+11	139.216.147.253
2672	Modify a user-guide while referring to gardening	2014-02-07 13:39:18.567418+11	139.216.147.253
2673	Perform a new system systematically	2014-02-07 13:39:21.671877+11	139.216.147.253
2674	Toss around transparency using a recording device	2014-02-07 13:39:22.915619+11	139.216.147.253
2675	Send a useful object until you are happy with the end result	2014-02-07 13:39:24.307199+11	139.216.147.253
2676	Sing what success means to you as a pie chart	2014-02-07 13:39:25.944649+11	139.216.147.253
2677	Make a colour palette of an alternative during work hours	2014-02-07 13:39:27.139753+11	139.216.147.253
2678	Manage Australian symbolism referencing the idea of dis-organisation	2014-02-07 13:39:28.634806+11	139.216.147.253
2679	Paint a nation-state through trade	2014-02-07 13:39:29.565651+11	139.216.147.253
2680	Learn about energy   and connect the dots	2014-02-07 13:39:30.901293+11	139.216.147.253
2681	Fill spectacles on the wall	2014-02-07 13:39:33.902589+11	139.216.147.253
2682	Undertake a balloon without language	2014-02-07 13:39:36.017614+11	139.216.147.253
2683	Plant two parties creatively	2014-02-07 13:39:37.241462+11	139.216.147.253
2684	Change the amount of free time you have in the right order	2014-02-07 13:39:38.653765+11	139.216.147.253
2685	Ruin D.I.Y on the wall	2014-02-07 13:39:41.156478+11	139.216.147.253
2686	Categorise everything and pick your favourite	2014-02-07 13:39:42.498856+11	139.216.147.253
2687	Carve everything you see in the next 21 seconds in another language	2014-02-07 13:39:44.362915+11	139.216.147.253
2688	Present what success means to you without using words	2014-02-07 13:39:47.4106+11	139.216.147.253
2689	Take a photo of a log over five minutes	2014-02-07 13:39:51.202318+11	139.216.147.253
2690	Extract an impracticle object for yourself	2014-02-07 13:40:00.872036+11	139.216.147.253
2691	Re-write Australian symbolism over 7 minutes	2014-02-07 13:40:03.150642+11	139.216.147.253
2692	Act out what you see in 10 sentences	2014-02-07 13:40:03.951025+11	139.216.147.253
2693	Represent the garden  share it with us	2014-02-07 13:40:06.522393+11	139.216.147.253
2694	Grow your thoughts confidently	2014-02-07 13:40:07.794005+11	139.216.147.253
2695	Scratch the best times with tape	2014-02-07 13:40:12.211712+11	139.216.147.253
2696	Model a sculpture and collate the results	2014-02-07 13:40:13.580117+11	139.216.147.253
2697	Produce one minute seriously	2014-02-07 13:40:15.024768+11	139.216.147.253
2698	Form a hole to create a completely new image	2014-02-07 13:40:17.086222+11	139.216.147.253
2699	Produce a collection of blue things without thinking	2014-02-07 13:40:27.514376+11	139.216.147.253
2700	Teach beans when you should be doing something else	2014-02-07 13:40:35.591477+11	139.216.147.253
2701	Sign a video  to a stranger	2014-02-07 13:40:43.592178+11	101.119.28.10
2702	Act something on a piece of paper	2014-02-07 13:44:36.28545+11	139.216.147.253
2703	Ruin political rhetoric as though your life depends on it	2014-02-07 13:44:37.345682+11	139.216.147.253
2704	Expose a new slogan thinking about form and function	2014-02-07 13:44:53.499556+11	139.216.147.253
2705	Snap two people one way	2014-02-07 13:44:56.460594+11	139.216.147.253
2706	Whittle a common approach to initiate progress	2014-02-07 13:44:58.362805+11	139.216.147.253
2707	Scratch spectacles through a process of elimination	2014-02-07 13:45:00.379192+11	139.216.147.253
2708	Learn about the rules of tennis while walking	2014-02-07 13:45:02.102463+11	139.216.147.253
2709	Paint a community then cut that in half	2014-02-07 13:45:06.028381+11	139.216.147.253
2710	Test the institution one way	2014-02-07 13:45:07.709385+11	139.216.147.253
2711	Wear to demonstrate  systematically	2014-02-07 13:45:09.797153+11	139.216.147.253
2712	Read then photograph while walking	2014-02-07 13:45:16.550707+11	139.216.147.253
2713	Assemble the first 10 things then cut that in half	2014-02-07 13:45:26.465713+11	139.216.147.253
2714	Paint a collection of edible greens repeatedly	2014-02-07 13:45:32.980312+11	139.216.147.253
2715	Rewrite everything in public	2014-02-07 14:35:00.104857+11	139.216.147.253
2716	Play time and use it as currency	2014-02-07 14:35:01.158091+11	139.216.147.253
2717	Sing the rules   like a robot	2014-02-07 14:35:02.316962+11	139.216.147.253
2718	Dis-organise an image-editing program so that we will be really surprised	2014-02-07 14:35:03.48936+11	139.216.147.253
2719	Picture information imagining you are in isolation	2014-02-07 14:35:04.309041+11	139.216.147.253
2720	In your head, formulate a get-together to the world	2014-02-07 14:35:06.721899+11	139.216.147.253
2721	Mark the game of tug-of-war seriously	2014-02-07 14:35:08.384468+11	139.216.147.253
2722	Write a list of  power in the simplest way possible	2014-02-07 14:35:10.714643+11	139.216.147.253
2723	Deliver money to closely notice the details	2014-02-07 14:35:11.900212+11	139.216.147.253
2724	Raise practical objects as a pie chart	2014-02-07 14:35:13.313464+11	139.216.147.253
2725	Explore a positive gesture and pick your favourite	2014-02-07 14:35:15.1362+11	139.216.147.253
2726	Sculpt images of other people  as a map	2014-02-07 14:35:16.898936+11	139.216.147.253
2727	Snap the least used glass from your cupboard without thinking too much	2014-02-07 14:35:18.087884+11	139.216.147.253
2728	Move in the most innovative way you can think of; unfairly	2014-02-07 14:35:20.347255+11	139.216.147.253
2729	Break down a common approach and speak the result in monotone	2014-02-07 14:35:21.908546+11	139.216.147.253
2730	Mime the rules   in the right order	2014-02-07 14:35:23.599505+11	139.216.147.253
2731	Price a set of instructions without thinking	2014-02-07 14:35:25.273733+11	139.216.147.253
2807	Represent a new system and attempt to extract a meaning	2014-02-07 15:58:52.385117+11	139.216.147.253
2808	Deliberate how you are implicated in systems like you mean it	2014-02-07 15:58:53.34516+11	139.216.147.253
2809	Print out branches diplomatically	2014-02-07 15:58:56.035888+11	139.216.147.253
2819	Converse spectacles using a recording device	2014-02-07 16:12:55.196899+11	139.216.147.253
2868	Gather the world one way	2014-02-07 16:22:26.593451+11	139.216.147.253
2869	Represent what is within reach secretly	2014-02-07 16:22:28.100816+11	139.216.147.253
2870	Present good and bad arbritrarily	2014-02-07 16:22:29.655403+11	139.216.147.253
2942	Shape a video  using a recording device	2014-02-07 16:30:45.977517+11	139.216.147.253
2943	Type a capitalist notion so that we will be really surprised	2014-02-07 16:30:48.166837+11	139.216.147.253
2944	Email the future hand-drawn	2014-02-07 16:30:50.398054+11	139.216.147.253
2945	Undo your love of a particular person to closely notice the details	2014-02-07 16:30:51.641665+11	139.216.147.253
2946	Use  particular ideas as an indulgence	2014-02-07 16:30:53.79102+11	139.216.147.253
2947	Produce a nation-state in public space	2014-02-07 16:30:55.157411+11	139.216.147.253
2948	Make up a useful object while referring to gardening	2014-02-07 16:30:56.786226+11	139.216.147.253
2949	Test plants while talking to people	2014-02-07 16:30:58.156562+11	139.216.147.253
2950	Write a letter about currency on a piece of paper	2014-02-07 16:30:59.382556+11	139.216.147.253
2951	Colour something damaged and collate the results	2014-02-07 16:31:47.828369+11	139.216.147.253
2952	Plant your love of a particular person by deduction	2014-02-07 16:31:49.80673+11	139.216.147.253
2953	Replicate the surface and document the findings to share	2014-02-07 16:31:50.976804+11	139.216.147.253
2954	Bring about a trail of destruction repeatedly	2014-02-07 16:31:52.387924+11	139.216.147.253
2955	Unleash the ideal newspaper without touching	2014-02-07 16:31:53.657741+11	139.216.147.253
2956	Follow real progress without touching	2014-02-07 16:31:57.884278+11	139.216.147.253
2957	Find an example of a trail of destruction seriously	2014-02-07 16:31:59.429858+11	139.216.147.253
2958	Toss around how you are implicated in systems by deduction	2014-02-07 16:32:00.955714+11	139.216.147.253
2959	Colour plants in secret	2014-02-07 16:32:05.693918+11	139.216.147.253
2960	Discover a dollar and pick your favourite	2014-02-07 16:32:08.769859+11	139.216.147.253
2961	Wear two parties in a minute	2014-02-07 16:32:10.405592+11	139.216.147.253
2962	Deliberate a log with a catchy title	2014-02-07 16:32:12.732067+11	139.216.147.253
2963	Paint in 5 minutes during business hours	2014-02-07 16:32:14.342505+11	139.216.147.253
2965	Cover the city in the wrong order	2014-02-07 16:34:03.605807+11	139.216.147.253
2966	Explain weeds without using words	2014-02-07 16:34:08.337677+11	139.216.147.253
2967	Introduce the colony diplomatically	2014-02-07 16:34:10.780069+11	139.216.147.253
2968	Break down into numbers a fireplace in the right order	2014-02-07 16:34:13.290393+11	139.216.147.253
2969	Send through a manual do this 6 times	2014-02-07 16:34:16.191468+11	139.216.147.253
2970	Source acts of resistance side by side	2014-02-07 16:34:18.016582+11	139.216.147.253
2971	Exhaust the ideal newspaper and question your findings	2014-02-07 16:34:20.696606+11	139.216.147.253
2972	Act a get-together together	2014-02-07 16:34:27.416243+11	139.216.147.253
2973	Colour the same thing side by side	2014-02-07 16:34:33.360341+11	139.216.147.253
2974	Reverse a gathering thoughtfully	2014-02-07 16:34:36.866054+11	139.216.147.253
2975	Colour your location like you mean it	2014-02-07 16:34:38.059873+11	139.216.147.253
2976	Spend time thinking about a common approach to initiate progress	2014-02-07 16:34:39.506287+11	139.216.147.253
2977	Detail the ideal newspaper  share it with us	2014-02-07 16:34:41.092058+11	139.216.147.253
2732	Plant what you see directly	2014-02-07 14:36:32.999047+11	139.216.147.253
2733	Present the moon over and over	2014-02-07 14:36:34.096435+11	139.216.147.253
2734	Split out the front of your house as a list	2014-02-07 14:36:35.319618+11	139.216.147.253
2735	Order something new to initiate progress	2014-02-07 14:36:36.966974+11	139.216.147.253
2736	Deliberate random tasks by deduction	2014-02-07 14:36:40.20339+11	139.216.147.253
2737	Tap into what is within reach in small-scale	2014-02-07 14:36:42.202038+11	139.216.147.253
2738	Exhaust a fireplace in the simplest way possible	2014-02-07 14:36:43.483547+11	139.216.147.253
2739	Learn about your role within a particular organisational structure diplomatically	2014-02-07 14:36:44.738911+11	139.216.147.253
2740	Explore a log with a catchy title	2014-02-07 14:36:45.446313+11	139.216.147.253
2741	Abstract a scene privately	2014-02-07 14:36:46.298327+11	139.216.147.253
2742	Order a banana using watercolour	2014-02-07 14:36:48.132454+11	139.216.147.253
2743	Gather government referencing the idea of dis-organisation	2014-02-07 14:36:51.045376+11	139.216.147.253
2744	Publicly declare a meeting thoughtfully	2014-02-07 14:36:53.02343+11	139.216.147.253
2745	Seek collective action openly	2014-02-07 14:36:54.243835+11	139.216.147.253
2746	Find your camera with optimism	2014-02-07 14:36:55.583502+11	139.216.147.253
2747	Sign debt and attempt it only once	2014-02-07 14:36:57.268014+11	139.216.147.253
2748	Expose the number of elastic bands you see on the ground quietly	2014-02-07 14:36:58.289702+11	139.216.147.253
2749	Connect suburbs to create a completely new image	2014-02-07 14:37:01.76695+11	139.216.147.253
2750	Hand out a get-together over 11 minutes	2014-02-07 14:37:02.693758+11	139.216.147.253
2751	Impose a piece of paper so it is equal	2014-02-07 14:37:20.704399+11	139.216.147.253
2752	Mime a circle and use it as currency	2014-02-07 14:37:30.59393+11	139.216.147.253
2753	Make up power one way	2014-02-07 14:37:32.030631+11	139.216.147.253
2754	Observe the rules   privately	2014-02-07 14:37:35.7203+11	139.216.147.253
2755	Audit a handshake by planning the next move	2014-02-07 14:37:36.508256+11	139.216.147.253
2756	Find in 4 ways in black and white	2014-02-07 14:37:37.821868+11	139.216.147.253
2757	Continue a movement confidently	2014-02-07 14:38:03.243173+11	139.216.147.253
2758	Take a sample of  a movement while referring to gardening	2014-02-07 14:38:05.483825+11	139.216.147.253
2759	Destroy social justice creatively	2014-02-07 14:38:09.255306+11	139.216.147.253
2760	Suggest something small  without assistance	2014-02-07 14:38:11.675066+11	139.216.147.253
2761	Change the amount of free time you have so it is equal	2014-02-07 14:38:13.000604+11	139.216.147.253
2762	Grow in 7 minutes spontaneously	2014-02-07 14:38:19.753701+11	139.216.147.253
2763	Record the crowd actively	2014-02-07 14:38:25.696832+11	139.216.147.253
2764	Make up the notion of work  by deduction	2014-02-07 14:38:27.723305+11	139.216.147.253
2765	Brainstorm time quietly	2014-02-07 14:38:28.798387+11	139.216.147.253
2766	Fill transparency in the simplest way possible	2014-02-07 14:38:59.418025+11	139.216.147.253
2767	Find an example of a new object as though your life depends on it	2014-02-07 14:39:00.329255+11	139.216.147.253
2768	Multiply meaning in the form of instructions	2014-02-07 14:39:01.970786+11	139.216.147.253
2769	Produce a new object mindfully	2014-02-07 14:39:03.905399+11	139.216.147.253
2770	Arrange the surface on your own	2014-02-07 14:39:08.023743+11	139.216.147.253
2771	Try the same thing in the form of a ransom note	2014-02-07 14:39:09.145975+11	139.216.147.253
2772	Research a boat in 6 sentences	2014-02-07 14:39:10.445668+11	139.216.147.253
2773	Mark in 7 ways and put two and two together	2014-02-07 14:39:11.601779+11	139.216.147.253
2774	Replicate a uniform by deduction	2014-02-07 14:39:12.957688+11	139.216.147.253
2775	Plan a video  to a stranger	2014-02-07 14:39:15.681334+11	139.216.147.253
2776	Audit companion plants to the world	2014-02-07 14:39:16.370358+11	139.216.147.253
2777	Scratch a meeting thinking about form and function	2014-02-07 14:39:17.892816+11	139.216.147.253
2778	Shape something damaged once	2014-02-07 14:39:19.882471+11	139.216.147.253
2779	Bring a scene directly on the wall	2014-02-07 14:39:21.202152+11	139.216.147.253
2780	Rewrite an impracticle object directly	2014-02-07 14:39:23.677966+11	139.216.147.253
2781	Produce to demonstrate  privately	2014-02-07 14:39:25.468123+11	139.216.147.253
2782	Form a limited edition so that we will be really surprised	2014-02-07 14:39:26.899682+11	139.216.147.253
2783	Assemble time creatively	2014-02-07 14:39:30.432708+11	139.216.147.253
2784	Snap the fourth world of the future	2014-02-07 14:39:33.733618+11	139.216.147.253
2785	Read growth in the colours of your flag	2014-02-07 14:39:35.112721+11	139.216.147.253
2786	Cut and paste the chain of evidence mindfully	2014-02-07 15:53:38.891139+11	139.216.147.253
2787	Seek a megaphone by planning the next move	2014-02-07 15:55:55.760807+11	139.216.147.253
2805	Pre-record the chain of evidence to the world	2014-02-07 15:57:22.717325+11	139.216.147.253
2806	Investigate an orchestra in a variety of ways	2014-02-07 15:57:24.15459+11	139.216.147.253
2828	Rearrange random tasks over 28 hours	2014-02-07 16:13:43.338993+11	139.216.147.253
2829	Protect a scene now	2014-02-07 16:13:45.508121+11	139.216.147.253
2830	Send a newspaper clipping of a program in photographic form	2014-02-07 16:13:46.709499+11	139.216.147.253
2831	Photograph a 7-word manifesto in a graph of rainbow colours	2014-02-07 16:13:50.118749+11	139.216.147.253
2832	Examine D.I.Y to form a link to the past	2014-02-07 16:14:03.547957+11	139.216.147.253
2833	Say a balloon with a catchy title	2014-02-07 16:14:04.772011+11	139.216.147.253
2834	Sculpt your favourite image actively	2014-02-07 16:14:06.624497+11	139.216.147.253
2835	Draw a commodity in secret	2014-02-07 16:14:15.50616+11	139.216.147.253
2836	Divulge the economy by deduction	2014-02-07 16:14:16.808633+11	139.216.147.253
2837	Email an organisation  while walking	2014-02-07 16:14:17.989675+11	139.216.147.253
2838	Find an example of a set of instructions in a graph of blue hues	2014-02-07 16:14:19.30817+11	139.216.147.253
2839	Scrunch patience and collate the results	2014-02-07 16:14:26.925678+11	139.216.147.253
2840	Destroy the least used glass from your cupboard seriously	2014-02-07 16:14:29.177917+11	139.216.147.253
2844	Paint Australian symbolism and speak the result in monotone	2014-02-07 16:16:05.131237+11	139.216.147.253
2845	Expose the world to initiate progress	2014-02-07 16:16:09.011027+11	139.216.147.253
2846	Bring anything inside a square	2014-02-07 16:16:10.6866+11	139.216.147.253
2847	Split D.I.Y using the name of someone great	2014-02-07 16:16:13.746227+11	139.216.147.253
2848	Find your role within a particular organisational structure in the form of instructions	2014-02-07 16:16:15.77713+11	139.216.147.253
2849	Toss around the institution with scepticism	2014-02-07 16:16:18.388679+11	139.216.147.253
2850	Gather real progress imagining you are in isolation	2014-02-07 16:16:22.640449+11	139.216.147.253
2851	Toss around religiously diplomatically	2014-02-07 16:16:27.46693+11	139.216.147.253
2852	Learn about a round table to preexisting conditions	2014-02-07 16:16:31.29126+11	139.216.147.253
2889	Shape a chair diplomatically	2014-02-07 16:25:15.495098+11	139.216.147.253
2788	Unleash 8 images in the right order	2014-02-07 15:56:08.284205+11	139.216.147.253
2789	Create a pamphlet explaining the rules of tennis for yourself	2014-02-07 15:56:09.337272+11	139.216.147.253
2790	Create a banner which refers to suburbs to preexisting conditions	2014-02-07 15:56:11.806788+11	139.216.147.253
2791	Continue something backing it up with research	2014-02-07 15:56:13.985908+11	139.216.147.253
2813	Cut and paste Australian symbolism in the right order	2014-02-07 16:12:16.722394+11	139.216.147.253
2814	Explain a meal by planning the next move	2014-02-07 16:12:18.647135+11	139.216.147.253
2815	Distribute 10 synonyms to form a link to the past	2014-02-07 16:12:20.65958+11	139.216.147.253
2816	Pair everything green and white by deduction	2014-02-07 16:12:21.948129+11	139.216.147.253
2817	Turn around something damaged with a public outcome in mind	2014-02-07 16:12:24.025365+11	139.216.147.253
2818	Speak  in gold convincingly	2014-02-07 16:12:28.543964+11	139.216.147.253
2822	Email transparency in a minute	2014-02-07 16:13:25.582933+11	139.216.147.253
2823	Send the idea of happiness by deduction	2014-02-07 16:13:26.729036+11	139.216.147.253
2824	Source bureaucracy without touching	2014-02-07 16:13:28.11867+11	139.216.147.253
2825	Produce D.I.Y in public	2014-02-07 16:13:33.355439+11	139.216.147.253
2826	Colour the world to closely notice the details	2014-02-07 16:13:34.474169+11	139.216.147.253
2827	Produce silver coins creatively	2014-02-07 16:13:35.909803+11	139.216.147.253
2912	Exhaust everything using the name of someone great	2014-02-07 16:28:48.069855+11	139.216.147.253
2913	Give bureaucracy through a process of elimination	2014-02-07 16:28:50.522182+11	139.216.147.253
2914	Expose a way around a problem so you are affected	2014-02-07 16:28:53.217562+11	139.216.147.253
2915	Break the economy through a process of elimination	2014-02-07 16:28:55.883478+11	139.216.147.253
2916	Rearrange stone over 27 hours	2014-02-07 16:28:57.144734+11	139.216.147.253
2917	Create a pamphlet explaining a trail of destruction in the gallery	2014-02-07 16:28:58.263875+11	139.216.147.253
2918	Investigate free time to closely notice the details	2014-02-07 16:29:02.983308+11	139.216.147.253
2919	Wander a list of rules repeatedly	2014-02-07 16:29:04.572722+11	139.216.147.253
2920	Send through 8 images idley	2014-02-07 16:29:06.785237+11	139.216.147.253
2921	Modify to demonstrate  while referring to beehives	2014-02-07 16:29:09.07777+11	139.216.147.253
2922	Redesign something religiously	2014-02-07 16:29:12.092647+11	139.216.147.253
2923	Categorise random tasks inside an irregular shape	2014-02-07 16:29:13.757734+11	139.216.147.253
2924	Arrange revolution hand-drawn	2014-02-07 16:29:20.127735+11	139.216.147.253
2925	Change a powerpoint presentation and explain why	2014-02-07 16:29:22.908805+11	139.216.147.253
2926	Write a list of  trees and connect the dots	2014-02-07 16:29:24.665926+11	139.216.147.253
2927	Walk  a set of instructions on your own	2014-02-07 16:29:28.873289+11	139.216.147.253
2928	Bring about time through trade	2014-02-07 16:29:30.19836+11	139.216.147.253
2929	Collage the ideal newspaper arbritrarily	2014-02-07 16:29:31.834591+11	139.216.147.253
2930	Modify the risks in secret	2014-02-07 16:29:34.466927+11	139.216.147.253
2931	Define the idea of happiness using a recording device	2014-02-07 16:29:35.883314+11	139.216.147.253
2932	Research a collection of blue things over and over	2014-02-07 16:29:37.400982+11	139.216.147.253
2933	Perform a useless thing to preexisting conditions	2014-02-07 16:29:40.088486+11	139.216.147.253
2934	Speak  the ideal newspaper in a closed form	2014-02-07 16:29:42.222+11	139.216.147.253
2935	Cut and paste practical objects so it is equal	2014-02-07 16:29:44.953882+11	139.216.147.253
2936	Raise a useless thing by planning the next move	2014-02-07 16:29:46.316402+11	139.216.147.253
2937	Examine a get-together on a piece of paper	2014-02-07 16:29:47.106841+11	139.216.147.253
2938	Wander the amount of free time you have over 57 seconds	2014-02-07 16:29:48.772667+11	139.216.147.253
2939	Define energy efficiency at home	2014-02-07 16:29:50.626673+11	139.216.147.253
2940	Reverse an atlas convincingly	2014-02-07 16:29:52.509069+11	139.216.147.253
2941	Change a nation-state using a recording device	2014-02-07 16:29:55.848915+11	139.216.147.253
2792	Un-mechanise cycle confidently	2014-02-07 15:56:28.542856+11	139.216.147.253
2793	Grow a list of rules and document the findings to share	2014-02-07 15:56:30.954905+11	139.216.147.253
2794	Destroy the game of tug-of-war on the floor	2014-02-07 15:56:33.06711+11	139.216.147.253
2795	Bring the idea of nationality quickly	2014-02-07 15:56:34.618848+11	139.216.147.253
2796	Photograph migration through a process of elimination	2014-02-07 15:56:35.979065+11	139.216.147.253
2797	Represent the economy with other people	2014-02-07 15:56:37.236552+11	139.216.147.253
2798	Email collective action spontaneously	2014-02-07 15:56:39.564857+11	139.216.147.253
2799	Gather together a powerpoint presentation imagining you are in isolation	2014-02-07 15:56:40.990546+11	139.216.147.253
2800	Destroy the institution without showing anyone	2014-02-07 15:56:43.212948+11	139.216.147.253
2801	Toss what failure means to you convincingly	2014-02-07 15:56:45.652073+11	139.216.147.253
2802	Present space in a gallery	2014-02-07 15:56:46.984341+11	139.216.147.253
2803	Record trees with a public outcome in mind	2014-02-07 15:56:49.170878+11	139.216.147.253
2804	Undertake something intricate mindfully	2014-02-07 15:57:15.383968+11	139.216.147.253
2810	Draw a manual while walking	2014-02-07 16:11:09.933343+11	139.216.147.253
2811	Collect sticks and stones confidently	2014-02-07 16:11:13.021187+11	139.216.147.253
2812	Reverse engineer the number of elastic bands you see on the ground in a graph of rainbow colours	2014-02-07 16:11:20.973265+11	139.216.147.253
2820	Photograph your job actively	2014-02-07 16:13:14.999814+11	139.216.147.253
2821	Build this and that randomly	2014-02-07 16:13:16.474831+11	139.216.147.253
2841	Fill your location on the floor	2014-02-07 16:15:11.727723+11	139.216.147.253
2842	Confuse self-directed over five minutes	2014-02-07 16:15:17.126229+11	139.216.147.253
2843	Photocopy power in the right order	2014-02-07 16:15:20.127291+11	139.216.147.253
2853	Rearrange the world to preexisting conditions	2014-02-07 16:16:59.924866+11	139.216.147.253
2854	Seek a new system confidently	2014-02-07 16:17:05.550518+11	139.216.147.253
2855	Plant D.I.Y as an indulgence	2014-02-07 16:17:43.03943+11	139.216.147.253
2856	Design beans without showing anyone	2014-02-07 16:17:45.49636+11	139.216.147.253
2857	Investigate the temperature as though your life depends on it	2014-02-07 16:18:36.304698+11	139.216.147.253
2858	Divulge plants obsessively	2014-02-07 16:19:02.908002+11	139.216.147.253
2859	Scratch a useful object diplomatically	2014-02-07 16:19:04.35741+11	139.216.147.253
2860	Mime management randomly	2014-02-07 16:19:08.463491+11	139.216.147.253
2861	Swap a way around a problem so it is equal	2014-02-07 16:19:14.95415+11	139.216.147.253
2862	Test the same thing over five minutes	2014-02-07 16:19:16.594618+11	139.216.147.253
2863	Redesign the city in your line of sight	2014-02-07 16:19:18.758107+11	139.216.147.253
2864	Read tools at home	2014-02-07 16:19:20.957819+11	139.216.147.253
2865	Re-write elastic bands do this 3 times	2014-02-07 16:19:23.484278+11	139.216.147.253
2866	Continue what you see and question your findings	2014-02-07 16:19:26.190649+11	139.216.147.253
2867	Modify an atlas bureaucratically	2014-02-07 16:19:27.641192+11	139.216.147.253
2871	Deliberate social justice over and over	2014-02-07 16:22:39.882445+11	139.216.147.253
2872	Reveal money without thinking	2014-02-07 16:22:41.138804+11	139.216.147.253
2873	Check space in the simplest way possible	2014-02-07 16:22:43.451609+11	139.216.147.253
2874	Scratch good and bad on a piece of paper	2014-02-07 16:22:49.344988+11	139.216.147.253
2875	Investigate the future in a graph of blue hues	2014-02-07 16:22:50.730269+11	139.216.147.253
2876	Make a colour palette of a boat without language	2014-02-07 16:22:52.458635+11	139.216.147.253
2877	Colour good and bad directly	2014-02-07 16:22:55.227154+11	139.216.147.253
2878	Create the best times inside an irregular shape	2014-02-07 16:23:00.411023+11	139.216.147.253
2879	Deliberate space so its function is questionable	2014-02-07 16:23:01.739564+11	139.216.147.253
2880	Find an example of the world to create a completely new image	2014-02-07 16:23:03.091377+11	139.216.147.253
2881	Scrunch the institution mindfully	2014-02-07 16:23:12.155203+11	139.216.147.253
2882	Make up the amount of free time you have one way	2014-02-07 16:23:13.561035+11	139.216.147.253
2883	Test suburbs while walking	2014-02-07 16:23:15.833643+11	139.216.147.253
2884	Spend time thinking about transparency and attempt to extract a meaning	2014-02-07 16:23:16.780359+11	139.216.147.253
2885	Bring about a way around a problem in the wrong order	2014-02-07 16:23:18.465128+11	139.216.147.253
2886	Pair the first 10 things using a recording device	2014-02-07 16:23:20.409888+11	139.216.147.253
2887	Illustrate average bureaucratically	2014-02-07 16:23:22.239363+11	139.216.147.253
2888	Share your location while referring to beehives	2014-02-07 16:23:39.045065+11	139.216.147.253
2891	Send through productivity with other people	2014-02-07 16:25:37.245588+11	139.216.147.253
2892	Identify a common approach using only political rhetoric	2014-02-07 16:25:41.506384+11	139.216.147.253
2893	Describe a community for yourself	2014-02-07 16:25:46.364169+11	139.216.147.253
2894	Produce trees in capitals	2014-02-07 16:26:21.721997+11	139.216.147.253
2895	Donate in the most innovative way you can think of; in public	2014-02-07 16:26:23.703445+11	139.216.147.253
2896	Perform the same word like a robot	2014-02-07 16:26:26.820614+11	139.216.147.253
2897	Abstract the crowd spontaneously	2014-02-07 16:26:28.458692+11	139.216.147.253
2898	Ruin particular ideas as though your life depends on it	2014-02-07 16:26:29.85971+11	139.216.147.253
2899	Colour in  a mug with the next person you see	2014-02-07 16:26:32.562557+11	139.216.147.253
2900	Plot on a graph elastic bands thinking about form and function	2014-02-07 16:27:02.952849+11	139.216.147.253
2901	Plan the first 10 things slowly	2014-02-07 16:27:26.369215+11	139.216.147.253
2902	Arrange time until you are happy with the end result	2014-02-07 16:27:29.416103+11	139.216.147.253
2903	Discuss the rules of tennis thoroughly checking	2014-02-07 16:27:43.286124+11	139.216.147.253
2904	List a useless thing and combine	2014-02-07 16:27:49.295004+11	139.216.147.253
2905	Source something damaged in a minute	2014-02-07 16:27:51.072981+11	139.216.147.253
2906	Colour in  lunch and combine	2014-02-07 16:27:53.170737+11	139.216.147.253
2907	Act a secret handshake directly on the wall	2014-02-07 16:27:56.613509+11	139.216.147.253
2908	Invent everything you see in the next 29 seconds side by side	2014-02-07 16:28:02.077575+11	139.216.147.253
2909	Swap a round table using blu-tak	2014-02-07 16:28:04.547238+11	139.216.147.253
2910	Price an object from your top drawer differently	2014-02-07 16:28:06.508232+11	139.216.147.253
2911	Pre-record power in 7 sentences	2014-02-07 16:28:11.961062+11	139.216.147.253
2964	Paint transparency so you are affected	2014-02-07 16:33:43.700861+11	139.216.147.253
2978	Create transparency side by side	2014-02-07 16:34:44.839127+11	139.216.147.253
2890	Plot on a graph something slowly	2014-02-07 16:25:21.021827+11	139.216.147.253
2979	Throw political rhetoric inside an irregular shape	2014-02-07 16:34:46.526261+11	139.216.147.253
2980	Plant the colony thinking about form and function	2014-02-07 16:34:47.954039+11	139.216.147.253
2981	Discover trees in the simplest way possible	2014-02-07 16:34:52.115503+11	139.216.147.253
2982	Un-mechanise everything you see in the next 5 seconds so its function is questionable	2014-02-07 16:34:53.567955+11	139.216.147.253
2983	Check to demonstrate  on a piece of paper	2014-02-07 16:34:56.480073+11	139.216.147.253
2984	Build your role within a particular organisational structure with a public outcome in mind	2014-02-07 16:35:28.506912+11	139.216.147.253
2985	Split your role within a particular organisational structure quietly	2014-02-07 16:35:31.011525+11	139.216.147.253
2986	Colour a logo randomly	2014-02-07 16:35:33.619429+11	139.216.147.253
2987	Connect a safe like a spy	2014-02-07 16:35:37.752489+11	139.216.147.253
2988	Converse a circle into a ball	2014-02-07 16:35:42.299407+11	139.216.147.253
2989	Create a pamphlet explaining good and bad with optimism	2014-02-07 16:35:45.018556+11	139.216.147.253
2990	Create a banner which refers to the ideal newspaper hand-drawn	2014-02-07 16:35:46.931228+11	139.216.147.253
2991	Mark a positive gesture as though your life depends on it	2014-02-07 16:35:49.024321+11	139.216.147.253
2992	Multiply a common approach in a graph of rainbow colours	2014-02-07 16:36:22.657182+11	139.216.147.253
2993	Brainstorm anything convincingly	2014-02-07 16:36:27.087774+11	139.216.147.253
2994	Photograph a flagpole and combine	2014-02-07 16:36:30.816446+11	139.216.147.253
2995	Picture something intricate diplomatically	2014-02-07 16:36:33.095199+11	139.216.147.253
2996	Collect a scene as if functional	2014-02-07 16:36:34.506807+11	139.216.147.253
2997	Systematise whistleblowing while referring to beehives	2014-02-07 16:36:36.4624+11	139.216.147.253
2998	Write a meeting loudly	2014-02-07 16:36:38.944473+11	139.216.147.253
2999	Introduce stationery in a minute	2014-02-07 16:36:40.129159+11	139.216.147.253
3000	Toss a new system and combine	2014-02-07 16:36:42.057068+11	139.216.147.253
3001	Maintain a chair over 13 minutes	2014-02-07 16:36:44.802005+11	139.216.147.253
3002	Post knowledge over and over	2014-02-07 16:36:46.188041+11	139.216.147.253
3003	Say collective action freely	2014-02-07 16:36:48.969059+11	139.216.147.253
3004	Produce your love of a particular person intuitively	2014-02-07 16:38:43.186091+11	139.216.147.253
3005	Tap into positive images of collective action without touching	2014-02-07 16:38:46.052248+11	139.216.147.253
3006	Publicly declare focussed objects one way	2014-02-07 16:38:48.002285+11	139.216.147.253
3007	Donate focussed objects in the gallery	2014-02-07 16:38:49.365215+11	139.216.147.253
3008	Systematise your camera inside a square	2014-02-07 16:38:50.479483+11	139.216.147.253
3009	Order a scene trustfully	2014-02-07 16:38:52.004258+11	139.216.147.253
3010	Form a gathering confidently	2014-02-07 16:39:38.900871+11	139.216.147.253
3011	Ruin the future as though your life depends on it	2014-02-07 16:39:40.825282+11	139.216.147.253
3012	Bring salvaged material and attempt to extract a meaning	2014-02-07 16:39:48.128121+11	139.216.147.253
3013	Draw a manual and record what you find	2014-02-07 16:39:59.298682+11	139.216.147.253
3014	Assemble lunch and put two and two together	2014-02-07 16:40:02.028927+11	139.216.147.253
3015	Photocopy a new object and put two and two together	2014-02-07 16:40:04.312724+11	139.216.147.253
3016	Converse an atlas differently	2014-02-07 16:40:09.162379+11	139.216.147.253
3017	Expose productivity with optimism	2014-02-07 16:40:10.147596+11	139.216.147.253
3018	Categorise offcuts loudly	2014-02-07 16:40:11.17844+11	139.216.147.253
3019	Make up bureaucracy into a drawing	2014-02-07 16:40:13.034431+11	139.216.147.253
3020	Toss something small  loudly	2014-02-07 16:40:14.778504+11	139.216.147.253
3021	Photograph the same word do this 3 times	2014-02-07 16:40:19.904629+11	139.216.147.253
3022	Brainstorm plants unintuitively	2014-02-07 16:40:21.352407+11	139.216.147.253
3023	Plot on a graph branches in 3 ways	2014-02-07 16:40:25.144148+11	139.216.147.253
3024	Destroy productivity using free software	2014-02-07 16:40:26.411738+11	139.216.147.253
3025	Sign acts of resistance by swapping	2014-02-07 16:42:09.460949+11	139.216.147.253
3026	Store something into a drawing	2014-02-07 16:42:10.87323+11	139.216.147.253
3027	Systematise something small  while standing still	2014-02-07 16:49:32.23695+11	139.216.147.253
3028	Consider  change temporarily	2014-02-07 16:49:33.773309+11	139.216.147.253
3029	Uncover two parties in small-scale	2014-02-07 16:49:38.796849+11	139.216.147.253
3030	Scratch data with a pencil	2014-02-07 16:49:41.020529+11	139.216.147.253
3031	Find data simply	2014-02-07 16:49:41.9459+11	139.216.147.253
3032	Confuse food supply chains using blu-tak	2014-02-07 16:53:28.861994+11	139.216.147.253
3033	Modify transparency referencing the idea of dis-organisation	2014-02-07 16:53:29.954159+11	139.216.147.253
3034	Donate a capitalist notion using blu-tak	2014-02-07 16:53:31.234783+11	139.216.147.253
3035	Scrunch a community on the nature strip	2014-02-07 16:53:34.666656+11	139.216.147.253
3036	Audit the notion of work  and explain why	2014-02-07 16:53:37.292233+11	139.216.147.253
3037	Define a new object in the simplest way possible	2014-02-07 16:53:38.585396+11	139.216.147.253
3038	Confuse an atlas like you mean it	2014-02-07 16:53:45.942369+11	139.216.147.253
3039	Present a limited edition loudly	2014-02-07 16:53:51.428021+11	139.216.147.253
3040	Picture the world at home	2014-02-07 16:53:53.097489+11	139.216.147.253
3041	Borrow a communal dinner with a catchy title	2014-02-07 16:53:54.689733+11	139.216.147.253
3042	Toss around nothing systematically	2014-02-07 16:53:55.697858+11	139.216.147.253
3043	Abstract the garden and combine	2014-02-07 16:53:55.879533+11	139.216.147.253
3044	Continue a video  to the world	2014-02-07 16:53:57.13738+11	139.216.147.253
3045	Unleash to demonstrate  over 57 seconds	2014-02-07 16:53:59.297049+11	139.216.147.253
3046	Source the ideal newspaper during business hours	2014-02-07 16:54:03.09803+11	139.216.147.253
3047	Raise the best times in a new order	2014-02-07 16:54:04.403779+11	139.216.147.253
3048	Photocopy the city in a variety of ways	2014-02-07 16:54:05.364289+11	139.216.147.253
3049	Gather how you are implicated in systems in pen	2014-02-07 16:54:06.718643+11	139.216.147.253
3050	Break down weeds to a stranger	2014-02-07 16:54:09.55091+11	139.216.147.253
3051	Invent a new system creatively	2014-02-07 16:54:12.137942+11	139.216.147.253
3052	Build collective action unintuitively	2014-02-07 16:54:34.250308+11	139.216.147.253
3053	Re-define acts of resistance undercover	2014-02-07 16:54:36.31689+11	139.216.147.253
3054	Mime a trail of destruction with others	2014-02-07 16:54:37.70537+11	139.216.147.253
3055	Ruin energy   arbritrarily	2014-02-07 16:54:38.912029+11	139.216.147.253
3056	Introduce spectacles openly	2014-02-07 16:54:45.241354+11	139.216.147.253
3057	Visualise spectacles trustfully	2014-02-07 16:54:47.399054+11	139.216.147.253
3058	Design debt actively	2014-02-07 16:54:49.009644+11	139.216.147.253
3062	Take a sample of  random tasks and combine	2014-02-07 18:11:00.677117+11	139.216.147.253
3059	Define your role within a particular organisational structure efficiently	2014-02-07 16:54:53.477255+11	139.216.147.253
3060	Shape political rhetoric and use it as currency	2014-02-07 16:54:56.139599+11	139.216.147.253
3061	Share a movement in 5 minutes	2014-02-07 16:55:02.065164+11	139.216.147.253
3091	In your head, formulate the colony without touching	2014-02-07 18:53:22.82696+11	27.32.139.167
3092	Extract debt in the right order	2014-02-07 18:53:31.162447+11	27.32.139.167
3093	Break down how you are implicated in systems online	2014-02-07 18:53:38.994511+11	27.32.139.167
3094	Create a pamphlet explaining the rules of tennis randomly	2014-02-07 18:53:44.458905+11	27.32.139.167
3095	Price growth obsessively	2014-02-07 18:53:52.612225+11	27.32.139.167
3096	Collate 8 synonyms idley	2014-02-07 18:53:55.682999+11	27.32.139.167
3097	Write a list of  a colony of ants so you are affected	2014-02-07 18:54:08.824017+11	27.32.139.167
3098	Reveal free time without showing any proof	2014-02-07 18:54:15.90497+11	27.32.139.167
3099	Group multiple images of growth in the simplest way possible	2014-02-07 18:54:18.772125+11	27.32.139.167
3100	Categorise productivity with a catchy title	2014-02-07 18:54:25.826738+11	27.32.139.167
3101	Write about suburbs in the right order	2014-02-07 18:54:36.25591+11	27.32.139.167
3102	Test an image-editing program using watercolour	2014-02-07 18:54:38.482767+11	27.32.139.167
3103	Undo particular ideas inside a square	2014-02-07 18:54:44.895146+11	27.32.139.167
3104	Sign a trail of destruction like a robot	2014-02-07 18:54:47.547193+11	27.32.139.167
3105	Illustrate debt in black and white	2014-02-07 18:54:58.396596+11	27.32.139.167
3106	Scratch currency temporarily	2014-02-07 18:55:00.639975+11	27.32.139.167
3107	Follow a new object and pick your favourite	2014-02-07 18:55:03.579264+11	27.32.139.167
3108	Send through the notion of work  and attempt to extract a meaning	2014-02-07 18:55:05.87456+11	27.32.139.167
3109	Tweet stationery with optimism	2014-02-07 18:55:10.232549+11	27.32.139.167
3110	Mark the temperature and connect the dots	2014-02-07 18:55:13.71656+11	27.32.139.167
3111	Carve plants undercover	2014-02-07 18:55:15.402011+11	27.32.139.167
3112	Uncover a useful object to create a completely new image	2014-02-07 18:55:18.125552+11	27.32.139.167
3113	Scratch a colony of ants helplessly	2014-02-07 18:55:27.671285+11	27.32.139.167
3063	Share a flier on the nature strip	2014-02-07 18:11:05.623342+11	139.216.147.253
3064	Make a colour palette of what you see freely	2014-02-07 18:11:07.943492+11	139.216.147.253
3065	Check something intricate when you should be doing something else	2014-02-07 18:11:09.338158+11	139.216.147.253
3066	In your head, formulate something in 8 sentences	2014-02-07 18:11:10.837394+11	139.216.147.253
3067	Reveal a dictionary thoughtfully	2014-02-07 18:11:12.186381+11	139.216.147.253
3068	Seek government and speak the result in monotone	2014-02-07 18:11:13.461721+11	139.216.147.253
3069	Pair then photograph then examine how it relates to the idea of revolution	2014-02-07 18:11:14.515208+11	139.216.147.253
3070	Make up your camera in a new order	2014-02-07 18:11:15.058091+11	139.216.147.253
3071	Replicate cycle in a closed form	2014-02-07 18:11:15.405383+11	139.216.147.253
3072	Exhaust space differently	2014-02-07 18:11:15.594728+11	139.216.147.253
3073	Photocopy a communal dinner spontaneously	2014-02-07 18:11:15.78469+11	139.216.147.253
3074	Gather a large circle differently	2014-02-07 18:23:47.173316+11	139.216.147.253
3075	Wear a video  considering last century	2014-02-07 18:23:49.410085+11	139.216.147.253
3076	Distribute what success means to you and send it to us via email	2014-02-07 18:23:49.709819+11	139.216.147.253
3077	Break down a game of cards in 5 ways	2014-02-07 18:23:49.88247+11	139.216.147.253
3078	Reinvent the top draw without telling anyone	2014-02-07 18:23:50.025609+11	139.216.147.253
3079	Colour social justice idley	2014-02-07 18:23:50.177954+11	139.216.147.253
3080	Expand on time in photographic form	2014-02-07 18:23:50.307245+11	139.216.147.253
3081	Redesign meaning addictively	2014-02-07 18:23:50.522533+11	139.216.147.253
3082	Follow lunch in public	2014-02-07 18:23:50.625486+11	139.216.147.253
3083	Trust a hole in a graph of blue hues	2014-02-07 18:23:50.8321+11	139.216.147.253
3084	Teach spectacles in your line of sight	2014-02-07 18:23:51.026282+11	139.216.147.253
3085	Observe then photograph through trade	2014-02-07 18:23:51.168698+11	139.216.147.253
3086	Make a colour palette of the notion of work  into a ball	2014-02-07 18:23:51.240041+11	139.216.147.253
3087	Deliberate the world in public space	2014-02-07 18:23:51.358914+11	139.216.147.253
3088	Pair a slogan systematically	2014-02-07 18:23:51.489618+11	139.216.147.253
3089	Bring about a useless thing spontaneously	2014-02-07 18:23:51.56043+11	139.216.147.253
3090	Scratch something new over 6 minutes	2014-02-07 18:23:51.679764+11	139.216.147.253
3218	Throw how you might begin to withdraw your dependency on technology and explain why	2014-02-07 21:57:49.093631+11	14.201.97.148
3219	Borrow the world mindfully	2014-02-07 21:57:54.207682+11	14.201.97.148
3220	Mark a round table and throw it out the window	2014-02-07 21:57:55.932357+11	14.201.97.148
3221	Photograph a communal dinner loudly	2014-02-07 21:57:57.137322+11	14.201.97.148
3222	Perform meaning then cut that in half	2014-02-07 21:57:58.167776+11	14.201.97.148
3223	Find an example of the fourth world and attempt to extract a meaning	2014-02-07 21:57:59.242378+11	14.201.97.148
3224	Borrow something spontaneously	2014-02-07 21:58:02.214053+11	14.201.97.148
3225	Break down the best times over 19 hours	2014-02-07 21:58:03.337336+11	14.201.97.148
3226	Protect your password diplomatically	2014-02-07 21:58:05.789608+11	14.201.97.148
3227	Scrunch a scene in the gallery	2014-02-07 21:58:07.136494+11	14.201.97.148
3228	Bring something small  by swapping	2014-02-07 21:58:08.916546+11	14.201.97.148
3229	Bring a word you heard today in the colours of your flag	2014-02-07 21:58:10.201783+11	14.201.97.148
3230	Rearrange the least used glass from your cupboard together	2014-02-07 21:58:12.228192+11	14.201.97.148
3231	Share your favourite image by swapping	2014-02-07 21:58:15.67211+11	14.201.97.148
3232	Price weeds to the world	2014-02-07 21:58:17.123109+11	14.201.97.148
3233	Break religiously directly on the wall	2014-02-07 21:58:18.652176+11	14.201.97.148
3234	Split a useful object during work hours	2014-02-07 21:58:19.634071+11	14.201.97.148
3235	Write about a game of cards in 9 sentences	2014-02-07 21:58:21.419095+11	14.201.97.148
3236	Calculate particular ideas with a public outcome in mind	2014-02-07 21:58:22.726887+11	14.201.97.148
3237	Paint what you see to preexisting conditions	2014-02-07 21:58:24.152077+11	14.201.97.148
3238	Bring something new hand-drawn	2014-02-07 21:58:25.524606+11	14.201.97.148
3239	Modify a balloon in black and white	2014-02-07 21:58:26.592844+11	14.201.97.148
3240	Impose focussed objects helplessly	2014-02-07 21:58:27.553244+11	14.201.97.148
3241	Write something round obsessively	2014-02-07 21:58:28.541412+11	14.201.97.148
3242	Manage a nation-state and speak the result in monotone	2014-02-07 21:58:29.545625+11	14.201.97.148
3243	Distribute positive images of collective action and collate the results	2014-02-07 21:58:30.864182+11	14.201.97.148
3244	Expand on a program on the wall	2014-02-07 21:58:37.906267+11	14.201.97.148
3245	Detail your camera intuitively	2014-02-07 21:58:39.944122+11	14.201.97.148
3246	Impose something damaged over 23 hours	2014-02-07 21:58:40.941285+11	14.201.97.148
3247	Teach using spray paint seriously	2014-02-07 21:58:42.063196+11	14.201.97.148
3248	Create a debate without using words	2014-02-07 21:58:43.592588+11	14.201.97.148
3249	Swap the crowd privately	2014-02-07 21:58:44.880623+11	14.201.97.148
3250	Make a boat by planning the next move	2014-02-07 21:58:45.963294+11	14.201.97.148
3251	Redesign a see-saw with scepticism	2014-02-07 21:58:47.505096+11	14.201.97.148
3252	Photograph your camera for yourself	2014-02-07 21:58:51.037045+11	14.201.97.148
3253	Collage average inside a square	2014-02-07 21:59:01.999714+11	14.201.97.148
3254	Hack then photograph using only political rhetoric	2014-02-07 21:59:07.277053+11	14.201.97.148
3255	Undo food supply chains with others	2014-02-07 21:59:09.070364+11	14.201.97.148
3256	Write about a logo with the next person you see	2014-02-07 21:59:16.043094+11	14.201.97.148
3257	Send a newspaper clipping of government when you should be doing something else	2014-02-07 21:59:17.528243+11	14.201.97.148
3258	Write change using only political rhetoric	2014-02-07 21:59:18.77104+11	14.201.97.148
3259	Expose a handshake for yourself	2014-02-07 21:59:20.87297+11	14.201.97.148
3260	Identify the political as a pie chart	2014-02-07 21:59:21.845694+11	14.201.97.148
3261	Speak about something damaged considering last century	2014-02-07 21:59:23.467403+11	14.201.97.148
3262	In your head, formulate free time convincingly	2014-02-07 21:59:24.866707+11	14.201.97.148
3263	Find an example of the risks slowly	2014-02-07 21:59:26.424394+11	14.201.97.148
3264	Assemble growth without thinking too much	2014-02-07 21:59:27.805607+11	14.201.97.148
3265	Fill a word you heard today directly	2014-02-07 21:59:29.479846+11	14.201.97.148
3266	Define anything while referring to gardening	2014-02-07 21:59:30.795695+11	14.201.97.148
3267	Mark  sticks then cut that in half	2014-02-07 21:59:31.92266+11	14.201.97.148
3268	Ruin a uniform so that we will be really surprised	2014-02-07 21:59:33.193121+11	14.201.97.148
3269	Undo something new in monotone	2014-02-07 21:59:36.34463+11	14.201.97.148
3114	Reverse trees with other people	2014-02-07 18:58:28.126015+11	27.32.139.167
3115	Explain a number you consider to be quite big using statistics	2014-02-07 18:58:32.657218+11	27.32.139.167
3116	Undertake knowledge in 6 sentences	2014-02-07 18:58:36.697268+11	27.32.139.167
3117	Subvert a set of instructions in another language	2014-02-07 18:58:40.927883+11	27.32.139.167
3118	Speak about space as though your life depends on it	2014-02-07 18:58:46.683338+11	27.32.139.167
3119	Speak about something round and record what you find	2014-02-07 18:58:49.793461+11	27.32.139.167
3120	Maintain political rhetoric in the gallery	2014-02-07 18:58:53.534227+11	27.32.139.167
3121	Sign the idea of happiness in the right order	2014-02-07 18:58:56.036098+11	27.32.139.167
3122	Paint a see-saw and collate the results	2014-02-07 18:58:59.0924+11	27.32.139.167
3123	Continue the ideal newspaper intuitively	2014-02-07 18:59:01.426016+11	27.32.139.167
3124	Carve the amount of free time you have secretly	2014-02-07 18:59:10.288684+11	27.32.139.167
3126	Cut and paste how your mobile phone is used on any given day as a map	2014-02-07 19:45:00.593118+11	120.149.82.82
3125	Fill a word you heard today referencing the idea of dis-organisation	2014-02-07 19:02:15.043835+11	120.149.82.82
3127	Converse then photograph and combine	2014-02-07 21:54:16.338659+11	14.201.97.148
3128	Calculate an image-editing program in photoshop	2014-02-07 21:54:26.015892+11	14.201.97.148
3129	Seek beans quietly	2014-02-07 21:54:28.282176+11	14.201.97.148
3130	Paint with watercolour a nation-state in pen	2014-02-07 21:54:29.356761+11	14.201.97.148
3131	Split a handshake to the public	2014-02-07 21:54:41.364382+11	14.201.97.148
3132	Collate 11 synonyms by deduction	2014-02-07 21:54:42.739698+11	14.201.97.148
3133	Email a meal on the nature strip	2014-02-07 21:54:44.192697+11	14.201.97.148
3134	Group together migration using found materials	2014-02-07 21:54:47.157488+11	14.201.97.148
3135	Turn around a trail of destruction with found objects	2014-02-07 21:54:50.313231+11	14.201.97.148
3136	Group together a collection of blue things using blu-tak	2014-02-07 21:54:52.591757+11	14.201.97.148
3137	Consider  the future loudly	2014-02-07 21:54:54.769128+11	14.201.97.148
3138	Price an orchestra over time	2014-02-07 21:54:56.139169+11	14.201.97.148
3139	Collate what you see directly on the wall	2014-02-07 21:54:58.599878+11	14.201.97.148
3140	Write a letter about a powerpoint presentation thoughtfully	2014-02-07 21:55:00.447299+11	14.201.97.148
3141	Record the same word unintuitively	2014-02-07 21:55:02.936298+11	14.201.97.148
3142	Investigate the same thing through a process of elimination	2014-02-07 21:55:06.751138+11	14.201.97.148
3143	Collate your job with found objects	2014-02-07 21:55:09.01509+11	14.201.97.148
3144	Illustrate the idea of nationality and document the findings to share	2014-02-07 21:55:10.335614+11	14.201.97.148
3145	Speak about a trail of destruction thoughtfully	2014-02-07 21:55:14.850746+11	14.201.97.148
3146	Speak  transparency while talking to people	2014-02-07 21:55:16.678998+11	14.201.97.148
3147	Collate how you might begin to withdraw your dependency on technology efficiently	2014-02-07 21:55:19.278396+11	14.201.97.148
3148	Dis-organise self-directed with tape	2014-02-07 21:55:21.972455+11	14.201.97.148
3149	Whittle a capitalist notion into a drawing	2014-02-07 21:55:24.907877+11	14.201.97.148
3150	Change revolution to initiate progress	2014-02-07 21:55:26.764159+11	14.201.97.148
3151	Form an orchestra in pen	2014-02-07 21:55:29.167963+11	14.201.97.148
3152	Observe the world to a stranger	2014-02-07 21:55:30.317757+11	14.201.97.148
3153	Toss around companion plants as though your life depends on it	2014-02-07 21:55:33.439484+11	14.201.97.148
3154	Define to demonstrate  helplessly	2014-02-07 21:55:36.727041+11	14.201.97.148
3155	Converse out the front of your house in the colours of your flag	2014-02-07 21:55:38.147995+11	14.201.97.148
3156	Take a sample of  silver coins with found objects	2014-02-07 21:55:41.211512+11	14.201.97.148
3157	Dis-organise suburbs in the size of a book	2014-02-07 21:55:43.02196+11	14.201.97.148
3158	Examine to demonstrate  to form a link to the past	2014-02-07 21:55:46.077729+11	14.201.97.148
3159	Give how your mobile phone is used on any given day secretly	2014-02-07 21:55:48.197387+11	14.201.97.148
3160	Rearrange real progress over time	2014-02-07 21:55:51.800684+11	14.201.97.148
3161	Toss around the game of tug-of-war over five minutes	2014-02-07 21:55:54.467079+11	14.201.97.148
3162	Break down into numbers a useless thing inside an irregular shape	2014-02-07 21:55:56.429363+11	14.201.97.148
3163	Act on a debate like a robot	2014-02-07 21:55:58.99072+11	14.201.97.148
3164	Make the political and attempt to extract a meaning	2014-02-07 21:56:00.737855+11	14.201.97.148
3165	Brainstorm a gathering over 15 hours	2014-02-07 21:56:02.622276+11	14.201.97.148
3166	Continue a log temporarily	2014-02-07 21:56:03.750336+11	14.201.97.148
3167	Split using spray paint by planning the next move	2014-02-07 21:56:05.963513+11	14.201.97.148
3168	Audit D.I.Y hand-drawn	2014-02-07 21:56:08.409189+11	14.201.97.148
3169	Email everything you see in the next 11 seconds to create a completely new image	2014-02-07 21:56:10.710951+11	14.201.97.148
3170	Rewrite time to create a completely new image	2014-02-07 21:56:13.896735+11	14.201.97.148
3171	Bring about a community while walking	2014-02-07 21:56:15.51458+11	14.201.97.148
3172	Email a debate over and over	2014-02-07 21:56:16.914733+11	14.201.97.148
3173	Gather at home on a piece of paper	2014-02-07 21:56:18.186403+11	14.201.97.148
3174	Produce an impracticle object in the size of a book	2014-02-07 21:56:19.567844+11	14.201.97.148
3175	Pair a list of rules and throw it out the window	2014-02-07 21:56:21.305089+11	14.201.97.148
3176	Donate the same thing by deduction	2014-02-07 21:56:23.197137+11	14.201.97.148
3177	Check meaning  share it with us	2014-02-07 21:56:24.412436+11	14.201.97.148
3178	Illustrate a capitalist notion like it will change the world	2014-02-07 21:56:26.779079+11	14.201.97.148
3179	Explain the ideal newspaper diplomatically	2014-02-07 21:56:28.86335+11	14.201.97.148
3180	Mime branches in secret	2014-02-07 21:56:30.411141+11	14.201.97.148
3181	Write a video  secretly	2014-02-07 21:56:35.238579+11	14.201.97.148
3182	Write a letter about social justice addictively	2014-02-07 21:56:38.197367+11	14.201.97.148
3183	Research what failure means to you on the wall	2014-02-07 21:56:39.626359+11	14.201.97.148
3184	Take a sample of  information with tape	2014-02-07 21:56:41.730754+11	14.201.97.148
3185	Examine a new system unintuitively	2014-02-07 21:56:45.065064+11	14.201.97.148
3186	Try the future in capitals	2014-02-07 21:56:46.511733+11	14.201.97.148
3187	Share a scene openly	2014-02-07 21:56:47.948899+11	14.201.97.148
3188	Document your password and send it to us via email	2014-02-07 21:56:48.930189+11	14.201.97.148
3189	Mark the game of tug-of-war to the public	2014-02-07 21:56:50.6217+11	14.201.97.148
3190	Colour in  two people and double it	2014-02-07 21:56:52.339708+11	14.201.97.148
3191	Share a debate repeatedly	2014-02-07 21:56:54.019481+11	14.201.97.148
3192	Invent how you are implicated in systems in hardcopy	2014-02-07 21:56:55.179849+11	14.201.97.148
3193	Fill your location and double it	2014-02-07 21:56:58.083079+11	14.201.97.148
3194	Act how your mobile phone is used on any given day efficiently	2014-02-07 21:56:59.261462+11	14.201.97.148
3195	Draw a positive gesture in the right order	2014-02-07 21:57:01.233422+11	14.201.97.148
3196	Type a fireplace through trade	2014-02-07 21:57:02.370742+11	14.201.97.148
3197	Plan a nation-state without showing any proof	2014-02-07 21:57:03.482397+11	14.201.97.148
3198	Send through with a stranger using found materials	2014-02-07 21:57:04.911175+11	14.201.97.148
3199	Break down a logo without telling anyone	2014-02-07 21:57:06.455517+11	14.201.97.148
3200	Extract what is within reach in small-scale	2014-02-07 21:57:07.957485+11	14.201.97.148
3201	Redesign free time to create a completely new image	2014-02-07 21:57:09.458599+11	14.201.97.148
3202	Walk  food supply chains slowly	2014-02-07 21:57:11.018667+11	14.201.97.148
3203	Visualise something now	2014-02-07 21:57:12.270505+11	14.201.97.148
3204	Collect a community confidently	2014-02-07 21:57:13.379919+11	14.201.97.148
3205	Reverse engineer something new and collate the results	2014-02-07 21:57:15.432684+11	14.201.97.148
3206	Plant a get-together while referring to gardening	2014-02-07 21:57:16.61416+11	14.201.97.148
3207	Colour in  8 steps without showing any proof	2014-02-07 21:57:19.044902+11	14.201.97.148
3208	Carve the amount of free time you have while talking to people	2014-02-07 21:57:20.445027+11	14.201.97.148
3209	Connect an impracticle object in photographic form	2014-02-07 21:57:24.341211+11	14.201.97.148
3210	Move in 5 ways in capitals	2014-02-07 21:57:26.892952+11	14.201.97.148
3211	Cut and paste suburbs in the gallery	2014-02-07 21:57:28.07652+11	14.201.97.148
3212	Bring something with a double meaning to the public	2014-02-07 21:57:29.162554+11	14.201.97.148
3213	Plant growth  share it with us	2014-02-07 21:57:35.39846+11	14.201.97.148
3214	Break down into numbers random tasks in photographic form	2014-02-07 21:57:37.786195+11	14.201.97.148
3215	Paint your love of a particular person so it reflects your values	2014-02-07 21:57:41.722146+11	14.201.97.148
3216	Make up a garden on the wall	2014-02-07 21:57:44.826395+11	14.201.97.148
3217	Research the idea of nationality with optimism	2014-02-07 21:57:47.401182+11	14.201.97.148
3270	Publicly declare something new and pick your favourite	2014-02-07 21:59:37.458161+11	14.201.97.148
3271	Collate a program during business hours	2014-02-07 21:59:39.813889+11	14.201.97.148
3272	Systematise in 5 ways in secret	2014-02-07 21:59:40.914525+11	14.201.97.148
3273	Split your thoughts actively	2014-02-07 21:59:42.130113+11	14.201.97.148
3274	Speak  to demonstrate  online	2014-02-07 21:59:43.115458+11	14.201.97.148
3275	Swap  sticks in photoshop	2014-02-07 21:59:44.081056+11	14.201.97.148
3276	Use  a powerpoint presentation and double it	2014-02-07 21:59:45.219167+11	14.201.97.148
3277	Pair a balloon quickly	2014-02-07 21:59:47.208537+11	14.201.97.148
3278	Consider  a way around a problem confidently	2014-02-07 21:59:48.099203+11	14.201.97.148
3279	Plan information with optimism	2014-02-07 21:59:50.723897+11	14.201.97.148
3280	Source the notion of work  and record what you find	2014-02-07 21:59:51.912507+11	14.201.97.148
3281	Plan the headlines loudly	2014-02-07 21:59:53.103076+11	14.201.97.148
3282	Sew your favourite image with a public outcome in mind	2014-02-07 21:59:54.289106+11	14.201.97.148
3283	Send a border in the colours of your flag	2014-02-07 21:59:55.707292+11	14.201.97.148
3284	Bring a useless thing and attempt to extract a meaning	2014-02-07 21:59:57.038465+11	14.201.97.148
3285	Replicate your location and connect the dots	2014-02-07 21:59:58.707786+11	14.201.97.148
3286	Check focussed objects in hardcopy	2014-02-07 22:00:00.421244+11	14.201.97.148
3287	Rewrite real progress with others	2014-02-07 22:00:02.497807+11	14.201.97.148
3288	Impose trees differently	2014-02-07 22:00:06.718751+11	14.201.97.148
3289	Whittle two people simply	2014-02-07 22:00:11.458781+11	14.201.97.148
3290	Act a positive gesture in your line of sight	2014-02-07 22:00:12.625682+11	14.201.97.148
3291	Reverse engineer the world  share it with us	2014-02-07 22:00:20.005871+11	14.201.97.148
3292	Turn around a small list loudly	2014-02-07 22:00:22.119786+11	14.201.97.148
3293	Distribute migration as though your life depends on it	2014-02-07 22:00:23.45001+11	14.201.97.148
3294	Collage a set of instructions for yourself	2014-02-07 22:00:25.081854+11	14.201.97.148
3295	Calculate the surface on the wall	2014-02-07 22:00:27.580801+11	14.201.97.148
3296	Create the rules   on the floor	2014-02-07 22:00:28.684553+11	14.201.97.148
3297	Give two parties so you are affected	2014-02-07 22:00:29.960892+11	14.201.97.148
3298	Learn about the amount of free time you have and send it to us via email	2014-02-07 22:00:31.344014+11	14.201.97.148
3299	Take a photo of a video  with no preconceived idea	2014-02-07 22:00:34.673985+11	14.201.97.148
3300	Plan average to capture the moment	2014-02-07 22:00:37.098249+11	14.201.97.148
3301	Draw the best times freely	2014-02-07 22:00:38.469611+11	14.201.97.148
3302	Take a photo of positive images of collective action to capture the moment	2014-02-07 22:00:39.688196+11	14.201.97.148
3303	Publicly declare your role within a particular organisational structure and record what you find	2014-02-07 22:00:43.566065+11	14.201.97.148
3304	Deliberate acts of resistance with your hands	2014-02-07 22:00:50.912185+11	14.201.97.148
3305	Use  time with tape	2014-02-07 22:00:58.844528+11	14.201.97.148
3306	Pair future technologies temporarily	2014-02-07 22:00:59.996425+11	14.201.97.148
3307	Plant the moon to initiate progress	2014-02-07 22:01:04.332938+11	14.201.97.148
3308	Collate something new in public space	2014-02-07 22:01:05.835757+11	14.201.97.148
3309	Expose then photograph in a graph of blue hues	2014-02-07 22:01:18.213867+11	14.201.97.148
3310	Carve images of other people  thoroughly checking	2014-02-07 22:01:21.27727+11	14.201.97.148
3311	Move a slogan  share it with us	2014-02-07 22:01:23.242697+11	14.201.97.148
3312	Sign branches in the form of a ransom note	2014-02-07 22:01:24.722402+11	14.201.97.148
3313	Converse a commodity as a pie chart	2014-02-07 22:01:25.480104+11	14.201.97.148
3314	Throw a chair addictively	2014-02-07 22:01:26.993927+11	14.201.97.148
3315	Rearrange a video  mindfully	2014-02-07 22:01:28.388417+11	14.201.97.148
3316	Deliberate your camera and throw it out the window	2014-02-07 22:01:29.35925+11	14.201.97.148
3317	Form energy   so that we will be really surprised	2014-02-07 22:01:31.032988+11	14.201.97.148
3318	Impose a powerpoint presentation without thinking	2014-02-07 22:01:32.266623+11	14.201.97.148
3319	Design sticks and stones while standing still	2014-02-07 22:01:33.464277+11	14.201.97.148
3320	Plan the amount of free time you have to a stranger	2014-02-07 22:01:34.647988+11	14.201.97.148
3321	Investigate a capitalist notion and combine	2014-02-07 22:01:36.448309+11	14.201.97.148
3322	Carve something referencing the idea of dis-organisation	2014-02-07 22:01:37.618644+11	14.201.97.148
3323	Colour money and combine	2014-02-07 22:01:39.688648+11	14.201.97.148
3324	List D.I.Y by deduction	2014-02-07 22:01:43.303663+11	14.201.97.148
3325	Reverse the city creatively	2014-02-07 22:01:44.470775+11	14.201.97.148
3326	In your head, formulate the notion of work  now	2014-02-07 22:01:45.448198+11	14.201.97.148
3327	Toss a water source over and over	2014-02-07 22:01:47.049321+11	14.201.97.148
3328	Collect a hole and speak the result in monotone	2014-02-07 22:01:48.066889+11	14.201.97.148
3329	Visualise to demonstrate  intuitively	2014-02-07 22:01:49.909869+11	14.201.97.148
3330	Follow a list of rules without showing anyone	2014-02-07 22:01:52.104205+11	14.201.97.148
3331	Visualise your thoughts over time	2014-02-07 22:01:53.906173+11	14.201.97.148
3332	Share your location in a minute	2014-02-07 22:01:55.222328+11	14.201.97.148
3333	Deliberate energy   using only political rhetoric	2014-02-07 22:01:56.400783+11	14.201.97.148
3334	Improve anything slowly	2014-02-07 22:01:58.238775+11	14.201.97.148
3335	Investigate images of other people  with a pencil	2014-02-07 22:01:59.456217+11	14.201.97.148
3336	Expose management in a graph of blue hues	2014-02-07 22:02:04.100207+11	14.201.97.148
3337	Sculpt focussed objects in capitals	2014-02-07 22:02:05.303932+11	14.201.97.148
3338	Donate anything slowly	2014-02-07 22:02:07.130975+11	14.201.97.148
3339	Investigate a community when you should be doing something else	2014-02-07 22:02:10.282882+11	14.201.97.148
3340	Bring about a collection of blue things using only political rhetoric	2014-02-07 22:02:12.638733+11	14.201.97.148
3341	Break down something new in pen	2014-02-07 22:02:14.374585+11	14.201.97.148
3342	Take a sample of  a game of cards without assistance	2014-02-07 22:02:16.483271+11	14.201.97.148
3343	Learn about what success means to you do this 7 times	2014-02-07 22:02:18.209418+11	14.201.97.148
3344	Sing a slogan to create a completely new image	2014-02-07 22:02:21.019504+11	14.201.97.148
3345	Extract money over and over	2014-02-07 22:02:22.397457+11	14.201.97.148
3346	Paint an atlas over 11 minutes	2014-02-07 22:02:24.452229+11	14.201.97.148
3347	Collate self-directed quickly	2014-02-07 22:02:25.870998+11	14.201.97.148
3348	Bring what is within reach using free software	2014-02-07 22:02:27.570611+11	14.201.97.148
3349	Act the least used glass from your cupboard unintuitively	2014-02-07 22:02:29.82015+11	14.201.97.148
3350	Define patience inside an irregular shape	2014-02-07 22:02:32.805348+11	14.201.97.148
3351	Give your thoughts together	2014-02-07 22:02:34.448887+11	14.201.97.148
3352	Throw everything you see in the next 25 seconds and speak the result in monotone	2014-02-07 22:02:35.56079+11	14.201.97.148
3353	Seek in the most innovative way you can think of; efficiently	2014-02-07 22:02:37.877349+11	14.201.97.148
3354	Continue what success means to you spontaneously	2014-02-07 22:02:41.727921+11	14.201.97.148
3355	Send a video  secretly	2014-02-07 22:02:51.28917+11	14.201.97.148
3356	Visualise Australian symbolism and connect the dots	2014-02-07 22:02:52.784573+11	14.201.97.148
3357	Bring 5 steps seriously	2014-02-07 22:02:54.736314+11	14.201.97.148
3358	Extract your favourite image with a public outcome in mind	2014-02-07 22:02:56.13954+11	14.201.97.148
3359	Consider  a limited edition like it will change the world	2014-02-07 22:15:54.675857+11	118.209.7.234
3360	Bring about plants on a piece of paper	2014-02-07 22:15:56.925518+11	118.209.7.234
3361	Reverse engineer a chair then examine how it relates to the idea of revolution	2014-02-07 22:15:58.900228+11	118.209.7.234
3362	Maintain stationery while standing still	2014-02-07 22:16:00.150597+11	118.209.7.234
3363	Suggest a dictionary in the simplest way possible	2014-02-07 22:16:02.197247+11	118.209.7.234
3364	Present data arbritrarily	2014-02-07 22:16:37.578788+11	118.209.7.234
3365	Break down into numbers focussed objects relating to a gallery	2014-02-07 22:16:40.32874+11	118.209.7.234
3366	Walk  what you see to create a completely new image	2014-02-07 22:16:42.322569+11	118.209.7.234
3367	Categorise a word you heard today like a spy	2014-02-07 22:16:44.718964+11	118.209.7.234
3368	Source the ideal newspaper by swapping	2014-02-07 22:16:48.454824+11	118.209.7.234
3369	Re-write a limited edition with a catchy title	2014-02-07 22:16:49.108811+11	118.209.7.234
3370	Divulge a limited edition in gold	2014-02-07 22:16:51.000857+11	118.209.7.234
3371	Protect a flagpole and double it	2014-02-07 22:16:53.071268+11	118.209.7.234
3372	Distribute a colony of ants quickly	2014-02-07 22:16:55.295697+11	118.209.7.234
3373	Categorise suburbs intuitively	2014-02-07 22:16:56.941818+11	118.209.7.234
3374	Modify whistleblowing unfairly	2014-02-07 22:16:58.506996+11	118.209.7.234
3375	Plot on a graph the top draw and connect the dots	2014-02-07 22:17:00.404559+11	118.209.7.234
3376	Test elastic bands during work hours	2014-02-07 22:17:02.226213+11	118.209.7.234
3377	Grow something damaged thoroughly checking	2014-02-07 22:17:12.873518+11	118.209.7.234
3378	Read knowledge through trade	2014-02-07 22:17:15.455063+11	118.209.7.234
3379	Make up money thoroughly checking	2014-02-07 22:17:17.154494+11	118.209.7.234
3380	Group together the chain of evidence while standing still	2014-02-07 22:17:19.329044+11	118.209.7.234
3381	Subvert your password privately	2014-02-07 22:17:20.828279+11	118.209.7.234
3382	Share a set of instructions without showing anyone	2014-02-07 22:17:31.503741+11	118.209.7.234
3383	Observe time in the most innovative way you can think of	2014-02-07 22:17:33.602406+11	118.209.7.234
3384	Reverse the idea of nationality over time	2014-02-07 22:17:35.217336+11	118.209.7.234
3385	Write about a game of cards intuitively	2014-02-07 22:17:37.389156+11	118.209.7.234
3386	Illustrate raw material differently	2014-02-07 22:17:46.07374+11	118.209.7.234
3387	Define the rules   in your line of sight	2014-02-07 22:17:51.275055+11	118.209.7.234
3388	Tweet the future arbritrarily	2014-02-07 22:17:53.044782+11	118.209.7.234
3389	Gather the game of tug-of-war in small-scale	2014-02-07 22:18:00.172785+11	118.209.7.234
3390	Represent what is within reach arbritrarily	2014-02-07 22:18:01.683059+11	118.209.7.234
3391	Undo the idea of happiness with optimism	2014-02-07 22:18:03.834011+11	118.209.7.234
3392	Plant something small  without language	2014-02-07 22:18:05.598814+11	118.209.7.234
3393	Arrange branches and collate the results	2014-02-07 22:18:07.228829+11	118.209.7.234
3394	Take a sample of  free time diplomatically	2014-02-07 22:18:18.094254+11	118.209.7.234
3395	Mime a flagpole with other people	2014-02-07 22:18:20.375195+11	118.209.7.234
3396	Distrupt an image-editing program loudly	2014-02-07 22:18:22.000554+11	118.209.7.234
3397	Hand out your love of a particular person spontaneously	2014-02-07 22:18:23.466062+11	118.209.7.234
3398	Write about energy efficiency and send it to us via email	2014-02-07 22:18:25.210168+11	118.209.7.234
3399	Visualise an alternative in the form of a ransom note	2014-02-07 22:18:27.029456+11	118.209.7.234
3400	Gather how you are implicated in systems and document the findings to share	2014-02-07 22:18:30.343357+11	118.209.7.234
3401	Rewrite a manual without touching	2014-02-07 22:18:32.101451+11	118.209.7.234
3402	Collate currency to preexisting conditions	2014-02-07 22:18:33.990314+11	118.209.7.234
3403	Throw two parties using found materials	2014-02-07 22:18:35.751866+11	118.209.7.234
3404	Distrupt wood convincingly	2014-02-07 22:18:37.390655+11	118.209.7.234
3405	Produce a hole using an old technique	2014-02-07 22:18:40.162435+11	118.209.7.234
3406	Mime a collection of blue things into a drawing	2014-02-07 22:18:46.36042+11	118.209.7.234
3407	Expose two parties with a catchy title	2014-02-07 22:18:48.485254+11	118.209.7.234
3408	Explain the newspaper in a closed form	2014-02-07 22:18:50.12496+11	118.209.7.234
3409	Swap a trail of destruction in a public place	2014-02-07 22:18:54.315431+11	118.209.7.234
3410	Shape a get-together in a closed form	2014-02-07 22:18:56.42438+11	118.209.7.234
3411	Suggest spectacles like it will change the world	2014-02-07 22:18:58.260335+11	118.209.7.234
3412	Write a garden through trade	2014-02-07 22:19:00.074733+11	118.209.7.234
3413	Destroy a 3-word manifesto on your own	2014-02-07 22:19:03.160139+11	118.209.7.234
3414	Gather together a way around a problem over time	2014-02-07 22:19:05.817851+11	118.209.7.234
3415	Spy on how you might begin to withdraw your dependency on technology over 9 minutes	2014-02-07 22:19:07.594464+11	118.209.7.234
3416	Invent a small list and combine	2014-02-07 22:19:10.154595+11	118.209.7.234
3417	Fill the surface in hardcopy	2014-02-07 22:19:12.436522+11	118.209.7.234
3418	Design a flier so that we will be really surprised	2014-02-07 22:19:22.217753+11	118.209.7.234
3419	Visualise something with a double meaning through a process of elimination	2014-02-07 22:19:24.698711+11	118.209.7.234
3420	Connect something round into a ball	2014-02-07 22:19:27.622842+11	118.209.7.234
3421	Maintain the game of tug-of-war now	2014-02-07 22:19:29.447795+11	118.209.7.234
3422	Discuss a colony of ants side by side	2014-02-07 22:19:30.756937+11	118.209.7.234
3423	Continue an impracticle object to a stranger	2014-02-07 22:19:32.323454+11	118.209.7.234
3424	Sculpt Australian symbolism referring to your favourite	2014-02-07 22:19:35.430306+11	118.209.7.234
3425	Carve 8 images using blu-tak	2014-02-07 22:19:36.840644+11	118.209.7.234
3426	Consider  an organisation  loudly	2014-02-07 22:19:38.437151+11	118.209.7.234
3427	Introduce wood in capitals	2014-02-07 22:19:40.417326+11	118.209.7.234
3428	Turn around the temperature directly on the wall	2014-02-07 22:19:43.984822+11	118.209.7.234
3429	Create a secret handshake in a new order	2014-02-07 22:19:45.74958+11	118.209.7.234
3430	Mark the same word loudly	2014-02-07 22:19:53.550918+11	118.209.7.234
3431	Plot on a graph waste randomly	2014-02-07 22:19:55.136342+11	118.209.7.234
3432	Toss a trusted source using free software	2014-02-07 22:19:56.703964+11	118.209.7.234
3433	Draw a large circle in a new order	2014-02-07 22:19:59.101818+11	118.209.7.234
3434	Split the fourth world simply	2014-02-07 22:20:02.059358+11	118.209.7.234
3435	Plant a program with a public outcome in mind	2014-02-07 22:20:03.567531+11	118.209.7.234
3436	Uncover an orchestra and put two and two together	2014-02-07 22:20:05.577418+11	118.209.7.234
3437	Check the top draw by swapping	2014-02-07 22:20:07.158531+11	118.209.7.234
3438	Grow 8 images with the first pencil you find	2014-02-07 22:20:09.306845+11	118.209.7.234
3439	Mime a sculpture of the future	2014-02-07 22:20:11.245822+11	118.209.7.234
3440	Change change to a stranger	2014-02-07 22:20:16.138541+11	118.209.7.234
3441	Audit  sticks loudly	2014-02-07 22:20:24.360932+11	118.209.7.234
3442	Improve elastic bands through a process of elimination	2014-02-07 22:20:29.252601+11	118.209.7.234
3443	Reinvent  sticks with a pencil	2014-02-07 22:20:30.990907+11	118.209.7.234
3444	Act Australian symbolism in small-scale	2014-02-07 22:20:32.887439+11	118.209.7.234
3445	Sculpt salvaged material in public	2014-02-07 22:20:34.503965+11	118.209.7.234
3446	Sign a number you consider to be quite big and question your findings	2014-02-07 22:20:35.858567+11	118.209.7.234
3447	Plant 8 images in the wrong order	2014-02-07 22:20:40.519418+11	118.209.7.234
3448	Change a balloon thoughtfully	2014-02-07 22:20:44.44825+11	118.209.7.234
3449	Speak  good and bad mindfully	2014-02-07 22:20:53.909915+11	118.209.7.234
3450	Email seeds to closely notice the details	2014-02-07 22:20:55.785951+11	118.209.7.234
3451	Re-define acts of resistance seriously	2014-02-07 22:20:58.435379+11	118.209.7.234
3452	Move D.I.Y while referring to beehives	2014-02-07 22:20:59.80583+11	118.209.7.234
3453	Deliberate something new as if functional	2014-02-07 22:21:01.211878+11	118.209.7.234
3454	Consider  space without showing any proof	2014-02-07 22:21:02.693581+11	118.209.7.234
3455	Rewrite the moon systematically	2014-02-07 22:21:04.212945+11	118.209.7.234
3456	Observe a flier during work hours	2014-02-07 22:21:05.602774+11	118.209.7.234
3457	Turn around a 7-word manifesto once	2014-02-07 22:21:07.107435+11	118.209.7.234
3458	Raise acts of resistance helplessly	2014-02-07 22:21:08.77466+11	118.209.7.234
3459	Visualise revolution once	2014-02-07 22:21:10.02907+11	118.209.7.234
3460	Unleash the moon helplessly	2014-02-07 22:21:11.169776+11	118.209.7.234
3461	Record your password using free software	2014-02-07 22:21:12.886847+11	118.209.7.234
3462	Break down everything with a public outcome in mind	2014-02-07 22:21:17.31594+11	118.209.7.234
3463	Deliberate anything through a process of elimination	2014-02-07 22:21:19.472407+11	118.209.7.234
3464	Create a pamphlet explaining an alternative and connect the dots	2014-02-07 22:21:21.424058+11	118.209.7.234
3465	Assemble images of other people  like a robot	2014-02-07 22:21:25.779457+11	118.209.7.234
3466	Explore a meal like it will change the world	2014-02-07 22:21:29.659784+11	118.209.7.234
3467	List a trusted source so that we will be really surprised	2014-02-07 22:21:32.952824+11	118.209.7.234
3468	Collect a powerpoint presentation on your own	2014-02-07 22:21:35.391623+11	118.209.7.234
3469	Research with a stranger in black and white	2014-02-07 22:21:37.231821+11	118.209.7.234
3470	Identify D.I.Y and use it as currency	2014-02-07 22:21:39.621053+11	118.209.7.234
3471	Carve the chain of evidence and double it	2014-02-07 22:21:41.027485+11	118.209.7.234
3472	Reverse engineer the city using statistics	2014-02-07 22:21:42.669471+11	118.209.7.234
3473	Connect something intricate into a ball	2014-02-07 22:21:44.546576+11	118.209.7.234
3474	Systematise elastic bands over 3 minutes	2014-02-07 22:21:46.141781+11	118.209.7.234
3475	Post bureaucracy in the colours of your flag	2014-02-07 22:21:47.800858+11	118.209.7.234
3476	Walk  your thoughts into a ball	2014-02-07 22:21:59.890703+11	118.209.7.234
3477	Post a small list and put two and two together	2014-02-07 22:22:07.712151+11	118.209.7.234
3478	Categorise suburbs during work hours	2014-02-07 22:22:12.915389+11	118.209.7.234
3479	Write a list of  a logo until you are happy with the end result	2014-02-07 22:22:14.355279+11	118.209.7.234
3480	Rearrange what failure means to you with no preconceived idea	2014-02-07 22:22:17.434755+11	118.209.7.234
3481	Extract a circle over five minutes	2014-02-07 22:22:19.985614+11	118.209.7.234
3482	Visualise what you see backing it up with research	2014-02-07 22:22:21.789531+11	118.209.7.234
3483	Unleash free time while talking to people	2014-02-07 22:22:24.188433+11	118.209.7.234
3484	Snap what success means to you in a gallery	2014-02-07 22:22:26.05258+11	118.209.7.234
3485	Print out what you see like you mean it	2014-02-07 22:22:27.712546+11	118.209.7.234
3486	Seek the institution with the first pencil you find	2014-02-07 22:22:31.911532+11	118.209.7.234
3487	Assemble a garden in the form of instructions	2014-02-07 22:22:35.005284+11	118.209.7.234
3488	Define a list of rules while referring to gardening	2014-02-07 22:22:46.381546+11	118.209.7.234
3489	Bring a balloon randomly	2014-02-07 22:22:48.37318+11	118.209.7.234
3490	Extract what you see helplessly	2014-02-07 22:22:49.968469+11	118.209.7.234
3491	Write a list of  elastic bands thoughtfully	2014-02-07 22:22:51.567555+11	118.209.7.234
3492	Source a megaphone directly on the wall	2014-02-07 22:22:53.202745+11	118.209.7.234
3493	Group multiple images of a direction so its function is questionable	2014-02-07 22:22:55.916156+11	118.209.7.234
3494	Draw the crowd over 23 hours	2014-02-07 22:22:58.236288+11	118.209.7.234
3495	Improve information by swapping	2014-02-07 22:22:59.977885+11	118.209.7.234
3496	Abstract a useful object by planning the next move	2014-02-07 22:23:09.511752+11	118.209.7.234
3497	Dis-organise patience at home	2014-02-07 22:23:11.152695+11	118.209.7.234
3498	Build a flagpole and attempt it only once	2014-02-07 22:23:12.684113+11	118.209.7.234
3499	Pre-record a nation-state without assistance	2014-02-07 22:23:21.626175+11	118.209.7.234
3500	Play a garden inside a square	2014-02-07 22:23:23.327482+11	118.209.7.234
3501	Explore a see-saw helplessly	2014-02-07 22:23:24.977633+11	118.209.7.234
3502	Create a hole quickly	2014-02-07 22:23:26.538243+11	118.209.7.234
3503	Take a sample of  D.I.Y slowly	2014-02-07 22:23:33.992001+11	118.209.7.234
3504	Find an example of two parties imagining you are in isolation	2014-02-07 22:23:35.142331+11	118.209.7.234
3505	Find the colour palette of an image efficiently	2014-02-07 22:23:36.877527+11	118.209.7.234
3506	Group multiple images of free time on the floor	2014-02-07 22:23:40.560953+11	118.209.7.234
3507	Form branches without language	2014-02-07 22:23:42.830907+11	118.209.7.234
3508	Draw a demonstration randomly	2014-02-07 22:23:49.601511+11	118.209.7.234
3509	Borrow an impracticle object using the name of someone great	2014-02-07 22:23:51.457511+11	118.209.7.234
3510	Un-mechanise an unusual scene like it will change the world	2014-02-07 22:23:53.677642+11	118.209.7.234
3511	Exhaust the rules of tennis without showing anyone	2014-02-07 22:23:56.060306+11	118.209.7.234
3512	Write a letter about bureaucracy without showing any proof	2014-02-07 22:23:59.967025+11	118.209.7.234
3513	Publicly declare an impracticle object like a spy	2014-02-07 22:24:05.357793+11	118.209.7.234
3514	Colour in  a uniform in a graph of rainbow colours	2014-02-07 22:24:07.48227+11	118.209.7.234
3515	Write a hole over 57 seconds	2014-02-07 22:24:12.087424+11	118.209.7.234
3516	Maintain the idea of happiness to the world	2014-02-07 22:24:13.416408+11	118.209.7.234
3517	Hack political rhetoric randomly	2014-02-07 22:24:15.167309+11	118.209.7.234
3518	Send a newspaper clipping of a positive gesture openly	2014-02-07 22:24:16.963891+11	118.209.7.234
3519	Price the newspaper using only political rhetoric	2014-02-07 22:24:18.681448+11	118.209.7.234
3520	Undo time in the most innovative way you can think of	2014-02-07 22:24:22.910915+11	118.209.7.234
3521	Find an example of an agreement by deduction	2014-02-07 22:24:30.557965+11	118.209.7.234
3522	Collate D.I.Y in a graph of rainbow colours	2014-02-07 22:24:33.588102+11	118.209.7.234
3523	Bring two people on the wall	2014-02-07 22:24:41.114743+11	118.209.7.234
3524	Subvert a number you consider to be quite big in public space	2014-02-07 22:24:42.780051+11	118.209.7.234
3525	Source a powerpoint presentation addictively	2014-02-07 22:24:44.70045+11	118.209.7.234
3526	Price a trail of destruction undercover	2014-02-07 22:24:46.150054+11	118.209.7.234
3527	Borrow a handshake in the most innovative way you can think of	2014-02-07 22:24:47.675251+11	118.209.7.234
3528	Paint a meal thoroughly checking	2014-02-07 22:24:51.13546+11	118.209.7.234
3529	Modify something side by side	2014-02-07 22:24:55.906334+11	118.209.7.234
3530	Unleash a secret handshake until you are happy with the end result	2014-02-07 22:24:57.449759+11	118.209.7.234
3531	Order what is within reach unintuitively	2014-02-07 22:25:00.319551+11	118.209.7.234
3532	Price a powerpoint presentation and throw it out the window	2014-02-07 22:25:02.055434+11	118.209.7.234
3533	Photocopy random tasks into a ball	2014-02-07 22:25:03.641557+11	118.209.7.234
3534	Wander what success means to you with scepticism	2014-02-07 22:25:12.199516+11	118.209.7.234
3535	Expose a piece of paper and collate the results	2014-02-07 22:25:15.403398+11	118.209.7.234
3536	Expose a limited edition and document the findings to share	2014-02-07 22:25:19.02382+11	118.209.7.234
3537	Donate a set of instructions and send it to us via email	2014-02-07 22:25:21.65368+11	118.209.7.234
3538	Rewrite a powerpoint presentation slowly	2014-02-07 22:25:29.350614+11	118.209.7.234
3539	Donate a direction through trade	2014-02-07 22:25:30.685148+11	118.209.7.234
3540	Tweet a balloon to form a link to the past	2014-02-07 22:25:32.876946+11	118.209.7.234
3541	Detail something new through a process of elimination	2014-02-07 22:25:35.446658+11	118.209.7.234
3542	Illustrate everything green and white quietly	2014-02-07 22:25:37.125023+11	118.209.7.234
3543	Trust plants and double it	2014-02-07 22:25:38.499045+11	118.209.7.234
3544	Act a slogan in the wrong order	2014-02-07 22:25:40.696012+11	118.209.7.234
3545	Mime a number you consider to be quite big with no preconceived idea	2014-02-07 22:25:42.721226+11	118.209.7.234
3546	Tap into how you might begin to withdraw your dependency on technology on the wall	2014-02-07 22:25:44.907563+11	118.209.7.234
3547	Check your love of a particular person while standing still	2014-02-07 22:25:47.24245+11	118.209.7.234
3548	Extract a fireplace while talking to people	2014-02-07 22:25:50.031712+11	118.209.7.234
3549	Subvert revolution when you should be doing something else	2014-02-07 22:25:51.717312+11	118.209.7.234
3550	Examine a new world order without language	2014-02-07 22:25:53.216085+11	118.209.7.234
3551	Rewrite productivity in a graph of blue hues	2014-02-07 22:25:55.656944+11	118.209.7.234
3552	Try salvaged material slowly	2014-02-07 22:25:57.392102+11	118.209.7.234
3553	Perform a manual using found materials	2014-02-07 22:25:59.018435+11	118.209.7.234
3554	Carve a community with others	2014-02-07 22:26:10.864762+11	118.209.7.234
3555	Describe a manual spontaneously	2014-02-07 22:26:20.947843+11	118.209.7.234
3556	Carve the idea of nationality on a piece of paper	2014-02-07 22:26:23.065824+11	118.209.7.234
3557	Investigate currency to the world	2014-02-07 22:26:25.187329+11	118.209.7.234
3558	Create productivity in your line of sight	2014-02-07 22:26:26.54542+11	118.209.7.234
3559	Sew something round like you mean it	2014-02-07 22:26:27.719102+11	118.209.7.234
3560	Consider  a see-saw slowly	2014-02-07 22:26:30.565909+11	118.209.7.234
3561	Act out a see-saw like you mean it	2014-02-07 22:26:31.816312+11	118.209.7.234
3562	Audit beans like it will change the world	2014-02-07 22:26:33.166678+11	118.209.7.234
3563	Undertake the same word on the nature strip	2014-02-07 22:26:34.441422+11	118.209.7.234
3564	Plot    the impossible to the public	2014-02-07 22:26:38.061228+11	118.209.7.234
3565	Sing secularity using found materials	2014-02-07 22:26:40.365313+11	118.209.7.234
3566	Hack a community by planning the next move	2014-02-07 22:26:43.574236+11	118.209.7.234
3567	Break down into numbers your camera and question your findings	2014-02-07 22:26:45.431707+11	118.209.7.234
3568	Say the first 10 things you see in gold	2014-02-07 22:26:47.163375+11	118.209.7.234
3569	Observe a list of rules unfairly	2014-02-07 22:26:48.873516+11	118.209.7.234
3570	Brainstorm your thoughts without thinking	2014-02-07 22:26:51.075945+11	118.209.7.234
3571	Collage D.I.Y in your line of sight	2014-02-07 22:26:52.549606+11	118.209.7.234
3572	Gather together one minute in pen	2014-02-07 22:26:55.018877+11	118.209.7.234
3573	Write a letter about the amount of free time you have in the wrong order	2014-02-07 22:26:57.18601+11	118.209.7.234
3574	Speak about something damaged and use it as currency	2014-02-07 22:26:59.783496+11	118.209.7.234
3575	Send whistleblowing in the form of a ransom note	2014-02-07 22:27:02.697217+11	118.209.7.234
3576	Spend time thinking about time considering last century	2014-02-07 22:27:04.173716+11	118.209.7.234
3577	Tap into a secret handshake with no preconceived idea	2014-02-07 22:27:05.547005+11	118.209.7.234
3578	Scrunch wood into a ball	2014-02-07 22:27:09.843172+11	118.209.7.234
3579	Observe the political when you should be doing something else	2014-02-07 22:27:11.296663+11	118.209.7.234
3580	Build with a stranger to the public	2014-02-07 22:27:13.184369+11	118.209.7.234
3581	Group multiple images of the idea of happiness with optimism	2014-02-07 22:27:14.595123+11	118.209.7.234
3582	Connect seeds over and over	2014-02-07 22:27:16.429747+11	118.209.7.234
3583	Tap into an alternative using a recording device	2014-02-07 22:27:17.682271+11	118.209.7.234
3584	Undertake an orchestra spontaneously	2014-02-07 22:27:19.757628+11	118.209.7.234
3585	Discuss a movement using an old technique	2014-02-07 22:27:21.18538+11	118.209.7.234
3586	Donate a fireplace unintuitively	2014-02-07 22:27:25.280298+11	118.209.7.234
3587	Paint the institution in the form of instructions	2014-02-07 22:27:26.605467+11	118.209.7.234
3588	Give Australian symbolism with others	2014-02-07 22:27:28.330536+11	118.209.7.234
3589	Paint seeds and pick your favourite	2014-02-07 22:27:29.884022+11	118.209.7.234
3590	Sing nothing in photoshop	2014-02-07 22:27:38.893999+11	118.209.7.234
3591	Order a game of cards using an old technique	2014-02-07 22:27:41.328858+11	118.209.7.234
3592	Toss a boat with a catchy title	2014-02-07 22:27:43.176501+11	118.209.7.234
3593	Try something small  in 2 ways	2014-02-07 22:27:44.806314+11	118.209.7.234
3594	Spend time thinking about a word you heard today without language	2014-02-07 22:27:51.808835+11	118.209.7.234
3595	Speak  something round over and over	2014-02-07 22:27:54.549286+11	118.209.7.234
3596	Research the newspaper by swapping	2014-02-07 22:27:56.394475+11	118.209.7.234
3597	Undo energy   in 7 ways	2014-02-07 22:27:57.872759+11	118.209.7.234
3598	Move a sculpture creatively	2014-02-07 22:27:59.617618+11	118.209.7.234
3599	Wander a word you heard today intuitively	2014-02-07 22:28:08.593921+11	118.209.7.234
3600	Wander the institution and record what you find	2014-02-07 22:28:13.517914+11	118.209.7.234
3601	Define free time openly	2014-02-07 22:28:14.989167+11	118.209.7.234
3602	Source a uniform and collate the results	2014-02-07 22:28:22.49762+11	118.209.7.234
3603	Undo the first 10 things you see quietly	2014-02-07 22:28:24.536809+11	118.209.7.234
3604	Seek what success means to you over 6 minutes	2014-02-07 22:28:25.881382+11	118.209.7.234
3605	Rewrite raw material as a pie chart	2014-02-07 22:28:27.898455+11	118.209.7.234
3606	Collate a useless thing by deduction	2014-02-07 22:28:29.973287+11	118.209.7.234
3607	Research your password in 2 minutes	2014-02-07 22:28:32.503643+11	118.209.7.234
3608	Speak  what failure means to you actively	2014-02-07 22:28:34.938622+11	118.209.7.234
3609	Undo a positive gesture so it reflects your values	2014-02-07 22:28:37.39381+11	118.209.7.234
3610	Shape with a stranger with optimism	2014-02-07 22:28:38.97837+11	118.209.7.234
3611	Rewrite a new world order while standing still	2014-02-07 22:28:40.614223+11	118.209.7.234
3612	Calculate the first 10 things you see over five minutes	2014-02-07 22:28:42.27307+11	118.209.7.234
3613	Gather the truth arbritrarily	2014-02-07 22:28:44.408623+11	118.209.7.234
3614	Connect waste and question your findings	2014-02-07 22:28:46.20958+11	118.209.7.234
3615	Produce a new world order while referring to gardening	2014-02-07 22:28:49.398282+11	118.209.7.234
3616	Consider  revolution like it will change the world	2014-02-07 22:28:50.669281+11	118.209.7.234
3617	Impose transparency imagining you are in isolation	2014-02-07 22:28:53.507342+11	118.209.7.234
3618	Introduce a set of instructions obsessively	2014-02-07 22:28:54.971949+11	118.209.7.234
3619	Find an example of a uniform over 19 hours	2014-02-07 22:28:56.217807+11	118.209.7.234
3620	Donate the colour palette of an image systematically	2014-02-07 22:28:58.23125+11	118.209.7.234
3621	Redesign a set of instructions by swapping	2014-02-07 22:28:59.880359+11	118.209.7.234
3622	Arrange a manual do this 4 times	2014-02-07 22:29:01.844026+11	118.209.7.234
3623	Make meaning through trade	2014-02-07 22:29:03.446874+11	118.209.7.234
3624	Teach the crowd while standing still	2014-02-07 22:29:10.254602+11	118.209.7.234
3625	Exhaust suburbs in 5 minutes	2014-02-07 22:29:19.559124+11	118.209.7.234
3626	Whistle the economy into a drawing	2014-02-07 22:29:26.513765+11	118.209.7.234
3627	Un-mechanise how your mobile phone is used on any given day without assistance	2014-02-08 11:38:44.700059+11	120.149.82.82
3628	Seek waste using an old technique	2014-02-08 14:11:22.791298+11	120.149.82.82
3629	Converse how you might begin to withdraw your dependency on technology to closely notice the details	2014-02-08 14:12:08.464406+11	120.149.82.82
3630	Seek a safe without thinking	2014-02-08 14:12:26.394831+11	120.149.82.82
3631	In your head, formulate two parties and attempt to extract a meaning	2014-02-08 14:12:36.605147+11	120.149.82.82
3632	Source a community systematically	2014-02-08 14:12:47.53272+11	120.149.82.82
3633	Write a letter about the fourth world as a drawing	2014-02-08 14:13:00.514705+11	120.149.82.82
3634	Protect your password in the gallery	2014-02-08 17:12:50.152706+11	118.209.7.234
3635	Mime change at home	2014-02-08 17:12:52.501186+11	118.209.7.234
3636	Connect the risks over five minutes	2014-02-08 17:12:56.451564+11	118.209.7.234
3637	Seek a balloon so it is equal	2014-02-08 17:13:00.484897+11	118.209.7.234
3638	Sew a tray while walking	2014-02-08 17:13:05.170964+11	118.209.7.234
3639	Mark what is within reach with no preconceived idea	2014-02-08 17:13:07.241372+11	118.209.7.234
3640	Demonstrate a game of cards over 12 minutes	2014-02-08 17:13:11.408317+11	118.209.7.234
3641	Take a sample of  collective action obsessively	2014-02-08 17:13:29.65717+11	118.209.7.234
3642	Gather together 8 steps so it reflects your values	2014-02-08 17:13:31.500943+11	118.209.7.234
3643	Swap this and that and document the findings to share	2014-02-08 17:13:36.646548+11	118.209.7.234
3644	Visualise particular ideas in a variety of ways	2014-02-08 17:13:38.778884+11	118.209.7.234
3645	Introduce average in pen	2014-02-08 17:13:49.974793+11	118.209.7.234
3646	Calculate energy   as an indulgence	2014-02-08 17:13:54.805315+11	118.209.7.234
3647	Divulge waste in the right order	2014-02-08 17:13:56.619761+11	118.209.7.234
3648	Speak about your role within a particular organisational structure unfairly	2014-02-08 17:13:58.649749+11	118.209.7.234
3649	Exhaust practical objects in the form of instructions	2014-02-08 17:14:00.185542+11	118.209.7.234
3650	Sew a demonstration and throw it out the window	2014-02-08 17:14:02.445084+11	118.209.7.234
3651	Source 11 synonyms imagining you are in isolation	2014-02-08 17:14:04.396182+11	118.209.7.234
3652	Explore a demonstration with the first pencil you find	2014-02-08 17:14:07.574538+11	118.209.7.234
3653	Break down into numbers transparency in public	2014-02-08 17:14:09.463574+11	118.209.7.234
3654	Collate particular ideas so it reflects your values	2014-02-08 17:14:11.864484+11	118.209.7.234
3655	Tap into productivity seriously	2014-02-08 17:14:13.974774+11	118.209.7.234
3656	Speak about weeds as an indulgence	2014-02-08 17:14:15.930826+11	118.209.7.234
3657	Form management with tape	2014-02-08 17:14:17.750366+11	118.209.7.234
3658	Research knowledge in a new order	2014-02-08 17:14:19.28855+11	118.209.7.234
3659	Bring a manual over 14 hours	2014-02-08 17:14:20.820526+11	118.209.7.234
3660	Identify 5 synonyms like a robot	2014-02-08 17:14:23.394903+11	118.209.7.234
3661	Gather something small  directly on the wall	2014-02-08 17:14:24.465484+11	118.209.7.234
3662	Bring the ideal newspaper on the floor	2014-02-08 17:14:25.905476+11	118.209.7.234
3663	Grow the first 10 things you see over and over	2014-02-08 17:14:27.150411+11	118.209.7.234
3664	Store money helplessly	2014-02-08 17:14:28.401131+11	118.209.7.234
3665	Break down into numbers an image-editing program to the world	2014-02-08 17:14:32.516183+11	118.209.7.234
3666	Tweet something with a double meaning now	2014-02-08 17:14:34.4318+11	118.209.7.234
3667	Systematise suburbs in a gallery	2014-02-08 18:08:04.383862+11	118.209.7.234
3668	Swap a fireplace religiously	2014-02-08 18:08:05.513795+11	118.209.7.234
3669	Toss around a game of cards so you are affected	2014-02-08 18:08:06.633228+11	118.209.7.234
3670	Calculate the garden in the form of a ransom note	2014-02-08 18:08:08.480053+11	118.209.7.234
3671	Shape a fireplace with other people	2014-02-08 18:08:09.769112+11	118.209.7.234
3672	Write a list of  a useful object systematically	2014-02-08 18:08:10.961061+11	118.209.7.234
3673	Deliver trees in 4 sentences	2014-02-08 18:08:19.08292+11	118.209.7.234
3674	Suggest a round table while referring to gardening	2014-02-08 18:08:24.000723+11	118.209.7.234
3675	Shape the crowd without thinking	2014-02-08 18:08:25.42147+11	118.209.7.234
3676	Detail a border on your own	2014-02-08 18:08:26.431229+11	118.209.7.234
3677	Walk  a dictionary trustfully	2014-02-08 18:08:29.038559+11	118.209.7.234
3678	Price the political in black and white	2014-02-08 18:08:32.707283+11	118.209.7.234
3679	Replace how you are implicated in systems during business hours	2014-02-08 18:08:37.636492+11	118.209.7.234
3680	Invent a dictionary in a variety of ways	2014-02-08 18:08:39.363734+11	118.209.7.234
3681	List a meeting in monotone	2014-02-08 18:08:41.885145+11	118.209.7.234
3682	Say salvaged material and attempt to extract a meaning	2014-02-08 18:08:42.965858+11	118.209.7.234
3683	Create a pamphlet explaining power addictively	2014-02-08 18:08:45.454226+11	118.209.7.234
3684	Store trees backing it up with research	2014-02-08 18:08:50.862134+11	118.209.7.234
3685	Toss around positive images of collective action quietly	2014-02-08 18:08:52.483856+11	118.209.7.234
3686	Tweet a uniform in monotone	2014-02-08 18:08:54.289687+11	118.209.7.234
3687	Create the idea of nationality religiously	2014-02-08 18:08:59.935349+11	118.209.7.234
3688	Plan a game of cards as a list	2014-02-08 18:09:01.419691+11	118.209.7.234
3689	Improve a trail of destruction in public	2014-02-08 18:09:02.699944+11	118.209.7.234
3690	In your head, formulate your favourite image in a public place	2014-02-09 04:04:48.17271+11	66.249.74.212
3691	Throw an atlas directly	2014-02-09 11:18:37.270853+11	118.209.7.234
3692	Photocopy the top draw being completely dishonest	2014-02-09 11:29:09.388059+11	118.209.7.234
3693	Walk  particular ideas to form a link to the past	2014-02-09 11:32:27.512223+11	118.209.7.234
3694	Publicly declare stone in the gallery	2014-02-09 11:32:35.306758+11	118.209.7.234
3695	Maintain suburbs to create a completely new image	2014-02-09 11:32:37.919237+11	118.209.7.234
3696	Shape lunch in capitals	2014-02-09 11:32:41.266656+11	118.209.7.234
3697	Hand out then photograph without language	2014-02-09 11:32:43.495882+11	118.209.7.234
3698	Use  a user-guide when you should be doing something else	2014-02-09 11:32:46.167119+11	118.209.7.234
3699	Send a newspaper clipping of a garden and combine	2014-02-09 11:32:50.223672+11	118.209.7.234
3700	Reverse a useless thing now	2014-02-09 11:32:56.906398+11	118.209.7.234
3701	Fill the impossible in secret	2014-02-09 11:33:00.003059+11	118.209.7.234
3702	Follow good and bad and double it	2014-02-09 11:33:03.348768+11	118.209.7.234
3703	Send data considering last century	2014-02-09 11:33:07.705335+11	118.209.7.234
3704	Multiply suburbs and use it as currency	2014-02-09 11:33:10.165189+11	118.209.7.234
3705	Try your password using only political rhetoric	2014-02-09 11:33:13.631796+11	118.209.7.234
3706	Whistle the political as if functional	2014-02-09 11:33:15.476752+11	118.209.7.234
3707	Cut and paste exploitation in public space	2014-02-09 12:01:53.742336+11	118.209.7.234
3708	Rearrange a handshake on the nature strip	2014-02-09 12:01:58.621731+11	118.209.7.234
3709	Converse a uniform in gold	2014-02-09 12:02:00.530442+11	118.209.7.234
3710	Walk  information relating to a gallery	2014-02-09 12:02:02.404645+11	118.209.7.234
3711	Write a list of  a limited edition like you mean it	2014-02-09 12:02:03.482094+11	118.209.7.234
3712	Arrange a hole by swapping	2014-02-09 12:02:05.180749+11	118.209.7.234
3713	Deliver acts of resistance in small-scale	2014-02-09 12:02:08.449282+11	118.209.7.234
3714	Act secularity in 4 minutes	2014-02-09 12:02:09.595155+11	118.209.7.234
3715	Manage a capitalist notion to initiate progress	2014-02-09 12:02:11.617047+11	118.209.7.234
3716	Redesign a new system in gold	2014-02-09 12:02:31.42778+11	118.209.7.234
3717	Publicly declare migration in pen	2014-02-09 12:02:36.79759+11	118.209.7.234
3718	Act your thoughts in pen	2014-02-09 12:02:38.032136+11	118.209.7.234
3719	Publicly declare a logo and throw it out the window	2014-02-09 12:02:40.343834+11	118.209.7.234
3720	Ruin an orchestra like you mean it	2014-02-09 12:02:47.984313+11	118.209.7.234
3721	Continue a hole in public space	2014-02-09 12:02:49.254006+11	118.209.7.234
3722	Distribute a secret handshake confidently	2014-02-09 12:02:50.314895+11	118.209.7.234
3723	Move the first 10 things you see thoroughly checking	2014-02-09 12:02:51.553873+11	118.209.7.234
3724	Spend time thinking about a community freely	2014-02-09 12:02:54.409806+11	118.209.7.234
3725	Distribute an object from your top drawer so its function is questionable	2014-02-09 12:02:55.999998+11	118.209.7.234
3726	Expand on everything once	2014-02-09 12:03:01.328037+11	118.209.7.234
3727	Distribute two parties so it reflects your values	2014-02-09 12:03:11.831604+11	118.209.7.234
3728	Pair a trail of destruction as an indulgence	2014-02-09 12:03:13.230071+11	118.209.7.234
3729	Destroy focussed objects by deduction	2014-02-09 12:03:14.589731+11	118.209.7.234
3730	List a useful object efficiently	2014-02-09 12:03:18.157873+11	118.209.7.234
3731	Whittle a dictionary so that we will be really surprised	2014-02-09 12:03:23.349313+11	118.209.7.234
3732	Discover your location on the nature strip	2014-02-09 12:03:27.947003+11	118.209.7.234
3733	Whittle whistleblowing so its function is questionable	2014-02-09 12:03:46.400546+11	118.209.7.234
3734	Dis-organise acts of resistance so it reflects your values	2014-02-09 12:03:48.845326+11	118.209.7.234
3735	Plant average using blu-tak	2014-02-09 12:03:53.923197+11	118.209.7.234
3736	Gather together a small list addictively	2014-02-09 12:03:57.353535+11	118.209.7.234
3737	Observe weeds in pen	2014-02-09 12:04:05.155817+11	118.209.7.234
3738	In your head, formulate a video  as a drawing	2014-02-09 12:09:49.763151+11	118.209.7.234
3739	Take a sample of  a flagpole in the simplest way possible	2014-02-09 12:10:38.444395+11	118.209.7.234
3740	Sew meaning in small-scale	2014-02-09 12:11:22.989081+11	118.209.7.234
3741	Price a balloon in a closed form	2014-02-09 12:11:26.572919+11	118.209.7.234
3742	Improve two people to closely notice the details	2014-02-09 12:11:28.07625+11	118.209.7.234
3743	Sing an alternative and pick your favourite	2014-02-09 12:11:29.634895+11	118.209.7.234
3744	Break a nation-state to preexisting conditions	2014-02-09 12:11:32.965039+11	118.209.7.234
3745	Teach government secretly	2014-02-09 12:11:34.082144+11	118.209.7.234
3746	Send through good and bad and put two and two together	2014-02-09 12:11:36.748755+11	118.209.7.234
3747	Whistle political rhetoric trustfully	2014-02-09 12:11:38.768002+11	118.209.7.234
3748	Act out the amount of free time you have in camouflage	2014-02-09 12:12:26.382406+11	118.209.7.234
3749	Categorise suburbs like it will change the world	2014-02-09 12:12:29.04813+11	118.209.7.234
3750	Source the newspaper in the most innovative way you can think of	2014-02-09 12:12:30.298992+11	118.209.7.234
3751	Toss 3 synonyms using blu-tak	2014-02-09 12:12:33.107079+11	118.209.7.234
3752	Use  a trail of destruction and use it as currency	2014-02-09 12:12:36.294237+11	118.209.7.234
3753	Examine a collection of blue things religiously	2014-02-09 12:12:37.438616+11	118.209.7.234
3754	Describe elastic bands in the colours of your flag	2014-02-09 12:12:39.098463+11	118.209.7.234
3755	Trust a new slogan privately	2014-02-09 12:12:43.735746+11	118.209.7.234
3756	Group multiple images of out the front of your house on a piece of paper	2014-02-09 12:12:48.554749+11	118.209.7.234
3757	Replace a see-saw in hardcopy	2014-02-09 12:12:50.712917+11	118.209.7.234
3758	Seek something round to the public	2014-02-09 12:24:44.066684+11	118.209.7.234
3759	Create the future mindfully	2014-02-09 12:24:45.676455+11	118.209.7.234
3760	Price the game of tug-of-war in the colours of your flag	2014-02-09 12:24:46.665955+11	118.209.7.234
3761	Scrunch future technologies in gold	2014-02-09 12:24:49.620147+11	118.209.7.234
3762	Bring the world in the size of a book	2014-02-09 12:24:51.129817+11	118.209.7.234
3763	Sew Australian symbolism now	2014-02-09 12:24:55.605277+11	118.209.7.234
3764	Scrunch the surface with optimism	2014-02-09 12:24:56.971093+11	118.209.7.234
3765	Plan a manual while walking	2014-02-09 12:24:58.748542+11	118.209.7.234
3766	Break a see-saw over 31 hours	2014-02-09 12:25:00.032824+11	118.209.7.234
3767	Manage collective action simply	2014-02-09 12:25:01.14553+11	118.209.7.234
3768	Bring a round table now	2014-02-09 12:25:02.242272+11	118.209.7.234
3769	Wear a small list loudly	2014-02-09 12:25:04.521833+11	118.209.7.234
3770	Collage a chair and record what you find	2014-02-09 12:25:05.5815+11	118.209.7.234
3771	Make nothing in pen	2014-02-09 12:25:08.606138+11	118.209.7.234
3772	Identify the garden into a drawing	2014-02-09 12:25:10.041628+11	118.209.7.234
3773	Speak  cycle and attempt it only once	2014-02-09 12:25:11.711359+11	118.209.7.234
3774	Paint with watercolour debt with the next person you see	2014-02-09 12:25:12.676631+11	118.209.7.234
3775	Pair the newspaper in the form of instructions	2014-02-09 12:25:14.202448+11	118.209.7.234
3776	Type a uniform over 5 minutes	2014-02-09 12:25:17.697651+11	118.209.7.234
3777	Donate meaning in the simplest way possible	2014-02-09 12:25:19.188249+11	118.209.7.234
3778	Paint something damaged efficiently	2014-02-09 12:25:20.918508+11	118.209.7.234
3779	Re-write a positive gesture while talking to people	2014-02-09 12:25:22.088658+11	118.209.7.234
3780	Discover a trusted source once	2014-02-09 12:25:23.457786+11	118.209.7.234
3781	Present a set of instructions privately	2014-02-09 12:25:24.52829+11	118.209.7.234
3782	Visualise a meal and use it as currency	2014-02-09 12:25:26.384695+11	118.209.7.234
3783	Sew the economy as a map	2014-02-09 12:25:30.01862+11	118.209.7.234
3784	Bring a video  quietly	2014-02-09 12:43:30.672311+11	118.209.7.234
3785	Rearrange a new world order in a minute	2014-02-09 12:43:57.804689+11	118.209.7.234
3786	Colour acts of resistance in a text message	2014-02-09 12:44:05.890851+11	118.209.7.234
3787	Whittle a capitalist notion when you should be doing something else	2014-02-09 16:08:12.419444+11	220.239.200.85
3788	Investigate a water source quietly	2014-02-09 16:08:18.032056+11	220.239.200.85
3789	Price productivity slowly	2014-02-09 16:08:20.29122+11	220.239.200.85
3790	Follow a game of cards thoroughly checking	2014-02-09 16:08:22.867932+11	220.239.200.85
3791	Illustrate a program in capitals	2014-02-09 16:08:27.076626+11	220.239.200.85
3792	Create a useful object quietly	2014-02-09 16:08:29.058395+11	220.239.200.85
3793	Continue a new system when you should be doing something else	2014-02-09 16:08:31.712783+11	220.239.200.85
3794	Shape a colony of ants mindfully	2014-02-09 16:08:36.596318+11	220.239.200.85
3795	Form an object from your top drawer  share it with us	2014-02-09 16:08:38.993385+11	220.239.200.85
3796	Form the impossible without assistance	2014-02-09 21:36:17.717761+11	118.209.29.18
3797	In your head, formulate the same word at home	2014-02-09 21:36:23.690461+11	118.209.29.18
3798	Confuse a mug while referring to beehives	2014-02-09 21:36:27.573932+11	118.209.29.18
3799	Observe something with a double meaning with scepticism	2014-02-09 21:36:30.634082+11	118.209.29.18
3800	Throw a new system to a stranger	2014-02-09 21:36:34.663919+11	118.209.29.18
3801	Arrange an orchestra with found objects	2014-02-09 21:36:47.958874+11	118.209.29.18
3802	Model your role within a particular organisational structure without language	2014-02-09 21:36:51.706722+11	118.209.29.18
3803	Subvert offcuts by swapping	2014-02-09 21:36:55.913947+11	118.209.29.18
3804	Source a dictionary diplomatically	2014-02-09 21:37:01.285117+11	118.209.29.18
3805	Take a sample of  waste and connect the dots	2014-02-09 21:37:05.276886+11	118.209.29.18
3806	Sign the chain of evidence with the next person you see	2014-02-09 21:37:08.632097+11	118.209.29.18
3807	List the colour palette of an image with found objects	2014-02-09 21:37:11.43717+11	118.209.29.18
3808	Throw a new slogan by deduction	2014-02-09 21:37:14.942132+11	118.209.29.18
3809	Order data do this 7 times	2014-02-09 21:37:17.318893+11	118.209.29.18
3810	Audit a large circle in a new order	2014-02-09 21:37:22.470733+11	118.209.29.18
3811	Rearrange collective action in 3 minutes	2014-02-09 21:37:27.542589+11	118.209.29.18
3812	Create  sticks in the wrong order	2014-02-09 21:37:31.147395+11	118.209.29.18
3813	Consider  everything simply	2014-02-09 21:37:47.502025+11	118.209.29.18
3855	Collate the institution with the next person you see	2014-02-09 21:46:29.397845+11	118.209.29.18
3868	Replicate anything bureaucratically	2014-02-10 16:03:14.097473+11	120.149.81.212
3869	Confuse the game of tug-of-war during work hours	2014-02-10 16:03:26.455401+11	120.149.81.212
3870	Gather together whistleblowing without showing any proof	2014-02-10 16:03:30.949898+11	120.149.81.212
3871	Identify a direction inside a square	2014-02-10 16:03:39.649928+11	120.149.81.212
3872	Whittle a trail of destruction openly	2014-02-10 16:03:44.607696+11	120.149.81.212
3873	Discover a flier without thinking	2014-02-10 16:03:51.282111+11	120.149.81.212
3874	Swap a nation-state and throw it out the window	2014-02-10 16:03:55.391327+11	120.149.81.212
3875	Create a banner which refers to free time as though your life depends on it	2014-02-10 16:03:58.631894+11	120.149.81.212
3882	Impose something new then examine how it relates to the idea of revolution	2014-02-11 13:14:05.050253+11	203.206.131.184
3883	Reveal silver coins as a map	2014-02-11 13:14:10.828523+11	203.206.131.184
3884	Borrow a secret meeting like you mean it	2014-02-11 13:14:19.011502+11	203.206.131.184
3885	Observe the impossible now	2014-02-11 13:14:22.537654+11	203.206.131.184
3886	Uncover a limited edition in the form of a ransom note	2014-02-11 13:14:24.59545+11	203.206.131.184
3887	Reinvent a demonstration mindfully	2014-02-11 13:14:37.186523+11	203.206.131.184
3888	Carve focussed objects without telling anyone	2014-02-11 13:14:40.368881+11	203.206.131.184
3889	Distrupt  sticks with a catchy title	2014-02-11 13:14:46.761634+11	203.206.131.184
3890	Replace patience bureaucratically	2014-02-11 16:29:41.95274+11	14.201.97.148
3940	Spy on a set of instructions in a graph of rainbow colours	2014-02-11 18:41:30.159974+11	139.216.147.253
3941	Improve everything then examine how it relates to the idea of revolution	2014-02-11 18:41:33.02023+11	139.216.147.253
3942	Manage meaning while walking	2014-02-11 18:41:37.025821+11	139.216.147.253
3943	Rearrange a logo to create a completely new image	2014-02-11 18:41:49.546307+11	139.216.147.253
3944	Reveal silver coins in the size of a book	2014-02-11 18:41:53.321628+11	139.216.147.253
3945	Send nothing of the future	2014-02-11 18:47:36.974331+11	139.216.147.253
3946	Categorise data as a drawing	2014-02-11 18:47:37.503541+11	139.216.147.253
3947	Undo a megaphone and document the findings to share	2014-02-11 18:47:38.135224+11	139.216.147.253
3948	Ruin free time using found materials	2014-02-11 18:47:38.591627+11	139.216.147.253
3949	Share a new object like it will change the world	2014-02-11 18:47:41.73519+11	139.216.147.253
3950	Assemble a nation-state openly	2014-02-11 18:47:42.271497+11	139.216.147.253
3951	Colour in  political rhetoric quickly	2014-02-11 18:47:42.7004+11	139.216.147.253
3952	Colour in  a communal dinner in hardcopy	2014-02-11 18:47:43.163157+11	139.216.147.253
3953	Discover the best times over and over	2014-02-11 18:47:43.843449+11	139.216.147.253
3971	Sign a meeting referencing the idea of dis-organisation	2014-02-11 19:41:52.988645+11	194.126.236.221
3972	Make the game of tug-of-war and collate the results	2014-02-11 19:42:00.622241+11	194.126.236.221
3973	Plan a log on the nature strip	2014-02-11 19:42:04.195538+11	194.126.236.221
3974	Write a letter about a get-together over 30 hours	2014-02-11 19:42:08.1604+11	194.126.236.221
3975	Act out a video  into a drawing	2014-02-11 19:42:12.584641+11	194.126.236.221
3976	Break down into numbers a word you heard today spontaneously	2014-02-11 19:42:14.204816+11	194.126.236.221
3977	Undo a handshake using found materials	2014-02-11 19:42:18.537736+11	194.126.236.221
3978	Undo a useless thing in 13 sentences	2014-02-11 19:42:19.647805+11	194.126.236.221
3979	Define the headlines trustfully	2014-02-11 19:42:24.022531+11	194.126.236.221
3980	Distrupt a nation-state and put two and two together	2014-02-11 19:42:25.293839+11	194.126.236.221
3981	Assemble wood over five minutes	2014-02-11 19:42:27.293988+11	194.126.236.221
3982	Whistle this and that to capture the moment	2014-02-11 19:42:31.093971+11	194.126.236.221
3983	Deliberate a hole at home	2014-02-11 19:42:33.386015+11	194.126.236.221
3984	In your head, formulate a large circle in another language	2014-02-11 19:42:34.762176+11	194.126.236.221
3985	Impose the idea of happiness without showing anyone	2014-02-11 19:42:40.041488+11	194.126.236.221
4084	Plot on a graph a communal dinner spontaneously	2014-02-12 14:14:26.643826+11	139.216.147.253
3814	Tweet D.I.Y to the world	2014-02-09 21:38:07.17135+11	118.209.29.18
3815	Divulge your favourite image online	2014-02-09 21:38:11.016684+11	118.209.29.18
3816	Sew a meeting with the next person you see	2014-02-09 21:38:13.952039+11	118.209.29.18
3817	Learn about an agreement in the right order	2014-02-09 21:38:17.811312+11	118.209.29.18
3818	Deliver the ideal newspaper like you mean it	2014-02-09 21:38:20.455697+11	118.209.29.18
3819	Reveal outside inside an irregular shape	2014-02-09 21:38:29.746185+11	118.209.29.18
3820	Illustrate a communal dinner directly	2014-02-09 21:38:35.176223+11	118.209.29.18
3821	Follow the same thing to the public	2014-02-09 21:38:38.560936+11	118.209.29.18
3822	Store D.I.Y so you are affected	2014-02-09 21:38:41.975808+11	118.209.29.18
3823	Categorise everything green and white efficiently	2014-02-09 21:38:44.521951+11	118.209.29.18
3824	Take a photo of a tray while referring to gardening	2014-02-09 21:38:46.743485+11	118.209.29.18
3825	Connect a list of rules in 6 minutes	2014-02-09 21:38:50.295427+11	118.209.29.18
3826	Act on a garden in a gallery	2014-02-09 21:38:53.808331+11	118.209.29.18
3827	Deliberate a movement like you mean it	2014-02-09 21:38:57.579057+11	118.209.29.18
3828	Reverse engineer what you see inside an irregular shape	2014-02-09 21:39:01.753896+11	118.209.29.18
3829	Form suburbs creatively	2014-02-09 21:39:06.29859+11	118.209.29.18
3830	Throw D.I.Y so it is equal	2014-02-09 21:39:13.429255+11	118.209.29.18
3831	Colour in  a colony of ants in a graph of blue hues	2014-02-09 21:39:16.063408+11	118.209.29.18
3832	Hack what success means to you unfairly	2014-02-09 21:39:22.310871+11	118.209.29.18
3833	Send through a tray quietly	2014-02-09 21:39:31.970446+11	118.209.29.18
3834	Raise the colour palette of an image in the right order	2014-02-09 21:39:35.5463+11	118.209.29.18
3835	Deliver the newspaper like you mean it	2014-02-09 21:39:40.600107+11	118.209.29.18
3836	Plot on a graph the institution using watercolour	2014-02-09 21:39:42.735188+11	118.209.29.18
3837	Explore stone like you mean it	2014-02-09 21:39:49.679771+11	118.209.29.18
3838	Spend time thinking about waste thoroughly checking	2014-02-09 21:39:51.804828+11	118.209.29.18
3839	Reverse the notion of work  to capture the moment	2014-02-09 21:39:54.995027+11	118.209.29.18
3840	Gather together Australian symbolism then examine how it relates to the idea of revolution	2014-02-09 21:39:57.700252+11	118.209.29.18
3841	Break the risks in black and white	2014-02-09 21:40:07.434873+11	118.209.29.18
3842	Photocopy offcuts loudly	2014-02-09 21:40:12.314929+11	118.209.29.18
3843	Act what you see like a robot	2014-02-09 21:40:21.729257+11	118.209.29.18
3844	Manage a piece of paper considering last century	2014-02-09 21:40:31.949614+11	118.209.29.18
3845	Rearrange a set of instructions and collate the results	2014-02-09 21:40:37.529769+11	118.209.29.18
3846	Shape your password considering last century	2014-02-09 21:40:40.216525+11	118.209.29.18
3847	Publicly declare transparency in 9 sentences	2014-02-09 21:40:44.451324+11	118.209.29.18
3848	Demonstrate growth together	2014-02-09 21:40:55.844727+11	118.209.29.18
3849	Follow growth imagining you are in isolation	2014-02-09 21:41:01.769811+11	118.209.29.18
3850	Demonstrate the first 10 things you see quietly	2014-02-09 21:41:05.187946+11	118.209.29.18
3851	Whittle a secret meeting and send it to us via email	2014-02-09 21:41:08.745934+11	118.209.29.18
3852	Write a list of  a video  systematically	2014-02-09 21:41:15.612066+11	118.209.29.18
3856	Audit a video  in 7 minutes	2014-02-09 21:51:41.653154+11	118.209.29.18
3857	Design the garden helplessly	2014-02-09 21:55:01.66707+11	118.209.29.18
3858	Un-mechanise out the front of your house without telling anyone	2014-02-09 21:55:04.262499+11	118.209.29.18
3859	Produce an agreement with others	2014-02-09 21:55:07.788531+11	118.209.29.18
3860	Rearrange raw material to initiate progress	2014-02-09 21:55:10.516898+11	118.209.29.18
3861	Take a sample of  government while referring to gardening	2014-02-09 21:55:13.912621+11	118.209.29.18
3862	Reassess a collection of blue things while standing still	2014-02-09 21:55:21.358332+11	118.209.29.18
3863	Perform political rhetoric to capture the moment	2014-02-09 21:55:24.535908+11	118.209.29.18
3865	Bring a community and explain why	2014-02-10 10:10:45.953093+11	131.170.90.6
3876	Mark free time convincingly	2014-02-10 16:26:08.786092+11	120.149.81.212
3891	Play particular ideas in the simplest way possible	2014-02-11 16:29:41.974266+11	14.201.97.148
3922	Try patience in a closed form	2014-02-11 18:36:14.243835+11	139.216.147.253
3923	Collect seeds using found materials	2014-02-11 18:36:14.5575+11	139.216.147.253
3924	Plan an object from your top drawer like a robot	2014-02-11 18:36:15.012592+11	139.216.147.253
3925	Gather spectacles undercover	2014-02-11 18:36:15.804362+11	139.216.147.253
3926	Pair cycle in small-scale	2014-02-11 18:36:16.233908+11	139.216.147.253
3927	Document a communal dinner differently	2014-02-11 18:36:17.197631+11	139.216.147.253
4010	Wander your thoughts in small-scale	2014-02-12 12:26:19.435242+11	59.167.38.73
3853	Speak about the first 10 things you see using free software	2014-02-09 21:45:21.737462+11	118.209.29.18
3854	Converse a list of rules like a spy	2014-02-09 21:45:23.441623+11	118.209.29.18
3864	Subvert a log in 4 minutes	2014-02-09 22:00:13.783797+11	118.209.29.18
3866	Send through a collection of blue things using statistics	2014-02-10 10:11:04.132578+11	131.170.90.6
3867	Pair your thoughts on your own	2014-02-10 11:10:10.15763+11	203.219.105.78
3955	Turn around a communal dinner as an indulgence	2014-02-11 18:50:39.160933+11	139.216.147.253
3956	Picture a small list over and over	2014-02-11 18:50:39.541211+11	139.216.147.253
3957	Modify what success means to you bureaucratically	2014-02-11 18:50:39.918335+11	139.216.147.253
3958	Re-write the notion of work  into a ball	2014-02-11 18:50:40.822775+11	139.216.147.253
3959	Use  the rules   in your line of sight	2014-02-11 18:50:41.932061+11	139.216.147.253
3960	Arrange focussed objects actively	2014-02-11 18:50:42.259733+11	139.216.147.253
3961	Expand on a get-together as a drawing	2014-02-11 18:50:42.442234+11	139.216.147.253
3962	Investigate an agreement referencing the idea of dis-organisation	2014-02-11 18:50:42.665011+11	139.216.147.253
3963	Describe migration to the world	2014-02-11 18:50:42.824333+11	139.216.147.253
3964	Illustrate management like it will change the world	2014-02-11 18:50:42.999573+11	139.216.147.253
3965	Document a secret meeting in the size of a book	2014-02-11 18:50:43.167275+11	139.216.147.253
3966	Toss around a mug using only political rhetoric	2014-02-11 18:50:43.836785+11	139.216.147.253
3967	Type a slogan so its function is questionable	2014-02-11 18:50:44.020006+11	139.216.147.253
3968	Discuss weeds for yourself	2014-02-11 18:50:44.189569+11	139.216.147.253
3969	Reassess a logo in the wrong order	2014-02-11 18:50:44.442517+11	139.216.147.253
3970	Colour the temperature diplomatically	2014-02-11 18:50:44.763388+11	139.216.147.253
3877	Post time referring to your favourite	2014-02-10 21:07:08.898136+11	120.149.81.212
3878	Replicate a balloon as a map	2014-02-10 21:07:18.893718+11	120.149.81.212
3879	Source a large circle by swapping	2014-02-10 21:07:26.046003+11	120.149.81.212
3880	Hand out two parties over 57 seconds	2014-02-10 21:07:33.140173+11	120.149.81.212
3881	Define everything you see in the next 21 seconds slowly	2014-02-10 21:07:42.650841+11	120.149.81.212
3892	Build social justice in capitals	2014-02-11 18:27:36.143554+11	139.216.147.253
3893	Seek a uniform as though your life depends on it	2014-02-11 18:27:44.689498+11	139.216.147.253
3894	Change the future in hardcopy	2014-02-11 18:27:46.329874+11	139.216.147.253
3895	Research a direction in the right order	2014-02-11 18:27:48.559022+11	139.216.147.253
3896	Mark knowledge inside a square	2014-02-11 18:27:50.089787+11	139.216.147.253
3897	Learn about a flagpole undercover	2014-02-11 18:28:05.326472+11	139.216.147.253
3898	Order something new in 3 ways	2014-02-11 18:28:06.015754+11	139.216.147.253
3899	Investigate anything using free software	2014-02-11 18:28:09.918448+11	139.216.147.253
3900	Fill trees in the wrong order	2014-02-11 18:28:11.272176+11	139.216.147.253
3901	Brainstorm patience directly	2014-02-11 18:28:12.686301+11	139.216.147.253
3902	Wander the garden without showing anyone	2014-02-11 18:28:19.811472+11	139.216.147.253
3903	Speak about with a stranger with a public outcome in mind	2014-02-11 18:28:20.432462+11	139.216.147.253
3904	Photocopy free time and put two and two together	2014-02-11 18:28:35.120493+11	139.216.147.253
3905	Seek this and that in a text message	2014-02-11 18:28:37.129298+11	139.216.147.253
3906	Introduce the rules   quietly	2014-02-11 18:28:38.256103+11	139.216.147.253
3907	Publicly declare spectacles together	2014-02-11 18:28:38.782836+11	139.216.147.253
3908	Distrupt a set of instructions in public	2014-02-11 18:28:39.352663+11	139.216.147.253
3909	Invent a mug now	2014-02-11 18:28:39.848925+11	139.216.147.253
3910	Donate practical objects slowly	2014-02-11 18:28:40.305746+11	139.216.147.253
3911	Undo the institution and document the findings to share	2014-02-11 18:28:40.756402+11	139.216.147.253
3912	Speak  a tray as though your life depends on it	2014-02-11 18:28:41.337281+11	139.216.147.253
3913	Undo a direction in the right order	2014-02-11 18:28:41.780643+11	139.216.147.253
3914	Grow something damaged using found materials	2014-02-11 18:28:42.56348+11	139.216.147.253
3915	Divulge silver coins and use it as currency	2014-02-11 18:28:43.599984+11	139.216.147.253
3916	Collect the future simply	2014-02-11 18:28:43.962822+11	139.216.147.253
3917	Explore a communal dinner and combine	2014-02-11 18:28:44.408435+11	139.216.147.253
3918	Reverse engineer time into a ball	2014-02-11 18:30:28.703544+11	139.216.147.253
3919	Tweet something and explain why	2014-02-11 18:30:29.131787+11	139.216.147.253
3920	Create  sticks confidently	2014-02-11 18:30:29.738264+11	139.216.147.253
3921	Audit a common approach when you should be doing something else	2014-02-11 18:30:30.433532+11	139.216.147.253
3954	Define the economy arbritrarily	2014-02-11 18:48:00.232941+11	139.216.147.253
3987	Send through exploitation in public space	2014-02-11 20:50:28.073463+11	213.39.33.67
3988	Order a powerpoint presentation being completely dishonest	2014-02-11 20:50:38.868717+11	213.39.33.67
3989	Act on a 8-word manifesto in the colours of your flag	2014-02-11 20:50:45.257037+11	213.39.33.67
3990	In your head, formulate the moon in a variety of ways	2014-02-11 20:50:56.280668+11	213.39.33.67
3991	Rewrite everything so it reflects your values	2014-02-11 20:51:05.368655+11	213.39.33.67
3992	Grow the colour palette of an image differently	2014-02-11 20:51:13.792142+11	213.39.33.67
3993	Group multiple images of a set of instructions convincingly	2014-02-11 20:51:21.257569+11	213.39.33.67
3994	Seek a direction quickly	2014-02-11 20:51:32.848349+11	213.39.33.67
3995	Pre-record a new object bureaucratically	2014-02-11 20:51:38.335371+11	213.39.33.67
3996	Model the headlines with a pencil	2014-02-11 20:51:47.504073+11	213.39.33.67
3997	Undo information so it is equal	2014-02-11 20:51:53.662972+11	213.39.33.67
3998	Sing anything for yourself	2014-02-11 20:51:59.167243+11	213.39.33.67
3999	Assemble the crowd in public	2014-02-11 20:52:04.734745+11	213.39.33.67
4000	Deliver the same word using statistics	2014-02-11 20:52:10.744511+11	213.39.33.67
4001	Represent the rules   and send it to us via email	2014-02-11 20:52:18.054915+11	213.39.33.67
4002	Consider  acts of resistance with other people	2014-02-11 20:52:28.344802+11	213.39.33.67
4003	Raise random tasks as if functional	2014-02-11 20:52:34.662792+11	213.39.33.67
4004	Read money in black and white	2014-02-11 20:52:43.049597+11	213.39.33.67
4005	Photograph meaning differently	2014-02-11 20:52:46.544904+11	213.39.33.67
4009	Order an impracticle object in capitals	2014-02-12 12:16:57.174774+11	139.216.147.253
3928	Pre-record the future and record what you find	2014-02-11 18:38:31.866846+11	139.216.147.253
3929	Mime space in the wrong order	2014-02-11 18:38:32.554473+11	139.216.147.253
3930	Plan a positive gesture at home	2014-02-11 18:38:33.063087+11	139.216.147.253
3931	Say your job unfairly	2014-02-11 18:38:34.385517+11	139.216.147.253
3932	Carve the same thing in the colours of your flag	2014-02-11 18:38:38.188067+11	139.216.147.253
3933	Make a colour palette of the future by planning the next move	2014-02-11 18:38:39.00504+11	139.216.147.253
3934	Break down your favourite image being completely dishonest	2014-02-11 18:38:39.59663+11	139.216.147.253
3935	Form a garden side by side	2014-02-11 18:38:40.162113+11	139.216.147.253
3936	Redesign an agreement in another language	2014-02-11 18:38:40.818309+11	139.216.147.253
3937	Send through an agreement undercover	2014-02-11 18:38:41.479758+11	139.216.147.253
3938	Group together an image-editing program online	2014-02-11 18:38:41.992135+11	139.216.147.253
3939	Reverse engineer salvaged material in the wrong order	2014-02-11 18:39:22.301828+11	139.216.147.253
3986	Wear out the front of your house differently	2014-02-11 20:23:04.950038+11	213.39.33.67
4006	Undertake a uniform helplessly	2014-02-12 02:49:10.17096+11	66.249.64.40
4007	Undertake a uniform helplessly	2014-02-12 03:12:28.122013+11	66.249.64.3
4008	Explore a hole in the right order	2014-02-12 11:35:30.635769+11	118.209.29.18
4011	Swap everything during work hours	2014-02-12 13:03:20.415821+11	139.216.147.253
4012	Play something without assistance	2014-02-12 13:03:21.777818+11	139.216.147.253
4013	Decipher a chair and document the findings to share	2014-02-12 13:03:22.68924+11	139.216.147.253
4014	Take a sample of  suburbs in your line of sight	2014-02-12 13:03:23.832125+11	139.216.147.253
4015	Collate a positive gesture then examine how it relates to the idea of revolution	2014-02-12 13:03:24.194666+11	139.216.147.253
4016	Create the rules of tennis until you are happy with the end result	2014-02-12 13:03:24.370604+11	139.216.147.253
4017	Store waste temporarily	2014-02-12 13:03:24.521696+11	139.216.147.253
4018	Explore branches as a map	2014-02-12 13:03:24.655797+11	139.216.147.253
4019	Borrow revolution using watercolour	2014-02-12 13:03:24.791132+11	139.216.147.253
4020	Scratch something small  by swapping	2014-02-12 13:03:25.950769+11	139.216.147.253
4021	Rewrite your job in the form of instructions	2014-02-12 13:03:26.274096+11	139.216.147.253
4022	Create a safe in gold	2014-02-12 13:03:26.573958+11	139.216.147.253
4023	Pre-record your job using a recording device	2014-02-12 14:12:04.692891+11	139.216.147.253
4024	Extract energy   unfairly	2014-02-12 14:12:05.328078+11	139.216.147.253
4025	Collate anything in the colours of your flag	2014-02-12 14:12:06.831203+11	139.216.147.253
4026	Teach time while standing still	2014-02-12 14:12:08.041934+11	139.216.147.253
4027	Extract the headlines freely	2014-02-12 14:12:10.046586+11	139.216.147.253
4028	Illustrate productivity as if functional	2014-02-12 14:12:10.878579+11	139.216.147.253
4029	Move an image-editing program over and over	2014-02-12 14:12:11.638431+11	139.216.147.253
4030	Play something one way	2014-02-12 14:12:12.96421+11	139.216.147.253
4031	Redesign an organisation  using the name of someone great	2014-02-12 14:12:14.115086+11	139.216.147.253
4032	Un-mechanise a safe with tape	2014-02-12 14:12:14.875451+11	139.216.147.253
4033	Build a slogan as a map	2014-02-12 14:12:15.939335+11	139.216.147.253
4034	Send what failure means to you like a robot	2014-02-12 14:12:17.523242+11	139.216.147.253
4035	Make up with a stranger in 7 ways	2014-02-12 14:12:20.55408+11	139.216.147.253
4036	Suggest D.I.Y in a text message	2014-02-12 14:12:22.074832+11	139.216.147.253
4037	Observe two parties with scepticism	2014-02-12 14:12:25.304556+11	139.216.147.253
4038	Scrunch cycle over 57 seconds	2014-02-12 14:12:26.300358+11	139.216.147.253
4039	Distribute a handshake over five minutes	2014-02-12 14:12:28.931709+11	139.216.147.253
4040	Publicly declare a game of cards in the right order	2014-02-12 14:12:29.254358+11	139.216.147.253
4041	Scratch a colony of ants in a text message	2014-02-12 14:12:31.023865+11	139.216.147.253
4042	Trust images of other people  unfairly	2014-02-12 14:12:32.559797+11	139.216.147.253
4043	Wander wood in the usual way	2014-02-12 14:12:34.829039+11	139.216.147.253
4044	Colour a gathering to preexisting conditions	2014-02-12 14:12:36.584203+11	139.216.147.253
4045	Shape the best times and attempt to extract a meaning	2014-02-12 14:12:38.005071+11	139.216.147.253
4046	Observe a number you consider to be quite big inside a square	2014-02-12 14:12:39.937129+11	139.216.147.253
4047	Take a photo of two parties diplomatically	2014-02-12 14:12:42.469274+11	139.216.147.253
4048	Sculpt a dictionary with tape	2014-02-12 14:12:47.494496+11	139.216.147.253
4049	Create a word you heard today inside a square	2014-02-12 14:12:50.542834+11	139.216.147.253
4050	Write about two people by deduction	2014-02-12 14:12:55.274005+11	139.216.147.253
4051	Gather together the institution using an old technique	2014-02-12 14:12:56.701537+11	139.216.147.253
4052	Group together two parties trustfully	2014-02-12 14:12:58.509752+11	139.216.147.253
4053	Impose a community side by side	2014-02-12 14:12:59.291795+11	139.216.147.253
4054	Take a sample of  5 synonyms without thinking too much	2014-02-12 14:13:00.503724+11	139.216.147.253
4055	Tap into a communal dinner to form a link to the past	2014-02-12 14:13:01.812171+11	139.216.147.253
4056	List currency on the nature strip	2014-02-12 14:13:02.88151+11	139.216.147.253
4057	Invent the crowd as a drawing	2014-02-12 14:13:04.436252+11	139.216.147.253
4058	Shape your favourite image in monotone	2014-02-12 14:13:05.385355+11	139.216.147.253
4059	Write focussed objects as a drawing	2014-02-12 14:13:06.865322+11	139.216.147.253
4060	Split the future in a variety of ways	2014-02-12 14:13:08.183485+11	139.216.147.253
4061	Bring about something intricate while talking to people	2014-02-12 14:13:10.181638+11	139.216.147.253
4062	Deliver raw material in a public place	2014-02-12 14:13:12.780695+11	139.216.147.253
4063	Tap into stationery in hardcopy	2014-02-12 14:13:15.985279+11	139.216.147.253
4064	Grow power while referring to gardening	2014-02-12 14:13:17.451994+11	139.216.147.253
4065	Examine the same word loudly	2014-02-12 14:13:19.020234+11	139.216.147.253
4066	Move then photograph as a list	2014-02-12 14:13:20.156712+11	139.216.147.253
4067	Reassess an organisation  using free software	2014-02-12 14:13:22.708355+11	139.216.147.253
4068	Expand on an impracticle object without language	2014-02-12 14:13:23.921258+11	139.216.147.253
4069	Visualise an alternative while talking to people	2014-02-12 14:13:25.526468+11	139.216.147.253
4070	Make a colour palette of beans and document the findings to share	2014-02-12 14:13:29.265086+11	139.216.147.253
4071	Mark future technologies diplomatically	2014-02-12 14:13:29.899888+11	139.216.147.253
4072	Replicate something damaged thoughtfully	2014-02-12 14:13:31.173789+11	139.216.147.253
4073	Photograph your favourite image with tape	2014-02-12 14:13:33.348633+11	139.216.147.253
4074	Send a newspaper clipping of an impracticle object then cut that in half	2014-02-12 14:13:39.154698+11	139.216.147.253
4075	Abstract a sculpture in black and white	2014-02-12 14:13:43.499347+11	139.216.147.253
4076	Draw a useless thing then cut that in half	2014-02-12 14:13:44.922013+11	139.216.147.253
4077	Fill the moon to capture the moment	2014-02-12 14:13:57.574203+11	139.216.147.253
4078	Paint with watercolour political rhetoric and record what you find	2014-02-12 14:14:00.726118+11	139.216.147.253
4079	Move change mindfully	2014-02-12 14:14:04.820048+11	139.216.147.253
4080	Create a piece of paper to closely notice the details	2014-02-12 14:14:06.274837+11	139.216.147.253
4081	Find an example of beans over and over	2014-02-12 14:14:11.604621+11	139.216.147.253
4082	Store the rules   to initiate progress	2014-02-12 14:14:16.842381+11	139.216.147.253
4083	Sew seeds actively	2014-02-12 14:14:19.496194+11	139.216.147.253
4085	Bring about a nation-state by planning the next move	2014-02-12 14:14:26.685822+11	139.216.147.253
4086	Make a colour palette of everything you see in the next 13 seconds and combine	2014-02-12 14:14:32.532294+11	139.216.147.253
4087	Re-define D.I.Y with others	2014-02-12 14:14:37.567425+11	139.216.147.253
4088	Introduce cycle so its function is questionable	2014-02-12 14:14:38.59929+11	139.216.147.253
4089	Group together the notion of work  idley	2014-02-12 14:14:39.701618+11	139.216.147.253
4090	Systematise D.I.Y in monotone	2014-02-12 14:14:41.058451+11	139.216.147.253
4091	Discover raw material  share it with us	2014-02-12 14:14:42.177582+11	139.216.147.253
4092	Create seeds seriously	2014-02-12 14:14:44.344862+11	139.216.147.253
4093	Re-write the world being completely dishonest	2014-02-12 14:14:45.306765+11	139.216.147.253
4094	Raise something one way	2014-02-12 14:14:54.549362+11	139.216.147.253
4095	Manage a border in a graph of rainbow colours	2014-02-12 14:15:01.538626+11	139.216.147.253
4096	Deliberate real progress loudly	2014-02-12 14:15:02.863095+11	139.216.147.253
4097	Paint with watercolour data so you are affected	2014-02-12 14:15:05.766464+11	139.216.147.253
4098	Cut and paste a trusted source while referring to gardening	2014-02-12 14:15:08.584739+11	139.216.147.253
4099	Toss stone thoughtfully	2014-02-12 14:15:12.05864+11	139.216.147.253
4100	Act an orchestra using free software	2014-02-12 14:15:23.198737+11	139.216.147.253
4101	Un-mechanise political rhetoric like a robot	2014-02-12 14:15:24.472508+11	139.216.147.253
4102	Ruin a word you heard today with the next person you see	2014-02-12 14:15:25.461621+11	139.216.147.253
4103	Plot on a graph something new addictively	2014-02-12 14:15:28.590413+11	139.216.147.253
4104	Act on a log mindfully	2014-02-12 14:15:31.877478+11	139.216.147.253
4105	Reverse anything now	2014-02-12 14:15:33.676157+11	139.216.147.253
4106	Cover everything you see in the next 10 seconds without using words	2014-02-12 14:15:36.601823+11	139.216.147.253
4107	Consider  a set of instructions to create a completely new image	2014-02-12 14:15:43.508993+11	139.216.147.253
4108	Discover how you might begin to withdraw your dependency on technology in capitals	2014-02-12 14:15:46.404554+11	139.216.147.253
4109	Swap outside while referring to gardening	2014-02-12 14:15:49.849385+11	139.216.147.253
4110	Paint with watercolour a trail of destruction through a process of elimination	2014-02-12 14:15:51.127654+11	139.216.147.253
4111	Wear energy   loudly	2014-02-12 14:15:52.75269+11	139.216.147.253
4112	Distribute your camera with tape	2014-02-12 14:15:54.895355+11	139.216.147.253
4113	Split a boat as a pie chart	2014-02-12 14:15:58.137219+11	139.216.147.253
4114	Change a useless thing like it will change the world	2014-02-12 14:16:01.505581+11	139.216.147.253
4115	Categorise then photograph with found objects	2014-02-12 14:16:13.058047+11	139.216.147.253
4116	Toss around data with found objects	2014-02-12 14:16:15.418195+11	139.216.147.253
4117	Document a program in the wrong order	2014-02-12 14:16:16.696801+11	139.216.147.253
4118	Write about a mug online	2014-02-12 14:16:21.544755+11	139.216.147.253
4119	Sew productivity and use it as currency	2014-02-12 14:16:35.332053+11	139.216.147.253
4120	Connect a video  by planning the next move	2014-02-12 14:16:39.503243+11	139.216.147.253
4121	Examine a circle simply	2014-02-12 14:16:41.975691+11	139.216.147.253
4122	Say a word you heard today in pen	2014-02-12 14:16:45.408738+11	139.216.147.253
4123	Say an unusual scene using only political rhetoric	2014-02-12 14:17:05.781465+11	139.216.147.253
4124	Define a small list without thinking	2014-02-12 14:17:06.813033+11	139.216.147.253
4125	Teach the rules of tennis with no preconceived idea	2014-02-12 14:17:08.066086+11	139.216.147.253
4126	Send the crowd in monotone	2014-02-12 14:17:09.699441+11	139.216.147.253
4127	Undo a colony of ants with a catchy title	2014-02-12 14:17:16.475842+11	139.216.147.253
4128	Say weeds to the world	2014-02-12 14:17:20.555113+11	139.216.147.253
4129	Draw the impossible in public space	2014-02-12 14:17:22.157768+11	139.216.147.253
4130	Take a photo of Australian symbolism using blu-tak	2014-02-12 14:17:24.965754+11	139.216.147.253
4131	Subvert the rules   being completely dishonest	2014-02-12 14:17:26.081087+11	139.216.147.253
4132	Categorise data over 6 minutes	2014-02-12 14:17:30.641591+11	139.216.147.253
4133	Read the ideal newspaper while walking	2014-02-12 14:17:34.664954+11	139.216.147.253
4134	Re-define management so it is equal	2014-02-12 14:17:36.12232+11	139.216.147.253
4135	Create a banner which refers to something until you are happy with the end result	2014-02-12 14:17:38.21066+11	139.216.147.253
4136	Split a user-guide into a drawing	2014-02-12 14:17:40.52603+11	139.216.147.253
4137	Act out what you see in gold	2014-02-12 14:17:50.190494+11	139.216.147.253
4138	Walk  everything you see in the next 14 seconds diplomatically	2014-02-12 14:17:52.634007+11	139.216.147.253
4139	Investigate social justice in the most innovative way you can think of	2014-02-12 14:17:54.438146+11	139.216.147.253
4140	Invent cycle confidently	2014-02-12 14:17:58.848156+11	139.216.147.253
4141	Store a colony of ants to preexisting conditions	2014-02-12 14:17:59.946218+11	139.216.147.253
4142	Send through a number you consider to be quite big online	2014-02-12 14:18:02.05034+11	139.216.147.253
4143	Examine acts of resistance using blu-tak	2014-02-12 14:18:51.751082+11	139.216.147.253
4144	Source your password and speak the result in monotone	2014-02-12 14:18:56.527106+11	139.216.147.253
4145	Wear D.I.Y privately	2014-02-12 14:18:59.387082+11	139.216.147.253
4146	Collage a new world order while referring to gardening	2014-02-12 14:19:00.856031+11	139.216.147.253
4147	Teach the political to the world	2014-02-12 14:19:02.81281+11	139.216.147.253
4148	Colour branches using blu-tak	2014-02-12 14:19:05.28132+11	139.216.147.253
4149	Redesign a communal dinner to initiate progress	2014-02-12 14:19:05.942055+11	139.216.147.253
4150	Subvert focussed objects while standing still	2014-02-12 14:20:12.140772+11	139.216.147.253
4151	Visualise silver coins idley	2014-02-12 14:20:13.935808+11	139.216.147.253
4152	Take a sample of  a limited edition actively	2014-02-12 14:20:18.447136+11	139.216.147.253
4153	Shape a useless thing in a variety of ways	2014-02-12 14:20:19.943493+11	139.216.147.253
4154	Replicate patience in another language	2014-02-12 14:20:24.136857+11	139.216.147.253
4155	Maintain energy   using a recording device	2014-02-12 14:20:34.4037+11	139.216.147.253
4156	Hand out money in another language	2014-02-12 14:20:36.511135+11	139.216.147.253
4157	Toss around beans in public space	2014-02-12 14:20:37.931798+11	139.216.147.253
4158	Spend time thinking about a log into a drawing	2014-02-12 14:21:15.387492+11	139.216.147.253
4159	Seek growth using a recording device	2014-02-12 14:21:19.520891+11	139.216.147.253
4160	Act out D.I.Y being completely dishonest	2014-02-12 14:21:21.060099+11	139.216.147.253
4161	Investigate stone and document the findings to share	2014-02-12 14:21:24.744099+11	139.216.147.253
4162	Consider  an organisation  and speak the result in monotone	2014-02-12 14:21:26.152516+11	139.216.147.253
4163	Act weeds in a public place	2014-02-12 14:21:30.444336+11	139.216.147.253
4164	Scrunch then photograph with no preconceived idea	2014-02-12 14:21:32.86694+11	139.216.147.253
4165	Test meaning so it reflects your values	2014-02-12 14:21:34.87405+11	139.216.147.253
4166	Make an alternative so that we will be really surprised	2014-02-12 14:21:37.685903+11	139.216.147.253
4167	Research a video  then examine how it relates to the idea of revolution	2014-02-12 14:21:40.639729+11	139.216.147.253
4168	Subvert the colony addictively	2014-02-12 14:21:45.255657+11	139.216.147.253
4169	Improve a demonstration do this 5 times	2014-02-12 14:21:47.470115+11	139.216.147.253
4170	Act tools do this 5 times	2014-02-12 14:21:49.188585+11	139.216.147.253
4171	Learn about a new object idley	2014-02-12 14:21:54.097331+11	139.216.147.253
4172	Mark your job on the nature strip	2014-02-12 14:21:56.738311+11	139.216.147.253
4173	Un-mechanise a new system mindfully	2014-02-12 14:21:59.966651+11	139.216.147.253
4174	Swap an impracticle object together	2014-02-12 14:22:02.249161+11	139.216.147.253
4175	Find practical objects into a ball	2014-02-12 14:22:03.954099+11	139.216.147.253
4176	Illustrate future technologies in a public place	2014-02-12 14:22:16.778035+11	139.216.147.253
4177	Write about the temperature on the wall	2014-02-12 14:22:19.444058+11	139.216.147.253
4178	Type good and bad quickly	2014-02-12 14:24:07.31991+11	139.216.147.253
4179	Illustrate whistleblowing to create a completely new image	2014-02-12 14:42:29.999273+11	139.216.147.253
4180	Subvert a video  by deduction	2014-02-12 14:42:30.259361+11	139.216.147.253
4181	Create a banner which refers to growth freely	2014-02-12 14:42:32.587473+11	139.216.147.253
4182	Suggest silver coins by swapping	2014-02-12 14:42:34.437484+11	139.216.147.253
4183	Bring D.I.Y repeatedly	2014-02-12 14:42:35.660554+11	139.216.147.253
4184	Bring a mug inside a square	2014-02-12 14:42:40.999626+11	139.216.147.253
4185	Sign space and document the findings to share	2014-02-12 14:42:42.241368+11	139.216.147.253
4186	Use  how your mobile phone is used on any given day without thinking too much	2014-02-12 14:42:45.026117+11	139.216.147.253
4187	Hack 8 images in small-scale	2014-02-12 14:42:47.810546+11	139.216.147.253
4188	List real progress in the most innovative way you can think of	2014-02-12 15:34:13.584242+11	139.216.147.253
4189	Plant what you see referencing the idea of dis-organisation	2014-02-12 15:34:26.816828+11	139.216.147.253
4190	Draw a demonstration with found objects	2014-02-12 15:48:19.481175+11	139.216.147.253
4191	Find an example of an atlas unfairly	2014-02-12 15:48:20.748213+11	139.216.147.253
4192	Make up 4 synonyms without touching	2014-02-12 15:48:22.36013+11	139.216.147.253
4193	Illustrate what success means to you arbritrarily	2014-02-12 15:48:23.684043+11	139.216.147.253
4194	Undo your password in a gallery	2014-02-12 15:48:25.12078+11	139.216.147.253
4195	Play everything using only political rhetoric	2014-02-12 15:48:29.827853+11	139.216.147.253
4196	Invent your love of a particular person quietly	2014-02-12 15:48:31.268862+11	139.216.147.253
4197	Converse exploitation to form a link to the past	2014-02-12 15:48:32.733512+11	139.216.147.253
4198	Tap into good and bad creatively	2014-02-12 15:48:34.578897+11	139.216.147.253
4199	Impose transparency in capitals	2014-02-12 15:48:36.053991+11	139.216.147.253
4200	Arrange the impossible with a pencil	2014-02-12 15:48:37.502039+11	139.216.147.253
4201	Donate the notion of work  intuitively	2014-02-12 15:48:40.957775+11	139.216.147.253
4202	Build an agreement creatively	2014-02-12 15:48:42.525313+11	139.216.147.253
4203	Hack something new intuitively	2014-02-12 15:48:46.58662+11	139.216.147.253
4204	Raise a sculpture as though your life depends on it	2014-02-12 15:48:47.583386+11	139.216.147.253
4205	Collage the fourth world while referring to beehives	2014-02-12 15:48:48.871377+11	139.216.147.253
4206	Post a chair without touching	2014-02-12 15:48:50.643425+11	139.216.147.253
4207	Sing a new system loudly	2014-02-12 15:48:56.263569+11	139.216.147.253
4208	Visualise how you might begin to withdraw your dependency on technology like a spy	2014-02-12 15:49:04.774655+11	139.216.147.253
4209	Move growth in public	2014-02-12 15:49:07.821894+11	139.216.147.253
4210	Multiply the future into a ball	2014-02-12 15:49:10.625331+11	139.216.147.253
4211	Produce future technologies in secret	2014-02-12 15:49:12.783566+11	139.216.147.253
4212	Pair a secret meeting seriously	2014-02-12 15:49:14.259239+11	139.216.147.253
4213	Reassess real progress in the form of a ransom note	2014-02-12 15:49:16.077015+11	139.216.147.253
4214	Exhaust average openly	2014-02-12 15:49:17.48524+11	139.216.147.253
4215	Collate something intricate confidently	2014-02-12 15:49:18.53963+11	139.216.147.253
4216	Wander the same word over five minutes	2014-02-12 15:49:20.870934+11	139.216.147.253
4217	Record something damaged in the gallery	2014-02-12 15:49:25.546155+11	139.216.147.253
4218	Ruin then photograph like a robot	2014-02-12 15:49:30.32007+11	139.216.147.253
4219	Group together a chair in the simplest way possible	2014-02-12 15:49:35.331061+11	139.216.147.253
4220	Break down into numbers space in a graph of blue hues	2014-02-12 15:49:37.939875+11	139.216.147.253
4221	Demonstrate practical objects then examine how it relates to the idea of revolution	2014-02-12 15:49:40.702144+11	139.216.147.253
4222	Publicly declare a video  in a variety of ways	2014-02-12 15:49:44.031631+11	139.216.147.253
4223	Find an example of a circle unintuitively	2014-02-12 15:49:45.337144+11	139.216.147.253
4224	Collage a flier in a new order	2014-02-12 15:49:52.408335+11	139.216.147.253
4225	Calculate 7 steps like it will change the world	2014-02-12 15:49:54.181196+11	139.216.147.253
4229	Destroy an impracticle object and pick your favourite	2014-02-12 15:50:41.077903+11	139.216.147.253
4233	Spy on a uniform differently	2014-02-12 15:51:19.762724+11	139.216.147.253
4234	Move a log and connect the dots	2014-02-12 15:51:22.0605+11	139.216.147.253
4237	Audit migration without thinking too much	2014-02-12 15:51:40.565479+11	139.216.147.253
4238	Create a banner which refers to the future without thinking too much	2014-02-12 15:51:44.102587+11	139.216.147.253
4239	Manage one minute unfairly	2014-02-12 15:51:47.144276+11	139.216.147.253
4240	Undertake debt quickly	2014-02-12 15:51:49.186165+11	139.216.147.253
4241	Email everything green and white without showing any proof	2014-02-12 15:51:50.558639+11	139.216.147.253
4242	Walk  a useless thing in 8 sentences	2014-02-12 15:51:54.915625+11	139.216.147.253
4243	Connect seeds loudly	2014-02-12 15:51:56.33948+11	139.216.147.253
4226	Trust a commodity mindfully	2014-02-12 15:50:18.408214+11	139.216.147.253
4227	Move something round in the wrong order	2014-02-12 15:50:19.738383+11	139.216.147.253
4228	Detail your location on a piece of paper	2014-02-12 15:50:21.286357+11	139.216.147.253
4230	Produce Australian symbolism idley	2014-02-12 15:51:08.718751+11	139.216.147.253
4231	Carve a commodity on the wall	2014-02-12 15:51:09.869+11	139.216.147.253
4232	Toss a useful object while standing still	2014-02-12 15:51:11.449734+11	139.216.147.253
4235	Examine with a stranger by planning the next move	2014-02-12 15:51:31.822875+11	139.216.147.253
4236	Store images of other people  and send it to us via email	2014-02-12 15:51:33.720814+11	139.216.147.253
4295	Model time with others	2014-02-12 16:35:17.697534+11	139.216.147.253
4308	Calculate your camera online	2014-02-12 17:06:57.855264+11	139.216.147.253
4309	Make a colour palette of transparency in a graph of rainbow colours	2014-02-12 17:06:59.186436+11	139.216.147.253
4351	Re-write a flier in a variety of ways	2014-02-12 18:41:38.409224+11	139.216.147.253
4352	Build the colony without touching	2014-02-12 18:41:47.540784+11	139.216.147.253
4353	Demonstrate the truth without using words	2014-02-12 18:41:48.245942+11	139.216.147.253
4354	Hack something with a double meaning at home	2014-02-12 18:41:49.506039+11	139.216.147.253
4355	Take a photo of stationery during work hours	2014-02-12 18:41:54.877306+11	139.216.147.253
4244	Multiply trees in gold	2014-02-12 15:51:59.809902+11	139.216.147.253
4245	Seek how your mobile phone is used on any given day with a catchy title	2014-02-12 16:03:14.207859+11	139.216.147.253
4246	Introduce whistleblowing as though your life depends on it	2014-02-12 16:03:42.879148+11	139.216.147.253
4247	Move government without using words	2014-02-12 16:03:46.903431+11	139.216.147.253
4266	Deliberate the notion of work  and collate the results	2014-02-12 16:04:59.507348+11	139.216.147.253
4267	Tweet a movement so its function is questionable	2014-02-12 16:05:01.964909+11	139.216.147.253
4248	Model the truth seriously	2014-02-12 16:04:11.345435+11	139.216.147.253
4249	Gather a tray in photoshop	2014-02-12 16:04:12.785392+11	139.216.147.253
4250	Extract  sticks as a pie chart	2014-02-12 16:04:14.618301+11	139.216.147.253
4251	Distribute money together	2014-02-12 16:04:17.305732+11	139.216.147.253
4252	Expand on something imagining you are in isolation	2014-02-12 16:04:19.665402+11	139.216.147.253
4253	Picture how you are implicated in systems being completely dishonest	2014-02-12 16:04:23.742425+11	139.216.147.253
4254	Colour a meeting privately	2014-02-12 16:04:25.533713+11	139.216.147.253
4255	Abstract everything green and white in a graph of blue hues	2014-02-12 16:04:27.755498+11	139.216.147.253
4256	Perform the notion of work  as a drawing	2014-02-12 16:04:31.441388+11	139.216.147.253
4257	Un-mechanise currency with a public outcome in mind	2014-02-12 16:04:33.980104+11	139.216.147.253
4258	Photograph a demonstration once	2014-02-12 16:04:36.023583+11	139.216.147.253
4259	Pre-record silver coins using the name of someone great	2014-02-12 16:04:37.637299+11	139.216.147.253
4260	Hand out free time quietly	2014-02-12 16:04:41.738173+11	139.216.147.253
4261	Give a secret handshake in gold	2014-02-12 16:04:45.929658+11	139.216.147.253
4262	Research how you might begin to withdraw your dependency on technology online	2014-02-12 16:04:49.124779+11	139.216.147.253
4263	Research something with a double meaning and question your findings	2014-02-12 16:04:50.032462+11	139.216.147.253
4264	Deliberate currency and send it to us via email	2014-02-12 16:04:52.074404+11	139.216.147.253
4265	Source tools and collate the results	2014-02-12 16:04:53.369933+11	139.216.147.253
4268	Write the rules of tennis referring to your favourite	2014-02-12 16:05:09.59933+11	139.216.147.253
4269	Donate what success means to you while walking	2014-02-12 16:05:13.570548+11	139.216.147.253
4271	Identify 4 synonyms to the world	2014-02-12 16:19:38.322586+11	139.216.147.253
4270	Toss around collective action thoughtfully	2014-02-12 16:18:47.275803+11	139.216.147.253
4272	Paint an organisation  to initiate progress	2014-02-12 16:19:40.972287+11	139.216.147.253
4274	Collate an agreement and pick your favourite	2014-02-12 16:28:27.443773+11	139.216.147.253
4367	Sing a gathering in 3 minutes	2014-02-12 18:52:17.361198+11	139.216.147.253
4368	Write an orchestra temporarily	2014-02-12 18:52:19.706043+11	139.216.147.253
4369	Learn about the rules of tennis in the colours of your flag	2014-02-12 18:52:21.79485+11	139.216.147.253
4370	Sing energy   without using words	2014-02-12 18:52:24.303904+11	139.216.147.253
4371	Use  a user-guide in public	2014-02-12 18:52:27.009859+11	139.216.147.253
4372	Dis-organise a program now	2014-02-12 18:52:43.83578+11	139.216.147.253
4373	Replicate cycle to the world	2014-02-12 18:52:45.5345+11	139.216.147.253
4374	Take a photo of an atlas in public	2014-02-12 18:52:47.211734+11	139.216.147.253
4381	Find something new with found objects	2014-02-12 21:19:56.04467+11	118.209.121.200
4382	Fill a boat like it will change the world	2014-02-12 21:19:58.331564+11	118.209.121.200
4383	Collate a get-together addictively	2014-02-12 21:20:00.480771+11	118.209.121.200
4384	Take a sample of  a new system online	2014-02-12 21:20:04.652264+11	118.209.121.200
4385	Suggest the rules   to preexisting conditions	2014-02-12 21:20:06.169471+11	118.209.121.200
4386	Turn around how you might begin to withdraw your dependency on technology in public space	2014-02-12 21:20:07.519273+11	118.209.121.200
4387	Demonstrate the moon on the nature strip	2014-02-12 21:20:09.205439+11	118.209.121.200
4388	Fill something small  addictively	2014-02-12 21:20:10.744974+11	118.209.121.200
4389	Uncover the idea of happiness in black and white	2014-02-12 21:20:15.880951+11	118.209.121.200
4390	Multiply 7 steps while referring to beehives	2014-02-12 21:20:18.1134+11	118.209.121.200
4391	Act seeds as though your life depends on it	2014-02-12 21:20:19.698384+11	118.209.121.200
4392	Rewrite bureaucracy thinking about form and function	2014-02-12 21:20:21.297606+11	118.209.121.200
4393	Paint the ideal newspaper repeatedly	2014-02-12 21:20:23.247618+11	118.209.121.200
4394	Expand on the city on the wall	2014-02-12 21:20:25.875586+11	118.209.121.200
4395	Describe an image-editing program as if functional	2014-02-12 21:20:27.311329+11	118.209.121.200
4396	Pair a round table and put two and two together	2014-02-12 21:20:31.248991+11	118.209.121.200
4397	Expand on branches one way	2014-02-12 21:20:32.614636+11	118.209.121.200
4398	Subvert two parties so that we will be really surprised	2014-02-12 21:20:33.906504+11	118.209.121.200
4399	Introduce a demonstration on your own	2014-02-12 21:20:35.837236+11	118.209.121.200
4400	Send through the truth with others	2014-02-12 21:20:40.60242+11	118.209.121.200
4401	Break down a flier in the usual way	2014-02-12 21:20:44.806643+11	118.209.121.200
4402	Fill positive images of collective action idley	2014-02-12 21:20:48.167621+11	118.209.121.200
4403	Seek change with others	2014-02-12 21:20:50.148769+11	118.209.121.200
4404	Perform productivity while referring to gardening	2014-02-12 21:20:52.955529+11	118.209.121.200
4405	Plot    a handshake quietly	2014-02-12 21:20:55.009948+11	118.209.121.200
4273	Break a trusted source with the next person you see	2014-02-12 16:28:21.481452+11	139.216.147.253
4277	Scrunch what is within reach and use it as currency	2014-02-12 16:29:30.537374+11	139.216.147.253
4275	Perform a mug on the wall	2014-02-12 16:28:55.436108+11	139.216.147.253
4276	Make a colour palette of the ideal newspaper in a graph of rainbow colours	2014-02-12 16:29:00.709587+11	139.216.147.253
4278	Borrow a small list to the world	2014-02-12 16:30:09.247094+11	139.216.147.253
4279	Change something so you are affected	2014-02-12 16:30:30.427269+11	139.216.147.253
4280	Write about a new system in camouflage	2014-02-12 16:30:31.325291+11	139.216.147.253
4281	Group together food supply chains to a stranger	2014-02-12 16:30:32.097474+11	139.216.147.253
4282	Mime what is within reach during business hours	2014-02-12 16:30:33.15138+11	139.216.147.253
4283	Trust real progress differently	2014-02-12 16:30:33.707538+11	139.216.147.253
4284	Write about particular ideas and explain why	2014-02-12 16:30:34.209532+11	139.216.147.253
4285	Toss 8 images imagining you are in isolation	2014-02-12 16:30:35.730878+11	139.216.147.253
4286	Price an atlas using watercolour	2014-02-12 16:30:36.743833+11	139.216.147.253
4287	Document a 4-word manifesto with a pencil	2014-02-12 16:30:37.06266+11	139.216.147.253
4288	Break an impracticle object over 29 hours	2014-02-12 16:30:38.39986+11	139.216.147.253
4289	Speak  the colony unintuitively	2014-02-12 16:30:39.162897+11	139.216.147.253
4290	Brainstorm the rules of tennis in the usual way	2014-02-12 16:30:39.673864+11	139.216.147.253
4291	Rewrite  sticks without thinking	2014-02-12 16:30:40.042659+11	139.216.147.253
4292	Divulge your location using free software	2014-02-12 16:30:40.445103+11	139.216.147.253
4293	Mark the idea of nationality in the right order	2014-02-12 16:30:41.646998+11	139.216.147.253
4294	Reverse engineer a useless thing by swapping	2014-02-12 16:30:42.23719+11	139.216.147.253
4296	Create a pamphlet explaining government together	2014-02-12 16:36:15.81311+11	139.216.147.253
4297	Carve a large circle using an old technique	2014-02-12 16:39:16.121049+11	139.216.147.253
4310	Build your favourite image in 7 minutes	2014-02-12 17:08:13.104876+11	139.216.147.253
4311	Whittle a manual on a piece of paper	2014-02-12 17:08:18.3547+11	139.216.147.253
4312	Collect secularity with your hands	2014-02-12 17:08:20.718725+11	139.216.147.253
4313	Describe a dictionary idley	2014-02-12 17:08:22.176147+11	139.216.147.253
4314	Sew your role within a particular organisational structure with a public outcome in mind	2014-02-12 17:08:26.12892+11	139.216.147.253
4315	Plan free time by planning the next move	2014-02-12 17:08:29.261028+11	139.216.147.253
4316	Trust a sculpture with found objects	2014-02-12 17:08:31.950866+11	139.216.147.253
4317	Build a trail of destruction with found objects	2014-02-12 17:08:33.465805+11	139.216.147.253
4318	Write change to capture the moment	2014-02-12 17:08:34.77331+11	139.216.147.253
4319	Build the garden in public	2014-02-12 17:08:36.091899+11	139.216.147.253
4320	Investigate a sculpture for yourself	2014-02-12 17:08:39.079945+11	139.216.147.253
4321	Undertake your favourite image while referring to gardening	2014-02-12 17:08:40.469698+11	139.216.147.253
4322	Walk  currency and put two and two together	2014-02-12 17:08:41.992396+11	139.216.147.253
4323	Manage the political arbritrarily	2014-02-12 17:08:43.74551+11	139.216.147.253
4324	Brainstorm an image-editing program as though your life depends on it	2014-02-12 17:08:45.176245+11	139.216.147.253
4325	Find two parties and attempt it only once	2014-02-12 17:08:48.751056+11	139.216.147.253
4326	Brainstorm a 8-word manifesto in a graph of rainbow colours	2014-02-12 17:09:07.252126+11	139.216.147.253
4327	Explore exploitation in the form of instructions	2014-02-12 17:09:50.511795+11	139.216.147.253
4328	Shape change undercover	2014-02-12 17:09:52.97536+11	139.216.147.253
4329	Swap food supply chains efficiently	2014-02-12 17:09:54.071637+11	139.216.147.253
4330	Abstract suburbs without telling anyone	2014-02-12 17:09:55.140505+11	139.216.147.253
4331	Grow the colour palette of an image slowly	2014-02-12 17:09:58.136741+11	139.216.147.253
4332	Group multiple images of focussed objects in a graph of rainbow colours	2014-02-12 17:10:05.537106+11	139.216.147.253
4358	Re-define how your mobile phone is used on any given day in the usual way	2014-02-12 18:42:42.758057+11	139.216.147.253
4359	Demonstrate images of other people  in pen	2014-02-12 18:42:45.223371+11	139.216.147.253
4360	Invent time openly	2014-02-12 18:42:46.482113+11	139.216.147.253
4361	Collate what is within reach and send it to us via email	2014-02-12 18:42:48.644502+11	139.216.147.253
4362	Write about a border without touching	2014-02-12 18:42:59.103793+11	139.216.147.253
4363	Say a game of cards like a spy	2014-02-12 18:43:09.351509+11	139.216.147.253
4364	Expose whistleblowing so it reflects your values	2014-02-12 18:43:13.331892+11	139.216.147.253
4365	Try everything you see in the next 28 seconds then cut that in half	2014-02-12 18:43:14.817703+11	139.216.147.253
4366	Build this and that on a piece of paper	2014-02-12 18:43:17.710657+11	139.216.147.253
4412	Undo how you are implicated in systems without thinking too much	2014-02-12 21:44:19.090973+11	118.209.121.200
4454	Bring about the ideal newspaper backing it up with research	2014-02-12 22:11:33.989469+11	118.209.121.200
4455	Make up plants with found objects	2014-02-12 22:11:37.328604+11	118.209.121.200
4456	Maintain debt freely	2014-02-12 22:11:39.060105+11	118.209.121.200
4457	Gather a see-saw relating to a gallery	2014-02-12 22:11:40.789956+11	118.209.121.200
4458	Whittle your favourite image with optimism	2014-02-12 22:11:42.195929+11	118.209.121.200
4459	Protect government so it reflects your values	2014-02-12 22:11:43.871328+11	118.209.121.200
4460	Maintain a movement without using words	2014-02-12 22:11:45.479493+11	118.209.121.200
4461	Rewrite outside on your own	2014-02-12 22:11:47.564775+11	118.209.121.200
4462	Plot    what you see without touching	2014-02-12 22:11:49.945851+11	118.209.121.200
4463	Identify a border with a catchy title	2014-02-12 22:11:52.191014+11	118.209.121.200
4464	List a border and record what you find	2014-02-12 22:12:04.916412+11	118.209.121.200
4465	Arrange your password with other people	2014-02-12 22:12:07.048007+11	118.209.121.200
4466	Shape the newspaper to initiate progress	2014-02-12 22:12:11.300803+11	118.209.121.200
4467	Observe the fourth world as a drawing	2014-02-12 22:12:12.859967+11	118.209.121.200
4468	Collate a useful object in the simplest way possible	2014-02-12 22:12:14.765012+11	118.209.121.200
4469	Use  seeds quietly	2014-02-12 22:12:17.065149+11	118.209.121.200
4470	Impose a piece of paper using watercolour	2014-02-12 22:12:26.353275+11	118.209.121.200
4471	Give everything green and white slowly	2014-02-12 22:12:30.254797+11	118.209.121.200
4472	Confuse an atlas diplomatically	2014-02-12 22:12:33.614555+11	118.209.121.200
4473	Donate a set of instructions in 12 sentences	2014-02-12 22:12:42.845176+11	118.209.121.200
4474	Grow an orchestra and attempt it only once	2014-02-12 22:12:45.498856+11	118.209.121.200
4475	Throw a mug without showing any proof	2014-02-12 22:12:50.07442+11	118.209.121.200
4476	Break down into numbers whistleblowing religiously	2014-02-12 22:12:53.584359+11	118.209.121.200
4477	Arrange a gathering and attempt it only once	2014-02-12 22:12:58.940909+11	118.209.121.200
4478	Re-define the rules   randomly	2014-02-12 22:13:01.407138+11	118.209.121.200
4298	Replicate an impracticle object so you are affected	2014-02-12 17:06:04.47525+11	139.216.147.253
4299	Use  the crowd without touching	2014-02-12 17:06:07.523171+11	139.216.147.253
4300	Scratch tools as a drawing	2014-02-12 17:06:13.476946+11	139.216.147.253
4301	Write about the impossible addictively	2014-02-12 17:06:15.66364+11	139.216.147.253
4302	Maintain a chair and document the findings to share	2014-02-12 17:06:20.12889+11	139.216.147.253
4303	Store power side by side	2014-02-12 17:06:21.375193+11	139.216.147.253
4304	Test a large circle backing it up with research	2014-02-12 17:06:22.864569+11	139.216.147.253
4305	Paint practical objects using found materials	2014-02-12 17:06:24.633976+11	139.216.147.253
4306	Trust a border systematically	2014-02-12 17:06:26.684208+11	139.216.147.253
4307	Send a newspaper clipping of your thoughts into a drawing	2014-02-12 17:06:35.61978+11	139.216.147.253
4333	Tweet particular ideas with a catchy title	2014-02-12 17:10:26.645523+11	139.216.147.253
4334	Wander a 10-word manifesto and combine	2014-02-12 17:10:32.526175+11	139.216.147.253
4335	Identify a program in the colours of your flag	2014-02-12 17:10:33.954353+11	139.216.147.253
4336	Group multiple images of out the front of your house in public space	2014-02-12 17:10:42.612376+11	139.216.147.253
4337	Pair a colony of ants in hardcopy	2014-02-12 17:10:44.759904+11	139.216.147.253
4338	Take a photo of revolution in the size of a book	2014-02-12 17:10:46.371338+11	139.216.147.253
4339	Wear a positive gesture actively	2014-02-12 17:10:49.929818+11	139.216.147.253
4340	Manage information with a pencil	2014-02-12 17:10:51.116331+11	139.216.147.253
4341	Send an atlas as a list	2014-02-12 18:29:02.385469+11	139.216.147.253
4342	Reinvent then photograph and combine	2014-02-12 18:29:08.084963+11	139.216.147.253
4343	Re-write a get-together with the first pencil you find	2014-02-12 18:29:09.425903+11	139.216.147.253
4344	Borrow a logo so that we will be really surprised	2014-02-12 18:29:10.670046+11	139.216.147.253
4345	Discuss a manual without touching	2014-02-12 18:29:13.977064+11	139.216.147.253
4346	Gather out the front of your house in black and white	2014-02-12 18:29:16.067263+11	139.216.147.253
4347	Cut and paste a positive gesture like you mean it	2014-02-12 18:29:17.786806+11	139.216.147.253
4348	Represent a nation-state online	2014-02-12 18:40:39.599093+11	139.216.147.253
4349	Visualise something round simply	2014-02-12 18:40:40.699206+11	139.216.147.253
4350	Consider  what you see in photographic form	2014-02-12 18:40:52.882208+11	139.216.147.253
4356	Expand on elastic bands directly on the wall	2014-02-12 18:42:03.729016+11	139.216.147.253
4357	Plot on a graph trees and throw it out the window	2014-02-12 18:42:08.470113+11	139.216.147.253
4375	Research collective action at home	2014-02-12 18:52:53.728689+11	139.216.147.253
4376	Write about the idea of happiness in 7 minutes	2014-02-12 18:52:57.843277+11	139.216.147.253
4377	Reveal your favourite image by deduction	2014-02-12 18:53:00.014888+11	139.216.147.253
4378	Say a small list over five minutes	2014-02-12 18:53:12.066365+11	139.216.147.253
4379	Redesign the garden using free software	2014-02-12 21:00:03.533466+11	118.209.121.200
4380	Toss around 10 synonyms referencing the idea of dis-organisation	2014-02-12 21:00:27.892738+11	118.209.121.200
4406	Divulge a powerpoint presentation without touching	2014-02-12 21:30:11.744993+11	118.209.121.200
4407	Draw a megaphone to closely notice the details	2014-02-12 21:30:36.921118+11	118.209.121.200
4408	Audit a piece of paper into a ball	2014-02-12 21:30:38.61022+11	118.209.121.200
4409	Categorise D.I.Y privately	2014-02-12 21:30:38.989466+11	118.209.121.200
4410	Turn around stationery with your hands	2014-02-12 21:30:39.439101+11	118.209.121.200
4411	Plan a piece of paper and question your findings	2014-02-12 21:30:39.864538+11	118.209.121.200
4413	Gather then photograph on the nature strip	2014-02-12 22:08:43.916013+11	118.209.121.200
4414	Assemble a colony of ants quietly	2014-02-12 22:08:48.441481+11	118.209.121.200
4415	Describe something in the gallery	2014-02-12 22:08:49.920755+11	118.209.121.200
4416	Break down into numbers bureaucracy over and over	2014-02-12 22:08:51.784167+11	118.209.121.200
4417	Shape management at home	2014-02-12 22:08:56.331877+11	118.209.121.200
4418	Assemble outside during business hours	2014-02-12 22:08:57.124324+11	118.209.121.200
4419	Source a demonstration unacceptably	2014-02-12 22:08:59.469538+11	118.209.121.200
4420	Extract branches quietly	2014-02-12 22:09:02.16827+11	118.209.121.200
4421	Suspend images of other people  in public space	2014-02-12 22:09:03.608311+11	118.209.121.200
4422	Borrow the impossible openly	2014-02-12 22:09:05.119417+11	118.209.121.200
4423	Move a meal over 57 seconds	2014-02-12 22:09:06.439061+11	118.209.121.200
4424	Mark a collection of blue things on the wall	2014-02-12 22:09:07.978001+11	118.209.121.200
4425	Take a sample of  a gathering like you mean it	2014-02-12 22:09:09.820069+11	118.209.121.200
4426	Act on a piece of paper in another language	2014-02-12 22:09:12.292941+11	118.209.121.200
4427	Document a community in photoshop	2014-02-12 22:09:13.80491+11	118.209.121.200
4428	Give an object from your top drawer then examine how it relates to the idea of revolution	2014-02-12 22:09:15.399239+11	118.209.121.200
4429	Make a colour palette of your love of a particular person in a public place	2014-02-12 22:09:18.61758+11	118.209.121.200
4430	Swap this and that without using words	2014-02-12 22:09:22.168326+11	118.209.121.200
4431	Price an agreement without thinking too much	2014-02-12 22:09:25.760259+11	118.209.121.200
4432	Write a letter about knowledge together	2014-02-12 22:09:28.330171+11	118.209.121.200
4433	Demonstrate 8 steps with tape	2014-02-12 22:09:30.574593+11	118.209.121.200
4434	Mime then photograph and put two and two together	2014-02-12 22:09:33.283273+11	118.209.121.200
4435	Learn about your password to a stranger	2014-02-12 22:09:36.567345+11	118.209.121.200
4436	Converse knowledge with tape	2014-02-12 22:09:48.249107+11	118.209.121.200
4437	Store data with your hands	2014-02-12 22:09:55.011704+11	118.209.121.200
4438	Calculate a word you heard today systematically	2014-02-12 22:09:56.51753+11	118.209.121.200
4439	Send trees using the name of someone great	2014-02-12 22:09:59.813644+11	118.209.121.200
4440	Shape the notion of work  systematically	2014-02-12 22:10:01.771515+11	118.209.121.200
4441	Sculpt information referring to your favourite	2014-02-12 22:10:03.563314+11	118.209.121.200
4442	Create a boat in secret	2014-02-12 22:10:05.558208+11	118.209.121.200
4443	Explore a round table with no preconceived idea	2014-02-12 22:10:19.515125+11	118.209.121.200
4444	Research the risks as a drawing	2014-02-12 22:10:22.363082+11	118.209.121.200
4445	Pair time with a pencil	2014-02-12 22:10:23.707212+11	118.209.121.200
4446	Publicly declare wood in another language	2014-02-12 22:10:25.818694+11	118.209.121.200
4447	Protect average as if functional	2014-02-12 22:10:27.338958+11	118.209.121.200
4448	Demonstrate particular ideas like a spy	2014-02-12 22:10:29.394443+11	118.209.121.200
4449	Swap staples as an indulgence	2014-02-12 22:10:31.825945+11	118.209.121.200
4450	Reverse engineer your role within a particular organisational structure and speak the result in monotone	2014-02-12 22:10:36.138592+11	118.209.121.200
4451	Speak  tools to closely notice the details	2014-02-12 22:10:42.859854+11	118.209.121.200
4452	Collate meaning to your detriment	2014-02-12 22:10:47.267307+11	118.209.121.200
4453	Subvert how you might begin to withdraw your dependency on technology in the simplest way possible	2014-02-12 22:10:50.880913+11	118.209.121.200
4479	Photocopy migration without showing anyone	2014-02-12 22:13:04.268994+11	118.209.121.200
4480	Order a user-guide in the gallery	2014-02-12 22:13:06.881787+11	118.209.121.200
4481	Reinvent a video  in the usual way	2014-02-12 22:13:09.6853+11	118.209.121.200
4482	Continue a new slogan relating to a gallery	2014-02-12 22:13:19.0524+11	118.209.121.200
4483	Assemble the same word with optimism	2014-02-12 22:13:24.025808+11	118.209.121.200
4484	Design a slogan using free software	2014-02-12 22:13:27.143065+11	118.209.121.200
4485	Rewrite a sculpture with scepticism	2014-02-12 22:13:28.815453+11	118.209.121.200
4486	Find an example of a mug with a catchy title	2014-02-12 22:13:30.264952+11	118.209.121.200
4487	Paint with watercolour a movement during work hours	2014-02-12 22:13:40.227608+11	118.209.121.200
4488	Test a flagpole arbritrarily	2014-02-12 22:13:47.093944+11	118.209.121.200
4489	Take a photo of a way around a problem and throw it out the window	2014-02-12 22:13:49.809916+11	118.209.121.200
4490	Spy on a commodity thinking about form and function	2014-02-12 22:13:53.451389+11	118.209.121.200
4491	Type positive images of collective action by deduction	2014-02-12 22:13:55.922242+11	118.209.121.200
4492	Take a photo of how your mobile phone is used on any given day over time	2014-02-12 22:13:58.17843+11	118.209.121.200
4493	Teach cycle on a piece of paper	2014-02-12 22:14:01.260736+11	118.209.121.200
4494	Invent a common approach in 4 sentences	2014-02-12 22:14:06.439191+11	118.209.121.200
4495	Identify D.I.Y quickly	2014-02-12 22:14:14.98321+11	118.209.121.200
4496	Bring a secret handshake using an old technique	2014-02-12 22:14:16.806262+11	118.209.121.200
4497	Group multiple images of the rules   in the simplest way possible	2014-02-12 22:14:27.952298+11	118.209.121.200
4498	Divulge practical objects as if functional	2014-02-12 22:14:30.441153+11	118.209.121.200
4499	Suspend time in the form of a ransom note	2014-02-12 22:14:32.586678+11	118.209.121.200
4500	Publicly declare an impracticle object in 9 ways	2014-02-12 22:14:34.80352+11	118.209.121.200
4501	Sculpt a video  systematically	2014-02-12 22:14:39.206428+11	118.209.121.200
4502	Toss your favourite image into a drawing	2014-02-12 22:14:41.081747+11	118.209.121.200
4503	Suggest the colony with others	2014-02-12 22:14:43.696871+11	118.209.121.200
4504	Suspend an atlas bureaucratically	2014-02-12 22:15:03.361975+11	118.209.121.200
4505	Sing a border and connect the dots	2014-02-12 22:15:05.77663+11	118.209.121.200
4506	Paint with watercolour a border intuitively	2014-02-12 22:15:13.68385+11	118.209.121.200
4507	Divulge a balloon once	2014-02-12 22:15:16.325127+11	118.209.121.200
4508	Hand out a slogan on your own	2014-02-12 22:15:18.308288+11	118.209.121.200
4509	Write a letter about a way around a problem online	2014-02-12 22:15:20.546504+11	118.209.121.200
4510	Observe your thoughts directly on the wall	2014-02-12 22:15:22.81823+11	118.209.121.200
4511	Cut and paste this and that to closely notice the details	2014-02-12 22:15:30.765902+11	118.209.121.200
4512	Change a communal dinner thinking about form and function	2014-02-12 22:15:33.062396+11	118.209.121.200
4513	Publicly declare a positive gesture then examine how it relates to the idea of revolution	2014-02-12 22:15:35.92151+11	118.209.121.200
4514	Undertake a capitalist notion with other people	2014-02-12 22:15:39.685362+11	118.209.121.200
4515	Print out a secret meeting in another language	2014-02-12 22:15:43.064327+11	118.209.121.200
4516	Decipher stone arbritrarily	2014-02-12 22:15:45.904939+11	118.209.121.200
4517	Fill the idea of happiness repeatedly	2014-02-12 22:15:54.309241+11	118.209.121.200
4518	Expose a common approach through a process of elimination	2014-02-12 22:15:56.706085+11	118.209.121.200
4519	Reassess waste with found objects	2014-02-12 22:16:01.21039+11	118.209.121.200
4520	Destroy anything in your line of sight	2014-02-12 22:16:05.305459+11	118.209.121.200
4521	Write about two people to preexisting conditions	2014-02-12 22:16:07.392568+11	118.209.121.200
4522	Sign a get-together slowly	2014-02-12 22:16:12.93046+11	118.209.121.200
4523	Collage the institution inside a square	2014-02-12 22:16:15.244978+11	118.209.121.200
4524	Gather the impossible online	2014-02-12 22:16:17.135749+11	118.209.121.200
4525	Wander an alternative do this 4 times	2014-02-12 22:16:21.847966+11	118.209.121.200
4526	Take a photo of the game of tug-of-war in 12 sentences	2014-02-12 22:16:25.044559+11	118.209.121.200
4527	Split particular ideas in photoshop	2014-02-12 22:16:35.683383+11	118.209.121.200
4528	Type branches convincingly	2014-02-12 22:16:37.395388+11	118.209.121.200
4529	Subvert 8 synonyms without showing any proof	2014-02-12 22:16:45.937128+11	118.209.121.200
4530	Spy on something round with tape	2014-02-12 22:16:49.916469+11	118.209.121.200
4531	Toss around productivity creatively	2014-02-12 22:16:53.807525+11	118.209.121.200
4532	Speak  an unusual scene and put two and two together	2014-02-12 22:17:00.875512+11	118.209.121.200
4533	Avoid a new system with scepticism	2014-02-12 22:17:03.209189+11	118.209.121.200
4534	Raise a debate in public	2014-02-12 22:17:04.689687+11	118.209.121.200
4535	Arrange a useful object temporarily	2014-02-12 22:17:06.084405+11	118.209.121.200
4536	Find an example of a flier now	2014-02-12 22:17:07.714853+11	118.209.121.200
4537	Exhaust a boat to create a completely new image	2014-02-12 22:17:13.107734+11	118.209.121.200
4538	Multiply focussed objects with a pencil	2014-02-12 22:17:21.059963+11	118.209.121.200
4539	Visualise trees as though your life depends on it	2014-02-12 22:17:26.825908+11	118.209.121.200
4540	Continue the risks without touching	2014-02-12 22:17:35.855762+11	118.209.121.200
4541	Create something with a double meaning using only political rhetoric	2014-02-12 22:17:38.052602+11	118.209.121.200
4542	Plot on a graph management as a drawing	2014-02-12 22:17:47.247109+11	118.209.121.200
4543	Produce a colony of ants while talking to people	2014-02-12 22:17:49.33063+11	118.209.121.200
4544	Distribute a secret handshake in the wrong order	2014-02-12 22:17:58.703857+11	118.209.121.200
4545	Photocopy a dictionary openly	2014-02-12 22:18:00.698263+11	118.209.121.200
4546	Try a communal dinner online	2014-02-12 22:18:13.648744+11	118.209.121.200
4547	Visualise positive images of collective action with a catchy title	2014-02-12 22:18:23.300617+11	118.209.121.200
4548	Break down into numbers an organisation  thinking about form and function	2014-02-12 22:18:27.337476+11	118.209.121.200
4549	Take a photo of bureaucracy being completely dishonest	2014-02-12 22:18:31.500965+11	118.209.121.200
4550	Test transparency as a drawing	2014-02-12 22:18:44.050271+11	118.209.121.200
4551	Ruin a useful object online	2014-02-12 22:18:46.031751+11	118.209.121.200
4552	Deliberate  sticks in public	2014-02-12 22:18:50.774818+11	118.209.121.200
4553	Systematise the ideal newspaper with others	2014-02-12 22:18:55.74079+11	118.209.121.200
4554	Describe a powerpoint presentation like a novice	2014-02-12 22:18:58.906812+11	118.209.121.200
4555	Deliver a fireplace until you are happy with the end result	2014-02-12 22:19:06.80099+11	118.209.121.200
4556	Use  transparency undercover	2014-02-12 22:19:23.524162+11	118.209.121.200
4557	Raise your thoughts and attempt to extract a meaning	2014-02-12 22:19:25.24689+11	118.209.121.200
4558	Wear something new openly	2014-02-12 22:19:29.223048+11	118.209.121.200
4559	Distribute good and bad in 7 minutes	2014-02-12 22:19:32.146784+11	118.209.121.200
4560	Improve a balloon being completely dishonest	2014-02-12 22:19:34.918264+11	118.209.121.200
4561	Print out images of other people  unacceptably	2014-02-12 22:19:38.841168+11	118.209.121.200
4562	Pretend  bureaucracy by deduction	2014-02-12 22:19:41.591651+11	118.209.121.200
4563	Calculate a small list until you are happy with the end result	2014-02-12 22:19:45.249401+11	118.209.121.200
4564	Research the notion of work  spontaneously	2014-02-12 22:19:50.054576+11	118.209.121.200
4565	Teach offcuts over 57 seconds	2014-02-13 05:05:54.188213+11	66.251.207.166
4566	Fill management secretly	2014-02-13 08:04:22.152087+11	101.115.3.186
4567	Source a balloon systematically	2014-02-13 08:04:34.711879+11	101.115.3.186
4568	Illustrate management now	2014-02-13 08:04:37.333279+11	101.115.3.186
4569	Try the temperature as a list	2014-02-13 08:04:39.085997+11	101.115.3.186
4570	Carve trees in public	2014-02-13 08:04:40.750285+11	101.115.3.186
4571	Mime the city temporarily	2014-02-13 08:04:42.31948+11	101.115.3.186
4572	Cut and paste beans with the first pencil you find	2014-02-13 08:04:43.726035+11	101.115.3.186
4573	Fill something new without thinking	2014-02-13 08:04:45.717651+11	101.115.3.186
4574	Connect a fireplace using a recording device	2014-02-13 08:04:49.309643+11	101.115.3.186
4575	Un-mechanise the same word while standing still	2014-02-13 08:04:53.258214+11	101.115.3.186
4576	Cover a meal in hardcopy	2014-02-13 08:04:55.833948+11	101.115.3.186
4577	Gather a useless thing quickly	2014-02-13 08:04:59.96768+11	101.115.3.186
4578	Suspend transparency in 10 sentences	2014-02-13 08:05:03.321168+11	101.115.3.186
4579	Pre-record a get-together to closely notice the details	2014-02-13 08:05:05.444282+11	101.115.3.186
4580	Re-write a circle using the name of someone great	2014-02-13 12:16:15.564079+11	131.170.90.3
4581	Avoid a gathering diplomatically	2014-02-13 12:16:30.885501+11	131.170.90.3
4582	Mark a trusted source as a list	2014-02-13 12:16:31.265926+11	131.170.90.3
4583	Manage a secret handshake with your hands	2014-02-13 12:16:32.921339+11	131.170.90.3
4584	Print out everything you see in the next 18 seconds during work hours	2014-02-13 16:15:20.590981+11	131.170.5.5
4585	Suspend something small  with the first pencil you find	2014-02-13 16:15:48.431534+11	131.170.5.5
4586	Toss around management together	2014-02-13 16:15:52.445122+11	131.170.5.5
4587	Single out change without telling anyone	2014-02-13 16:15:53.764331+11	131.170.5.5
4588	Toss around raw material in photographic form	2014-02-13 16:15:57.692761+11	131.170.5.5
4589	Send through a secret meeting to closely notice the details	2014-02-13 16:15:59.439058+11	131.170.5.5
4590	Undertake how your mobile phone is used on any given day to closely notice the details	2014-02-13 16:16:02.372365+11	131.170.5.5
4591	Swap a piece of paper unintuitively	2014-02-13 16:16:06.998772+11	131.170.5.5
4592	Tap into a large circle as if functional	2014-02-13 16:16:10.484724+11	131.170.5.5
4593	Hack change to create a completely new image	2014-02-13 16:16:12.820196+11	131.170.5.5
4594	Perform a flier obsessively	2014-02-13 16:16:16.822167+11	131.170.5.5
4595	Wear social justice openly	2014-02-13 16:16:21.164651+11	131.170.5.5
4596	Dis-organise a see-saw quietly	2014-02-13 16:16:24.110955+11	131.170.5.5
4597	Wander your favourite image in the right order	2014-02-13 16:16:25.756523+11	131.170.5.5
4598	Replicate a colony of ants then cut that in half	2014-02-13 16:16:30.012433+11	131.170.5.5
4599	Cut and paste your job in 3 ways	2014-02-13 16:16:33.295246+11	131.170.5.5
4600	Snap a useful object in a gallery	2014-02-13 16:26:32.499153+11	131.170.5.5
4601	Break money being completely dishonest	2014-02-13 16:40:44.026296+11	131.170.5.3
4602	Make up the ideal newspaper do this 5 times	2014-02-13 16:54:29.769176+11	131.170.5.5
4603	Expose cycle with others	2014-02-13 16:54:32.551713+11	131.170.5.5
4604	Donate the game of tug-of-war so it is equal	2014-02-13 16:54:36.894867+11	131.170.5.5
4605	Take a photo of the crowd freely	2014-02-13 16:54:42.858167+11	131.170.5.5
4606	Deliver the world randomly	2014-02-13 16:54:44.925399+11	131.170.5.5
4607	Extract a large circle during business hours	2014-02-13 16:54:48.199958+11	131.170.5.5
4608	Create a banner which refers to 5 synonyms like it will change the world	2014-02-13 16:54:51.868839+11	131.170.5.5
4609	Scrunch a commodity like you mean it	2014-02-13 16:54:58.378428+11	131.170.5.5
4610	Connect a circle as though your life depends on it	2014-02-13 16:55:00.383488+11	131.170.5.5
4611	Write about a logo through a process of elimination	2014-02-13 16:55:08.337465+11	131.170.5.5
4612	Draw a word you heard today without using words	2014-02-13 16:55:11.326855+11	131.170.5.5
4613	Whittle the notion of work  and attempt it only once	2014-02-13 16:55:14.662299+11	131.170.5.5
4614	Abstract what success means to you confidently	2014-02-13 16:55:20.12056+11	131.170.5.5
4615	Consider  branches and explain why	2014-02-13 16:55:23.475134+11	131.170.5.5
4616	Observe a common approach so its function is questionable	2014-02-13 16:55:25.35374+11	131.170.5.5
4617	Donate time over and over	2014-02-13 16:55:28.191588+11	131.170.5.5
4618	Single out cycle freely	2014-02-13 16:55:30.298062+11	131.170.5.5
4619	Redesign cycle with the next person you see	2014-02-13 16:55:32.399235+11	131.170.5.5
4620	Find something damaged and send it to us via email	2014-02-13 16:56:44.625393+11	131.170.5.5
4621	Bring about information to a stranger	2014-02-13 16:57:28.955195+11	131.170.5.5
4622	Form the newspaper on the floor	2014-02-13 16:57:32.20983+11	131.170.5.5
4623	Act out a community by deduction	2014-02-13 16:57:34.54061+11	131.170.5.5
4624	Publicly declare two parties without thinking too much	2014-02-13 16:57:36.458864+11	131.170.5.5
4625	Act on a dollar in capitals	2014-02-13 16:57:39.107075+11	131.170.5.5
4626	Seek beans diplomatically	2014-02-13 16:57:52.957602+11	131.170.5.5
4627	Build your inbox in a graph of blue hues	2014-02-13 16:57:56.267102+11	131.170.5.5
4628	Maintain something intricate in a public place	2014-02-13 16:57:59.987857+11	131.170.5.5
4629	Deliberate the institution unfairly	2014-02-13 16:58:03.903673+11	131.170.5.5
4630	Explore something small  in 3 minutes	2014-02-13 16:58:07.873921+11	131.170.5.5
4631	Calculate meaning and use it as currency	2014-02-13 16:58:11.201904+11	131.170.5.5
4632	Trust the economy secretly	2014-02-13 16:58:13.723985+11	131.170.5.5
4633	Explain an organisation  through trade	2014-02-13 16:58:22.734174+11	131.170.5.5
4634	Check a boat in secret	2014-02-13 16:58:25.310395+11	131.170.5.5
4635	Seek a new world order unfairly	2014-02-13 17:04:31.519211+11	59.167.120.122
4636	Whistle the newspaper differently	2014-02-13 17:04:53.142942+11	59.167.120.122
4637	Speak  your camera on the floor	2014-02-13 17:52:18.422746+11	131.170.5.4
4638	Donate government while talking to people	2014-02-13 17:52:18.423226+11	131.170.5.4
4639	Collate a dictionary with scepticism	2014-02-13 17:52:21.080859+11	131.170.5.4
4640	Sing a direction until you are happy with the end result	2014-02-13 17:52:22.751883+11	131.170.5.4
4641	Make up patience like a novice	2014-02-13 17:52:26.09625+11	131.170.5.4
4642	Abstract a powerpoint presentation inside an irregular shape	2014-02-13 17:52:27.877178+11	131.170.5.4
4643	Undo debt like a robot	2014-02-13 17:52:30.878828+11	131.170.5.4
4644	Carve lunch seriously	2014-02-13 17:52:32.304536+11	131.170.5.4
4645	Multiply an agreement of the future	2014-02-13 17:52:33.667734+11	131.170.5.4
4646	Picture a useless thing as if functional	2014-02-13 17:52:34.629762+11	131.170.5.4
4647	Wear a dictionary and attempt to extract a meaning	2014-02-13 17:52:36.137641+11	131.170.5.4
4648	Send two people  share it with us	2014-02-13 17:52:37.196959+11	131.170.5.4
4649	Collaborate with change on your own	2014-02-13 17:52:39.384588+11	131.170.5.4
4650	Snap a limited edition once	2014-02-13 17:52:44.753415+11	131.170.5.4
4651	Re-write the city considering last century	2014-02-13 17:52:46.937457+11	131.170.5.4
4652	Plant power over time	2014-02-13 17:52:51.128585+11	131.170.5.4
4653	Post plants undercover	2014-02-13 17:53:29.351519+11	131.170.5.4
4654	Bring about food supply chains referring to your favourite	2014-02-13 17:54:07.082108+11	131.170.5.4
4655	Try a uniform inside an irregular shape	2014-02-13 17:54:08.292639+11	131.170.5.4
4656	Subvert the amount of free time you have thoroughly checking	2014-02-13 18:29:14.809168+11	131.170.90.3
4657	Sing something round so its function is questionable	2014-02-13 18:29:19.007026+11	131.170.90.3
4658	Plan something round creatively	2014-02-13 18:29:20.292775+11	131.170.90.3
4659	Improve a useless thing on the floor	2014-02-13 18:29:22.645627+11	131.170.90.3
4660	Discuss collective action as a drawing	2014-02-13 18:29:23.614808+11	131.170.90.3
4661	Undertake a logo and attempt it only once	2014-02-13 18:29:25.124982+11	131.170.90.3
4662	Bring something then cut that in half	2014-02-13 18:29:26.333649+11	131.170.90.3
4663	Bring a get-together in public	2014-02-13 18:29:27.670499+11	131.170.90.3
4664	Plant a dollar with others	2014-02-13 18:29:28.613626+11	131.170.90.3
4665	Replicate 7 synonyms loudly	2014-02-13 18:56:42.080049+11	131.170.90.4
4679	Define something with a double meaning simply	2014-02-13 21:59:20.328744+11	118.209.91.160
4680	Toss around a new system addictively	2014-02-13 21:59:21.822162+11	118.209.91.160
4681	Swap change and send it to us via email	2014-02-13 21:59:23.924095+11	118.209.91.160
4682	Confuse transparency like a spy	2014-02-13 21:59:25.021837+11	118.209.91.160
4683	Plot on a graph something with a double meaning on the nature strip	2014-02-13 21:59:25.991467+11	118.209.91.160
4684	Order a see-saw as an indulgence	2014-02-13 21:59:27.939225+11	118.209.91.160
4685	Demonstrate a commodity without showing anyone	2014-02-13 21:59:29.062475+11	118.209.91.160
4686	Draw something directly	2014-02-13 21:59:30.38288+11	118.209.91.160
4687	Speak  a set of instructions inside a square	2014-02-13 21:59:32.612909+11	118.209.91.160
4688	Hack staples to capture the moment	2014-02-13 21:59:36.714441+11	118.209.91.160
4689	Mark staples on the floor	2014-02-13 21:59:37.809841+11	118.209.91.160
4690	Whittle migration to a stranger	2014-02-13 21:59:38.735934+11	118.209.91.160
4691	Redesign the truth without showing any proof	2014-02-13 21:59:39.931952+11	118.209.91.160
4692	Identify an orchestra in 3 sentences	2014-02-13 21:59:41.410849+11	118.209.91.160
4693	Rewrite the garden relating to a gallery	2014-02-13 21:59:55.284095+11	118.209.91.160
4694	Spend time thinking about something damaged like it will change the world	2014-02-13 21:59:57.236887+11	118.209.91.160
4695	Publicly declare a trusted source to a stranger	2014-02-13 22:00:00.116365+11	118.209.91.160
4696	Expose good and bad without thinking	2014-02-13 22:00:10.484406+11	118.209.91.160
4697	Deliver positive images of collective action by planning the next move	2014-02-13 22:00:11.543402+11	118.209.91.160
4698	Bring about the rules of tennis by deduction	2014-02-13 22:00:12.963035+11	118.209.91.160
4699	Hand out a garden in camouflage	2014-02-13 22:00:20.713425+11	118.209.91.160
4700	Scrunch exploitation actively	2014-02-13 22:00:26.600334+11	118.209.91.160
4701	Whistle a handshake while standing still	2014-02-13 22:00:27.422352+11	118.209.91.160
4702	Avoid revolution like a novice	2014-02-13 22:00:36.516614+11	118.209.91.160
4703	Publicly declare an atlas in gold	2014-02-13 22:00:38.795846+11	118.209.91.160
4704	Picture the chain of evidence using found materials	2014-02-13 22:00:40.124533+11	118.209.91.160
4705	Continue the temperature  share it with us	2014-02-13 22:00:41.179816+11	118.209.91.160
4706	Assemble the colony bureaucratically	2014-02-13 22:00:42.314779+11	118.209.91.160
4707	Unleash a new object systematically	2014-02-13 22:00:56.474206+11	118.209.91.160
4708	Converse a round table online	2014-02-13 22:00:58.008542+11	118.209.91.160
4709	Donate then photograph without language	2014-02-13 22:01:01.245088+11	118.209.91.160
4710	Make your camera creatively	2014-02-13 22:01:02.748432+11	118.209.91.160
4711	Split Australian symbolism in the usual way	2014-02-13 22:01:04.357439+11	118.209.91.160
4712	Continue a get-together relating to a gallery	2014-02-13 22:01:05.454527+11	118.209.91.160
4713	Picture a logo by deduction	2014-02-13 22:01:07.97614+11	118.209.91.160
4714	Email growth directly	2014-02-13 22:01:09.187682+11	118.209.91.160
4715	Destroy something small  with the first pencil you find	2014-02-13 22:01:10.339993+11	118.209.91.160
4716	Change two parties in the right order	2014-02-13 22:01:14.691192+11	118.209.91.160
4717	Redesign what success means to you with tape	2014-02-13 22:01:15.621395+11	118.209.91.160
4718	Wander a piece of paper like you mean it	2014-02-13 22:01:16.934064+11	118.209.91.160
4719	Model anything creatively	2014-02-13 22:01:18.261669+11	118.209.91.160
4720	Cover bureaucracy quietly	2014-02-13 22:01:19.369447+11	118.209.91.160
4721	Consider  an orchestra on the floor	2014-02-13 22:01:21.299111+11	118.209.91.160
4722	Gather something to a stranger	2014-02-13 22:01:22.096774+11	118.209.91.160
4723	Donate political rhetoric secretly	2014-02-13 22:01:23.392808+11	118.209.91.160
4724	Act on your camera relating to a gallery	2014-02-13 22:01:24.537685+11	118.209.91.160
4725	Post the colony so you are affected	2014-02-13 22:01:25.349219+11	118.209.91.160
4726	Record the world and speak the result in monotone	2014-02-13 22:01:26.691868+11	118.209.91.160
4727	Demonstrate a useless thing in the most innovative way you can think of	2014-02-13 22:01:28.126971+11	118.209.91.160
4728	Cover energy efficiency without showing anyone	2014-02-13 22:01:38.355943+11	118.209.91.160
4729	Suggest the fourth world on the wall	2014-02-13 22:01:39.492636+11	118.209.91.160
4730	Bring about a piece of paper on the floor	2014-02-13 22:01:40.455276+11	118.209.91.160
4731	Play something damaged creatively	2014-02-13 22:01:41.598759+11	118.209.91.160
4732	Share a list of rules relating to a gallery	2014-02-13 22:01:42.714834+11	118.209.91.160
4733	Break down into numbers two people addictively	2014-02-13 22:01:43.941314+11	118.209.91.160
4734	Hack something damaged into a ball	2014-02-13 22:01:47.126817+11	118.209.91.160
4735	Reinvent a chair through a process of elimination	2014-02-13 22:01:48.167391+11	118.209.91.160
4736	Donate the game of tug-of-war as a map	2014-02-13 22:01:49.651307+11	118.209.91.160
4737	Systematise anything with optimism	2014-02-13 22:01:50.551022+11	118.209.91.160
4738	Sew a chair in the form of a ransom note	2014-02-13 22:01:51.836912+11	118.209.91.160
4739	Describe the economy using only political rhetoric	2014-02-13 22:01:55.506905+11	118.209.91.160
4740	Distrupt an image-editing program in a graph of blue hues	2014-02-13 22:01:57.392277+11	118.209.91.160
4741	Build a commodity without language	2014-02-13 22:01:58.82424+11	118.209.91.160
4666	Bring about 8 images like a spy	2014-02-13 18:59:21.456358+11	131.170.90.4
4667	Photocopy the impossible mindfully	2014-02-13 18:59:22.623742+11	131.170.90.4
4668	Act out a demonstration on the floor	2014-02-13 18:59:24.183293+11	131.170.90.4
4669	Replicate your job unintuitively	2014-02-13 18:59:25.854953+11	131.170.90.4
4670	Speak about a powerpoint presentation and put two and two together	2014-02-13 18:59:27.839728+11	131.170.90.4
4671	Reinvent the colour palette of an image in the wrong order	2014-02-13 18:59:28.471652+11	131.170.90.4
4672	Send a capitalist notion on your own	2014-02-13 18:59:30.559947+11	131.170.90.4
4673	Source then photograph in the usual way	2014-02-13 18:59:32.647308+11	131.170.90.4
4674	Sculpt something with a double meaning confidently	2014-02-13 19:09:54.120606+11	131.170.90.4
4675	Multiply how your mobile phone is used on any given day online	2014-02-13 19:09:55.775741+11	131.170.90.4
4676	Hack a dictionary temporarily	2014-02-13 19:09:56.768172+11	131.170.90.4
4677	Test a common approach thoughtfully	2014-02-13 20:52:21.505251+11	124.148.148.49
4678	Present productivity in hardcopy	2014-02-13 21:59:02.251178+11	118.209.91.160
4897	Create a pamphlet explaining then photograph and put two and two together	2014-02-13 22:09:06.232165+11	118.209.91.160
4898	Maintain the moon unfairly	2014-02-13 22:09:07.802907+11	118.209.91.160
4899	Continue a small list with the next person you see	2014-02-13 22:09:10.235709+11	118.209.91.160
4900	Find an example of debt until you are happy with the end result	2014-02-13 22:09:11.57097+11	118.209.91.160
4901	Make branches thinking about form and function	2014-02-13 22:09:13.316942+11	118.209.91.160
4902	Detail a mug and double it	2014-02-13 22:09:23.021277+11	118.209.91.160
4903	Carve transparency addictively	2014-02-13 22:09:24.034064+11	118.209.91.160
4904	Design one minute without showing anyone	2014-02-13 22:09:25.049816+11	118.209.91.160
4905	Create the crowd by planning the next move	2014-02-13 22:09:26.053629+11	118.209.91.160
4906	Define particular ideas inside a square	2014-02-13 22:09:27.223779+11	118.209.91.160
4907	Undo the notion of work  over time	2014-02-13 22:09:28.540945+11	118.209.91.160
4908	Create a pamphlet explaining a safe in pen	2014-02-13 22:09:29.541501+11	118.209.91.160
4909	Single out a flagpole by deduction	2014-02-13 22:09:30.454507+11	118.209.91.160
4910	Re-write the temperature and pick your favourite	2014-02-13 22:09:31.480986+11	118.209.91.160
4911	Find sticks and stones over and over	2014-02-13 22:09:32.501131+11	118.209.91.160
4912	Turn around a user-guide obsessively	2014-02-13 22:09:33.712013+11	118.209.91.160
4913	Give productivity so you are affected	2014-02-13 22:09:39.351371+11	118.209.91.160
4914	Decipher staples without telling anyone	2014-02-13 22:09:43.457932+11	118.209.91.160
4915	Order a flier unfairly	2014-02-13 22:09:44.642354+11	118.209.91.160
4916	Find acts of resistance with other people	2014-02-13 22:09:46.343208+11	118.209.91.160
4917	Replicate a program so its function is questionable	2014-02-13 22:09:47.505394+11	118.209.91.160
4918	Observe a direction then examine how it relates to the idea of revolution	2014-02-13 22:09:48.688859+11	118.209.91.160
4919	Post knowledge by deduction	2014-02-13 22:09:50.391524+11	118.209.91.160
4920	Print out transparency actively	2014-02-13 22:09:51.581249+11	118.209.91.160
4921	Scrunch a new slogan on the nature strip	2014-02-13 22:09:52.428258+11	118.209.91.160
4922	Price your favourite image in a minute	2014-02-13 22:09:53.519354+11	118.209.91.160
4923	Research a boat in the wrong order	2014-02-13 22:09:54.886921+11	118.209.91.160
4924	Single out your role within a particular organisational structure to closely notice the details	2014-02-13 22:09:56.923745+11	118.209.91.160
4925	Toss around something without showing anyone	2014-02-13 22:09:58.423989+11	118.209.91.160
4926	Improve a new object in a new order	2014-02-13 22:09:59.622452+11	118.209.91.160
4927	Break down the best times slowly	2014-02-13 22:10:00.666549+11	118.209.91.160
4928	Replicate the game of tug-of-war and explain why	2014-02-13 22:10:02.341413+11	118.209.91.160
4929	Model how you are implicated in systems while standing still	2014-02-13 22:10:03.380316+11	118.209.91.160
4930	Paint with watercolour trees quietly	2014-02-13 22:10:08.490547+11	118.209.91.160
4979	Illustrate future technologies using watercolour	2014-02-13 22:11:49.898336+11	118.209.91.160
4980	Dis-organise food supply chains side by side	2014-02-13 22:11:52.453592+11	118.209.91.160
4981	Introduce the game of tug-of-war on your own	2014-02-13 22:11:53.36088+11	118.209.91.160
4982	Plan cycle without showing anyone	2014-02-13 22:11:54.203835+11	118.209.91.160
4983	Plot on a graph a gathering as a pie chart	2014-02-13 22:11:55.503412+11	118.209.91.160
4984	Exhaust a direction to your detriment	2014-02-13 22:11:56.505187+11	118.209.91.160
4985	Toss around an unusual scene with your hands	2014-02-13 22:11:58.249037+11	118.209.91.160
4986	Play your password over and over	2014-02-13 22:12:01.237587+11	118.209.91.160
4987	Take a sample of  how your mobile phone is used on any given day seriously	2014-02-13 22:12:05.561621+11	118.209.91.160
4988	Design the newspaper by networking	2014-02-13 22:12:07.222199+11	118.209.91.160
4989	Destroy the notion of work  in gold	2014-02-13 22:12:08.52215+11	118.209.91.160
4990	Explain offcuts in photographic form	2014-02-13 22:12:10.665484+11	118.209.91.160
4991	Collect a round table in monotone	2014-02-13 22:12:13.662179+11	118.209.91.160
4992	Split collective action to preexisting conditions	2014-02-13 22:12:14.807617+11	118.209.91.160
4993	Explain the notion of work  systematically	2014-02-13 22:12:16.181549+11	118.209.91.160
4994	Follow a gathering in the wrong order	2014-02-13 22:12:17.306973+11	118.209.91.160
4995	Type what success means to you in the gallery	2014-02-13 22:12:19.438904+11	118.209.91.160
4996	Abstract the economy and record what you find	2014-02-13 22:12:20.551727+11	118.209.91.160
4997	Systematise suburbs using statistics	2014-02-13 22:12:22.721985+11	118.209.91.160
4998	Illustrate a number you consider to be quite big idley	2014-02-13 22:12:24.245693+11	118.209.91.160
4999	Toss around a scapegoat now	2014-02-13 22:12:25.442375+11	118.209.91.160
5000	Order space slowly	2014-02-13 22:12:27.238405+11	118.209.91.160
5001	Test 9 synonyms unacceptably	2014-02-13 22:12:28.670884+11	118.209.91.160
5002	Write about a round table without language	2014-02-13 22:12:29.410929+11	118.209.91.160
5003	Plant a boat to create a completely new image	2014-02-13 22:12:30.563787+11	118.209.91.160
5004	Represent your love of a particular person in a gallery	2014-02-13 22:12:32.093372+11	118.209.91.160
5005	Change a hole like you mean it	2014-02-13 22:12:33.273951+11	118.209.91.160
5006	Unleash bureaucracy now	2014-02-13 22:12:34.284499+11	118.209.91.160
5007	Reinvent the truth in hardcopy	2014-02-13 22:12:35.561429+11	118.209.91.160
5008	Walk  spectacles and put two and two together	2014-02-13 22:12:36.612415+11	118.209.91.160
5009	Arrange an unusual scene online	2014-02-13 22:12:37.623677+11	118.209.91.160
5010	Create a banner which refers to how your mobile phone is used on any given day for yourself	2014-02-13 22:12:39.343572+11	118.209.91.160
5011	Network acts of resistance once	2014-02-13 22:12:45.867466+11	118.209.91.160
5012	Print out a secret meeting bureaucratically	2014-02-13 22:12:47.199272+11	118.209.91.160
5013	Replace the surface in a graph of rainbow colours	2014-02-13 22:12:49.976936+11	118.209.91.160
5014	Swap offcuts using blu-tak	2014-02-13 22:12:51.461152+11	118.209.91.160
5015	Sew your love of a particular person with a catchy title	2014-02-13 22:12:52.880957+11	118.209.91.160
5016	Divulge data bureaucratically	2014-02-13 22:12:54.160701+11	118.209.91.160
5017	Bring about outside in a gallery	2014-02-13 22:12:55.682563+11	118.209.91.160
5018	Undertake a handshake like a spy	2014-02-13 22:12:57.921957+11	118.209.91.160
5019	Reassess the risks over 57 seconds	2014-02-13 22:13:09.032079+11	118.209.91.160
5020	Expose focussed objects systematically	2014-02-13 22:13:09.928372+11	118.209.91.160
5021	Send through information religiously	2014-02-13 22:13:11.138109+11	118.209.91.160
5022	Type anything with others	2014-02-13 22:13:12.312946+11	118.209.91.160
4742	Detail waste as if functional	2014-02-13 22:01:59.952545+11	118.209.91.160
4743	Walk  a log on the floor	2014-02-13 22:02:01.579153+11	118.209.91.160
4744	Replicate elastic bands and double it	2014-02-13 22:02:02.677845+11	118.209.91.160
4806	Take a photo of a direction considering last century	2014-02-13 22:05:44.744167+11	118.209.91.160
4807	Reveal suburbs with others	2014-02-13 22:05:46.503945+11	118.209.91.160
4808	Fill management on the wall	2014-02-13 22:05:53.486+11	118.209.91.160
4809	Act on particular ideas and collate the results	2014-02-13 22:06:02.076912+11	118.209.91.160
4810	Suspend spectacles once	2014-02-13 22:06:04.057137+11	118.209.91.160
4811	Print out a powerpoint presentation backing it up with research	2014-02-13 22:06:06.624527+11	118.209.91.160
4812	Reinvent a safe thoroughly checking	2014-02-13 22:06:08.178817+11	118.209.91.160
4813	Make government in a gallery	2014-02-13 22:06:09.75+11	118.209.91.160
4814	Demonstrate money addictively	2014-02-13 22:06:13.61762+11	118.209.91.160
4815	Make up the ideal newspaper without assistance	2014-02-13 22:06:15.287358+11	118.209.91.160
4816	Act on a small list so it reflects your values	2014-02-13 22:06:16.467595+11	118.209.91.160
4817	Walk  a small list and speak the result in monotone	2014-02-13 22:06:18.169476+11	118.209.91.160
4818	Email a piece of paper thinking about form and function	2014-02-13 22:06:19.27182+11	118.209.91.160
4819	Store your favourite image with the next person you see	2014-02-13 22:06:20.754372+11	118.209.91.160
4820	Distribute a border inside an irregular shape	2014-02-13 22:06:22.640671+11	118.209.91.160
4821	Audit salvaged material addictively	2014-02-13 22:06:24.168372+11	118.209.91.160
4822	Print out seeds referencing the idea of dis-organisation	2014-02-13 22:06:25.517149+11	118.209.91.160
4823	Confuse how you might begin to withdraw your dependency on technology spontaneously	2014-02-13 22:06:26.662334+11	118.209.91.160
4824	Uncover the future obsessively	2014-02-13 22:06:31.048293+11	118.209.91.160
4825	Explain tools by deduction	2014-02-13 22:06:38.906083+11	118.209.91.160
4826	Deliver the colour palette of an image in secret	2014-02-13 22:06:40.148185+11	118.209.91.160
4827	Send a newspaper clipping of elastic bands in a closed form	2014-02-13 22:06:41.413082+11	118.209.91.160
4828	Picture the institution in a variety of ways	2014-02-13 22:06:45.839395+11	118.209.91.160
4829	Plant elastic bands referring to your favourite	2014-02-13 22:06:48.328142+11	118.209.91.160
4830	Paint political rhetoric so its function is questionable	2014-02-13 22:06:50.905268+11	118.209.91.160
4831	Reverse engineer a set of instructions and send it to us via email	2014-02-13 22:06:54.638202+11	118.209.91.160
4832	Spend time thinking about spectacles so you are affected	2014-02-13 22:06:55.705728+11	118.209.91.160
4833	Share a secret handshake using found materials	2014-02-13 22:06:57.356725+11	118.209.91.160
4834	Write a letter about a see-saw by deduction	2014-02-13 22:06:59.276643+11	118.209.91.160
4835	Bring about branches helplessly	2014-02-13 22:07:01.070928+11	118.209.91.160
4836	Test the amount of free time you have on the wall	2014-02-13 22:07:02.827097+11	118.209.91.160
4837	Consider  a movement together	2014-02-13 22:07:04.164745+11	118.209.91.160
4838	Make lunch now	2014-02-13 22:07:12.849053+11	118.209.91.160
4839	Deliver outside in black and white	2014-02-13 22:07:23.152262+11	118.209.91.160
4840	Gather together a 7-word manifesto for yourself	2014-02-13 22:07:24.981921+11	118.209.91.160
4841	Maintain the headlines together	2014-02-13 22:07:26.513675+11	118.209.91.160
4842	Improve a meal  share it with us	2014-02-13 22:07:29.935051+11	118.209.91.160
4843	Observe a list of rules freely	2014-02-13 22:07:32.930221+11	118.209.91.160
4844	Spy on 8 images using an old technique	2014-02-13 22:07:35.431213+11	118.209.91.160
4845	Send through a dictionary together	2014-02-13 22:07:36.335224+11	118.209.91.160
4846	Take a photo of currency together	2014-02-13 22:07:38.772142+11	118.209.91.160
4847	Continue the same thing using the name of someone great	2014-02-13 22:07:40.14341+11	118.209.91.160
4848	Discover a dollar with a public outcome in mind	2014-02-13 22:07:41.96622+11	118.209.91.160
4849	Illustrate a 5-word manifesto online	2014-02-13 22:07:43.684296+11	118.209.91.160
4850	Break down weeds without assistance	2014-02-13 22:07:44.770727+11	118.209.91.160
4851	Sign a useless thing as if functional	2014-02-13 22:07:46.070041+11	118.209.91.160
4852	Define food supply chains helplessly	2014-02-13 22:07:48.803423+11	118.209.91.160
4853	Reassess something bureaucratically	2014-02-13 22:07:51.893708+11	118.209.91.160
4854	Swap secularity without assistance	2014-02-13 22:07:53.319261+11	118.209.91.160
4855	Distrupt growth with a catchy title	2014-02-13 22:07:55.293485+11	118.209.91.160
4856	In your head, formulate energy efficiency and send it to us via email	2014-02-13 22:07:56.475204+11	118.209.91.160
4857	Sew acts of resistance with a pencil	2014-02-13 22:07:58.056064+11	118.209.91.160
4858	Calculate  sticks one way	2014-02-13 22:07:59.99668+11	118.209.91.160
4859	Plant something new in photographic form	2014-02-13 22:08:01.196148+11	118.209.91.160
4860	Wander information in the simplest way possible	2014-02-13 22:08:02.214285+11	118.209.91.160
4861	Act on everything you see in the next 8 seconds efficiently	2014-02-13 22:08:03.567602+11	118.209.91.160
4862	Hack an atlas in a graph of blue hues	2014-02-13 22:08:05.445174+11	118.209.91.160
4863	Reinvent revolution in photoshop	2014-02-13 22:08:07.02515+11	118.209.91.160
4864	Demonstrate a number you consider to be quite big inside a square	2014-02-13 22:08:08.860529+11	118.209.91.160
4865	Gather together food supply chains without compromise	2014-02-13 22:08:10.336079+11	118.209.91.160
4866	Create your location in the right order	2014-02-13 22:08:12.919574+11	118.209.91.160
4867	Whittle an unusual scene referring to your favourite	2014-02-13 22:08:16.434457+11	118.209.91.160
4868	Try plants over time	2014-02-13 22:08:18.025446+11	118.209.91.160
4869	Reverse the chain of evidence helplessly	2014-02-13 22:08:19.626284+11	118.209.91.160
4870	Observe a manual directly on the wall	2014-02-13 22:08:20.737281+11	118.209.91.160
4871	Document a secret meeting as if functional	2014-02-13 22:08:24.853004+11	118.209.91.160
4872	Source a dollar one way	2014-02-13 22:08:28.05802+11	118.209.91.160
4873	Redesign whistleblowing once	2014-02-13 22:08:30.275477+11	118.209.91.160
4874	Continue the city as though your life depends on it	2014-02-13 22:08:31.593081+11	118.209.91.160
4875	Introduce the ideal newspaper for yourself	2014-02-13 22:08:32.909774+11	118.209.91.160
4876	Seek everything you see in the next 21 seconds systematically	2014-02-13 22:08:33.92484+11	118.209.91.160
4877	Store everything green and white in the size of a book	2014-02-13 22:08:34.918358+11	118.209.91.160
4878	Toss around stone and connect the dots	2014-02-13 22:08:36.14978+11	118.209.91.160
4879	Collate anything with the first pencil you find	2014-02-13 22:08:37.371658+11	118.209.91.160
4880	Mark a 6-word manifesto bureaucratically	2014-02-13 22:08:38.742193+11	118.209.91.160
4881	Connect whistleblowing while standing still	2014-02-13 22:08:40.05215+11	118.209.91.160
4882	Act out debt and attempt it only once	2014-02-13 22:08:41.428107+11	118.209.91.160
4745	Test the idea of happiness in the wrong order	2014-02-13 22:02:13.297839+11	118.209.91.160
4746	Throw a see-saw thoughtfully	2014-02-13 22:02:14.524968+11	118.209.91.160
4747	Single out knowledge with the next person you see	2014-02-13 22:02:15.385153+11	118.209.91.160
4748	In your head, formulate two people over time	2014-02-13 22:02:17.427533+11	118.209.91.160
4749	Uncover something damaged and document the findings to share	2014-02-13 22:02:19.151861+11	118.209.91.160
4750	Research a common approach bureaucratically	2014-02-13 22:02:21.568048+11	118.209.91.160
4751	Split the rules   to form a link to the past	2014-02-13 22:02:23.114515+11	118.209.91.160
4752	Reveal a circle do this 7 times	2014-02-13 22:02:24.837343+11	118.209.91.160
4753	Follow your camera quickly	2014-02-13 22:02:26.168879+11	118.209.91.160
4754	Reveal currency arbritrarily	2014-02-13 22:02:27.075614+11	118.209.91.160
4755	Undertake your role within a particular organisational structure in 5 minutes	2014-02-13 22:02:28.159061+11	118.209.91.160
4756	Undo staples in the usual way	2014-02-13 22:02:29.522991+11	118.209.91.160
4757	Converse your password as a list	2014-02-13 22:02:30.651204+11	118.209.91.160
4758	Wander a new world order to the world	2014-02-13 22:02:32.870344+11	118.209.91.160
4759	Exhaust a water source with a pencil	2014-02-13 22:02:34.200169+11	118.209.91.160
4760	Pair what success means to you as a list	2014-02-13 22:02:46.924129+11	118.209.91.160
4761	Calculate something in photographic form	2014-02-13 22:02:48.103897+11	118.209.91.160
4762	Design money confidently	2014-02-13 22:02:49.19737+11	118.209.91.160
4763	Group together a way around a problem while walking	2014-02-13 22:02:50.336653+11	118.209.91.160
4764	Sculpt energy efficiency through a process of elimination	2014-02-13 22:02:51.601892+11	118.209.91.160
4765	Carve a 5-word manifesto without using words	2014-02-13 22:02:53.062938+11	118.209.91.160
4766	Photograph a colony of ants by swapping	2014-02-13 22:02:54.842825+11	118.209.91.160
4767	Unleash energy efficiency in a graph of blue hues	2014-02-13 22:02:55.996728+11	118.209.91.160
4768	Record the idea of nationality with the next person you see	2014-02-13 22:03:00.289716+11	118.209.91.160
4769	Walk  the institution spontaneously	2014-02-13 22:03:02.365301+11	118.209.91.160
4770	Mark a slogan undercover	2014-02-13 22:03:05.151662+11	118.209.91.160
4771	Colour an impracticle object and put two and two together	2014-02-13 22:03:08.037804+11	118.209.91.160
4772	Uncover a uniform in the right order	2014-02-13 22:03:09.403984+11	118.209.91.160
4773	Distrupt a limited edition randomly	2014-02-13 22:03:10.542335+11	118.209.91.160
4774	Exhaust how your mobile phone is used on any given day spontaneously	2014-02-13 22:03:12.293135+11	118.209.91.160
4775	Wear the colony with the first pencil you find	2014-02-13 22:03:13.775669+11	118.209.91.160
4776	Cover spectacles in photographic form	2014-02-13 22:03:15.315029+11	118.209.91.160
4777	Create a number you consider to be quite big without showing any proof	2014-02-13 22:03:16.408285+11	118.209.91.160
4778	Demonstrate a flier in the usual way	2014-02-13 22:03:18.398546+11	118.209.91.160
4779	Collate images of other people  without showing anyone	2014-02-13 22:03:19.951656+11	118.209.91.160
4780	Destroy a get-together once	2014-02-13 22:03:22.160926+11	118.209.91.160
4781	Confuse images of other people  with tape	2014-02-13 22:03:25.087004+11	118.209.91.160
4782	Break down into numbers a 6-word manifesto trustfully	2014-02-13 22:03:26.513118+11	118.209.91.160
4783	Bring about the same thing together	2014-02-13 22:03:28.717704+11	118.209.91.160
4784	Introduce a meal simply	2014-02-13 22:03:29.914189+11	118.209.91.160
4785	Learn about your screen without touching	2014-02-13 22:03:31.040755+11	118.209.91.160
4786	Systematise something small  inside a square	2014-02-13 22:03:34.71993+11	118.209.91.160
4787	Find a commodity together	2014-02-13 22:03:57.496876+11	118.209.91.160
4788	Impose a megaphone using a recording device	2014-02-13 22:03:58.325481+11	118.209.91.160
4789	Identify collective action of the future	2014-02-13 22:03:59.771846+11	118.209.91.160
4790	Hand out a powerpoint presentation using watercolour	2014-02-13 22:04:01.188885+11	118.209.91.160
4791	Use  something trustfully	2014-02-13 22:04:02.355146+11	118.209.91.160
4792	Gather together whistleblowing in a closed form	2014-02-13 22:04:03.656731+11	118.209.91.160
4793	Confuse a piece of paper do this 7 times	2014-02-13 22:04:04.930024+11	118.209.91.160
4794	Read a circle then cut that in half	2014-02-13 22:04:05.698648+11	118.209.91.160
4795	Gather together lunch diplomatically	2014-02-13 22:04:07.653901+11	118.209.91.160
4796	Deliver random tasks when you should be doing something else	2014-02-13 22:04:09.348601+11	118.209.91.160
4797	Improve a see-saw in the wrong order	2014-02-13 22:04:12.088767+11	118.209.91.160
4798	Perform something damaged as a map	2014-02-13 22:04:12.952367+11	118.209.91.160
4799	Calculate a number you consider to be quite big in 6 minutes	2014-02-13 22:04:14.083269+11	118.209.91.160
4800	Invent an unusual scene so it reflects your values	2014-02-13 22:04:15.728517+11	118.209.91.160
4801	Present waste in the form of a ransom note	2014-02-13 22:04:19.274527+11	118.209.91.160
4802	Find an example of what failure means to you unacceptably	2014-02-13 22:04:20.519794+11	118.209.91.160
4803	Trust acts of resistance and pick your favourite	2014-02-13 22:04:22.893276+11	118.209.91.160
4804	Store government and use it as currency	2014-02-13 22:04:29.057827+11	118.209.91.160
4805	Present the economy in a minute	2014-02-13 22:04:32.456448+11	118.209.91.160
4883	Manage information over 17 hours	2014-02-13 22:08:42.483609+11	118.209.91.160
4884	Brainstorm a new system to capture the moment	2014-02-13 22:08:46.482443+11	118.209.91.160
4885	Bring about suburbs in a minute	2014-02-13 22:08:49.152708+11	118.209.91.160
4886	Single out a safe in gold	2014-02-13 22:08:50.152313+11	118.209.91.160
4887	Continue social justice in a minute	2014-02-13 22:08:52.058084+11	118.209.91.160
4888	Print out outside addictively	2014-02-13 22:08:53.917223+11	118.209.91.160
4889	Act on a set of instructions in a minute	2014-02-13 22:08:55.37794+11	118.209.91.160
4890	Discover your love of a particular person over 57 seconds	2014-02-13 22:08:56.729921+11	118.209.91.160
4891	List your password temporarily	2014-02-13 22:08:57.855729+11	118.209.91.160
4892	Walk  a hole so it reflects your values	2014-02-13 22:08:59.527045+11	118.209.91.160
4893	Explore free time without assistance	2014-02-13 22:09:00.52037+11	118.209.91.160
4894	Gather together real progress while referring to beehives	2014-02-13 22:09:01.551525+11	118.209.91.160
4895	Maintain a word you heard today on the nature strip	2014-02-13 22:09:03.00148+11	118.209.91.160
4896	Wander trees during business hours	2014-02-13 22:09:04.527567+11	118.209.91.160
4931	Explain something with a double meaning once	2014-02-13 22:10:17.294537+11	118.209.91.160
4932	Order the future while walking	2014-02-13 22:10:21.03319+11	118.209.91.160
4933	Scrunch the colony using watercolour	2014-02-13 22:10:22.601721+11	118.209.91.160
4934	Tap into a tray so it is equal	2014-02-13 22:10:26.519223+11	118.209.91.160
4935	Spy on your password systematically	2014-02-13 22:10:27.824714+11	118.209.91.160
4936	Discover a way around a problem confidently	2014-02-13 22:10:32.337699+11	118.209.91.160
4937	Seek a program while referring to gardening	2014-02-13 22:10:34.232047+11	118.209.91.160
4938	Produce 9 steps using a recording device	2014-02-13 22:10:35.431255+11	118.209.91.160
4939	Pretend  information to the public	2014-02-13 22:10:36.513554+11	118.209.91.160
4940	Trust everything green and white in the simplest way possible	2014-02-13 22:10:38.911964+11	118.209.91.160
4941	Tap into focussed objects using only political rhetoric	2014-02-13 22:10:41.038763+11	118.209.91.160
4942	Give a communal dinner loudly	2014-02-13 22:10:43.235005+11	118.209.91.160
4943	Gather together the world to create a completely new image	2014-02-13 22:10:44.357609+11	118.209.91.160
4944	Plot on a graph a useful object without telling anyone	2014-02-13 22:10:47.935265+11	118.209.91.160
4945	Design the world in 3 ways	2014-02-13 22:10:49.9542+11	118.209.91.160
4946	Subvert the rules   to a stranger	2014-02-13 22:10:51.105374+11	118.209.91.160
4947	Maintain a see-saw over five minutes	2014-02-13 22:10:52.274418+11	118.209.91.160
4948	List out the front of your house quietly	2014-02-13 22:10:54.940243+11	118.209.91.160
4949	Donate a see-saw in secret	2014-02-13 22:10:56.447437+11	118.209.91.160
4950	Carve something small  creatively	2014-02-13 22:10:57.49119+11	118.209.91.160
4951	Speak  information on your own	2014-02-13 22:10:58.615723+11	118.209.91.160
4952	Group together an alternative freely	2014-02-13 22:11:00.046291+11	118.209.91.160
4953	Single out migration in secret	2014-02-13 22:11:01.201903+11	118.209.91.160
4954	Cover an unusual scene to create a completely new image	2014-02-13 22:11:02.241241+11	118.209.91.160
4955	Systematise a mug in the form of a ransom note	2014-02-13 22:11:03.674491+11	118.209.91.160
4956	Observe something with a double meaning backing it up with research	2014-02-13 22:11:04.778884+11	118.209.91.160
4957	Act on outside quietly	2014-02-13 22:11:06.237594+11	118.209.91.160
4958	Plot    branches differently	2014-02-13 22:11:07.505683+11	118.209.91.160
4959	Spy on a new slogan with a public outcome in mind	2014-02-13 22:11:08.593097+11	118.209.91.160
4960	Send a hole convincingly	2014-02-13 22:11:09.920344+11	118.209.91.160
4961	Plot on a graph an alternative relating to a gallery	2014-02-13 22:11:11.041321+11	118.209.91.160
4962	Model a sculpture over 7 minutes	2014-02-13 22:11:12.3304+11	118.209.91.160
4963	Hack trees by planning the next move	2014-02-13 22:11:13.461653+11	118.209.91.160
4964	Carve 6 synonyms to initiate progress	2014-02-13 22:11:14.678782+11	118.209.91.160
4965	Divulge the amount of free time you have like a novice	2014-02-13 22:11:20.334134+11	118.209.91.160
4966	Source the chain of evidence once	2014-02-13 22:11:21.841767+11	118.209.91.160
4967	Dis-organise how you might begin to withdraw your dependency on technology without showing any proof	2014-02-13 22:11:23.245828+11	118.209.91.160
4968	Single out a dictionary into a drawing	2014-02-13 22:11:24.684497+11	118.209.91.160
4969	Plot on a graph change with a catchy title	2014-02-13 22:11:26.366104+11	118.209.91.160
4970	Collaborate with something convincingly	2014-02-13 22:11:27.916754+11	118.209.91.160
4971	Distrupt an agreement privately	2014-02-13 22:11:30.175251+11	118.209.91.160
4972	Take a photo of a powerpoint presentation when you should be doing something else	2014-02-13 22:11:33.158138+11	118.209.91.160
4973	Follow spectacles in a public place	2014-02-13 22:11:34.586947+11	118.209.91.160
4974	Write a list of rules until you are happy with the end result	2014-02-13 22:11:35.688409+11	118.209.91.160
4975	Gather together something new by swapping	2014-02-13 22:11:39.290966+11	118.209.91.160
4976	Give the political through a process of elimination	2014-02-13 22:11:41.90594+11	118.209.91.160
4977	Group multiple images of your love of a particular person considering last century	2014-02-13 22:11:44.75077+11	118.209.91.160
4978	Paint with watercolour Australian symbolism once	2014-02-13 22:11:46.534153+11	118.209.91.160
5023	Avoid the idea of nationality to a stranger	2014-02-13 22:13:16.744734+11	118.209.91.160
5024	Replace stationery on your own	2014-02-13 22:13:17.86516+11	118.209.91.160
5025	Reveal a dollar for yourself	2014-02-13 22:13:19.217423+11	118.209.91.160
5026	Create a banner which refers to the fourth world into a ball	2014-02-13 22:13:20.381012+11	118.209.91.160
5027	Rearrange a set of instructions in a graph of rainbow colours	2014-02-13 22:13:22.52484+11	118.209.91.160
5028	Research a new system unintuitively	2014-02-13 22:13:23.284897+11	118.209.91.160
5029	Email particular ideas openly	2014-02-13 22:13:24.257445+11	118.209.91.160
5030	Present a garden to a stranger	2014-02-13 22:13:25.69083+11	118.209.91.160
5031	Act on a set of instructions helplessly	2014-02-13 22:13:27.095973+11	118.209.91.160
5032	Make up a gathering in photoshop	2014-02-13 22:13:28.447179+11	118.209.91.160
5033	Pair the economy do this 7 times	2014-02-13 22:13:29.665657+11	118.209.91.160
5034	Price good and bad in capitals	2014-02-13 22:13:30.797546+11	118.209.91.160
5035	Print out something without touching	2014-02-13 22:13:31.907682+11	118.209.91.160
5036	Give your love of a particular person by deduction	2014-02-13 22:13:35.079037+11	118.209.91.160
5037	Share everything you see in the next 27 seconds while walking	2014-02-13 22:13:36.419202+11	118.209.91.160
5038	Expose a balloon so that we will be really surprised	2014-02-13 22:13:39.477697+11	118.209.91.160
5039	Reinvent an impracticle object to your detriment	2014-02-13 22:13:40.797487+11	118.209.91.160
5040	Shape nothing with other people	2014-02-13 22:13:42.766603+11	118.209.91.160
5041	Group together the amount of free time you have online	2014-02-13 22:13:44.09656+11	118.209.91.160
5042	Tweet the idea of happiness with a catchy title	2014-02-13 22:13:45.604931+11	118.209.91.160
5043	Research something round in the form of a ransom note	2014-02-13 22:13:47.47299+11	118.209.91.160
5044	Borrow a useless thing in camouflage	2014-02-13 22:13:48.342818+11	118.209.91.160
5045	Manage what success means to you thoughtfully	2014-02-13 22:13:49.560184+11	118.209.91.160
5046	Re-write a trail of destruction without telling anyone	2014-02-13 22:13:51.504953+11	118.209.91.160
5047	Move the city online	2014-02-13 22:13:53.983284+11	118.209.91.160
5048	Act on the institution efficiently	2014-02-13 22:13:56.253447+11	118.209.91.160
5049	Undo what failure means to you while referring to gardening	2014-02-13 22:13:57.470368+11	118.209.91.160
5050	Order the headlines in the gallery	2014-02-13 22:13:58.762561+11	118.209.91.160
5051	Abstract a circle in the colours of your flag	2014-02-13 22:13:59.787048+11	118.209.91.160
5052	Subvert management in 4 sentences	2014-02-13 22:14:02.796382+11	118.209.91.160
5053	Undo a collection of blue things to a stranger	2014-02-13 22:14:05.28435+11	118.209.91.160
5054	Pretend  your password in photoshop	2014-02-13 22:14:06.661186+11	118.209.91.160
5055	Build the moon by deduction	2014-02-13 22:14:08.320437+11	118.209.91.160
5056	Photocopy the impossible while talking to people	2014-02-13 22:14:10.846049+11	118.209.91.160
5057	Create a banner which refers to cycle in pen	2014-02-13 22:14:11.997573+11	118.209.91.160
5058	Wear stone actively	2014-02-13 22:14:13.566951+11	118.209.91.160
5059	Store a sculpture in public space	2014-02-13 22:14:15.457271+11	118.209.91.160
5060	Act on lunch thoughtfully	2014-02-13 22:14:16.664053+11	118.209.91.160
5061	Suggest branches in the wrong order	2014-02-13 22:14:20.074651+11	118.209.91.160
5062	Rewrite a set of instructions by swapping	2014-02-13 22:14:21.147907+11	118.209.91.160
5063	Source a list of rules as a map	2014-02-13 22:14:22.545087+11	118.209.91.160
5064	Undertake debt directly on the wall	2014-02-13 22:14:23.902279+11	118.209.91.160
5065	Avoid a dollar with others	2014-02-13 22:14:25.086981+11	118.209.91.160
5066	Undo the game of tug-of-war confidently	2014-02-13 22:14:27.249004+11	118.209.91.160
5067	Visualise waste on the nature strip	2014-02-13 22:14:28.09415+11	118.209.91.160
5068	Abstract a demonstration in a variety of ways	2014-02-13 22:14:29.496652+11	118.209.91.160
5069	Wear space in gold	2014-02-13 22:14:31.071142+11	118.209.91.160
5070	Use  whistleblowing relating to a gallery	2014-02-13 22:14:35.448296+11	118.209.91.160
5071	Send a newspaper clipping of a large circle to the public	2014-02-13 22:14:36.428868+11	118.209.91.160
5072	Write a letter about offcuts in the size of a book	2014-02-13 22:14:38.109696+11	118.209.91.160
5073	Spy on a video  without thinking too much	2014-02-13 22:14:40.187514+11	118.209.91.160
5074	Shape the moon in camouflage	2014-02-13 22:14:41.489142+11	118.209.91.160
5075	Photograph elastic bands in 8 sentences	2014-02-13 22:14:42.715139+11	118.209.91.160
5076	Publicly declare a commodity with your hands	2014-02-13 22:14:44.0009+11	118.209.91.160
5077	Find D.I.Y without language	2014-02-13 22:14:45.742814+11	118.209.91.160
5078	Speak  tools addictively	2014-02-13 22:14:46.703771+11	118.209.91.160
5079	Turn around a piece of paper for yourself	2014-02-13 22:14:48.115276+11	118.209.91.160
5080	List a small list by planning the next move	2014-02-13 22:14:49.494892+11	118.209.91.160
5081	Detail a nation-state to the world	2014-02-13 22:14:51.290565+11	118.209.91.160
5082	Group multiple images of a meal to form a link to the past	2014-02-13 22:14:52.460249+11	118.209.91.160
5083	Audit whistleblowing undercover	2014-02-13 22:14:54.151769+11	118.209.91.160
5084	Bring a colony of ants religiously	2014-02-13 22:14:55.267023+11	118.209.91.160
5085	Make a colour palette of the idea of nationality in the simplest way possible	2014-02-13 22:14:56.823801+11	118.209.91.160
5086	Draw salvaged material and record what you find	2014-02-13 22:14:58.661232+11	118.209.91.160
5087	Suggest a powerpoint presentation systematically	2014-02-13 22:14:59.944103+11	118.209.91.160
5088	Post random tasks in photographic form	2014-02-13 22:15:01.252937+11	118.209.91.160
5089	Trust a balloon thoroughly checking	2014-02-13 22:15:02.600641+11	118.209.91.160
5090	Make up your password systematically	2014-02-13 22:15:04.131621+11	118.209.91.160
5091	Invent a mug and combine	2014-02-13 22:15:07.014847+11	118.209.91.160
5092	Paint a new slogan in another language	2014-02-13 22:15:08.051233+11	118.209.91.160
5093	Swap acts of resistance into a ball	2014-02-13 22:15:09.551182+11	118.209.91.160
5094	Colour in  a movement so you are affected	2014-02-13 22:15:10.588608+11	118.209.91.160
5095	Shape your camera in a closed form	2014-02-13 22:15:12.015116+11	118.209.91.160
5096	Colour in  practical objects using an old technique	2014-02-13 22:15:13.207739+11	118.209.91.160
5097	Snap staples by planning the next move	2014-02-13 22:15:16.098323+11	118.209.91.160
5098	Modify a movement directly on the wall	2014-02-13 22:15:17.657827+11	118.209.91.160
5099	Suspend the surface to initiate progress	2014-02-13 22:15:18.847012+11	118.209.91.160
5100	Write a letter about a hole arbritrarily	2014-02-13 22:15:20.037528+11	118.209.91.160
5101	Say a chair to capture the moment	2014-02-13 22:15:21.928051+11	118.209.91.160
5102	Assemble Australian symbolism online	2014-02-13 22:15:23.036676+11	118.209.91.160
5103	Plan this and that efficiently	2014-02-13 22:15:25.627042+11	118.209.91.160
5104	Pretend  staples diplomatically	2014-02-13 22:15:28.005179+11	118.209.91.160
5105	Deliver a limited edition in a minute	2014-02-13 22:15:29.28954+11	118.209.91.160
5106	Send productivity in a public place	2014-02-13 22:15:30.564243+11	118.209.91.160
5107	Suggest a round table in the colours of your flag	2014-02-13 22:15:31.907548+11	118.209.91.160
5108	Collate raw material of the future	2014-02-13 22:15:33.368872+11	118.209.91.160
5109	Send a newspaper clipping of knowledge in monotone	2014-02-13 22:15:35.585646+11	118.209.91.160
5110	Colour in  staples without touching	2014-02-13 22:15:37.046267+11	118.209.91.160
5111	Record an image-editing program in a closed form	2014-02-13 22:15:38.843184+11	118.209.91.160
5112	Whistle an unusual scene to create a completely new image	2014-02-13 22:15:40.200539+11	118.209.91.160
5113	Wander a useless thing arbritrarily	2014-02-13 22:15:42.531945+11	118.209.91.160
5114	Check the fourth world loudly	2014-02-13 22:15:44.028205+11	118.209.91.160
5115	Make the economy using free software	2014-02-13 22:15:44.992756+11	118.209.91.160
5116	Speak about a meal so its function is questionable	2014-02-13 22:15:46.265036+11	118.209.91.160
5117	Make up what you see using an old technique	2014-02-13 22:15:48.076422+11	118.209.91.160
5118	Consider  a stranger unacceptably	2014-02-13 22:15:49.918917+11	118.209.91.160
5119	Price 6 steps as an indulgence	2014-02-13 22:15:51.281236+11	118.209.91.160
5120	Divulge work to closely notice the details	2014-02-13 22:15:52.847335+11	118.209.91.160
5121	Systematise the colony diplomatically	2014-02-13 22:15:54.414902+11	118.209.91.160
5122	Pair an unusual scene with tape	2014-02-13 22:15:55.582836+11	118.209.91.160
5123	Form an atlas and combine	2014-02-13 22:15:57.833526+11	118.209.91.160
5124	Use  your thoughts during work hours	2014-02-13 22:15:59.561254+11	118.209.91.160
5125	Arrange salvaged material in black and white	2014-02-13 22:16:09.256217+11	118.209.91.160
5126	Explain a program with a pencil	2014-02-13 22:16:10.070199+11	118.209.91.160
5127	Maintain everything you see in the next 9 seconds to the world	2014-02-13 22:16:11.108637+11	118.209.91.160
5128	Change your inbox to the world	2014-02-13 22:16:12.562553+11	118.209.91.160
5129	Bring the garden and double it	2014-02-13 22:16:13.728168+11	118.209.91.160
5130	Order a colony of ants confidently	2014-02-13 22:16:14.662131+11	118.209.91.160
5131	Document a chair in the right order	2014-02-13 22:16:15.601822+11	118.209.91.160
5132	Observe social justice on a piece of paper	2014-02-13 22:16:16.582771+11	118.209.91.160
5133	Modify a meeting while standing still	2014-02-13 22:16:21.383499+11	118.209.91.160
5134	Draw something without touching	2014-02-13 22:16:22.618833+11	118.209.91.160
5135	Create something intricate by deduction	2014-02-13 22:16:25.014507+11	118.209.91.160
5136	Find an example of your job and record what you find	2014-02-13 22:16:27.021336+11	118.209.91.160
5137	Hack free time by deduction	2014-02-13 22:16:29.046164+11	118.209.91.160
5138	Hand out a net   then examine how it relates to the idea of revolution	2014-02-13 22:16:30.484551+11	118.209.91.160
5139	Replicate D.I.Y in the most innovative way you can think of	2014-02-13 22:16:31.693449+11	118.209.91.160
5140	Connect a limited edition on your own	2014-02-13 22:16:32.440643+11	118.209.91.160
5141	Record social justice and document the findings to share	2014-02-13 22:16:34.715355+11	118.209.91.160
5142	Document two parties while referring to gardening	2014-02-13 22:16:36.172587+11	118.209.91.160
5143	Picture an orchestra arbritrarily	2014-02-13 22:16:37.080443+11	118.209.91.160
5144	Undo average inside a square	2014-02-13 22:16:38.17984+11	118.209.91.160
5145	Deliberate a water source using an old technique	2014-02-13 22:16:39.314408+11	118.209.91.160
5146	Plot on a graph 9 steps to your detriment	2014-02-13 22:16:40.677408+11	118.209.91.160
5147	Reverse engineer social justice by deduction	2014-02-13 22:16:41.521765+11	118.209.91.160
5148	Whittle an orchestra religiously	2014-02-13 22:16:42.881566+11	118.209.91.160
5149	Divulge a colony of ants secretly	2014-02-13 22:16:45.751343+11	118.209.91.160
5150	Seek raw material in your line of sight	2014-02-13 22:16:47.069596+11	118.209.91.160
5151	Discover your favourite image in public	2014-02-13 22:16:48.342249+11	118.209.91.160
5152	Paint free time obsessively	2014-02-13 22:16:49.942115+11	118.209.91.160
5153	Mime 5 steps in black and white	2014-02-13 22:16:50.843117+11	118.209.91.160
5154	Mime a fireplace and connect the dots	2014-02-13 22:16:52.011074+11	118.209.91.160
5155	Abstract an orchestra with your hands	2014-02-13 22:16:53.344656+11	118.209.91.160
5156	Multiply an impracticle object and pick your favourite	2014-02-13 22:16:54.280484+11	118.209.91.160
5157	Order real progress one way	2014-02-13 22:16:55.336217+11	118.209.91.160
5158	Group together a game of cards religiously	2014-02-13 22:16:56.863403+11	118.209.91.160
5159	Walk  plants in 7 sentences	2014-02-13 22:16:58.44153+11	118.209.91.160
5160	Create elastic bands then examine how it relates to the idea of revolution	2014-02-13 22:16:59.279605+11	118.209.91.160
5161	Single out the rules of tennis in a graph of rainbow colours	2014-02-13 22:17:03.590673+11	118.209.91.160
5162	Walk  acts of resistance so that we will be really surprised	2014-02-13 22:17:05.415859+11	118.209.91.160
5163	Donate whistleblowing in small-scale	2014-02-13 22:17:06.877858+11	118.209.91.160
5164	Plant a new world order with scepticism	2014-02-13 22:17:08.098891+11	118.209.91.160
5165	Toss a useful object and connect the dots	2014-02-13 22:17:09.178661+11	118.209.91.160
5166	Uncover branches and document the findings to share	2014-02-13 22:17:10.478888+11	118.209.91.160
5167	Create a pamphlet explaining a colony of ants with a public outcome in mind	2014-02-13 22:17:13.893118+11	118.209.91.160
5168	Make stationery quietly	2014-02-13 22:17:16.2017+11	118.209.91.160
5169	Undertake a scapegoat helplessly	2014-02-13 22:17:21.586949+11	118.209.91.160
5170	Introduce currency without showing anyone	2014-02-13 22:17:22.834368+11	118.209.91.160
5171	Collage the colour palette of an image while referring to beehives	2014-02-13 22:17:23.773342+11	118.209.91.160
5172	Systematise the newspaper with others	2014-02-13 22:17:24.755504+11	118.209.91.160
5173	Decipher something with a double meaning in a graph of blue hues	2014-02-13 22:17:26.028769+11	118.209.91.160
5174	Source the colour palette of an image with other people	2014-02-13 22:17:28.490776+11	118.209.91.160
5175	Wander free time using free software	2014-02-13 22:17:30.725121+11	118.209.91.160
5176	Act a 6-word manifesto side by side	2014-02-13 22:17:32.706869+11	118.209.91.160
5177	Systematise a colony of ants being completely dishonest	2014-02-13 22:17:34.192723+11	118.209.91.160
5178	Exhaust  sticks while talking to people	2014-02-13 22:17:36.083606+11	118.209.91.160
5179	Undo seeds over 57 seconds	2014-02-13 22:17:37.34374+11	118.209.91.160
5180	Exhaust knowledge to create a completely new image	2014-02-13 22:17:39.380145+11	118.209.91.160
5181	Toss the ideal newspaper over five minutes	2014-02-13 22:17:40.650907+11	118.209.91.160
5182	Discover a flagpole religiously	2014-02-13 22:17:41.962335+11	118.209.91.160
5183	Distrupt how your mobile phone is used on any given day by swapping	2014-02-13 22:17:43.375476+11	118.209.91.160
5184	Write a letter about a piece of paper when you should be doing something else	2014-02-13 22:17:44.837687+11	118.209.91.160
5185	Turn around a dollar without showing anyone	2014-02-13 22:19:59.956501+11	118.209.91.160
5186	Source a garden  share it with us	2014-02-13 22:20:00.984306+11	118.209.91.160
5187	Source the idea of happiness in small-scale	2014-02-13 22:20:01.995442+11	118.209.91.160
5188	Donate information and combine	2014-02-13 22:20:03.126574+11	118.209.91.160
5189	Sculpt the newspaper with your hands	2014-02-13 22:20:04.106625+11	118.209.91.160
5190	Learn about a program in black and white	2014-02-13 22:20:05.127566+11	118.209.91.160
5191	Take a photo of the same thing unacceptably	2014-02-13 22:20:08.278609+11	118.209.91.160
5192	Whittle branches with your hands	2014-02-13 22:22:32.779709+11	118.209.91.160
5193	Calculate raw material simply	2014-02-13 22:22:34.743783+11	118.209.91.160
5194	Draw your camera in the wrong order	2014-02-13 22:22:38.911093+11	118.209.91.160
5195	Photocopy a user-guide with your hands	2014-02-13 22:22:39.802189+11	118.209.91.160
5196	Speak about a mug in a gallery	2014-02-13 22:22:41.183964+11	118.209.91.160
5197	Bring about everything you see in the next 8 seconds using blu-tak	2014-02-13 22:22:42.178665+11	118.209.91.160
5198	Play secularity in camouflage	2014-02-13 22:22:43.526725+11	118.209.91.160
5199	Calculate patience in secret	2014-02-13 22:22:44.724296+11	118.209.91.160
5200	Pre-record a uniform so it is equal	2014-02-13 22:22:46.163418+11	118.209.91.160
5201	Protect a handshake now	2014-02-13 22:22:47.620421+11	118.209.91.160
5202	Dis-organise data to initiate progress	2014-02-13 22:22:49.124435+11	118.209.91.160
5203	Find an example of what is within reach loudly	2014-02-13 22:22:50.05307+11	118.209.91.160
5204	Read something without compromise	2014-02-13 22:22:51.869113+11	118.209.91.160
5205	Reverse a safe on the nature strip	2014-02-13 22:22:53.045653+11	118.209.91.160
5206	Whittle a flagpole as a list	2014-02-13 22:22:54.573128+11	118.209.91.160
5207	Donate positive images of collective action on the wall	2014-02-13 22:22:56.182503+11	118.209.91.160
5208	Modify a positive gesture and use it as currency	2014-02-13 22:22:57.465172+11	118.209.91.160
5209	Plot    a slogan at home	2014-02-13 22:22:58.882683+11	118.209.91.160
5210	Reinvent something into a drawing	2014-02-13 22:23:00.244726+11	118.209.91.160
5211	Carve a piece of paper mindfully	2014-02-13 22:23:02.667803+11	118.209.91.160
5212	Undertake a fireplace temporarily	2014-02-13 22:23:03.752047+11	118.209.91.160
5213	Arrange your job on the nature strip	2014-02-13 22:23:05.32197+11	118.209.91.160
5214	Design everything you see in the next 19 seconds on the floor	2014-02-13 22:23:06.738452+11	118.209.91.160
5215	Photograph knowledge in a graph of blue hues	2014-02-13 22:23:07.481402+11	118.209.91.160
5216	Extract a round table like a spy	2014-02-13 22:23:08.644333+11	118.209.91.160
5217	Walk  time in public	2014-02-13 22:23:09.51129+11	118.209.91.160
5218	Mime 8 synonyms slowly	2014-02-13 22:23:10.661971+11	118.209.91.160
5219	Reverse your love of a particular person and double it	2014-02-13 22:23:11.401375+11	118.209.91.160
5220	Test information during business hours	2014-02-13 22:23:14.833999+11	118.209.91.160
5221	Modify anything as a pie chart	2014-02-13 22:23:16.229117+11	118.209.91.160
5222	Try how you might begin to withdraw your dependency on technology by swapping	2014-02-13 22:23:33.04141+11	118.209.91.160
5223	Present 4 steps as though your life depends on it	2014-02-13 22:23:34.249585+11	118.209.91.160
5224	Arrange wood over 13 minutes	2014-02-13 22:24:00.459669+11	118.209.91.160
5225	Categorise practical objects like a spy	2014-02-13 22:24:01.400506+11	118.209.91.160
5226	Move a new object and attempt to extract a meaning	2014-02-13 22:24:03.121817+11	118.209.91.160
5227	Give the notion of work  so that we will be really surprised	2014-02-13 22:24:04.12955+11	118.209.91.160
5228	Rearrange a log so it is equal	2014-02-13 22:24:05.390803+11	118.209.91.160
5229	Undo this and that using an old technique	2014-02-13 22:24:06.447153+11	118.209.91.160
5230	Replicate a large circle unacceptably	2014-02-13 22:24:07.370033+11	118.209.91.160
5231	Hand out particular ideas diplomatically	2014-02-13 22:24:08.580678+11	118.209.91.160
5232	Expand on a garden with optimism	2014-02-13 22:24:09.881267+11	118.209.91.160
5233	Check money secretly	2014-02-13 22:24:10.856862+11	118.209.91.160
5234	Shape management repeatedly	2014-02-13 22:24:11.925634+11	118.209.91.160
5235	In your head, formulate outside when you should be doing something else	2014-02-13 22:24:13.321788+11	118.209.91.160
5236	Source currency thinking about form and function	2014-02-13 22:24:14.047652+11	118.209.91.160
5237	Avoid anything trustfully	2014-02-13 22:24:15.663034+11	118.209.91.160
5238	Investigate future technologies convincingly	2014-02-13 22:24:16.773992+11	118.209.91.160
5239	Pretend  a user-guide in the gallery	2014-02-13 22:24:17.602293+11	118.209.91.160
5240	Toss around bureaucracy quickly	2014-02-13 22:24:18.073529+11	118.209.91.160
5241	Source your favourite image and use it as currency	2014-02-13 22:24:45.981735+11	118.209.91.160
5242	Toss around an agreement thoughtfully	2014-02-13 22:24:47.065773+11	118.209.91.160
5243	Sew a net   and use it as currency	2014-02-13 22:24:50.156165+11	118.209.91.160
5244	Check power referring to your favourite	2014-02-13 22:24:55.863335+11	118.209.91.160
5245	Connect something to closely notice the details	2014-02-13 22:24:57.834617+11	118.209.91.160
5246	Change the surface in the usual way	2014-02-13 22:24:59.2653+11	118.209.91.160
5247	Illustrate how you are implicated in systems using statistics	2014-02-13 22:25:01.118381+11	118.209.91.160
5248	Scratch  sticks when you should be doing something else	2014-02-13 22:25:02.552004+11	118.209.91.160
5249	Represent the newspaper with optimism	2014-02-13 22:25:03.744068+11	118.209.91.160
5250	Colour productivity like it will change the world	2014-02-13 22:25:05.00698+11	118.209.91.160
5251	Identify weeds like a novice	2014-02-13 22:25:06.218679+11	118.209.91.160
5252	Borrow weeds in the form of a ransom note	2014-02-13 22:25:07.25348+11	118.209.91.160
5253	Act out lunch at home	2014-02-13 22:25:08.615397+11	118.209.91.160
5254	In your head, formulate the political through a process of elimination	2014-02-13 22:25:09.985713+11	118.209.91.160
5255	Ruin Australian symbolism simply	2014-02-13 22:25:11.558192+11	118.209.91.160
5256	Replace outside directly on the wall	2014-02-13 22:25:12.657719+11	118.209.91.160
5257	Deliberate patience for yourself	2014-02-13 22:25:14.007924+11	118.209.91.160
5258	Protect political rhetoric by deduction	2014-02-13 22:25:15.10289+11	118.209.91.160
5259	Consider  plants in a gallery	2014-02-13 22:25:16.388865+11	118.209.91.160
5260	Create a hole in the form of a ransom note	2014-02-13 22:25:17.487709+11	118.209.91.160
5261	Define future technologies in a new order	2014-02-13 22:25:19.248007+11	118.209.91.160
5262	Plant a stranger do this 5 times	2014-02-13 22:25:20.65025+11	118.209.91.160
5263	Exhaust a game of cards and use it as currency	2014-02-13 22:25:21.655252+11	118.209.91.160
5264	Record what success means to you over 29 hours	2014-02-13 22:25:24.739365+11	118.209.91.160
5265	Create a banner which refers to a limited edition with the next person you see	2014-02-13 22:25:25.9263+11	118.209.91.160
5266	Cut and paste a new system on a piece of paper	2014-02-13 22:25:27.995827+11	118.209.91.160
5267	Bring the political using statistics	2014-02-13 22:25:29.987654+11	118.209.91.160
5268	Avoid a meal as a map	2014-02-13 22:25:31.708766+11	118.209.91.160
5269	Reinvent a round table in the simplest way possible	2014-02-13 22:25:32.766142+11	118.209.91.160
5270	Take a photo of spectacles and throw it out the window	2014-02-13 22:25:34.417707+11	118.209.91.160
5271	Detail 10 synonyms intuitively	2014-02-13 22:25:36.446635+11	118.209.91.160
5272	Teach nothing with the next person you see	2014-02-13 22:25:37.445831+11	118.209.91.160
5273	Rewrite particular ideas in 4 minutes	2014-02-13 22:25:38.861827+11	118.209.91.160
5274	Seek 8 synonyms in public	2014-02-13 22:25:39.574209+11	118.209.91.160
5275	Reveal the moon privately	2014-02-13 22:25:40.465579+11	118.209.91.160
5276	Collaborate with the truth in the form of instructions	2014-02-13 22:25:41.926127+11	118.209.91.160
5277	Sculpt D.I.Y without telling anyone	2014-02-13 22:25:43.742059+11	118.209.91.160
5278	Scrunch a handshake in camouflage	2014-02-13 22:25:45.847693+11	118.209.91.160
5279	Converse the newspaper with no preconceived idea	2014-02-13 22:25:48.311153+11	118.209.91.160
5280	List your screen  share it with us	2014-02-13 22:25:49.434929+11	118.209.91.160
5281	Walk  a new world order in public space	2014-02-13 22:25:52.381081+11	118.209.91.160
5282	Gather together a piece of paper in photoshop	2014-02-13 22:25:53.565041+11	118.209.91.160
5283	Modify the idea of happiness convincingly	2014-02-13 22:25:57.767586+11	118.209.91.160
5284	Follow the game of tug-of-war as if functional	2014-02-13 22:26:00.411031+11	118.209.91.160
5285	Print out an impracticle object without using words	2014-02-13 22:26:01.397838+11	118.209.91.160
5286	Rearrange money in a closed form	2014-02-13 22:26:02.507434+11	118.209.91.160
5287	Split a list of rules quietly	2014-02-13 22:26:03.607268+11	118.209.91.160
5288	Avoid work in a public place	2014-02-13 22:26:04.824632+11	118.209.91.160
5289	Speak about a nation-state with a public outcome in mind	2014-02-13 22:26:21.540921+11	118.209.91.160
5290	Email average with your hands	2014-02-13 22:26:23.048263+11	118.209.91.160
5291	Draw nothing repeatedly	2014-02-13 22:26:23.945898+11	118.209.91.160
5292	Toss around something intricate so its function is questionable	2014-02-13 22:26:25.217052+11	118.209.91.160
5293	Re-write a new slogan and combine	2014-02-13 22:26:28.201403+11	118.209.91.160
5294	Re-write images of other people  in the most innovative way you can think of	2014-02-13 22:26:29.245501+11	118.209.91.160
5295	Spend time thinking about a movement without compromise	2014-02-13 22:26:30.891078+11	118.209.91.160
5296	Represent energy efficiency and question your findings	2014-02-13 22:26:32.064666+11	118.209.91.160
5297	Plot on a graph space and pick your favourite	2014-02-13 22:26:33.174769+11	118.209.91.160
5298	Explain a megaphone temporarily	2014-02-13 22:26:34.879231+11	118.209.91.160
5299	Wander branches to create a completely new image	2014-02-13 22:26:36.587552+11	118.209.91.160
5300	Confuse offcuts by networking	2014-02-13 22:26:38.345911+11	118.209.91.160
5301	Mark wood in a minute	2014-02-13 22:26:40.875938+11	118.209.91.160
5302	Protect the headlines one way	2014-02-13 22:26:42.628164+11	118.209.91.160
5303	Break a border being completely dishonest	2014-02-13 22:26:43.692992+11	118.209.91.160
5304	Send a newspaper clipping of positive images of collective action actively	2014-02-13 22:26:45.30306+11	118.209.91.160
5305	Distribute raw material directly	2014-02-13 22:26:46.674294+11	118.209.91.160
5306	Write about the future imagining you are in isolation	2014-02-13 22:26:50.74417+11	118.209.91.160
5307	Suggest the idea of nationality on your own	2014-02-13 22:26:52.269539+11	118.209.91.160
5308	Write about the moon mindfully	2014-02-13 22:26:55.299094+11	118.209.91.160
5309	Record the newspaper during work hours	2014-02-13 22:26:58.400804+11	118.209.91.160
5310	Find an object from your top drawer in the right order	2014-02-13 22:27:01.133778+11	118.209.91.160
5311	Speak about your role within a particular organisational structure and put two and two together	2014-02-13 22:27:02.061493+11	118.209.91.160
5312	Toss growth with your hands	2014-02-13 22:27:02.963541+11	118.209.91.160
5313	Send a newspaper clipping of power in the right order	2014-02-13 22:27:03.981344+11	118.209.91.160
5314	Order a demonstration while walking	2014-02-13 22:27:09.420663+11	118.209.91.160
5315	Speak about trees without showing any proof	2014-02-13 22:27:10.69689+11	118.209.91.160
5316	Seek the amount of free time you have when you should be doing something else	2014-02-13 22:27:12.060882+11	118.209.91.160
5317	Type a boat during business hours	2014-02-13 22:27:13.533054+11	118.209.91.160
5318	Whittle the political in the simplest way possible	2014-02-13 22:27:14.608281+11	118.209.91.160
5319	Check Australian symbolism like a robot	2014-02-13 22:27:15.765428+11	118.209.91.160
5320	Reinvent an orchestra once	2014-02-13 22:27:17.490438+11	118.209.91.160
5321	Reveal elastic bands as though your life depends on it	2014-02-13 22:27:18.412198+11	118.209.91.160
5322	Design 7 steps without language	2014-02-13 22:27:19.307976+11	118.209.91.160
5323	Picture your screen with tape	2014-02-13 22:27:20.123757+11	118.209.91.160
5324	Introduce your thoughts on the floor	2014-02-13 22:27:20.866113+11	118.209.91.160
5325	Extract food supply chains in camouflage	2014-02-13 22:27:22.984594+11	118.209.91.160
5326	Hand out a large circle creatively	2014-02-13 22:27:23.903467+11	118.209.91.160
5327	Hack cycle privately	2014-02-13 22:27:25.406455+11	118.209.91.160
5328	Dis-organise a game of cards freely	2014-02-13 22:27:27.045358+11	118.209.91.160
5329	Deliberate how you are implicated in systems and explain why	2014-02-13 22:27:27.971261+11	118.209.91.160
5330	Discuss a demonstration in a gallery	2014-02-13 22:27:29.661238+11	118.209.91.160
5331	Calculate the headlines as though your life depends on it	2014-02-13 22:27:30.851955+11	118.209.91.160
5332	Distribute the surface into a ball	2014-02-13 22:27:34.775498+11	118.209.91.160
5333	Decipher government over five minutes	2014-02-13 22:27:37.716758+11	118.209.91.160
5334	Give a video  creatively	2014-02-13 22:27:39.018923+11	118.209.91.160
5335	Destroy the crowd using found materials	2014-02-13 22:27:39.939197+11	118.209.91.160
5336	Carve your camera without language	2014-02-13 22:27:42.277337+11	118.209.91.160
5337	Bring about a stranger directly	2014-02-13 22:27:43.131479+11	118.209.91.160
5338	Discover random tasks obsessively	2014-02-13 22:27:44.244288+11	118.209.91.160
5339	Record a useful object by deduction	2014-02-13 22:27:46.943967+11	118.209.91.160
5340	Picture an object from your top drawer without assistance	2014-02-13 22:27:48.196366+11	118.209.91.160
5341	Grow the idea of nationality over 2 minutes	2014-02-13 22:27:49.459382+11	118.209.91.160
5342	Collage the rules   quickly	2014-02-13 22:27:50.64579+11	118.209.91.160
5343	Modify a chair during business hours	2014-02-13 22:27:51.964532+11	118.209.91.160
5344	Publicly declare your role within a particular organisational structure addictively	2014-02-13 22:27:52.949946+11	118.209.91.160
5345	Teach an unusual scene in hardcopy	2014-02-13 22:27:53.811345+11	118.209.91.160
5346	Explain the future with optimism	2014-02-13 22:27:55.237876+11	118.209.91.160
5347	Send a newspaper clipping of anything with a pencil	2014-02-13 22:27:56.555809+11	118.209.91.160
5348	Donate a useless thing by swapping	2014-02-13 22:27:58.697124+11	118.209.91.160
5349	Reverse engineer an atlas so it is equal	2014-02-13 22:28:00.281728+11	118.209.91.160
5350	Build a gathering over 57 seconds	2014-02-13 22:28:01.609531+11	118.209.91.160
5351	Change the economy trustfully	2014-02-13 22:28:02.30234+11	118.209.91.160
5352	Act a 7-word manifesto backing it up with research	2014-02-13 22:28:03.386433+11	118.209.91.160
5353	Email outside privately	2014-02-13 22:28:05.215832+11	118.209.91.160
5354	Converse the fourth world with scepticism	2014-02-13 22:28:06.665338+11	118.209.91.160
5355	Throw a small list like a robot	2014-02-13 22:28:07.624204+11	118.209.91.160
5356	Act out a list of rules using only political rhetoric	2014-02-13 22:28:08.559741+11	118.209.91.160
5357	Unleash two people using a recording device	2014-02-13 22:28:09.896586+11	118.209.91.160
5358	Read a net   and connect the dots	2014-02-13 22:28:11.443386+11	118.209.91.160
5359	Break down an orchestra considering last century	2014-02-13 22:28:13.126463+11	118.209.91.160
5360	Source the garden while talking to people	2014-02-13 22:28:16.52284+11	118.209.91.160
5361	Dis-organise the city diplomatically	2014-02-13 22:28:17.833278+11	118.209.91.160
5362	Scrunch stone like a novice	2014-02-13 22:29:41.549605+11	118.209.91.160
5363	Toss around exploitation using statistics	2014-02-13 22:29:42.627232+11	118.209.91.160
5364	Take a sample of  a limited edition to preexisting conditions	2014-02-13 22:29:45.83655+11	118.209.91.160
5365	Send through everything green and white over 34 hours	2014-02-13 22:29:46.784277+11	118.209.91.160
5366	Audit the same thing as a map	2014-02-13 22:29:49.198685+11	118.209.91.160
5367	Move random tasks quickly	2014-02-13 22:29:52.515351+11	118.209.91.160
5368	Create a pamphlet explaining political rhetoric loudly	2014-02-13 22:29:53.81284+11	118.209.91.160
5369	Exhaust images of other people  bureaucratically	2014-02-13 22:29:54.934967+11	118.209.91.160
5370	Invent the risks on the nature strip	2014-02-13 22:29:55.999091+11	118.209.91.160
5371	Rewrite a common approach slowly	2014-02-13 22:29:57.22801+11	118.209.91.160
5372	Photograph a mug to the world	2014-02-13 22:29:58.584938+11	118.209.91.160
5373	Rearrange a flagpole confidently	2014-02-13 22:30:00.262455+11	118.209.91.160
5374	Split the first 10 things you see on the wall	2014-02-13 22:30:01.484022+11	118.209.91.160
5375	Find the idea of happiness in the size of a book	2014-02-13 22:30:02.424345+11	118.209.91.160
5376	Sing the same word then cut that in half	2014-02-13 22:30:03.593698+11	118.209.91.160
5377	Exhaust a log unfairly	2014-02-13 22:30:05.169838+11	118.209.91.160
5378	Toss a slogan so it reflects your values	2014-02-13 22:30:06.393484+11	118.209.91.160
5379	Post the headlines unacceptably	2014-02-13 22:30:07.709882+11	118.209.91.160
5380	Price your location using only political rhetoric	2014-02-13 22:30:08.87392+11	118.209.91.160
5381	Try a limited edition being completely dishonest	2014-02-13 22:30:10.474155+11	118.209.91.160
5382	Discover a water source in monotone	2014-02-13 22:30:11.762724+11	118.209.91.160
5383	Publicly declare a limited edition in the size of a book	2014-02-13 22:30:13.171111+11	118.209.91.160
5384	Print out a list of rules online	2014-02-13 22:30:15.679455+11	118.209.91.160
5385	Follow two parties as a drawing	2014-02-13 22:30:17.226897+11	118.209.91.160
5386	Bring then photograph to preexisting conditions	2014-02-13 22:30:18.374392+11	118.209.91.160
5387	Represent food supply chains over 33 hours	2014-02-13 22:30:20.289457+11	118.209.91.160
5388	Invent what you see while standing still	2014-02-13 22:30:21.382028+11	118.209.91.160
5389	Single out salvaged material and throw it out the window	2014-02-13 22:30:22.794068+11	118.209.91.160
5390	Sculpt seeds temporarily	2014-02-13 22:30:24.112916+11	118.209.91.160
5391	Collaborate with meaning and combine	2014-02-13 22:30:25.037088+11	118.209.91.160
5392	Record a word you heard today as if functional	2014-02-13 22:30:26.945842+11	118.209.91.160
5393	Take a photo of waste in black and white	2014-02-13 22:30:29.119353+11	118.209.91.160
5394	Email a capitalist notion openly	2014-02-13 22:30:30.520502+11	118.209.91.160
5395	Bring about 8 images to the public	2014-02-13 22:30:31.839592+11	118.209.91.160
5396	Single out the impossible quietly	2014-02-13 22:30:32.589627+11	118.209.91.160
5397	Single out a list of rules and attempt to extract a meaning	2014-02-13 22:30:33.918343+11	118.209.91.160
5398	Break down into numbers good and bad in public	2014-02-13 22:30:35.829689+11	118.209.91.160
5399	Avoid seeds until you are happy with the end result	2014-02-13 22:30:37.810079+11	118.209.91.160
5400	Undo a demonstration and explain why	2014-02-13 22:30:39.750699+11	118.209.91.160
5401	Research a direction as a map	2014-02-13 22:30:40.71173+11	118.209.91.160
5402	Dis-organise the moon to create a completely new image	2014-02-13 22:30:42.064323+11	118.209.91.160
5403	Sign the city and record what you find	2014-02-13 22:30:46.187677+11	118.209.91.160
5404	Gather a megaphone as an indulgence	2014-02-13 22:30:51.224936+11	118.209.91.160
5405	Scrunch weeds as a map	2014-02-13 22:30:52.850036+11	118.209.91.160
5406	Split then photograph and double it	2014-02-13 22:30:53.656622+11	118.209.91.160
5407	Discuss a slogan to form a link to the past	2014-02-13 22:30:55.578986+11	118.209.91.160
5408	Maintain  sticks like a robot	2014-02-13 22:30:56.687726+11	118.209.91.160
5409	Fill collective action inside an irregular shape	2014-02-13 22:30:58.281261+11	118.209.91.160
5410	Deliver 4 synonyms by planning the next move	2014-02-13 22:30:59.452845+11	118.209.91.160
5411	Impose exploitation without assistance	2014-02-13 22:31:00.251965+11	118.209.91.160
5495	Discover a network as if functional	2014-02-14 10:33:04.524498+11	118.209.91.160
5496	Single out the world undercover	2014-02-14 10:33:06.812266+11	118.209.91.160
5497	Define beans in the usual way	2014-02-14 10:33:08.412599+11	118.209.91.160
5498	Design knowledge without thinking too much	2014-02-14 10:33:09.752514+11	118.209.91.160
5499	Avoid how your mobile phone is used on any given day referencing the idea of dis-organisation	2014-02-14 10:33:11.910694+11	118.209.91.160
5500	Extract plants in the gallery	2014-02-14 10:33:13.654439+11	118.209.91.160
5501	Whittle transparency over 57 seconds	2014-02-14 10:33:15.084369+11	118.209.91.160
5502	Cut and paste branches helplessly	2014-02-14 10:33:16.583289+11	118.209.91.160
5543	Audit practical objects obsessively	2014-02-14 10:35:24.869496+11	118.209.91.160
5544	Cover data then cut that in half	2014-02-14 10:35:27.135054+11	118.209.91.160
5545	Improve random tasks as a pie chart	2014-02-14 10:35:28.755059+11	118.209.91.160
5546	Detail work in photographic form	2014-02-14 10:35:31.956468+11	118.209.91.160
5547	Throw your location in the colours of your flag	2014-02-14 10:35:35.838216+11	118.209.91.160
5548	Single out social justice to capture the moment	2014-02-14 10:35:37.339503+11	118.209.91.160
5549	Dis-organise then photograph with a catchy title	2014-02-14 10:35:44.112799+11	118.209.91.160
5550	Colour staples on the nature strip	2014-02-14 10:35:45.275446+11	118.209.91.160
5551	Sign lunch mindfully	2014-02-14 10:35:46.311985+11	118.209.91.160
5552	Multiply  sticks unfairly	2014-02-14 10:35:48.375354+11	118.209.91.160
5553	Design the risks thoughtfully	2014-02-14 10:35:49.712724+11	118.209.91.160
5554	Gather management backing it up with research	2014-02-14 10:35:50.890437+11	118.209.91.160
5555	Rearrange a video  online	2014-02-14 10:35:52.313119+11	118.209.91.160
5556	Picture your password diplomatically	2014-02-14 10:35:55.497045+11	118.209.91.160
5557	Break down into numbers the notion of work  undercover	2014-02-14 10:35:56.851867+11	118.209.91.160
5558	Dis-organise the same thing intuitively	2014-02-14 10:35:58.061624+11	118.209.91.160
5559	Collect two parties privately	2014-02-14 10:35:59.098849+11	118.209.91.160
5560	Distrupt an atlas with a public outcome in mind	2014-02-14 10:36:00.228194+11	118.209.91.160
5561	Demonstrate the idea of happiness to initiate progress	2014-02-14 10:36:01.718931+11	118.209.91.160
5562	Assemble stone intuitively	2014-02-14 10:36:03.740341+11	118.209.91.160
5563	Detail this and that using a recording device	2014-02-14 10:36:04.883208+11	118.209.91.160
5564	Unleash something intricate in 4 ways	2014-02-14 10:36:06.86619+11	118.209.91.160
5565	Read what you see together	2014-02-14 10:36:08.261171+11	118.209.91.160
5566	Test the institution during work hours	2014-02-14 10:36:15.924529+11	118.209.91.160
5567	Undo the same thing of the future	2014-02-14 10:36:17.596366+11	118.209.91.160
5568	Test this and that randomly	2014-02-14 10:36:18.996895+11	118.209.91.160
5569	Plot on a graph raw material in the usual way	2014-02-14 10:36:23.57905+11	118.209.91.160
5570	Manage a secret handshake using watercolour	2014-02-14 10:36:25.011921+11	118.209.91.160
5571	Converse a boat when you should be doing something else	2014-02-14 10:36:26.474903+11	118.209.91.160
5572	Suspend a large circle and use it as currency	2014-02-14 10:36:28.066425+11	118.209.91.160
5573	Reverse growth through a process of elimination	2014-02-14 10:36:34.337506+11	118.209.91.160
5574	Break down into numbers something in another language	2014-02-14 10:36:39.468487+11	118.209.91.160
5575	Picture a piece of paper secretly	2014-02-14 10:36:40.879331+11	118.209.91.160
5576	Introduce a 2-word manifesto with the next person you see	2014-02-14 10:36:42.953713+11	118.209.91.160
5577	Brainstorm a word you heard today with optimism	2014-02-14 10:36:44.481994+11	118.209.91.160
5578	Explain work backing it up with research	2014-02-14 10:36:46.103421+11	118.209.91.160
5579	Snap a network openly	2014-02-14 10:36:49.261055+11	118.209.91.160
5580	Plot on a graph anything through trade	2014-02-14 10:36:50.567524+11	118.209.91.160
5581	Represent how you might begin to withdraw your dependency on technology in 2 minutes	2014-02-14 10:36:52.556293+11	118.209.91.160
5582	Reveal a new object into a ball	2014-02-14 10:36:53.451457+11	118.209.91.160
5583	Deliberate power using only political rhetoric	2014-02-14 10:36:54.801397+11	118.209.91.160
5584	Cover the amount of free time you have as a pie chart	2014-02-14 10:36:56.26154+11	118.209.91.160
5585	Pre-record silver coins online	2014-02-14 10:36:57.69148+11	118.209.91.160
5586	Store political rhetoric in a new order	2014-02-14 10:37:00.86832+11	118.209.91.160
5587	Read future technologies in a text message	2014-02-14 10:37:02.213882+11	118.209.91.160
5588	Confuse a communal dinner without thinking too much	2014-02-14 10:37:03.625034+11	118.209.91.160
5589	Build a user-guide when you should be doing something else	2014-02-14 10:37:05.20594+11	118.209.91.160
5590	Exhaust a log using found materials	2014-02-14 10:37:10.218469+11	118.209.91.160
5667	Source the newspaper so you are affected	2014-02-14 10:42:28.739366+11	118.209.91.160
5668	Rearrange something and document the findings to share	2014-02-14 10:42:30.970726+11	118.209.91.160
5412	Rearrange images of other people  with optimism	2014-02-13 23:00:12.881753+11	118.209.91.160
5413	Scratch a number you consider to be quite big without showing anyone	2014-02-13 23:00:14.637207+11	118.209.91.160
5414	Model images of other people  once	2014-02-14 08:58:11.08051+11	118.209.91.160
5415	Detail a list of rules with others	2014-02-14 08:58:20.470904+11	118.209.91.160
5416	Distribute space in a text message	2014-02-14 08:58:21.845025+11	118.209.91.160
5417	Collate a hole using found materials	2014-02-14 08:58:23.207222+11	118.209.91.160
5418	Unleash an object from your top drawer in a graph of blue hues	2014-02-14 08:58:25.219344+11	118.209.91.160
5419	Collect something with a double meaning using an old technique	2014-02-14 08:58:27.930737+11	118.209.91.160
5420	Check space with tape	2014-02-14 08:58:31.731962+11	118.209.91.160
5421	Test a small list creatively	2014-02-14 08:58:37.669672+11	118.209.91.160
5422	Sew exploitation while standing still	2014-02-14 08:58:40.384585+11	118.209.91.160
5423	Deliberate the fourth world in secret	2014-02-14 08:58:45.042265+11	118.209.91.160
5424	Photocopy the colony in a graph of rainbow colours	2014-02-14 08:58:48.601121+11	118.209.91.160
5425	Record positive images of collective action referring to your favourite	2014-02-14 08:58:54.520479+11	118.209.91.160
5426	Cut and paste the chain of evidence and connect the dots	2014-02-14 08:59:00.206895+11	118.209.91.160
5427	Act positive images of collective action helplessly	2014-02-14 08:59:05.872355+11	118.209.91.160
5428	Replicate a useful object when you should be doing something else	2014-02-14 08:59:08.501251+11	118.209.91.160
5429	Collate anything in your line of sight	2014-02-14 08:59:12.440034+11	118.209.91.160
5430	Take a sample of  a uniform slowly	2014-02-14 08:59:15.631839+11	118.209.91.160
5431	Type a slogan without showing anyone	2014-02-14 08:59:18.219643+11	118.209.91.160
5432	Make a colour palette of migration on the wall	2014-02-14 08:59:21.328733+11	118.209.91.160
5433	Break practical objects in the right order	2014-02-14 08:59:25.558824+11	118.209.91.160
5434	Grow the moon over five minutes	2014-02-14 08:59:30.178861+11	118.209.91.160
5435	Reverse data until you are happy with the end result	2014-02-14 08:59:34.672902+11	118.209.91.160
5436	Rewrite a dictionary idley	2014-02-14 08:59:37.500909+11	118.209.91.160
5437	Reassess 8 images randomly	2014-02-14 08:59:47.448626+11	118.209.91.160
5438	Create a banner which refers to a network efficiently	2014-02-14 08:59:54.148559+11	118.209.91.160
5439	Take a sample of  then photograph in another language	2014-02-14 09:00:32.53135+11	118.209.91.160
5440	Reassess your location without thinking too much	2014-02-14 10:29:05.059267+11	118.209.91.160
5441	Walk  migration on the floor	2014-02-14 10:29:08.421427+11	118.209.91.160
5442	Spy on plants creatively	2014-02-14 10:29:09.297742+11	118.209.91.160
5443	Reveal elastic bands actively	2014-02-14 10:29:10.670873+11	118.209.91.160
5444	Identify an orchestra with a pencil	2014-02-14 10:29:12.664838+11	118.209.91.160
5456	Send through knowledge then examine how it relates to the idea of revolution	2014-02-14 10:30:04.278816+11	118.209.91.160
5457	Spy on something small  as an indulgence	2014-02-14 10:30:06.558425+11	118.209.91.160
5458	Bring about revolution in a variety of ways	2014-02-14 10:30:08.015916+11	118.209.91.160
5459	Sew something new into a drawing	2014-02-14 10:30:10.453035+11	118.209.91.160
5460	Speak  secularity while referring to beehives	2014-02-14 10:30:11.892137+11	118.209.91.160
5461	Dis-organise out the front of your house and combine	2014-02-14 10:30:13.066591+11	118.209.91.160
5462	Deliberate a get-together in a public place	2014-02-14 10:30:14.507807+11	118.209.91.160
5463	Hand out a small list using a recording device	2014-02-14 10:30:15.801649+11	118.209.91.160
5464	Multiply 5 synonyms by deduction	2014-02-14 10:30:17.896965+11	118.209.91.160
5465	Sing a flier using a recording device	2014-02-14 10:30:18.762383+11	118.209.91.160
5466	Make up suburbs randomly	2014-02-14 10:30:19.948562+11	118.209.91.160
5467	Dis-organise the first 10 things you see like you mean it	2014-02-14 10:30:21.012839+11	118.209.91.160
5468	Expand on a slogan seriously	2014-02-14 10:30:23.412095+11	118.209.91.160
5469	Whistle real progress then cut that in half	2014-02-14 10:30:25.556284+11	118.209.91.160
5515	Build an impracticle object using an old technique	2014-02-14 10:34:07.825241+11	118.209.91.160
5516	Examine a set of instructions in your line of sight	2014-02-14 10:34:09.743117+11	118.209.91.160
5517	Plant staples when you should be doing something else	2014-02-14 10:34:11.539683+11	118.209.91.160
5518	List knowledge thoughtfully	2014-02-14 10:34:13.08881+11	118.209.91.160
5519	Avoid a piece of paper trustfully	2014-02-14 10:34:14.582611+11	118.209.91.160
5520	Photograph one minute unfairly	2014-02-14 10:34:15.870124+11	118.209.91.160
5669	Order one minute without thinking	2014-02-14 11:37:47.348299+11	118.209.91.160
5672	Colour in  whistleblowing and explain why	2014-02-14 11:57:40.045842+11	203.5.246.14
5673	Collate staples undercover	2014-02-14 11:57:44.148513+11	203.5.246.14
5674	Email the chain of evidence undercover	2014-02-14 11:57:46.640754+11	203.5.246.14
5675	Abstract currency actively	2014-02-14 11:57:48.349436+11	203.5.246.14
5680	Photocopy power using blu-tak	2014-02-14 12:37:27.693591+11	118.209.91.160
5681	Pretend  a user-guide so that we will be really surprised	2014-02-14 12:37:29.483453+11	118.209.91.160
5682	Calculate a nation-state in 12 sentences	2014-02-14 12:37:40.637937+11	118.209.91.160
5683	Write a letter about focussed objects arbritrarily	2014-02-14 12:37:44.378254+11	118.209.91.160
5684	Give a garden and record what you find	2014-02-14 12:37:46.541425+11	118.209.91.160
5685	Turn around cycle in a variety of ways	2014-02-14 12:37:48.227914+11	118.209.91.160
5686	Define a new slogan so it reflects your values	2014-02-14 12:38:05.553901+11	118.209.91.160
5687	Make up the game of tug-of-war simply	2014-02-14 12:38:08.955363+11	118.209.91.160
5688	Whittle a manual using watercolour	2014-02-14 12:38:10.49872+11	118.209.91.160
5689	Dis-organise the newspaper to closely notice the details	2014-02-14 12:38:13.065519+11	118.209.91.160
5692	Deliberate a number you consider to be quite big with your hands	2014-02-14 14:49:58.111391+11	118.209.91.160
5693	Find everything you see in the next 14 seconds as a pie chart	2014-02-14 14:50:01.474624+11	118.209.91.160
5694	Hack a secret handshake in another language	2014-02-14 14:50:02.328668+11	118.209.91.160
5695	Paint a nation-state while talking to people	2014-02-14 14:50:02.814772+11	118.209.91.160
5696	In your head, formulate a colony of ants in a new order	2014-02-14 14:50:03.220532+11	118.209.91.160
5697	Collate the colour palette of an image diplomatically	2014-02-14 14:50:03.370861+11	118.209.91.160
5698	Snap average systematically	2014-02-14 14:50:03.676085+11	118.209.91.160
5699	Exhaust management using a recording device	2014-02-14 14:50:03.866855+11	118.209.91.160
5700	Change work while talking to people	2014-02-14 14:50:04.011503+11	118.209.91.160
5701	Swap a secret meeting over five minutes	2014-02-14 14:50:04.390849+11	118.209.91.160
5445	Deliver then photograph confidently	2014-02-14 10:29:12.712998+11	118.209.91.160
5446	Examine a secret meeting as a map	2014-02-14 10:29:13.586167+11	118.209.91.160
5447	Plot on a graph seeds to capture the moment	2014-02-14 10:29:15.225986+11	118.209.91.160
5448	Sculpt a trail of destruction with a catchy title	2014-02-14 10:29:16.441279+11	118.209.91.160
5449	Move the idea of happiness in a minute	2014-02-14 10:29:18.718324+11	118.209.91.160
5450	Scrunch a megaphone  share it with us	2014-02-14 10:29:20.247448+11	118.209.91.160
5451	Re-define stationery during work hours	2014-02-14 10:29:23.0773+11	118.209.91.160
5452	Send a newspaper clipping of food supply chains using a recording device	2014-02-14 10:29:25.126647+11	118.209.91.160
5453	Brainstorm outside directly on the wall	2014-02-14 10:29:26.244802+11	118.209.91.160
5454	Spy on a water source in a gallery	2014-02-14 10:29:29.219946+11	118.209.91.160
5455	Colour in  stationery with other people	2014-02-14 10:29:30.750821+11	118.209.91.160
5470	Expose your job online	2014-02-14 10:30:49.752261+11	118.209.91.160
5471	Distrupt a piece of paper to create a completely new image	2014-02-14 10:30:51.622462+11	118.209.91.160
5472	Present growth religiously	2014-02-14 10:30:53.331922+11	118.209.91.160
5473	Form what success means to you in the right order	2014-02-14 10:30:56.012647+11	118.209.91.160
5474	Email growth like you mean it	2014-02-14 10:30:57.161869+11	118.209.91.160
5475	Re-write free time now	2014-02-14 10:31:01.894602+11	118.209.91.160
5476	Photocopy staples once	2014-02-14 10:31:06.136464+11	118.209.91.160
5477	Reverse engineer the crowd randomly	2014-02-14 10:31:11.781445+11	118.209.91.160
5478	Destroy energy   and throw it out the window	2014-02-14 10:31:14.637515+11	118.209.91.160
5479	Design energy   to preexisting conditions	2014-02-14 10:31:19.302889+11	118.209.91.160
5480	Reinvent your screen in small-scale	2014-02-14 10:31:20.632159+11	118.209.91.160
5481	Perform a water source addictively	2014-02-14 10:31:21.887419+11	118.209.91.160
5482	Follow the amount of free time you have and speak the result in monotone	2014-02-14 10:31:24.184504+11	118.209.91.160
5483	Reassess  sticks directly on the wall	2014-02-14 10:31:27.753295+11	118.209.91.160
5484	Follow your inbox without using words	2014-02-14 10:31:29.058714+11	118.209.91.160
5485	Connect the idea of happiness in hardcopy	2014-02-14 10:31:30.983447+11	118.209.91.160
5486	Plot    a common approach religiously	2014-02-14 10:31:32.107324+11	118.209.91.160
5487	Reverse engineer beans secretly	2014-02-14 10:31:34.742765+11	118.209.91.160
5488	Detail a secret meeting without showing anyone	2014-02-14 10:31:39.029106+11	118.209.91.160
5489	Act out the amount of free time you have in black and white	2014-02-14 10:31:41.850549+11	118.209.91.160
5490	Suspend 8 images like it will change the world	2014-02-14 10:31:43.566004+11	118.209.91.160
5491	Try a useful object and speak the result in monotone	2014-02-14 10:31:44.711656+11	118.209.91.160
5492	Grow a word you heard today while talking to people	2014-02-14 10:31:45.997818+11	118.209.91.160
5493	Snap D.I.Y while standing still	2014-02-14 10:31:47.416077+11	118.209.91.160
5494	Move an object from your top drawer referring to your favourite	2014-02-14 10:31:48.382473+11	118.209.91.160
5503	Sew the temperature and pick your favourite	2014-02-14 10:33:34.839193+11	118.209.91.160
5504	Calculate elastic bands in 8 ways	2014-02-14 10:33:36.239408+11	118.209.91.160
5505	Tap into energy efficiency with the first pencil you find	2014-02-14 10:33:38.131189+11	118.209.91.160
5506	Hand out a dollar on the wall	2014-02-14 10:33:39.225181+11	118.209.91.160
5507	Expand on a fireplace with no preconceived idea	2014-02-14 10:33:40.74707+11	118.209.91.160
5508	Scratch something small  and explain why	2014-02-14 10:33:42.726345+11	118.209.91.160
5509	Confuse a communal dinner in gold	2014-02-14 10:33:46.263984+11	118.209.91.160
5510	Connect your love of a particular person in 8 sentences	2014-02-14 10:33:48.368579+11	118.209.91.160
5511	List productivity while walking	2014-02-14 10:33:49.79582+11	118.209.91.160
5512	Uncover your love of a particular person as an indulgence	2014-02-14 10:33:51.106868+11	118.209.91.160
5513	Exhaust a piece of paper in photoshop	2014-02-14 10:33:52.532581+11	118.209.91.160
5514	Write about a direction of the future	2014-02-14 10:33:53.563219+11	118.209.91.160
5521	Group multiple images of a safe openly	2014-02-14 10:34:41.303387+11	118.209.91.160
5522	Hack staples to closely notice the details	2014-02-14 10:34:44.629046+11	118.209.91.160
5523	Tweet energy   confidently	2014-02-14 10:34:45.57372+11	118.209.91.160
5524	In your head, formulate your location to closely notice the details	2014-02-14 10:34:46.453627+11	118.209.91.160
5525	Connect lunch creatively	2014-02-14 10:34:48.764657+11	118.209.91.160
5526	Distribute knowledge loudly	2014-02-14 10:34:49.826362+11	118.209.91.160
5527	Reverse engineer social justice so that we will be really surprised	2014-02-14 10:34:51.594378+11	118.209.91.160
5528	Sign an image-editing program openly	2014-02-14 10:34:54.273567+11	118.209.91.160
5529	Sing what failure means to you with other people	2014-02-14 10:34:55.47206+11	118.209.91.160
5530	Print out productivity like a novice	2014-02-14 10:35:01.528755+11	118.209.91.160
5531	Reveal political rhetoric and explain why	2014-02-14 10:35:02.832503+11	118.209.91.160
5532	Cover wood over five minutes	2014-02-14 10:35:04.160684+11	118.209.91.160
5533	Dis-organise something intricate with others	2014-02-14 10:35:05.606269+11	118.209.91.160
5534	Tweet the colony together	2014-02-14 10:35:06.861532+11	118.209.91.160
5535	Gather suburbs and speak the result in monotone	2014-02-14 10:35:08.141424+11	118.209.91.160
5536	Share your password and question your findings	2014-02-14 10:35:09.402244+11	118.209.91.160
5537	Speak about everything you see in the next 21 seconds in capitals	2014-02-14 10:35:11.315406+11	118.209.91.160
5538	Modify an unusual scene to capture the moment	2014-02-14 10:35:14.08378+11	118.209.91.160
5539	Define trees in pen	2014-02-14 10:35:19.150872+11	118.209.91.160
5540	Paint with watercolour outside using an old technique	2014-02-14 10:35:20.153568+11	118.209.91.160
5541	Publicly declare the rules   thoughtfully	2014-02-14 10:35:21.541343+11	118.209.91.160
5542	Test information like a spy	2014-02-14 10:35:24.817629+11	118.209.91.160
5591	In your head, formulate a 6-word manifesto and throw it out the window	2014-02-14 10:38:51.836606+11	118.209.91.160
5592	Collate information without thinking too much	2014-02-14 10:38:53.780846+11	118.209.91.160
5593	Move currency without showing any proof	2014-02-14 10:38:56.591304+11	118.209.91.160
5594	Reinvent nothing over time	2014-02-14 10:38:58.200587+11	118.209.91.160
5595	Invent the future with tape	2014-02-14 10:39:01.480173+11	118.209.91.160
5596	Undo elastic bands and attempt it only once	2014-02-14 10:39:03.266763+11	118.209.91.160
5597	Break down a user-guide and use it as currency	2014-02-14 10:39:04.412345+11	118.209.91.160
5598	Paint a nation-state at home	2014-02-14 10:39:05.987544+11	118.209.91.160
5599	Change something new using only political rhetoric	2014-02-14 10:39:10.936419+11	118.209.91.160
5600	Continue what failure means to you thoughtfully	2014-02-14 10:39:13.002542+11	118.209.91.160
5601	Calculate future technologies on your own	2014-02-14 10:39:14.437068+11	118.209.91.160
5602	Arrange waste using watercolour	2014-02-14 10:39:15.582247+11	118.209.91.160
5603	Source a stranger in photographic form	2014-02-14 10:39:16.883918+11	118.209.91.160
5604	Print out a communal dinner without touching	2014-02-14 10:39:23.467304+11	118.209.91.160
5605	Act out two people in a closed form	2014-02-14 10:39:25.532893+11	118.209.91.160
5606	Bring an impracticle object diplomatically	2014-02-14 10:39:29.347891+11	118.209.91.160
5607	Break down the rules    share it with us	2014-02-14 10:39:30.974819+11	118.209.91.160
5608	Model something damaged in a minute	2014-02-14 10:39:32.384944+11	118.209.91.160
5609	Check the world loudly	2014-02-14 10:39:33.515615+11	118.209.91.160
5610	Collage a secret handshake secretly	2014-02-14 10:39:35.695064+11	118.209.91.160
5611	Rearrange a logo through trade	2014-02-14 10:39:37.896347+11	118.209.91.160
5612	Categorise a way around a problem with your hands	2014-02-14 10:39:39.360427+11	118.209.91.160
5613	Redesign currency while standing still	2014-02-14 10:39:41.499108+11	118.209.91.160
5614	Reveal 8 images without using words	2014-02-14 10:39:43.88224+11	118.209.91.160
5615	Represent a dictionary and question your findings	2014-02-14 10:39:44.906779+11	118.209.91.160
5616	Detail a list of rules with a public outcome in mind	2014-02-14 10:39:50.046219+11	118.209.91.160
5617	Paint with watercolour revolution bureaucratically	2014-02-14 10:39:57.220653+11	118.209.91.160
5618	Rearrange acts of resistance while standing still	2014-02-14 10:39:58.406479+11	118.209.91.160
5619	Model government to preexisting conditions	2014-02-14 10:40:00.520005+11	118.209.91.160
5620	Teach Australian symbolism thoroughly checking	2014-02-14 10:40:01.609929+11	118.209.91.160
5621	Represent your job using free software	2014-02-14 10:40:02.310363+11	118.209.91.160
5622	Undo a round table in a graph of blue hues	2014-02-14 10:40:03.671194+11	118.209.91.160
5623	Make a colour palette of stone freely	2014-02-14 10:40:07.351003+11	118.209.91.160
5624	Un-mechanise a mug during work hours	2014-02-14 10:40:10.121517+11	118.209.91.160
5625	Source a common approach creatively	2014-02-14 10:40:12.646387+11	118.209.91.160
5626	Paint a useful object in 8 sentences	2014-02-14 10:40:14.770159+11	118.209.91.160
5627	Reverse engineer weeds when you should be doing something else	2014-02-14 10:40:17.180808+11	118.209.91.160
5628	Ruin a movement and double it	2014-02-14 10:40:19.992648+11	118.209.91.160
5629	Ruin stationery on the floor	2014-02-14 10:40:22.151438+11	118.209.91.160
5630	Wander management so it reflects your values	2014-02-14 10:40:24.361116+11	118.209.91.160
5631	Discover Australian symbolism as a map	2014-02-14 10:40:25.337155+11	118.209.91.160
5632	Wander a useless thing and send it to us via email	2014-02-14 10:40:26.449288+11	118.209.91.160
5633	Record a flagpole as a map	2014-02-14 10:40:28.572674+11	118.209.91.160
5634	Trust the impossible  share it with us	2014-02-14 10:40:30.158794+11	118.209.91.160
5635	Paint how you are implicated in systems with no preconceived idea	2014-02-14 10:40:34.131201+11	118.209.91.160
5636	Plant a see-saw to form a link to the past	2014-02-14 10:41:04.100204+11	118.209.91.160
5637	Colour in  a movement online	2014-02-14 10:41:05.196507+11	118.209.91.160
5638	Avoid acts of resistance over 57 seconds	2014-02-14 10:41:08.223157+11	118.209.91.160
5639	Define a tray inside a square	2014-02-14 10:41:09.1943+11	118.209.91.160
5640	Suggest the crowd and put two and two together	2014-02-14 10:41:10.28446+11	118.209.91.160
5641	Split an alternative in public	2014-02-14 10:41:12.768961+11	118.209.91.160
5642	Observe the garden so you are affected	2014-02-14 10:41:14.475432+11	118.209.91.160
5643	Send the same word and explain why	2014-02-14 10:41:19.010633+11	118.209.91.160
5644	Suspend the amount of free time you have over and over	2014-02-14 10:41:21.16225+11	118.209.91.160
5645	Reverse engineer sticks and stones in a graph of rainbow colours	2014-02-14 10:41:22.416448+11	118.209.91.160
5646	Rearrange the political and record what you find	2014-02-14 10:41:23.581928+11	118.209.91.160
5647	Change the political differently	2014-02-14 10:41:25.175623+11	118.209.91.160
5648	Collect lunch in a graph of blue hues	2014-02-14 10:41:26.460967+11	118.209.91.160
5649	Plot on a graph a movement arbritrarily	2014-02-14 10:41:27.906186+11	118.209.91.160
5650	Rewrite a stranger in black and white	2014-02-14 10:41:29.09178+11	118.209.91.160
5651	Define a chair in the most innovative way you can think of	2014-02-14 10:41:30.38931+11	118.209.91.160
5652	Visualise tools to your detriment	2014-02-14 10:41:31.744287+11	118.209.91.160
5653	Teach exploitation into a ball	2014-02-14 10:41:35.644872+11	118.209.91.160
5654	Undertake the amount of free time you have and combine	2014-02-14 10:41:36.771553+11	118.209.91.160
5655	Group multiple images of waste using only political rhetoric	2014-02-14 10:41:38.250861+11	118.209.91.160
5656	Discuss a program with a pencil	2014-02-14 10:41:39.714033+11	118.209.91.160
5657	Deliver bureaucracy religiously	2014-02-14 10:41:43.591441+11	118.209.91.160
5658	Scrunch a useful object in a graph of rainbow colours	2014-02-14 10:41:46.446395+11	118.209.91.160
5659	Record the rules   without thinking	2014-02-14 10:41:49.301917+11	118.209.91.160
5660	Photograph a communal dinner to the world	2014-02-14 10:41:50.672799+11	118.209.91.160
5661	Design the game of tug-of-war thoroughly checking	2014-02-14 10:41:51.868639+11	118.209.91.160
5662	Break down into numbers your camera referencing the idea of dis-organisation	2014-02-14 10:41:53.293428+11	118.209.91.160
5663	Act on your camera to the world	2014-02-14 10:41:55.374004+11	118.209.91.160
5664	Write about focussed objects unfairly	2014-02-14 10:41:56.328643+11	118.209.91.160
5665	Create the colony in a closed form	2014-02-14 10:41:57.991131+11	118.209.91.160
5666	Cut and paste something by deduction	2014-02-14 10:41:59.238699+11	118.209.91.160
5676	Check a nation-state with scepticism	2014-02-14 12:24:53.354703+11	118.209.91.160
5677	Undertake images of other people  as a pie chart	2014-02-14 12:24:54.249288+11	118.209.91.160
5678	Tweet this and that randomly	2014-02-14 12:24:57.803461+11	118.209.91.160
5670	Group multiple images of two parties in 9 sentences	2014-02-14 11:37:55.154302+11	118.209.91.160
5671	Avoid meaning imagining you are in isolation	2014-02-14 11:54:34.788605+11	203.5.246.14
5679	Present something intricate and attempt it only once	2014-02-14 12:36:57.437535+11	118.209.91.160
5690	Distribute a scapegoat undercover	2014-02-14 14:38:46.613117+11	118.209.91.160
5691	Create the chain of evidence in 4 minutes	2014-02-14 14:49:19.228936+11	118.209.91.160
5702	Pretend  your job without assistance	2014-02-14 15:54:56.686096+11	101.115.38.67
5703	Visualise an organisation  as a list	2014-02-14 15:56:03.094724+11	101.115.38.67
5704	Reinforce the fourth world in camouflage	2014-02-14 15:56:12.090673+11	101.115.38.67
5705	Plot on a graph an unusual scene without telling anyone	2014-02-14 15:56:28.240392+11	101.115.38.67
5706	Test the future randomly	2014-02-14 15:56:32.880473+11	101.115.38.67
5707	Fill sticks and stones undercover	2014-02-14 15:56:35.919938+11	101.115.38.67
5708	Break the institution confidently	2014-02-14 15:56:40.220157+11	101.115.38.67
5709	Manage sticks and stones loudly	2014-02-14 15:56:46.260443+11	101.115.38.67
5710	Leave tools in the most innovative way you can think of	2014-02-14 15:56:49.070359+11	101.115.38.67
5711	Reverse an orchestra obsessively	2014-02-14 15:56:54.580948+11	101.115.38.67
5712	Share the idea of happiness with optimism	2014-02-14 15:56:58.379975+11	101.115.38.67
5713	Manage a useless thing bureaucratically	2014-02-14 15:57:01.031446+11	101.115.38.67
5714	Collect the game of tug-of-war mindfully	2014-02-14 16:40:36.675997+11	118.209.91.160
5715	Invent a scapegoat spontaneously	2014-02-14 16:40:58.592971+11	118.209.91.160
5716	Hand out debt in a minute	2014-02-14 16:41:09.190773+11	118.209.91.160
5717	Reverse one minute to initiate progress	2014-02-14 16:41:12.175795+11	118.209.91.160
5718	Collage free time in a variety of ways	2014-02-14 19:20:19.826268+11	194.3.103.60
5719	Design your inbox efficiently	2014-02-14 20:31:16.021572+11	101.115.36.15
5720	Undo exploitation do this 5 times	2014-02-14 20:31:30.242937+11	101.115.36.15
5721	Divulge a new object diplomatically	2014-02-14 20:31:35.186021+11	101.115.36.15
5722	Print out productivity in a closed form	2014-02-14 21:28:44.918073+11	118.209.7.148
5723	Unleash a see-saw of the future	2014-02-14 21:28:47.943413+11	118.209.7.148
5724	Teach your inbox trustfully	2014-02-14 21:28:54.85234+11	118.209.7.148
5725	Re-define a garden undercover	2014-02-14 21:28:56.487427+11	118.209.7.148
5726	Reinforce a round table like a spy	2014-02-14 21:29:00.001832+11	118.209.7.148
5727	Manage a positive gesture unacceptably	2014-02-14 21:29:01.932381+11	118.209.7.148
5728	Check a garden as a drawing	2014-02-14 21:29:04.255778+11	118.209.7.148
5729	Send through the same thing in the form of a ransom note	2014-02-14 21:29:06.078238+11	118.209.7.148
5730	Mime bureaucracy thoughtfully	2014-02-14 21:29:10.593205+11	118.209.7.148
5731	Teach a scapegoat to preexisting conditions	2014-02-14 21:29:12.548721+11	118.209.7.148
5732	Find an example of silver coins to initiate progress	2014-02-14 21:29:14.413734+11	118.209.7.148
5733	Split a see-saw in the right order	2014-02-14 21:29:17.942269+11	118.209.7.148
5734	Undo a uniform and connect the dots	2014-02-14 21:29:19.373575+11	118.209.7.148
5735	Continue food supply chains spontaneously	2014-02-14 21:29:24.387814+11	118.209.7.148
5736	Share the fourth world to your detriment	2014-02-14 21:29:25.952813+11	118.209.7.148
5737	Act the impossible thinking about form and function	2014-02-14 21:29:29.927213+11	118.209.7.148
5738	Break down into numbers random tasks in public	2014-02-14 21:29:34.047239+11	118.209.7.148
5739	Carve energy   convincingly	2014-02-14 21:29:38.538398+11	118.209.7.148
5740	Create a pamphlet explaining the net through a process of elimination	2014-02-14 21:29:41.480755+11	118.209.7.148
5741	Research good and bad of the future	2014-02-14 21:29:47.098334+11	118.209.7.148
5742	Collage branches using found materials	2014-02-14 21:30:25.588215+11	118.209.7.148
5743	Pair a program as if functional	2014-02-14 21:30:33.49184+11	118.209.7.148
5744	Speak  a positive gesture trustfully	2014-02-14 21:30:36.063431+11	118.209.7.148
5745	Avoid a community to closely notice the details	2014-02-14 21:30:38.310483+11	118.209.7.148
5746	Share food supply chains helplessly	2014-02-14 21:30:40.633907+11	118.209.7.148
5747	Sew the amount of free time you have then cut that in half	2014-02-14 21:30:42.409157+11	118.209.7.148
5748	Distribute energy efficiency over five minutes	2014-02-14 21:30:48.32749+11	118.209.7.148
5749	Carve 8 steps directly	2014-02-14 21:30:50.478854+11	118.209.7.148
5750	Store a log in another language	2014-02-14 21:30:53.190589+11	118.209.7.148
5751	Represent the risks like a robot	2014-02-14 21:30:55.436779+11	118.209.7.148
5752	Price the garden trustfully	2014-02-14 21:30:57.626472+11	118.209.7.148
5753	Define a powerpoint presentation temporarily	2014-02-14 21:30:59.697052+11	118.209.7.148
5754	Cover a word you heard today using the name of someone great	2014-02-14 21:31:02.096635+11	118.209.7.148
5755	Toss a communal dinner with a pencil	2014-02-14 21:31:06.014895+11	118.209.7.148
5756	Whistle migration being reductive	2014-02-14 21:31:08.444854+11	118.209.7.148
5757	Leave a fireplace idley	2014-02-14 21:31:10.631805+11	118.209.7.148
5758	Write a letter about random tasks being completely dishonest	2014-02-14 21:31:14.690652+11	118.209.7.148
5759	Spy on the amount of free time you have over 6 minutes	2014-02-14 21:31:18.73498+11	118.209.7.148
5760	Whittle two parties simply	2014-02-14 21:31:27.208661+11	118.209.7.148
5761	Give anything with no diplomacy	2014-02-14 21:31:29.128341+11	118.209.7.148
5762	Abstract a demonstration  and share it with us	2014-02-14 21:31:31.508817+11	118.209.7.148
5763	Design transparency relating to a gallery	2014-02-14 21:31:33.488311+11	118.209.7.148
5764	Continue your role within a particular organisational structure on the floor	2014-02-14 21:31:35.043276+11	118.209.7.148
5765	Act out a logo and connect the dots	2014-02-14 21:31:38.539976+11	118.209.7.148
5766	Take a photo of waste unacceptably	2014-02-14 21:31:45.073195+11	118.209.7.148
5767	Bring the moon in another language	2014-02-14 21:31:47.124167+11	118.209.7.148
5768	Expand on social justice privately	2014-02-14 21:33:06.752882+11	118.209.7.148
5769	Protect collective action once	2014-02-14 21:33:08.841674+11	118.209.7.148
5770	Collect a direction arbritrarily	2014-02-14 21:33:10.656201+11	118.209.7.148
5771	Systematise a slogan spontaneously	2014-02-14 21:33:12.44155+11	118.209.7.148
5772	Use  a water source when you should be doing something else	2014-02-14 21:33:13.812569+11	118.209.7.148
5773	Share two parties trustfully	2014-02-14 21:33:15.992295+11	118.209.7.148
5774	Group multiple images of how your mobile phone is used on any given day during work hours	2014-02-14 21:33:17.363539+11	118.209.7.148
5775	Publicly declare the temperature and send it to us via email	2014-02-14 21:33:25.653759+11	118.209.7.148
5776	Sign a commodity side by side	2014-02-14 21:33:32.219802+11	118.209.7.148
5777	Mime then photograph immediately	2014-02-14 21:33:34.627129+11	118.209.7.148
5778	Post an object from your top drawer without thinking too much	2014-02-14 21:33:43.027053+11	118.209.7.148
5779	Hand out two parties without telling anyone	2014-02-14 21:33:48.000788+11	118.209.7.148
5780	Investigate a collection of blue things  and share it with us	2014-02-14 21:33:49.935315+11	118.209.7.148
5781	Split productivity on the nature strip	2014-02-14 21:33:54.507625+11	118.209.7.148
5782	Identify stone with optimism	2014-02-14 21:33:56.598721+11	118.209.7.148
5783	Invent random tasks and connect the dots	2014-02-14 21:33:57.833672+11	118.209.7.148
5784	Perform a nation-state relating to a gallery	2014-02-14 21:33:59.460427+11	118.209.7.148
5785	Spend time thinking about power using free software	2014-02-14 21:38:37.495342+11	118.209.7.148
5786	Collage energy efficiency directly on the wall	2014-02-14 21:38:39.190929+11	118.209.7.148
5787	Create a banner which refers to a meeting using statistics	2014-02-14 21:38:41.173495+11	118.209.7.148
5788	Make the future and send it to us via email	2014-02-14 21:38:53.854885+11	118.209.7.148
5789	Systematise a positive gesture on your own	2014-02-14 21:39:01.154398+11	118.209.7.148
5790	Turn around a boat spontaneously	2014-02-14 21:39:03.505693+11	118.209.7.148
5791	Improve a balloon over and over	2014-02-14 21:39:09.109287+11	118.209.7.148
5792	Price the same word like a robot	2014-02-14 21:39:11.189313+11	118.209.7.148
5793	Send a newspaper clipping of something in the simplest way possible	2014-02-14 21:39:13.000166+11	118.209.7.148
5794	Draw focussed objects in another language	2014-02-14 21:39:17.475158+11	118.209.7.148
5795	Bring a handshake in a text message	2014-02-14 21:39:19.879676+11	118.209.7.148
5796	Rewrite the crowd in monotone	2014-02-14 21:39:21.903835+11	118.209.7.148
5797	Stand by something small  while referring to gardening	2014-02-14 21:39:23.791422+11	118.209.7.148
5798	Illustrate a balloon so you are affected	2014-02-14 21:39:30.947609+11	118.209.7.148
5799	Reinforce a new slogan actively	2014-02-14 21:39:32.770943+11	118.209.7.148
5800	Hack a program diplomatically	2014-02-14 21:39:40.426872+11	118.209.7.148
5801	Act on spectacles and pick your favourite	2014-02-14 21:39:42.597194+11	118.209.7.148
5802	Publicly declare seeds without showing any proof	2014-02-14 21:39:44.201544+11	118.209.7.148
5803	Check a dictionary in gold	2014-02-14 21:39:45.966704+11	118.209.7.148
5804	Suspend a communal dinner then examine how it relates to the idea of revolution	2014-02-14 21:39:49.492164+11	118.209.7.148
5805	Make up a word you heard today in secret	2014-02-14 21:39:58.184683+11	118.209.7.148
5806	Speak about currency intuitively	2014-02-14 21:40:00.869396+11	118.209.7.148
5807	Network a video  bureaucratically	2014-02-14 21:40:04.470912+11	118.209.7.148
5808	Read random tasks in camouflage	2014-02-14 21:40:06.345218+11	118.209.7.148
5809	Destroy bureaucracy in pen	2014-02-14 21:40:08.845017+11	118.209.7.148
5810	Reinforce an atlas religiously	2014-02-14 21:40:12.380799+11	118.209.7.148
5811	Tap into the truth openly	2014-02-14 21:40:14.389811+11	118.209.7.148
5812	Reverse a secret handshake together	2014-02-14 21:40:16.43668+11	118.209.7.148
5813	Invent the newspaper with the first pencil you find	2014-02-14 21:40:17.962449+11	118.209.7.148
5814	Seek a manual with scepticism	2014-02-14 21:40:19.65353+11	118.209.7.148
5815	Scrunch an agreement in the colours of your flag	2014-02-14 21:40:21.029755+11	118.209.7.148
5816	Send through salvaged material on the floor	2014-02-14 21:49:11.651799+11	118.209.7.148
5817	Pair a log efficiently	2014-02-15 20:46:37.960297+11	118.209.7.148
5853	Test silver coins by planning the next move	2014-02-15 20:50:04.469588+11	118.209.7.148
5854	Act on an organisation  in camouflage	2014-02-15 20:50:06.63921+11	118.209.7.148
5855	Maintain what failure means to you helplessly	2014-02-15 20:50:09.171798+11	118.209.7.148
5856	Explain work and throw it out the window	2014-02-15 20:50:10.640935+11	118.209.7.148
5857	Sing then photograph backing it up with research	2014-02-15 20:50:12.470942+11	118.209.7.148
5858	Break down into numbers the crowd in a graph of blue hues	2014-02-15 20:50:15.112828+11	118.209.7.148
5859	Subvert something and collate the results	2014-02-15 20:50:16.887909+11	118.209.7.148
5860	Collaborate with acts of resistance side by side	2014-02-15 20:50:18.388521+11	118.209.7.148
5861	Take a photo of a trusted source when you should be doing something else	2014-02-15 20:50:20.03397+11	118.209.7.148
5862	Investigate what is within reach with a pencil	2014-02-15 20:50:22.220056+11	118.209.7.148
5863	Produce meaning as a list	2014-02-15 20:50:25.087436+11	118.209.7.148
5864	Document a useful object to the world	2014-02-15 20:50:29.237923+11	118.209.7.148
5874	Send through a meal with a public outcome in mind	2014-02-15 21:19:57.434225+11	118.209.7.148
5875	Avoid something small  in a graph of rainbow colours	2014-02-15 21:19:59.680878+11	118.209.7.148
5876	Continue random tasks so its function is questionable	2014-02-15 21:20:03.825944+11	118.209.7.148
5877	Find a positive gesture through trade	2014-02-15 21:20:05.83212+11	118.209.7.148
5878	Destroy how you are implicated in systems as an indulgence	2014-02-15 21:20:11.168461+11	118.209.7.148
5879	Send through your password considering last century	2014-02-15 21:20:17.566605+11	118.209.7.148
5880	Detail collective action thoughtfully	2014-02-15 21:20:19.616748+11	118.209.7.148
5881	Plan leaves without assistance	2014-02-15 21:20:21.207167+11	118.209.7.148
5882	Connect your password thoroughly checking	2014-02-15 21:20:22.798991+11	118.209.7.148
5883	Break down into numbers data as a drawing	2014-02-15 21:20:24.003306+11	118.209.7.148
5884	Expand on currency and connect the dots	2014-02-15 21:20:27.446853+11	118.209.7.148
5885	Check a gathering in the most innovative way you can think of	2014-02-15 21:20:28.948304+11	118.209.7.148
5886	Bring suburbs as an indulgence	2014-02-15 21:20:30.753384+11	118.209.7.148
5914	Find a way around a problem to initiate progress	2014-02-15 21:23:07.999087+11	118.209.7.148
5915	Undo everything one way	2014-02-15 21:23:09.489819+11	118.209.7.148
5916	Print out something small  undercover	2014-02-15 21:23:11.898731+11	118.209.7.148
5917	Calculate stone with your hands	2014-02-15 21:23:13.600272+11	118.209.7.148
5918	Collect power in the colours of your flag	2014-02-15 21:23:15.074741+11	118.209.7.148
5919	Suspend this and that without showing anyone	2014-02-15 21:23:16.775276+11	118.209.7.148
5920	Define the risks religiously	2014-02-15 21:23:19.535105+11	118.209.7.148
5921	Bring something new at home	2014-02-15 21:23:21.003896+11	118.209.7.148
5922	Contribute offcuts without language	2014-02-15 21:23:22.765967+11	118.209.7.148
5923	Observe a slogan so that we will be really surprised	2014-02-15 21:23:23.985578+11	118.209.7.148
5924	Throw a movement loudly	2014-02-15 21:23:25.758146+11	118.209.7.148
5925	Grow a video  quietly	2014-02-15 21:23:27.068806+11	118.209.7.148
5926	Plan a gathering quickly	2014-02-15 21:23:28.290771+11	118.209.7.148
5927	Plant a community and put two and two together	2014-02-15 21:23:29.641606+11	118.209.7.148
5928	Contribute your love of a particular person with your hands	2014-02-15 21:23:31.137766+11	118.209.7.148
5818	Write about the game of tug-of-war temporarily	2014-02-15 20:46:57.366237+11	118.209.7.148
5819	Undo collective action for yourself	2014-02-15 20:47:03.133596+11	118.209.7.148
5820	Sculpt an alternative quietly	2014-02-15 20:47:04.880542+11	118.209.7.148
5821	Maintain 4 synonyms relating to a gallery	2014-02-15 20:47:06.336376+11	118.209.7.148
5822	Split the game of tug-of-war unacceptably	2014-02-15 20:47:11.222152+11	118.209.7.148
5823	Price your love of a particular person idley	2014-02-15 20:47:16.258869+11	118.209.7.148
5824	Take a sample of  wood on the nature strip	2014-02-15 20:47:17.83954+11	118.209.7.148
5825	Read a word you heard today in the usual way	2014-02-15 20:47:19.499172+11	118.209.7.148
5826	Uncover a powerpoint presentation diplomatically	2014-02-15 20:47:21.129707+11	118.209.7.148
5827	Mime a tray and throw it out the window	2014-02-15 20:47:22.719438+11	118.209.7.148
5828	Walk  transparency in public space	2014-02-15 20:47:24.551185+11	118.209.7.148
5829	Converse a piece of paper inside an irregular shape	2014-02-15 20:47:27.697135+11	118.209.7.148
5830	Speak about a network without assistance	2014-02-15 20:47:29.747367+11	118.209.7.148
5831	Design a secret handshake referencing the idea of dis-organisation	2014-02-15 20:47:31.787072+11	118.209.7.148
5832	In your head, formulate power backing it up with research	2014-02-15 20:48:54.751366+11	118.209.7.148
5833	Brainstorm growth as though your life depends on it	2014-02-15 20:48:56.864946+11	118.209.7.148
5834	Collage your password helplessly	2014-02-15 20:48:58.318883+11	118.209.7.148
5835	Email the same thing creatively	2014-02-15 20:49:00.709475+11	118.209.7.148
5836	Describe a limited edition and connect the dots	2014-02-15 20:49:02.229191+11	118.209.7.148
5837	Swap the institution without using words	2014-02-15 20:49:03.618981+11	118.209.7.148
5838	Describe a flier seriously	2014-02-15 20:49:05.001954+11	118.209.7.148
5839	Multiply your password in another language	2014-02-15 20:49:06.008553+11	118.209.7.148
5840	Follow the world to create a completely new image	2014-02-15 20:49:07.558379+11	118.209.7.148
5841	Swap the rules   in the usual way	2014-02-15 20:49:14.142724+11	118.209.7.148
5842	Undo an unusual scene using statistics	2014-02-15 20:49:16.172002+11	118.209.7.148
5843	Take a photo of a common approach in 4 sentences	2014-02-15 20:49:17.787512+11	118.209.7.148
5844	Whistle an image-editing program without thinking too much	2014-02-15 20:49:19.057312+11	118.209.7.148
5845	Perform the colony in camouflage	2014-02-15 20:49:21.057974+11	118.209.7.148
5846	Follow the colony then cut that in half	2014-02-15 20:49:23.502409+11	118.209.7.148
5847	Network patience like it will change the world	2014-02-15 20:49:25.4688+11	118.209.7.148
5848	Present a direction in the size of a book	2014-02-15 20:49:28.477317+11	118.209.7.148
5849	Continue seeds and collate the results	2014-02-15 20:49:31.86253+11	118.209.7.148
5850	Act on the colour palette of an image like you mean it	2014-02-15 20:49:33.362391+11	118.209.7.148
5851	Say a 7-word manifesto intuitively	2014-02-15 20:49:34.437196+11	118.209.7.148
5852	Write about the same word and pick your favourite	2014-02-15 20:49:35.632385+11	118.209.7.148
5944	Re-write a collection of blue things  and share it with us	2014-02-15 22:52:37.754641+11	78.193.34.41
5865	Reverse engineer acts of resistance with found objects	2014-02-15 20:51:23.144757+11	118.209.7.148
5866	Break down into numbers what success means to you privately	2014-02-15 20:51:24.434458+11	118.209.7.148
5867	Toss your job being completely dishonest	2014-02-15 20:51:25.858762+11	118.209.7.148
5868	Find the amount of free time you have without thinking too much	2014-02-15 20:51:27.194409+11	118.209.7.148
5869	Send an atlas online	2014-02-15 20:51:28.51282+11	118.209.7.148
5870	Redesign two parties with a catchy title	2014-02-15 20:51:30.173156+11	118.209.7.148
5871	Brainstorm wood relating to a gallery	2014-02-15 20:51:32.859059+11	118.209.7.148
5872	Describe the ideal newspaper and put two and two together	2014-02-15 20:51:35.794213+11	118.209.7.148
5873	Write a letter about seeds without thinking too much	2014-02-15 20:51:37.019202+11	118.209.7.148
5894	Leave an unusual scene referencing the idea of dis-organisation	2014-02-15 21:21:53.662493+11	118.209.7.148
5895	Tap into money in 3 minutes	2014-02-15 21:21:56.034749+11	118.209.7.148
5896	Investigate the institution being completely dishonest	2014-02-15 21:21:57.737162+11	118.209.7.148
5897	Brainstorm meaning in pen	2014-02-15 21:21:59.087191+11	118.209.7.148
5898	Un-mechanise leaves with your hands	2014-02-15 21:22:01.982247+11	118.209.7.148
5899	Present a sculpture in secret	2014-02-15 21:22:03.283159+11	118.209.7.148
5900	List a border in 7 ways	2014-02-15 21:22:10.335629+11	118.209.7.148
5901	Expand on the moon of the future	2014-02-15 21:22:12.286489+11	118.209.7.148
5902	Walk  a small list quietly	2014-02-15 21:22:14.268908+11	118.209.7.148
5903	Decipher something damaged as a drawing	2014-02-15 21:22:29.036102+11	118.209.7.148
5904	Categorise everything you see in the next 19 seconds arbritrarily	2014-02-15 21:22:30.855875+11	118.209.7.148
5905	Source a see-saw and explain why	2014-02-15 21:22:32.299874+11	118.209.7.148
5906	Converse the colour palette of an image in 7 minutes	2014-02-15 21:22:33.715278+11	118.209.7.148
5907	Make a colour palette of a garden like a novice	2014-02-15 21:22:35.04466+11	118.209.7.148
5908	Write a letter about a new slogan quietly	2014-02-15 21:22:36.814758+11	118.209.7.148
5909	Break down the headlines in another language	2014-02-15 21:22:38.294186+11	118.209.7.148
5910	Send a newspaper clipping of management online	2014-02-15 21:22:40.284944+11	118.209.7.148
5911	Avoid a mug to closely notice the details	2014-02-15 21:22:42.945485+11	118.209.7.148
5912	Divulge a number you consider to be quite big do this 6 times	2014-02-15 21:22:44.990042+11	118.209.7.148
5913	Pair two people arbritrarily	2014-02-15 21:22:46.913494+11	118.209.7.148
5887	Play something new and speak the result in monotone	2014-02-15 21:20:51.638845+11	118.209.7.148
5888	Swap a systemic failure so it is equal	2014-02-15 21:21:13.975326+11	118.209.7.148
5889	Change a large circle by deduction	2014-02-15 21:21:22.377474+11	118.209.7.148
5890	Discover a trusted source once	2014-02-15 21:21:30.64431+11	118.209.7.148
5891	Wander your screen and throw it out the window	2014-02-15 21:21:32.009484+11	118.209.7.148
5892	Leave then photograph as a drawing	2014-02-15 21:21:33.589459+11	118.209.7.148
5893	Speak  raw material thoughtfully	2014-02-15 21:21:35.167494+11	118.209.7.148
5941	Trust trees by networking	2014-02-15 22:21:45.669787+11	78.193.34.41
5943	Discover what success means to you and document the findings to share	2014-02-15 22:52:16.444235+11	78.193.34.41
5929	Replicate particular ideas while walking	2014-02-15 21:23:32.643095+11	118.209.7.148
5930	Demonstrate future technologies directly on the wall	2014-02-15 21:23:34.052719+11	118.209.7.148
5931	Whittle exploitation in the right order	2014-02-15 21:23:35.699772+11	118.209.7.148
5932	Perform what success means to you to a stranger	2014-02-15 21:23:37.27995+11	118.209.7.148
5933	Build plants with your hands	2014-02-15 21:23:38.935402+11	118.209.7.148
5934	Order the idea of nationality while standing still	2014-02-15 21:23:40.353811+11	118.209.7.148
5935	Store a commodity in a minute	2014-02-15 22:14:06.605165+11	78.193.34.41
5936	Replace the risks being completely dishonest	2014-02-15 22:14:35.981113+11	78.193.34.41
5937	Exhaust a rule by planning the next move	2014-02-15 22:14:43.756699+11	78.193.34.41
5938	Read a uniform thoughtfully	2014-02-15 22:14:53.473695+11	78.193.34.41
5939	Wear secularity in the simplest way possible	2014-02-15 22:14:57.346956+11	78.193.34.41
5940	Shape a sign mindfully	2014-02-15 22:15:07.389389+11	78.193.34.41
5942	Reassess a slogan as a drawing	2014-02-15 22:22:49.468176+11	78.193.34.41
5945	Test a fireplace so you are affected	2014-02-15 22:53:43.110264+11	78.193.34.41
5946	Illustrate time through a process of elimination	2014-02-16 22:05:19.339786+11	118.209.88.187
5947	Form a communal dinner in black and white	2014-02-16 22:05:24.265485+11	118.209.88.187
5948	Destroy an object from your top drawer directly on the wall	2014-02-16 22:05:25.489322+11	118.209.88.187
5949	Create a stranger and pick your favourite	2014-02-16 22:05:27.343185+11	118.209.88.187
5950	Colour an object from your top drawer using a recording device	2014-02-16 22:05:28.484199+11	118.209.88.187
5951	Spend time thinking about leaves in 7 sentences	2014-02-16 22:05:30.028127+11	118.209.88.187
5952	Break down into numbers the ideal newspaper with the first pencil you find	2014-02-16 22:05:34.959203+11	118.209.88.187
5953	Collate the headlines as a list	2014-02-16 22:05:36.546913+11	118.209.88.187
5954	Reinforce a nation-state as a drawing	2014-02-16 22:05:37.607432+11	118.209.88.187
5955	Avoid the impossible without telling anyone	2014-02-16 22:05:39.155609+11	118.209.88.187
5956	Form a round table to preexisting conditions	2014-02-16 22:05:58.72168+11	118.209.88.187
5957	Reinforce a slogan spontaneously	2014-02-16 22:06:00.015228+11	118.209.88.187
5958	Subvert silver coins over 12 hours	2014-02-16 22:06:02.611056+11	118.209.88.187
5959	Categorise a signal in black and white	2014-02-16 22:06:04.021474+11	118.209.88.187
5960	Re-write one minute over and over	2014-02-16 22:06:06.541247+11	118.209.88.187
5961	Describe the idea of nationality without using words	2014-02-16 22:06:08.689045+11	118.209.88.187
5962	Replace free time over and over	2014-02-16 22:06:23.287174+11	118.209.88.187
5963	Cover a network in a public place	2014-02-16 22:06:24.48242+11	118.209.88.187
5964	Paint a hole helplessly	2014-02-16 22:06:25.891644+11	118.209.88.187
5965	Write about a manual through trade	2014-02-16 22:06:32.309992+11	118.209.88.187
5966	Paint a common approach so you are affected	2014-02-16 22:06:33.5463+11	118.209.88.187
5967	Build management to closely notice the details	2014-02-16 22:06:34.857319+11	118.209.88.187
5968	Check your role within a particular organisational structure over and over	2014-02-16 22:06:37.261883+11	118.209.88.187
5969	Manage growth like you mean it	2014-02-16 22:06:38.914379+11	118.209.88.187
5970	Standardise a dictionary to your detriment	2014-02-16 22:06:40.041814+11	118.209.88.187
5971	In your head, formulate the idea of nationality in public	2014-02-16 22:06:42.134417+11	118.209.88.187
5972	Improve a number you consider to be quite big and collate the results	2014-02-16 22:06:43.380112+11	118.209.88.187
5973	Toss exploitation with optimism	2014-02-16 22:06:47.213446+11	118.209.88.187
5974	Continue the impossible without using words	2014-02-16 22:06:49.110302+11	118.209.88.187
5975	Visualise real progress in the usual way	2014-02-16 22:06:50.325754+11	118.209.88.187
5976	Carve free time addictively	2014-02-16 22:06:51.459226+11	118.209.88.187
5977	Pair nothing on the floor	2014-02-16 22:06:53.175305+11	118.209.88.187
5978	Confuse how your mobile phone is used on any given day unacceptably	2014-02-16 22:06:54.255265+11	118.209.88.187
5979	Suggest something now	2014-02-16 22:06:56.872354+11	118.209.88.187
5980	Draw a set of instructions in a text message	2014-02-16 22:07:04.396992+11	118.209.88.187
5981	Take a photo of left and right with a pencil	2014-02-16 22:07:09.823184+11	118.209.88.187
5982	Check the institution using the name of someone great	2014-02-16 22:07:12.784785+11	118.209.88.187
5983	Check seeds being reductive	2014-02-16 22:07:14.711158+11	118.209.88.187
5984	Speak  images of other people  by networking	2014-02-16 22:07:15.831434+11	118.209.88.187
5985	Fill stone then cut that in half	2014-02-16 22:07:17.731653+11	118.209.88.187
5986	Expose a signal in the wrong order	2014-02-16 22:07:20.060144+11	118.209.88.187
5987	Turn around a trail of destruction spontaneously	2014-02-16 22:07:22.011956+11	118.209.88.187
5988	Create a banner which refers to a meal in a variety of ways	2014-02-16 22:07:23.378956+11	118.209.88.187
5989	Illustrate good and bad with no diplomacy	2014-02-16 22:07:25.153466+11	118.209.88.187
5990	Define free time referencing the idea of dis-organisation	2014-02-16 22:07:26.619454+11	118.209.88.187
5991	Tap into a colony of ants in the colours of your flag	2014-02-16 22:07:28.199063+11	118.209.88.187
5992	Check the rules of tennis in pen	2014-02-16 22:07:29.371443+11	118.209.88.187
5993	Contribute a piece of paper over time	2014-02-16 22:07:30.231784+11	118.209.88.187
5994	Improve a capitalist notion and connect the dots	2014-02-16 22:07:30.899149+11	118.209.88.187
5995	Group multiple images of a manual using the name of someone great	2014-02-16 22:07:31.481723+11	118.209.88.187
5996	Fill the notion of work  seriously	2014-02-16 22:07:32.198936+11	118.209.88.187
5997	Stand by a direction for yourself	2014-02-16 22:07:32.873214+11	118.209.88.187
5998	Draw a movement into a ball	2014-02-16 22:07:34.264284+11	118.209.88.187
5999	Sculpt the surface like you mean it	2014-02-16 22:07:34.448811+11	118.209.88.187
6000	Make a colour palette of a program so you are affected	2014-02-16 22:07:34.744068+11	118.209.88.187
6001	Ruin lunch spontaneously	2014-02-16 22:07:35.312344+11	118.209.88.187
6002	Tap into the chain of evidence so that we will be really surprised	2014-02-16 22:07:36.114758+11	118.209.88.187
6003	Expose a stranger directly on the wall	2014-02-16 22:07:36.841138+11	118.209.88.187
6004	Photograph everything you see in the next 16 seconds in camouflage	2014-02-16 22:07:37.557902+11	118.209.88.187
6005	Protect your love of a particular person like a spy	2014-02-16 22:07:38.756381+11	118.209.88.187
6006	Share a flier thinking about form and function	2014-02-16 22:07:39.85643+11	118.209.88.187
6007	Invent a collection of blue things like it will change the world	2014-02-16 22:07:40.931911+11	118.209.88.187
6008	Grow a dictionary through trade	2014-02-16 22:07:41.962808+11	118.209.88.187
6009	Shape money in the wrong order	2014-02-16 22:07:43.198516+11	118.209.88.187
6010	Rearrange debt to create a completely new image	2014-02-16 22:07:43.99014+11	118.209.88.187
6011	Present how your mobile phone is used on any given day in the gallery	2014-02-16 22:07:45.459167+11	118.209.88.187
6012	Send a newspaper clipping of data by networking	2014-02-16 22:07:46.155934+11	118.209.88.187
6013	Toss offcuts in 12 sentences	2014-02-16 22:07:47.17684+11	118.209.88.187
6014	Expose a user-guide obsessively	2014-02-16 22:07:48.391661+11	118.209.88.187
6015	Tap into seeds into a ball	2014-02-16 22:07:49.502491+11	118.209.88.187
6016	Expose a sculpture and record what you find	2014-02-16 22:07:52.086308+11	118.209.88.187
6017	Suggest the risks diplomatically	2014-02-16 22:07:53.06391+11	118.209.88.187
6018	Photograph a safe religiously	2014-02-16 22:07:53.807197+11	118.209.88.187
6019	Wander a small list temporarily	2014-02-16 22:07:54.866653+11	118.209.88.187
6020	Consider  your inbox simply	2014-02-16 22:07:56.920032+11	118.209.88.187
6021	Discuss productivity temporarily	2014-02-16 22:07:57.746306+11	118.209.88.187
6022	Break particular ideas like a novice	2014-02-16 22:07:59.106269+11	118.209.88.187
6066	Reveal a limited edition unintuitively	2014-02-17 09:57:59.945569+11	131.170.5.2
6023	Create a pamphlet explaining the idea of nationality in photographic form	2014-02-16 22:07:59.731273+11	118.209.88.187
6024	Draw a scapegoat in the wrong order	2014-02-16 22:08:00.332805+11	118.209.88.187
6025	Seek a useful object during work hours	2014-02-16 22:08:01.083675+11	118.209.88.187
6026	Dis-organise something intricate together	2014-02-16 22:08:01.771532+11	118.209.88.187
6027	Teach a gathering online	2014-02-16 22:08:02.55081+11	118.209.88.187
6028	Sculpt a program in photographic form	2014-02-16 22:08:03.613338+11	118.209.88.187
6029	Tweet staples freely	2014-02-16 22:08:04.235485+11	118.209.88.187
6030	Toss a safe in gold	2014-02-16 22:08:09.727819+11	118.209.88.187
6031	Whittle real progress to closely notice the details	2014-02-17 09:05:58.867175+11	131.170.90.3
6032	Paint with watercolour the chain of evidence in camouflage	2014-02-17 09:06:02.713511+11	131.170.90.3
6033	Swap the city in your line of sight	2014-02-17 09:06:04.224436+11	131.170.90.3
6034	Play the notion of work  to form a link to the past	2014-02-17 09:06:05.631768+11	131.170.90.3
6035	Gather the game of tug-of-war then cut that in half	2014-02-17 09:06:07.090454+11	131.170.90.3
6036	Collaborate with tools on a map	2014-02-17 09:06:08.432364+11	131.170.90.3
6037	Model a small list and combine	2014-02-17 09:06:12.331244+11	131.170.90.3
6038	Assemble stone bureaucratically	2014-02-17 09:06:13.375402+11	131.170.90.3
6039	Make up average immediately	2014-02-17 09:06:21.898504+11	131.170.90.3
6040	Investigate a nation-state in hardcopy	2014-02-17 09:06:22.895182+11	131.170.90.3
6041	Say a balloon quietly	2014-02-17 09:06:24.047967+11	131.170.90.3
6042	Cover a nation-state and double it	2014-02-17 09:06:27.627484+11	131.170.90.3
6043	Donate the political and double it	2014-02-17 09:06:28.648179+11	131.170.90.3
6044	Source change idley	2014-02-17 09:06:29.791985+11	131.170.90.3
6045	Walk  currency quickly	2014-02-17 09:06:31.512115+11	131.170.90.3
6046	Unleash the moon unacceptably	2014-02-17 09:06:32.639335+11	131.170.90.3
6047	Scrunch a garden like a robot	2014-02-17 09:06:34.224494+11	131.170.90.3
6048	Throw space in a gallery	2014-02-17 09:06:35.659892+11	131.170.90.3
6049	Uncover your love of a particular person to the public	2014-02-17 09:06:37.120872+11	131.170.90.3
6050	Split information inside a square	2014-02-17 09:06:38.304722+11	131.170.90.3
6051	Sew a boat in public space	2014-02-17 09:06:39.547184+11	131.170.90.3
6052	Write a letter about an alternative using a recording device	2014-02-17 09:06:40.896594+11	131.170.90.3
6053	Sign the headlines in a graph of blue hues	2014-02-17 09:06:43.283783+11	131.170.90.3
6054	Draw a community then cut that in half	2014-02-17 09:06:44.673295+11	131.170.90.3
6055	Rewrite a net   in secret	2014-02-17 09:06:45.76865+11	131.170.90.3
6056	Replace the impossible using an old technique	2014-02-17 09:06:46.733337+11	131.170.90.3
6057	Follow  sticks while talking to people	2014-02-17 09:06:48.56334+11	131.170.90.3
6058	Un-mechanise a signal on the floor	2014-02-17 09:06:50.555124+11	131.170.90.3
6059	Price a way around a problem quietly	2014-02-17 09:06:51.641048+11	131.170.90.3
6060	Send a newspaper clipping of a number you consider to be quite big in small-scale	2014-02-17 09:06:52.82585+11	131.170.90.3
6061	Illustrate a new world order on your own	2014-02-17 09:06:55.267872+11	131.170.90.3
6062	Paint with watercolour a flagpole and collate the results	2014-02-17 09:08:46.28657+11	131.170.90.3
6063	Write a letter about spectacles as though your life depends on it	2014-02-17 09:08:47.764697+11	131.170.90.3
6064	Draw raw material seriously	2014-02-17 09:08:50.344836+11	131.170.90.3
6065	Design a meeting in 5 minutes	2014-02-17 09:08:52.068174+11	131.170.90.3
6069	Speak about the rules slowly	2014-02-17 10:06:43.708943+11	131.170.5.4
6070	Use  outside and put two and two together	2014-02-17 10:06:48.340003+11	131.170.5.4
6071	Abstract a powerpoint presentation using free software	2014-02-17 10:06:50.524402+11	131.170.5.4
6072	Follow information on the nature strip	2014-02-17 10:06:51.790135+11	131.170.5.4
6073	Toss spectacles to the public	2014-02-17 10:06:52.786334+11	131.170.5.4
6074	Rearrange an agreement in the most innovative way you can think of	2014-02-17 10:06:53.818194+11	131.170.5.4
6075	Expand on an orchestra so that we will be really surprised	2014-02-17 10:06:54.944613+11	131.170.5.4
6076	Expand on something intricate into a ball	2014-02-17 10:06:55.797618+11	131.170.5.4
6077	Ruin a common approach imagining you are in isolation	2014-02-17 10:06:56.812913+11	131.170.5.4
6078	Group together an object from your top drawer idley	2014-02-17 10:06:58.203551+11	131.170.5.4
6079	Discard the first 10 things you see so it reflects your values	2014-02-17 10:06:59.098186+11	131.170.5.4
6080	Collate the newspaper as though your life depends on it	2014-02-17 10:07:00.496238+11	131.170.5.4
6081	Deliberate leaves with scepticism	2014-02-17 10:07:01.831792+11	131.170.5.4
6082	Calculate something so you are affected	2014-02-17 10:07:04.662392+11	131.170.5.4
6086	Audit images of other people  using an old technique	2014-02-17 10:59:54.135853+11	131.170.5.5
6091	Illustrate a meal in camouflage	2014-02-17 11:24:47.250534+11	120.144.133.115
6093	Toss your inbox and connect the dots	2014-02-17 11:24:48.823743+11	120.144.133.115
6094	Spend time thinking about a secret meeting as if functional	2014-02-17 11:24:51.380792+11	120.144.133.115
6096	Order a meeting with scepticism	2014-02-17 11:24:55.655994+11	120.144.133.115
6098	Reassess a demonstration over 57 seconds	2014-02-17 11:24:57.511599+11	120.144.133.115
6145	Record a collection of blue things privately	2014-02-17 11:30:41.623772+11	131.170.90.4
6172	Publicly declare power without language	2014-02-17 11:36:26.899802+11	131.170.5.2
6174	Collect a demonstration with a public outcome in mind	2014-02-17 11:39:50.674419+11	14.201.30.137
6175	Picture the chain of evidence confidently	2014-02-17 11:39:59.009361+11	50.164.167.96
6176	Change weeds in a graph of blue hues	2014-02-17 11:40:02.972526+11	50.164.167.96
6177	Scratch the colony in your line of sight	2014-02-17 11:40:06.411376+11	50.164.167.96
6178	Break down practical objects over and over	2014-02-17 11:40:09.887975+11	50.164.167.96
6180	Perform a meal and record what you find	2014-02-17 11:40:14.377939+11	50.164.167.96
6181	Reassess trees as a pie chart	2014-02-17 11:40:16.814532+11	50.164.167.96
6188	Email a uniform like a novice	2014-02-17 11:40:41.496034+11	50.164.167.96
6189	Exhaust a new world order in monotone	2014-02-17 11:40:43.464909+11	50.164.167.96
6190	Write a letter about the economy into a ball	2014-02-17 11:40:48.18263+11	50.164.167.96
6191	Speak about  sticks now	2014-02-17 11:40:51.692581+11	50.164.167.96
6192	Manage the same word in the right order	2014-02-17 11:40:54.071741+11	50.164.167.96
6193	Draw a get-together then examine how it relates to the idea of revolution	2014-02-17 11:40:57.169978+11	50.164.167.96
6194	Produce something small  spontaneously	2014-02-17 11:41:05.5116+11	50.164.167.96
6195	Write a letter about a large circle on the nature strip	2014-02-17 11:41:08.334029+11	50.164.167.96
6196	Break a see-saw like a robot	2014-02-17 11:41:11.386248+11	50.164.167.96
6067	Paint with watercolour a set of instructions when you should be doing something else	2014-02-17 09:58:01.451819+11	131.170.5.2
6068	Impose a small list on the nature strip	2014-02-17 09:58:04.794352+11	131.170.5.2
6083	Group together the moon addictively	2014-02-17 10:21:57.059855+11	203.219.105.78
6084	Uncover patience seriously	2014-02-17 10:30:21.011068+11	131.170.5.2
6085	Break down into numbers spectacles by deduction	2014-02-17 10:59:41.005521+11	60.242.33.184
6087	Check a demonstration using watercolour	2014-02-17 11:01:05.301802+11	131.170.5.5
6088	Decipher the best times in 10 seconds	2014-02-17 11:23:21.15822+11	120.144.133.115
6139	Connect political rhetoric on the floor	2014-02-17 11:30:21.162243+11	131.170.90.4
6222	Present a new system in the simplest way possible	2014-02-17 11:59:11.337006+11	218.214.19.85
6223	Extract exploitation over 57 seconds	2014-02-17 11:59:14.845678+11	218.214.19.85
6310	Publicly declare a flier so it is equal	2014-02-17 12:06:25.223996+11	218.214.19.85
6311	Unleash a manual now	2014-02-17 12:06:28.962606+11	218.214.19.85
6312	Categorise a commodity with a catchy title	2014-02-17 12:06:30.085855+11	218.214.19.85
6313	Paint with watercolour a balloon thoroughly checking	2014-02-17 12:06:33.430851+11	218.214.19.85
6314	Break down a program and attempt it only once	2014-02-17 12:06:36.482114+11	218.214.19.85
6315	Collate a useless thing over and over	2014-02-17 12:06:38.390171+11	218.214.19.85
6316	Distribute silver coins using statistics	2014-02-17 12:06:42.459417+11	218.214.19.85
6317	Subvert a flier so it is equal	2014-02-17 12:06:48.873321+11	218.214.19.85
6318	Teach a word you heard today and collate the results	2014-02-17 12:06:50.707041+11	218.214.19.85
6319	Distribute a scapegoat on the wall	2014-02-17 12:06:53.04278+11	49.183.253.62
6320	Toss around the same thing considering last century	2014-02-17 12:06:55.294887+11	218.214.19.85
6321	Plan a list of rules so it reflects your values	2014-02-17 12:06:57.80648+11	218.214.19.85
6322	Invent staples using a recording device	2014-02-17 12:07:00.424857+11	218.214.19.85
6323	Read a tray without showing any proof	2014-02-17 12:07:02.329289+11	218.214.19.85
6324	Present the rules   differently	2014-02-17 12:07:06.787096+11	218.214.19.85
6325	Exhaust secularity without touching	2014-02-17 12:07:10.085996+11	218.214.19.85
6326	Rearrange an agreement in the form of a ransom note	2014-02-17 12:07:11.267261+11	49.183.253.62
6328	Sing an unusual scene in public space	2014-02-17 12:07:19.825392+11	218.214.19.85
6330	Model an alternative by planning the next move	2014-02-17 12:07:23.902339+11	218.214.19.85
6332	Write about everything green and white over time	2014-02-17 12:07:28.630345+11	218.214.19.85
6334	Replicate a useless thing as a pie chart	2014-02-17 12:07:32.2199+11	218.214.19.85
6335	Mime what failure means to you  and share it with us	2014-02-17 12:07:35.515191+11	218.214.19.85
6336	Paint then photograph seriously	2014-02-17 12:07:38.24964+11	218.214.19.85
6337	Avoid a small list as though your life depends on it	2014-02-17 12:07:40.546432+11	218.214.19.85
6338	Change a megaphone and put two and two together	2014-02-17 12:07:44.247969+11	218.214.19.85
6339	Design the best times in 3 minutes	2014-02-17 12:07:51.413847+11	218.214.19.85
6340	Deliberate a log as a drawing	2014-02-17 12:07:54.459931+11	218.214.19.85
6089	Plant a new system using blu-tak	2014-02-17 11:24:09.060284+11	110.175.236.101
6090	Uncover outside temporarily	2014-02-17 11:24:45.135459+11	110.175.236.101
6092	Undo a boat like it will change the world	2014-02-17 11:24:48.527633+11	110.175.236.101
6095	Assemble a slogan so its function is questionable	2014-02-17 11:24:52.635307+11	110.175.236.101
6097	Donate a colony of ants by deduction	2014-02-17 11:24:55.690762+11	110.175.236.101
6099	Act on a gathering like a spy	2014-02-17 11:24:59.761483+11	110.175.236.101
6100	Record social justice with no diplomacy	2014-02-17 11:25:04.426562+11	110.175.236.101
6101	Discuss a 7-word manifesto in a public place	2014-02-17 11:25:07.194415+11	110.175.236.101
6102	Scratch the moon and collate the results	2014-02-17 11:25:09.587997+11	110.175.236.101
6103	Grow a balloon to a stranger	2014-02-17 11:25:12.389245+11	110.175.236.101
6104	Improve a new slogan in photoshop	2014-02-17 11:25:14.489827+11	110.175.236.101
6105	Divulge a stranger obsessively	2014-02-17 11:25:17.580472+11	110.175.236.101
6106	Gather together a way around a problem in the simplest way possible	2014-02-17 11:25:20.102778+11	110.175.236.101
6107	Undo a flagpole in the form of instructions	2014-02-17 11:25:25.669837+11	110.175.236.101
6108	Create a chair then examine how it relates to the idea of revolution	2014-02-17 11:25:27.540361+11	110.175.236.101
6109	Standardise money temporarily	2014-02-17 11:25:33.195986+11	110.175.236.101
6110	Store a direction seriously	2014-02-17 11:25:35.659652+11	110.175.236.101
6111	Rearrange a signal differently	2014-02-17 11:25:40.233028+11	110.175.236.101
6112	Make a colour palette of good and bad on the nature strip	2014-02-17 11:25:41.955411+11	110.175.236.101
6113	Raise migration being completely dishonest	2014-02-17 11:25:44.929941+11	110.175.236.101
6114	Publicly declare the political in a variety of ways	2014-02-17 11:25:47.238795+11	110.175.236.101
6115	Identify two parties then cut that in half	2014-02-17 11:25:49.826669+11	110.175.236.101
6116	Gather focussed objects using statistics	2014-02-17 11:25:53.073133+11	110.175.236.101
6117	Improve a demonstration by swapping	2014-02-17 11:25:55.117004+11	110.175.236.101
6118	Send currency without telling anyone	2014-02-17 11:26:01.995172+11	110.175.236.101
6119	Send the temperature privately	2014-02-17 11:26:03.843382+11	110.175.236.101
6120	Collect the same word on your own	2014-02-17 11:26:05.953146+11	110.175.236.101
6121	Perform time of the future	2014-02-17 11:26:10.572736+11	110.175.236.101
6122	Hand out images of other people  with the first pencil you find	2014-02-17 11:26:20.688628+11	110.175.236.101
6123	Whittle practical objects and throw it out the window	2014-02-17 11:26:23.965036+11	110.175.236.101
6124	Extract a colony of ants with others	2014-02-17 11:26:26.975867+11	110.175.236.101
6125	Reinvent branches and document the findings to share	2014-02-17 11:26:28.778098+11	110.175.236.101
6126	Sign good and bad creatively	2014-02-17 11:26:31.796934+11	110.175.236.101
6127	Distribute how you might begin to withdraw your dependency on technology now	2014-02-17 11:26:34.173628+11	110.175.236.101
6128	Detail migration in the form of a ransom note	2014-02-17 11:26:40.156399+11	110.175.236.101
6129	Hand out a new slogan so that we will be really surprised	2014-02-17 11:26:42.797014+11	110.175.236.101
6130	Throw a program here and now	2014-02-17 11:29:34.622467+11	220.244.145.217
6131	Plant beans using statistics	2014-02-17 11:29:44.077789+11	220.244.145.217
6132	Investigate a fireplace with others	2014-02-17 11:30:07.975949+11	220.244.145.217
6133	Take a sample of  the idea of nationality in a gallery	2014-02-17 11:30:09.209759+11	220.244.145.217
6134	Tap into work while referring to beehives	2014-02-17 11:30:11.200696+11	220.244.145.217
6135	Arrange a uniform without compromise	2014-02-17 11:30:13.816653+11	220.244.145.217
6136	Pre-record exploitation like a novice	2014-02-17 11:30:15.84899+11	220.244.145.217
6137	Toss waste actively	2014-02-17 11:30:17.799047+11	220.244.145.217
6138	Spend time thinking about the economy in 11 sentences	2014-02-17 11:30:20.524916+11	220.244.145.217
6140	Write 8 images to the world	2014-02-17 11:30:22.770689+11	220.244.145.217
6141	Pre-record this and that in 3 minutes	2014-02-17 11:30:26.456125+11	220.244.145.217
6142	Move a garden quickly	2014-02-17 11:30:30.79136+11	220.244.145.217
6143	Publicly declare everything together	2014-02-17 11:30:31.988002+11	220.244.145.217
6144	Demonstrate out the front of your house without showing any proof	2014-02-17 11:30:33.270565+11	220.244.145.217
6146	Stand by food supply chains without telling anyone	2014-02-17 11:31:14.75204+11	131.170.90.4
6147	Walk  work using watercolour	2014-02-17 11:31:29.223124+11	131.170.90.4
6148	Type a direction thoughtfully	2014-02-17 11:31:32.747148+11	131.170.90.4
6149	Collate the risks in a closed form	2014-02-17 11:31:35.002696+11	131.170.90.4
6150	Single out something and use it as currency	2014-02-17 11:31:39.163912+11	131.170.90.4
6151	Demonstrate a border to form a link to the past	2014-02-17 11:31:42.189828+11	131.170.90.4
6152	Replace your password in your line of sight	2014-02-17 11:31:45.45734+11	131.170.90.4
6153	Cut and paste the impossible simply	2014-02-17 11:31:50.862436+11	131.170.90.4
6154	Detail a tray on a map	2014-02-17 11:31:52.986372+11	131.170.90.4
6155	Explore your role within a particular organisational structure so that we will be really surprised	2014-02-17 11:31:54.206736+11	131.170.90.4
6156	Hand out a nation-state as an indulgence	2014-02-17 11:32:03.024363+11	131.170.90.4
6157	Re-define a debate to preexisting conditions	2014-02-17 11:32:08.962172+11	131.170.90.4
6158	Demonstrate practical objects using free software	2014-02-17 11:32:11.717047+11	131.170.90.4
6159	Undertake currency in pen	2014-02-17 11:32:13.721681+11	131.170.90.4
6160	Connect something small  in a new order	2014-02-17 11:32:15.070799+11	131.170.90.4
6161	Unleash a megaphone temporarily	2014-02-17 11:33:32.245617+11	121.213.244.148
6173	Present out the front of your house in a gallery	2014-02-17 11:39:20.111713+11	50.164.167.96
6179	Destroy trees undercover	2014-02-17 11:40:13.758283+11	14.201.30.137
6182	Modify the notion of work  over 2 minutes	2014-02-17 11:40:18.76547+11	14.201.30.137
6183	Find the political unacceptably	2014-02-17 11:40:23.466485+11	14.201.30.137
6184	Network the colony with scepticism	2014-02-17 11:40:25.921407+11	14.201.30.137
6185	Describe a piece of paper by swapping	2014-02-17 11:40:29.071609+11	14.201.30.137
6186	Discard a signal randomly	2014-02-17 11:40:32.094366+11	14.201.30.137
6187	Follow left and right and connect the dots	2014-02-17 11:40:35.373281+11	14.201.30.137
6331	Collage weeds once	2014-02-17 12:07:26.33106+11	49.183.253.62
6333	Send a newspaper clipping of a new system directly on the wall	2014-02-17 12:07:28.891693+11	49.183.253.62
6162	Mark the net unacceptably	2014-02-17 11:33:49.073241+11	121.213.244.148
6163	Deliver elastic bands without touching	2014-02-17 11:33:53.272713+11	121.213.244.148
6164	Observe the institution spontaneously	2014-02-17 11:33:56.471514+11	121.213.244.148
6165	Turn around 7 steps over 24 hours	2014-02-17 11:33:59.026205+11	121.213.244.148
6166	Redesign a net   diplomatically	2014-02-17 11:34:01.606812+11	121.213.244.148
6167	Sing particular ideas in the wrong order	2014-02-17 11:34:03.432292+11	121.213.244.148
6168	Reveal the idea of happiness in photoshop	2014-02-17 11:34:06.091622+11	121.213.244.148
6169	Suggest data to closely notice the details	2014-02-17 11:34:08.844693+11	121.213.244.148
6170	Group multiple images of a powerpoint presentation with your hands	2014-02-17 11:34:10.866886+11	121.213.244.148
6171	Distribute transparency and double it	2014-02-17 11:34:12.210839+11	121.213.244.148
6224	Trust a systemic failure and speak the result in monotone	2014-02-17 11:59:57.946671+11	218.214.19.85
6225	Abstract how your mobile phone is used on any given day like a novice	2014-02-17 12:00:01.875001+11	218.214.19.85
6226	Reverse leaves and put two and two together	2014-02-17 12:00:10.187845+11	218.214.19.85
6227	Ruin something in 2 minutes	2014-02-17 12:00:14.14039+11	218.214.19.85
6228	Group together productivity helplessly	2014-02-17 12:00:16.272893+11	218.214.19.85
6229	Record a way around a problem immediately	2014-02-17 12:00:24.072313+11	218.214.19.85
6230	Pair revolution at home	2014-02-17 12:00:26.444255+11	218.214.19.85
6231	Exhaust branches freely	2014-02-17 12:00:30.989418+11	218.214.19.85
6232	Connect your thoughts in 8 ways	2014-02-17 12:00:33.416166+11	218.214.19.85
6233	Suspend the newspaper unintuitively	2014-02-17 12:00:34.994941+11	218.214.19.85
6234	Whistle management freely	2014-02-17 12:00:38.167268+11	218.214.19.85
6235	Test a number you consider to be quite big to capture the moment	2014-02-17 12:00:39.711457+11	218.214.19.85
6236	Pre-record an organisation  seriously	2014-02-17 12:00:49.3009+11	218.214.19.85
6237	Group multiple images of a handshake to the public	2014-02-17 12:00:51.336216+11	218.214.19.85
6238	Deliver  sticks do this 7 times	2014-02-17 12:00:58.240016+11	218.214.19.85
6329	Converse the temperature by swapping	2014-02-17 12:07:22.415187+11	49.183.253.62
6197	Create a banner which refers to the newspaper as if functional	2014-02-17 11:41:12.070025+11	50.164.167.96
6198	Multiply a stranger at home	2014-02-17 11:41:14.614916+11	50.164.167.96
6199	Gather together a game of cards on a piece of paper	2014-02-17 11:41:19.577109+11	50.164.167.96
6200	Swap a set of instructions simply	2014-02-17 11:41:22.287871+11	50.164.167.96
6201	Photocopy a systemic failure with others	2014-02-17 11:41:24.210144+11	50.164.167.96
6202	Write about a dictionary in capitals	2014-02-17 11:41:26.271629+11	50.164.167.96
6203	Multiply political rhetoric using watercolour	2014-02-17 11:41:29.002405+11	50.164.167.96
6204	Define a debate in a closed form	2014-02-17 11:41:31.775241+11	50.164.167.96
6205	Manage trees with others	2014-02-17 11:41:34.271503+11	50.164.167.96
6206	Sign social justice of the future	2014-02-17 11:41:36.470849+11	50.164.167.96
6207	Teach the institution to preexisting conditions	2014-02-17 11:41:39.380178+11	50.164.167.96
6208	Explain how your mobile phone is used on any given day quietly	2014-02-17 11:47:39.340288+11	131.170.5.2
6209	Walk  branches over and over	2014-02-17 11:57:51.350176+11	218.214.19.85
6210	Reassess anything in monotone	2014-02-17 11:58:03.158871+11	218.214.19.85
6211	Whittle the net over and over	2014-02-17 11:58:05.518218+11	218.214.19.85
6212	Wander your job so its function is questionable	2014-02-17 11:58:08.398874+11	218.214.19.85
6213	Gather together future technologies without showing anyone	2014-02-17 11:58:18.999815+11	218.214.19.85
6214	Collage the world in the size of a book	2014-02-17 11:58:21.656283+11	218.214.19.85
6215	Investigate a manual by networking	2014-02-17 11:58:28.080538+11	218.214.19.85
6216	Plot on a graph your password in public space	2014-02-17 11:58:31.74841+11	218.214.19.85
6217	Examine a chair while talking to people	2014-02-17 11:58:36.167254+11	218.214.19.85
6218	Give something in the size of a book	2014-02-17 11:58:40.85265+11	218.214.19.85
6219	Photocopy salvaged material inside a square	2014-02-17 11:58:43.918672+11	218.214.19.85
6220	Whistle anything in photoshop	2014-02-17 11:58:49.690259+11	218.214.19.85
6221	Sign the colony over 57 seconds	2014-02-17 11:58:55.475831+11	218.214.19.85
6239	Collage an object from your top drawer in a minute	2014-02-17 12:01:25.963511+11	218.214.19.85
6240	Categorise the best times at home	2014-02-17 12:01:30.621014+11	218.214.19.85
6241	Plot on a graph a mug differently	2014-02-17 12:01:32.287232+11	218.214.19.85
6242	Reverse engineer 8 images as a drawing	2014-02-17 12:01:36.662294+11	218.214.19.85
6243	Leave sticks and stones repeatedly	2014-02-17 12:01:41.939454+11	218.214.19.85
6244	Reinvent a hole one way	2014-02-17 12:01:43.752571+11	218.214.19.85
6245	Decipher staples with no diplomacy	2014-02-17 12:01:46.007133+11	218.214.19.85
6246	Research your job over five minutes	2014-02-17 12:01:49.114465+11	218.214.19.85
6247	Turn around a trail of destruction by deduction	2014-02-17 12:01:50.908228+11	218.214.19.85
6248	Plan a slogan with the next person you see	2014-02-17 12:01:53.629235+11	218.214.19.85
6249	Modify a commodity religiously	2014-02-17 12:01:56.419225+11	218.214.19.85
6250	Rewrite something round during work hours	2014-02-17 12:01:58.353468+11	218.214.19.85
6251	Move 10 synonyms with tape	2014-02-17 12:02:03.351206+11	218.214.19.85
6252	Create a commodity over 11 minutes	2014-02-17 12:02:07.108238+11	218.214.19.85
6253	Mime how you might begin to withdraw your dependency on technology by swapping	2014-02-17 12:02:09.673049+11	218.214.19.85
6254	Snap what failure means to you backing it up with research	2014-02-17 12:02:18.290911+11	218.214.19.85
6255	Tweet  sticks slowly	2014-02-17 12:02:22.142267+11	218.214.19.85
6256	Share real progress using a recording device	2014-02-17 12:02:24.107979+11	218.214.19.85
6257	Raise migration using watercolour	2014-02-17 12:02:32.008226+11	218.214.19.85
6258	Describe silver coins in 10 seconds	2014-02-17 12:02:35.278488+11	218.214.19.85
6259	Find an example of a commodity with found objects	2014-02-17 12:02:40.052409+11	218.214.19.85
6260	Check focussed objects directly on the wall	2014-02-17 12:02:42.716784+11	218.214.19.85
6261	Gather together the rules   as a map	2014-02-17 12:02:46.881906+11	218.214.19.85
6262	Swap a video  in secret	2014-02-17 12:02:49.157949+11	218.214.19.85
6263	Colour beans religiously	2014-02-17 12:02:57.214601+11	218.214.19.85
6264	Use  a round table at home	2014-02-17 12:02:59.905477+11	218.214.19.85
6265	Undertake the impossible so you are affected	2014-02-17 12:03:01.661637+11	218.214.19.85
6266	Seek good and bad arbritrarily	2014-02-17 12:03:14.995187+11	218.214.19.85
6267	Calculate how your mobile phone is used on any given day in the simplest way possible	2014-02-17 12:03:22.533033+11	218.214.19.85
6268	Describe a common approach diplomatically	2014-02-17 12:03:24.954593+11	218.214.19.85
6269	Un-mechanise a hole into a drawing	2014-02-17 12:03:28.638688+11	218.214.19.85
6270	Walk  an organisation  and connect the dots	2014-02-17 12:03:37.351602+11	218.214.19.85
6271	Multiply seeds with a catchy title	2014-02-17 12:03:40.971621+11	218.214.19.85
6272	List a see-saw in 3 minutes	2014-02-17 12:03:45.984717+11	218.214.19.85
6273	Find 4 steps using statistics	2014-02-17 12:03:50.750274+11	218.214.19.85
6274	Dis-organise a rule thoughtfully	2014-02-17 12:03:53.810509+11	218.214.19.85
6275	Donate energy   online	2014-02-17 12:03:55.980352+11	218.214.19.85
6276	Calculate the risks like it will change the world	2014-02-17 12:03:58.011482+11	218.214.19.85
6277	Investigate how you are implicated in systems quickly	2014-02-17 12:04:08.870046+11	218.214.19.85
6278	Use  a capitalist notion as if functional	2014-02-17 12:04:11.512111+11	218.214.19.85
6279	Leave a communal dinner to the public	2014-02-17 12:04:13.476777+11	218.214.19.85
6280	Confuse data as a map	2014-02-17 12:04:18.169509+11	218.214.19.85
6281	Reinvent the future using watercolour	2014-02-17 12:04:20.388707+11	218.214.19.85
6282	Colour your thoughts in photoshop	2014-02-17 12:04:29.510133+11	218.214.19.85
6283	Trust a number you consider to be quite big actively	2014-02-17 12:04:35.211755+11	218.214.19.85
6284	Calculate a commodity efficiently	2014-02-17 12:04:39.655409+11	218.214.19.85
6285	Research a round table here and now	2014-02-17 12:04:41.367842+11	218.214.19.85
6286	Abstract bureaucracy systematically	2014-02-17 12:04:44.32101+11	218.214.19.85
6287	Unleash a handshake diplomatically	2014-02-17 12:04:48.986043+11	218.214.19.85
6288	Improve a mug randomly	2014-02-17 12:04:50.730221+11	218.214.19.85
6289	Sculpt a community and record what you find	2014-02-17 12:04:52.308538+11	218.214.19.85
6290	Seek the world without telling anyone	2014-02-17 12:04:55.217884+11	218.214.19.85
6291	Modify a see-saw thoroughly checking	2014-02-17 12:04:57.701141+11	218.214.19.85
6292	Illustrate secularity thoughtfully	2014-02-17 12:05:00.296235+11	218.214.19.85
6293	Rearrange two people like a spy	2014-02-17 12:05:02.110729+11	218.214.19.85
6294	Explore D.I.Y without thinking too much	2014-02-17 12:05:09.7224+11	218.214.19.85
6295	Speak about a limited edition then examine how it relates to the idea of revolution	2014-02-17 12:05:11.322078+11	218.214.19.85
6296	Audit a get-together so it is equal	2014-02-17 12:05:14.236291+11	218.214.19.85
6297	Un-mechanise revolution convincingly	2014-02-17 12:05:16.621811+11	218.214.19.85
6298	Colour your inbox in camouflage	2014-02-17 12:05:18.01421+11	218.214.19.85
6299	Store your favourite image online	2014-02-17 12:05:20.700999+11	218.214.19.85
6300	Assemble a gathering without thinking	2014-02-17 12:05:22.893859+11	218.214.19.85
6301	Assemble something and record what you find	2014-02-17 12:05:24.983687+11	218.214.19.85
6302	Group together a mug and document the findings to share	2014-02-17 12:05:26.746674+11	218.214.19.85
6303	Avoid salvaged material as a pie chart	2014-02-17 12:05:29.663204+11	218.214.19.85
6304	Form a nation-state without compromise	2014-02-17 12:05:33.628941+11	218.214.19.85
6305	Swap an object from your top drawer in photographic form	2014-02-17 12:05:36.049643+11	218.214.19.85
6306	Suggest positive images of collective action in the gallery	2014-02-17 12:05:41.959368+11	218.214.19.85
6307	Improve a gathering in gold	2014-02-17 12:05:46.396322+11	218.214.19.85
6308	Arrange what success means to you on the wall	2014-02-17 12:05:49.617456+11	218.214.19.85
6309	Visualise a number you consider to be quite big through a process of elimination	2014-02-17 12:05:51.81504+11	218.214.19.85
6327	Brainstorm a slogan so its function is questionable	2014-02-17 12:07:17.587426+11	49.183.253.62
6341	Wear a direction then cut that in half	2014-02-17 12:07:57.477764+11	218.214.19.85
6342	Type a large circle with no preconceived idea	2014-02-17 12:08:20.486849+11	218.214.19.85
6343	Sculpt something intricate of the future	2014-02-17 12:08:24.765939+11	218.214.19.85
6344	Converse a positive gesture of the future	2014-02-17 12:08:27.235704+11	218.214.19.85
6345	Price salvaged material using the name of someone great	2014-02-17 12:08:29.882497+11	218.214.19.85
6346	Sculpt focussed objects inside an irregular shape	2014-02-17 12:08:34.058421+11	218.214.19.85
6347	Hack a secret meeting using watercolour	2014-02-17 12:08:35.654283+11	218.214.19.85
6348	Perform stationery for yourself	2014-02-17 12:08:38.32878+11	218.214.19.85
6349	Introduce a uniform idley	2014-02-17 12:08:41.088194+11	218.214.19.85
6350	Gather together tools without thinking	2014-02-17 12:08:43.885265+11	218.214.19.85
6351	Calculate a systemic failure to form a link to the past	2014-02-17 12:08:46.572664+11	218.214.19.85
6352	Tweet something efficiently	2014-02-17 12:08:49.127104+11	218.214.19.85
6353	Leave a uniform then cut that in half	2014-02-17 12:08:54.382198+11	218.214.19.85
6354	Break down into numbers the idea of happiness using blu-tak	2014-02-17 12:08:58.424264+11	218.214.19.85
6355	Re-write a capitalist notion randomly	2014-02-17 12:09:01.448485+11	218.214.19.85
6356	Raise your favourite image temporarily	2014-02-17 12:09:12.319534+11	218.214.19.85
6357	Abstract a safe with other people	2014-02-17 12:09:15.144561+11	218.214.19.85
6358	Undo money so that we will be really surprised	2014-02-17 12:09:24.450248+11	218.214.19.85
6359	Wander the moon side by side	2014-02-17 12:09:26.605315+11	218.214.19.85
6360	Calculate the best times actively	2014-02-17 12:09:28.033406+11	218.214.19.85
6361	Connect the city as a list	2014-02-17 12:09:31.45461+11	218.214.19.85
6362	Gather what success means to you for yourself	2014-02-17 12:09:32.923669+11	218.214.19.85
6363	Un-mechanise a tray and record what you find	2014-02-17 12:09:34.917022+11	218.214.19.85
6364	Expand on the net with no diplomacy	2014-02-17 12:09:37.953443+11	218.214.19.85
6365	Contribute a trail of destruction so it reflects your values	2014-02-17 12:09:40.39669+11	218.214.19.85
6366	Deliberate bureaucracy in 3 ways	2014-02-17 12:09:43.988135+11	218.214.19.85
6367	Publicly declare a flagpole quickly	2014-02-17 12:09:47.983646+11	218.214.19.85
6368	Reinforce an instruction and use it as currency	2014-02-17 12:09:51.03678+11	218.214.19.85
6369	Break down nothing like a novice	2014-02-17 12:10:00.347394+11	218.214.19.85
6370	Categorise everything green and white without thinking	2014-02-17 12:10:03.16962+11	218.214.19.85
6371	Represent a powerpoint presentation over time	2014-02-17 12:10:07.341348+11	218.214.19.85
6372	Say a user-guide with the next person you see	2014-02-17 12:10:18.558021+11	218.214.19.85
6373	Continue the notion of work  without telling anyone	2014-02-17 12:21:00.249526+11	131.170.5.2
6374	Source something with a double meaning immediately	2014-02-17 12:21:40.998729+11	131.170.5.2
6375	Write out the front of your house using statistics	2014-02-17 12:21:57.566135+11	131.170.5.2
6376	Pre-record something small  over 57 seconds	2014-02-17 12:22:02.128265+11	131.170.5.2
6377	Brainstorm a collection of blue things and pick your favourite	2014-02-17 12:22:06.453146+11	131.170.5.2
6378	Create protocols in monotone	2014-02-17 12:22:09.981822+11	131.170.5.2
6379	Suspend one minute so its function is questionable	2014-02-17 12:22:11.76523+11	131.170.5.2
6380	Store an image-editing program trustfully	2014-02-17 12:22:17.933575+11	131.170.5.2
6381	Create a pamphlet explaining a new system arbritrarily	2014-02-17 12:22:20.651886+11	131.170.5.2
6382	Photograph a systemic failure using only political rhetoric	2014-02-17 12:22:23.429304+11	131.170.5.2
6383	Tap into exploitation in monotone	2014-02-17 12:25:01.066012+11	220.244.145.189
6384	Re-write something new without showing anyone	2014-02-17 12:42:38.570698+11	101.173.170.142
6385	Bring the chain of evidence using a recording device	2014-02-17 12:43:22.322617+11	101.173.127.233
6386	Plant nothing and attempt it only once	2014-02-17 12:43:27.944775+11	101.173.170.141
6387	Design a set of instructions do this 6 times	2014-02-17 12:43:32.63457+11	101.173.127.233
6388	Draw a number you consider to be quite big in gold	2014-02-17 12:43:36.003104+11	101.173.255.235
6389	Exhaust average without thinking too much	2014-02-17 12:43:39.853994+11	101.173.127.234
6390	Fill a logo in camouflage	2014-02-17 12:43:44.230132+11	101.173.255.235
6391	Continue a boat and question your findings	2014-02-17 12:43:46.723956+11	101.173.213.71
6392	Act protocols being reductive	2014-02-17 12:43:52.973259+11	101.173.42.146
6393	Un-mechanise 5 steps without showing any proof	2014-02-17 12:43:55.674806+11	101.173.255.235
6394	Send work in pen	2014-02-17 12:44:12.960853+11	101.173.127.233
6395	Assemble a network trustfully	2014-02-17 12:44:15.220408+11	101.173.127.234
6396	Walk  a community in a graph of blue hues	2014-02-17 12:44:19.61093+11	101.173.85.58
6397	Pre-record something using the name of someone great	2014-02-17 12:44:22.400625+11	101.173.127.234
6398	Suggest your thoughts slowly	2014-02-17 12:44:26.261662+11	101.173.85.57
6399	Try 6 synonyms in the size of a book	2014-02-17 12:44:28.531592+11	101.173.42.146
6400	Post what failure means to you in the form of instructions	2014-02-17 12:44:30.477512+11	101.173.42.146
6401	Make up an organisation  into a ball	2014-02-17 12:44:38.390097+11	101.173.213.71
6402	Seek seeds with scepticism	2014-02-17 12:44:42.141545+11	101.173.127.233
6403	Abstract a word you heard today on a map	2014-02-17 12:44:44.421261+11	101.173.85.58
6404	Act food supply chains without telling anyone	2014-02-17 12:44:47.720318+11	101.173.42.146
6405	Photograph everything you see in the next 12 seconds on the wall	2014-02-17 12:44:53.479919+11	101.173.170.141
6406	Record nothing once	2014-02-17 12:44:56.540718+11	101.173.170.142
6407	Send a capitalist notion thoughtfully	2014-02-17 13:02:16.456199+11	203.166.233.145
6408	Replace a mug like a novice	2014-02-17 13:20:42.995589+11	113.252.203.150
6409	Say a set of instructions with a catchy title	2014-02-17 13:20:44.841478+11	113.252.203.150
6410	Read a sign in a closed form	2014-02-17 13:20:48.748654+11	113.252.203.150
6411	Identify something in public	2014-02-17 13:20:51.501822+11	113.252.203.150
6412	Investigate images of other people  obsessively	2014-02-17 13:20:52.951925+11	113.252.203.150
6413	Speak about this and that undercover	2014-02-17 13:20:56.229397+11	113.252.203.150
6414	Share stationery while talking to people	2014-02-17 13:20:59.925756+11	113.252.203.150
6415	Toss around your job during work hours	2014-02-17 13:21:01.801136+11	113.252.203.150
6416	Change outside in black and white	2014-02-17 13:21:05.499019+11	113.252.203.150
6417	Consider  the garden quietly	2014-02-17 13:21:09.989533+11	113.252.203.150
6418	Sew a new world order into a ball	2014-02-17 13:21:11.558706+11	113.252.203.150
6419	Toss around an image-editing program in capitals	2014-02-17 13:21:21.119934+11	113.252.203.150
6420	Take a photo of your camera like a robot	2014-02-17 14:12:38.03736+11	110.148.207.129
6562	Write about the notion of work  without thinking	2014-02-17 18:36:11.413788+11	58.175.64.246
6629	Audit a positive gesture in the most innovative way you can think of	2014-02-17 22:28:17.674018+11	118.209.109.80
6633	Spend time thinking about silver coins spontaneously	2014-02-17 22:29:27.095236+11	118.209.109.80
6637	Hack a set of instructions in another language	2014-02-17 22:29:57.693195+11	118.209.109.80
6640	Plant Australian symbolism addictively	2014-02-17 22:30:23.060702+11	118.209.109.80
6669	Pretend  a log in a variety of ways	2014-02-17 22:54:20.779454+11	101.119.28.239
6421	Detail a balloon efficiently	2014-02-17 14:13:02.433417+11	110.148.207.129
6422	Split your camera in a variety of ways	2014-02-17 14:13:05.776935+11	110.148.207.129
6423	Re-write 4 steps online	2014-02-17 14:13:08.383112+11	110.148.207.129
6424	Check how you might begin to withdraw your dependency on technology in the form of instructions	2014-02-17 14:13:10.723167+11	110.148.207.129
6425	Colour a small list to a stranger	2014-02-17 14:13:17.728773+11	110.148.207.129
6446	Teach the moon with other people	2014-02-17 14:23:19.774109+11	101.119.27.118
6447	Mime your love of a particular person one way	2014-02-17 14:23:21.981348+11	101.119.27.118
6448	Produce a fireplace as an indulgence	2014-02-17 14:23:23.540839+11	101.119.27.118
6449	Reinvent practical objects using the name of someone great	2014-02-17 14:23:25.221351+11	101.119.27.118
6450	Arrange plants intuitively	2014-02-17 14:23:26.421011+11	101.119.27.118
6496	Calculate a word you heard today in hardcopy	2014-02-17 14:26:42.972893+11	131.170.90.3
6497	Draw a number you consider to be quite big in 9 sentences	2014-02-17 14:26:47.0476+11	131.170.90.3
6498	Undo a border without telling anyone	2014-02-17 14:26:58.05036+11	131.170.90.3
6499	Demonstrate something new like you mean it	2014-02-17 14:27:06.699503+11	131.170.90.3
6500	Draw bureaucracy using watercolour	2014-02-17 14:27:10.111669+11	131.170.90.3
6501	Photograph future technologies in black and white	2014-02-17 14:27:15.75293+11	131.170.90.3
6502	Raise a logo directly	2014-02-17 14:27:19.983461+11	131.170.90.3
6503	Undo the city to your detriment	2014-02-17 14:27:24.338633+11	131.170.90.3
6504	Collate something with a double meaning and double it	2014-02-17 14:27:28.005702+11	131.170.90.3
6505	Single out 4 steps without compromise	2014-02-17 14:27:33.74187+11	131.170.90.3
6506	Impose a stranger in the simplest way possible	2014-02-17 14:27:40.291006+11	131.170.90.3
6507	Carve your job and pick your favourite	2014-02-17 14:27:44.473839+11	131.170.90.3
6508	Colour in  a nation-state on a line	2014-02-17 14:27:47.785215+11	131.170.90.3
6509	Reinvent a gathering thoughtfully	2014-02-17 14:27:51.089292+11	131.170.90.3
6510	Spy on a stranger in the form of instructions	2014-02-17 14:27:54.712608+11	131.170.90.3
6511	Network trees arbritrarily	2014-02-17 14:27:58.68368+11	131.170.90.3
6512	Picture social justice directly on the wall	2014-02-17 14:28:00.349048+11	131.170.90.3
6513	Contribute a trusted source to create a completely new image	2014-02-17 14:28:04.635957+11	131.170.90.3
6514	Discuss a dollar on a map	2014-02-17 14:28:10.248567+11	131.170.90.3
6515	Print out D.I.Y so its function is questionable	2014-02-17 14:28:12.937933+11	131.170.90.3
6516	Act out a safe during business hours	2014-02-17 14:28:19.518751+11	131.170.90.3
6517	Cover beans as a list	2014-02-17 14:28:25.492063+11	131.170.90.3
6518	Connect information in the wrong order	2014-02-17 14:28:28.023136+11	131.170.90.3
6519	Ruin raw material mindfully	2014-02-17 14:28:30.593516+11	131.170.90.3
6520	Systematise a rule backing it up with research	2014-02-17 14:28:35.516365+11	131.170.90.3
6521	Order something round by planning the next move	2014-02-17 14:28:36.742485+11	131.170.90.3
6532	Record a border in monotone	2014-02-17 15:14:26.784397+11	131.170.90.4
6426	Store social justice to your detriment	2014-02-17 14:22:33.740496+11	101.119.27.118
6495	Publicly declare real progress using a recording device	2014-02-17 14:26:31.296376+11	131.170.90.3
6522	Act political rhetoric referencing the idea of dis-organisation	2014-02-17 14:32:17.64269+11	49.3.9.184
6543	Use  everything you see in the next 25 seconds without using words	2014-02-17 15:48:12.077212+11	101.119.26.118
6544	Paint something with a double meaning in 10 seconds	2014-02-17 15:48:15.364501+11	101.119.26.118
6427	Throw a circle without showing any proof	2014-02-17 14:22:40.833458+11	101.119.27.118
6428	Plan raw material over 13 minutes	2014-02-17 14:22:42.380269+11	101.119.27.118
6429	Abstract good and bad in photographic form	2014-02-17 14:22:43.580394+11	101.119.27.118
6431	Price everything trustfully	2014-02-17 14:22:44.880336+11	101.119.27.118
6432	Undertake two parties using an old technique	2014-02-17 14:22:46.443731+11	101.119.27.118
6433	Photocopy the game of tug-of-war systematically	2014-02-17 14:22:47.800477+11	101.119.27.118
6434	Find lunch so that we will be really surprised	2014-02-17 14:22:49.280465+11	101.119.27.118
6435	Plan the same thing in photographic form	2014-02-17 14:22:52.620436+11	101.119.27.118
6436	Re-define an agreement systematically	2014-02-17 14:22:56.001168+11	101.119.27.118
6437	Fill good and bad in the most innovative way you can think of	2014-02-17 14:22:58.30114+11	101.119.27.118
6438	Break down the crowd on the wall	2014-02-17 14:23:00.341277+11	101.119.27.118
6439	Send a newspaper clipping of a direction and throw it out the window	2014-02-17 14:23:02.441217+11	101.119.27.118
6440	Collaborate with a direction loudly	2014-02-17 14:23:05.761186+11	101.119.27.118
6441	Network the chain of evidence to capture the moment	2014-02-17 14:23:08.241117+11	101.119.27.118
6442	Represent an object from your top drawer with the next person you see	2014-02-17 14:23:09.761213+11	101.119.27.118
6443	Read spectacles without showing any proof	2014-02-17 14:23:10.901108+11	101.119.27.118
6444	Snap your favourite image and speak the result in monotone	2014-02-17 14:23:12.380957+11	101.119.27.118
6445	Subvert a useless thing to a stranger	2014-02-17 14:23:14.700983+11	101.119.27.118
6430	Redesign what failure means to you like you mean it	2014-02-17 14:22:44.009159+11	110.33.177.65
6568	Audit an image-editing program in a public place	2014-02-17 19:31:45.681231+11	118.209.82.213
6451	Check a slogan in the gallery	2014-02-17 14:23:45.40634+11	110.33.177.65
6452	Toss around data over 4 minutes	2014-02-17 14:23:46.417414+11	110.33.177.65
6453	Abstract food supply chains as a pie chart	2014-02-17 14:23:47.360778+11	110.33.177.65
6454	Distrupt everything green and white randomly	2014-02-17 14:23:50.400161+11	110.33.177.65
6455	Sing the newspaper arbritrarily	2014-02-17 14:23:52.248384+11	110.33.177.65
6456	Colour secularity using watercolour	2014-02-17 14:23:53.416568+11	110.33.177.65
6457	Destroy a nation-state using watercolour	2014-02-17 14:23:55.27527+11	110.33.177.65
6458	Break down then photograph so you are affected	2014-02-17 14:23:56.609046+11	110.33.177.65
6459	Converse a set of instructions to form a link to the past	2014-02-17 14:23:58.138694+11	110.33.177.65
6460	Identify anything by swapping	2014-02-17 14:24:00.865677+11	110.33.177.65
6461	Examine a tray in photoshop	2014-02-17 14:24:03.136524+11	110.33.177.65
6462	Write about a piece of paper and send it to us via email	2014-02-17 14:24:04.409516+11	110.33.177.65
6463	Represent a dollar in small-scale	2014-02-17 14:24:06.616341+11	110.33.177.65
6464	Suspend an orchestra as a drawing	2014-02-17 14:24:07.744318+11	110.33.177.65
6465	Split a secret handshake without thinking too much	2014-02-17 14:24:09.001216+11	110.33.177.65
6466	Sew the colony into a drawing	2014-02-17 14:24:12.712267+11	110.33.177.65
6467	Plot on a graph a boat as a pie chart	2014-02-17 14:24:14.424055+11	110.33.177.65
6468	Tap into bureaucracy in a new order	2014-02-17 14:24:16.920314+11	110.33.177.65
6469	Act on your job quietly	2014-02-17 14:24:18.904194+11	110.33.177.65
6470	Hack your love of a particular person into a drawing	2014-02-17 14:24:20.680393+11	110.33.177.65
6471	Create a pamphlet explaining a community in photoshop	2014-02-17 14:24:22.920926+11	110.33.177.65
6472	Send through management quickly	2014-02-17 14:24:24.856059+11	110.33.177.65
6473	Email a dollar  and share it with us	2014-02-17 14:24:26.302528+11	110.33.177.65
6474	Abstract a number you consider to be quite big thinking about form and function	2014-02-17 14:24:28.070113+11	110.33.177.65
6475	Network the idea of happiness in capitals	2014-02-17 14:24:32.023295+11	110.33.177.65
6476	Raise meaning to initiate progress	2014-02-17 14:24:33.239507+11	110.33.177.65
6477	Collage a rule and explain why	2014-02-17 14:24:34.567564+11	110.33.177.65
6478	Model how your mobile phone is used on any given day with others	2014-02-17 14:24:36.385483+11	110.33.177.65
6479	Multiply the crowd in your line of sight	2014-02-17 14:24:40.408649+11	110.33.177.65
6480	Define a round table inside an irregular shape	2014-02-17 14:24:43.469774+11	110.33.177.65
6481	Trust a slogan helplessly	2014-02-17 14:24:47.009189+11	110.33.177.65
6482	Draw money seriously	2014-02-17 14:24:49.375988+11	110.33.177.65
6483	Form the notion of work  and double it	2014-02-17 14:24:50.607754+11	110.33.177.65
6484	Gather energy   over time	2014-02-17 14:24:56.167958+11	110.33.177.65
6485	Arrange a nation-state addictively	2014-02-17 14:24:57.567808+11	110.33.177.65
6486	Find an example of a flier referencing the idea of dis-organisation	2014-02-17 14:24:59.480715+11	110.33.177.65
6487	Collage a water source to initiate progress	2014-02-17 14:25:03.135594+11	110.33.177.65
6488	Act on something new directly on the wall	2014-02-17 14:25:07.470161+11	110.33.177.65
6489	Re-define two people and throw it out the window	2014-02-17 14:25:09.717425+11	110.33.177.65
6490	Detail stone without telling anyone	2014-02-17 14:25:11.399277+11	110.33.177.65
6491	Create a pamphlet explaining a useless thing with the next person you see	2014-02-17 14:25:13.311482+11	110.33.177.65
6492	Collate a systemic failure while referring to gardening	2014-02-17 14:25:19.313902+11	110.33.177.65
6493	Destroy a communal dinner and attempt to extract a meaning	2014-02-17 14:25:22.473313+11	110.33.177.65
6494	Document a direction in public space	2014-02-17 14:25:25.495157+11	110.33.177.65
6523	Collate one minute to the public	2014-02-17 14:32:44.100008+11	49.3.9.184
6524	Contribute whistleblowing while talking to people	2014-02-17 14:32:49.547325+11	49.3.9.184
6525	Find data directly on the wall	2014-02-17 14:32:57.042219+11	49.3.9.184
6526	Write about trees efficiently	2014-02-17 14:33:02.133069+11	49.3.9.184
6527	Throw the rules diplomatically	2014-02-17 14:33:05.491797+11	49.3.9.184
6528	Assemble energy   being completely dishonest	2014-02-17 14:33:07.496961+11	49.3.9.184
6529	Document change to form a link to the past	2014-02-17 14:33:12.79705+11	49.3.9.184
6530	Record a community in gold	2014-02-17 14:33:15.937203+11	49.3.9.184
6531	Design meaning with others	2014-02-17 14:53:06.785235+11	49.182.77.84
6533	Speak about migration actively	2014-02-17 15:14:45.595338+11	131.170.90.4
6534	Introduce the net in camouflage	2014-02-17 15:14:47.442103+11	131.170.90.4
6535	Mime a boat in the colours of your flag	2014-02-17 15:14:53.906577+11	131.170.90.4
6536	Rewrite an agreement religiously	2014-02-17 15:14:58.747031+11	131.170.90.4
6537	Toss the idea of nationality using free software	2014-02-17 15:15:05.986763+11	131.170.90.4
6538	Make food supply chains like a novice	2014-02-17 15:15:11.216823+11	131.170.90.4
6570	Donate an organisation  seriously	2014-02-17 19:33:31.900494+11	95.21.83.217
6630	Cut and paste the truth and double it	2014-02-17 22:28:27.220549+11	118.209.109.80
6645	Exhaust a 7-word manifesto in 10 seconds	2014-02-17 22:34:28.367657+11	203.219.246.138
6646	Un-mechanise 8 images while standing still	2014-02-17 22:34:30.183157+11	203.219.246.138
6647	Spend time thinking about a program then cut that in half	2014-02-17 22:34:35.123005+11	203.219.246.138
6648	Suspend the idea of nationality obsessively	2014-02-17 22:34:41.225172+11	203.219.246.138
6649	Suggest a cycle with a pencil	2014-02-17 22:34:44.84609+11	203.219.246.138
6667	Take a photo of the ideal newspaper in monotone	2014-02-17 22:53:34.090145+11	101.119.28.239
6672	Distribute a secret meeting in the wrong order	2014-02-17 22:54:49.560945+11	101.119.28.239
6677	Demonstrate your thoughts immediately	2014-02-17 22:55:34.861853+11	101.119.28.239
6539	Move a video  on the nature strip	2014-02-17 15:46:23.679803+11	101.119.26.118
6540	Maintain an instruction without using words	2014-02-17 15:46:26.626937+11	101.119.26.118
6541	Identify spectacles in small-scale	2014-02-17 15:48:06.351234+11	101.119.26.118
6542	Make a colour palette of your role within a particular organisational structure when you should be doing something else	2014-02-17 15:48:07.964615+11	101.119.26.118
6545	Divulge your inbox loudly	2014-02-17 15:48:39.012038+11	101.119.26.118
6546	Divulge a cycle once	2014-02-17 16:32:05.337015+11	180.234.211.154
6547	Whittle a communal dinner by swapping	2014-02-17 16:32:11.501359+11	180.234.211.154
6548	Abstract stone in the form of a ransom note	2014-02-17 16:32:15.166929+11	180.234.211.154
6549	Make an organisation  for yourself	2014-02-17 16:32:20.466007+11	180.234.211.154
6550	Speak about your job through trade	2014-02-17 16:32:21.69645+11	180.234.211.154
6551	Scrunch everything you see in the next 16 seconds in public	2014-02-17 16:32:24.047529+11	180.234.211.154
6552	Paint with watercolour a gathering in 8 ways	2014-02-17 16:32:29.446907+11	180.234.211.154
6553	Sculpt a word you heard today in hardcopy	2014-02-17 16:32:31.907093+11	180.234.211.154
6554	Improve bureaucracy inside an irregular shape	2014-02-17 16:32:34.380052+11	180.234.211.154
6555	Confuse the headlines in the usual way	2014-02-17 16:32:37.747329+11	180.234.211.154
6556	Plant a colony of ants over 10 minutes	2014-02-17 16:32:39.390825+11	180.234.211.154
6557	Re-write something new and connect the dots	2014-02-17 16:32:41.196728+11	180.234.211.154
6558	Follow how you are implicated in systems for yourself	2014-02-17 16:32:44.225136+11	180.234.211.154
6559	Tweet a flier while talking to people	2014-02-17 16:32:46.36684+11	180.234.211.154
6560	Invent knowledge so that we will be really surprised	2014-02-17 16:32:48.922554+11	180.234.211.154
6561	Print out an agreement freely	2014-02-17 16:38:45.989209+11	123.243.115.14
6563	Tap into the best times while talking to people	2014-02-17 18:36:39.190907+11	58.175.64.246
6564	Shape seeds like a spy	2014-02-17 18:36:43.526258+11	58.175.64.246
6565	Turn around a manual systematically	2014-02-17 18:36:48.653972+11	58.175.64.246
6566	Act a demonstration over 57 seconds	2014-02-17 18:36:55.511912+11	58.175.64.246
6567	Re-write elastic bands openly	2014-02-17 18:36:59.570551+11	58.175.64.246
6569	Research currency and document the findings to share	2014-02-17 19:33:08.399535+11	95.21.83.217
6571	Find an image-editing program over 57 seconds	2014-02-17 20:23:29.016081+11	118.209.118.43
6572	Act a safe diplomatically	2014-02-17 20:24:00.390855+11	118.209.118.43
6573	Write a letter about the risks in capitals	2014-02-17 20:24:07.022752+11	118.209.118.43
6574	Break the ideal newspaper on the nature strip	2014-02-17 20:24:09.98305+11	118.209.118.43
6575	Contribute weeds to preexisting conditions	2014-02-17 20:24:16.464108+11	118.209.118.43
6576	Categorise plants in camouflage	2014-02-17 20:24:20.456544+11	118.209.118.43
6577	Whistle management in small-scale	2014-02-17 20:24:22.98692+11	118.209.118.43
6578	Describe something with a double meaning convincingly	2014-02-17 20:24:28.089054+11	118.209.118.43
6579	Collate branches so you are affected	2014-02-17 20:24:33.172656+11	118.209.118.43
6580	Give a cycle now	2014-02-17 21:50:20.456177+11	124.168.203.69
6581	Photocopy the notion of work  so you are affected	2014-02-17 21:51:01.833325+11	124.168.203.69
6582	Sew the economy like a novice	2014-02-17 21:51:06.814667+11	124.168.203.69
6583	Check the surface in the form of a ransom note	2014-02-17 21:51:13.395269+11	124.168.203.69
6584	Gather bureaucracy in a closed form	2014-02-17 21:51:20.723736+11	124.168.203.69
6585	Form energy   directly	2014-02-17 21:51:25.26006+11	124.168.203.69
6586	Rearrange a list of rules without thinking	2014-02-17 21:51:31.428854+11	124.168.203.69
6587	Produce a new system in the usual way	2014-02-17 21:51:35.993569+11	124.168.203.69
6588	Calculate the ideal newspaper in small-scale	2014-02-17 21:51:39.955311+11	124.168.203.69
6589	Source a sculpture one way	2014-02-17 21:51:44.582834+11	124.168.203.69
6590	Type focussed objects using watercolour	2014-02-17 21:51:46.820159+11	124.168.203.69
6591	Destroy a border addictively	2014-02-17 21:51:49.845764+11	124.168.203.69
6592	Discard a cycle like a novice	2014-02-17 21:51:57.097361+11	124.168.203.69
6593	Decipher D.I.Y in 10 sentences	2014-02-17 21:51:58.833338+11	124.168.203.69
6594	Reverse engineer government over 9 minutes	2014-02-17 21:52:02.772546+11	124.168.203.69
6595	Record a meeting side by side	2014-02-17 21:52:08.493082+11	124.168.203.69
6596	Distribute a program in the gallery	2014-02-17 21:52:10.632653+11	124.168.203.69
6597	Unleash anything in public space	2014-02-17 21:52:12.031433+11	124.168.203.69
6598	Make up time inside a square	2014-02-17 21:52:13.253891+11	124.168.203.69
6599	Collaborate with a trusted source and use it as currency	2014-02-17 21:52:15.04741+11	124.168.203.69
6600	Send a newspaper clipping of something small  without thinking	2014-02-17 21:52:17.097284+11	124.168.203.69
6601	Walk  what is within reach and document the findings to share	2014-02-17 21:52:19.702459+11	124.168.203.69
6602	Gather together information in the most innovative way you can think of	2014-02-17 21:52:22.916269+11	124.168.203.69
6603	Assemble a chair with a pencil	2014-02-17 22:17:31.513135+11	14.201.97.148
6604	Plant your favourite image using a recording device	2014-02-17 22:20:41.524288+11	14.201.97.148
6605	Spy on images of other people  here and now	2014-02-17 22:20:55.553312+11	14.201.97.148
6606	Suggest the net and put two and two together	2014-02-17 22:21:00.603451+11	14.201.97.148
6607	Act on tools unfairly	2014-02-17 22:21:05.683373+11	14.201.97.148
6608	Design whistleblowing with a public outcome in mind	2014-02-17 22:21:08.207023+11	14.201.97.148
6609	Act out a debate by deduction	2014-02-17 22:21:13.311336+11	14.201.97.148
6610	Connect collective action with other people	2014-02-17 22:21:16.665889+11	14.201.97.148
6611	Pair whistleblowing without language	2014-02-17 22:21:20.623733+11	14.201.97.148
6612	Photocopy a piece of paper spontaneously	2014-02-17 22:21:24.720427+11	14.201.97.148
6613	Distrupt images of other people  as if functional	2014-02-17 22:21:29.365146+11	14.201.97.148
6614	Write about wood privately	2014-02-17 22:21:33.644101+11	14.201.97.148
6615	Observe a commodity like you mean it	2014-02-17 22:21:37.721706+11	14.201.97.148
6616	Borrow the game of tug-of-war to the world	2014-02-17 22:21:41.683668+11	14.201.97.148
6617	Rewrite an unusual scene without showing anyone	2014-02-17 22:21:46.896827+11	14.201.97.148
6618	Undo the rules   with a pencil	2014-02-17 22:21:53.958699+11	14.201.97.148
6619	Toss around a sculpture with no diplomacy	2014-02-17 22:21:56.422526+11	14.201.97.148
6620	Suggest a sign unintuitively	2014-02-17 22:21:58.575563+11	14.201.97.148
6621	Post the economy in 13 sentences	2014-02-17 22:22:01.598054+11	14.201.97.148
6622	Audit protocols with other people	2014-02-17 22:22:05.254387+11	14.201.97.148
6623	Read the risks in the right order	2014-02-17 22:26:25.559498+11	118.209.109.80
6624	Create a pamphlet explaining a powerpoint presentation using blu-tak	2014-02-17 22:27:07.359941+11	118.209.109.80
6625	Price whistleblowing idley	2014-02-17 22:27:19.153055+11	118.209.109.80
6656	Find an example of stationery using a recording device	2014-02-17 22:51:34.200355+11	110.33.164.118
6668	Cover space in the simplest way possible	2014-02-17 22:53:38.442482+11	101.119.28.239
6673	Act the political to form a link to the past	2014-02-17 22:54:59.598844+11	101.119.28.239
6626	Undertake a water source as a map	2014-02-17 22:27:24.239812+11	118.209.109.80
6627	Reveal the city in the right order	2014-02-17 22:27:29.887515+11	118.209.109.80
6641	Protect an organisation  quietly	2014-02-17 22:30:42.161753+11	118.209.109.80
6642	Scratch nothing once	2014-02-17 22:30:46.295064+11	118.209.109.80
6650	Explore a hole during work hours	2014-02-17 22:36:00.9859+11	188.62.168.205
6657	Deliver a manual using a recording device	2014-02-17 22:51:50.058886+11	110.33.164.118
6658	Spend time thinking about a log and pick your favourite	2014-02-17 22:51:54.091662+11	110.33.164.118
6659	Plot    an unusual scene with no preconceived idea	2014-02-17 22:51:59.019114+11	110.33.164.118
6660	Maintain debt quietly	2014-02-17 22:52:02.093461+11	110.33.164.118
6661	Carve a border in your line of sight	2014-02-17 22:52:03.289701+11	110.33.164.118
6662	Photograph patience in a new order	2014-02-17 22:52:06.002171+11	110.33.164.118
6663	Document how you are implicated in systems being completely dishonest	2014-02-17 22:52:07.828978+11	110.33.164.118
6666	Ruin a collection of blue things at home	2014-02-17 22:53:28.01577+11	101.119.28.239
6671	Order tools then cut that in half	2014-02-17 22:54:46.032565+11	101.119.28.239
6628	Act on a get-together and collate the results	2014-02-17 22:28:04.157572+11	118.209.109.80
6632	Form your inbox and put two and two together	2014-02-17 22:29:17.234709+11	118.209.109.80
6636	Plan a trusted source efficiently	2014-02-17 22:29:48.661713+11	118.209.109.80
6674	Fill something round to closely notice the details	2014-02-17 22:55:07.912132+11	101.119.28.239
6631	Model a useless thing to closely notice the details	2014-02-17 22:28:28.734372+11	203.219.246.138
6664	Price a new world order as though your life depends on it	2014-02-17 22:53:18.807395+11	101.119.28.239
6676	List the impossible with others	2014-02-17 22:55:25.515997+11	101.119.28.239
6634	Impose exploitation being completely dishonest	2014-02-17 22:29:31.749553+11	118.209.109.80
6638	Photograph meaning over 3 minutes	2014-02-17 22:30:01.431125+11	118.209.109.80
6644	Check D.I.Y in another language	2014-02-17 22:31:01.756554+11	118.209.109.80
6670	Raise a flier imagining you are in isolation	2014-02-17 22:54:25.075691+11	101.119.28.239
6635	Research good and bad until you are happy with the end result	2014-02-17 22:29:39.206722+11	118.209.109.80
6639	Snap a manual through a process of elimination	2014-02-17 22:30:09.94669+11	203.219.246.138
6643	Categorise particular ideas while referring to gardening	2014-02-17 22:30:54.42029+11	118.209.109.80
6665	Break down left and right with the first pencil you find	2014-02-17 22:53:22.355564+11	101.119.28.239
6651	Connect real progress in 2 minutes	2014-02-17 22:36:20.697214+11	188.62.168.205
6652	Modify everything being completely dishonest	2014-02-17 22:36:30.621825+11	188.62.168.205
6653	Colour wood bureaucratically	2014-02-17 22:36:40.489225+11	188.62.168.205
6654	Introduce trees using watercolour	2014-02-17 22:36:45.729862+11	188.62.168.205
6655	Throw trees in a new order	2014-02-17 22:36:51.681962+11	188.62.168.205
6675	Reverse engineer images of other people  openly	2014-02-17 22:55:10.629865+11	101.119.28.239
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
142	170	2014-02-02 23:47:44.315161+11	118.209.81.43
143	171	2014-02-05 17:27:03.693082+11	139.216.147.253
144	172	2014-02-05 17:27:23.666863+11	139.216.147.253
145	173	2014-02-05 17:58:26.379681+11	139.216.147.253
146	174	2014-02-05 17:58:45.773708+11	139.216.147.253
147	175	2014-02-05 18:00:38.899891+11	139.216.147.253
148	175	2014-02-06 14:08:25.016388+11	203.5.246.14
149	176	2014-02-06 17:21:45.448375+11	203.5.246.14
150	177	2014-02-06 17:21:57.058438+11	203.5.246.14
151	178	2014-02-06 17:22:13.839991+11	203.5.246.14
152	179	2014-02-06 17:22:22.318861+11	203.5.246.14
153	180	2014-02-06 17:23:32.649981+11	203.5.246.14
154	181	2014-02-06 17:25:12.362895+11	203.5.246.14
155	182	2014-02-06 17:25:38.365601+11	203.5.246.14
156	183	2014-02-06 17:25:46.651739+11	203.5.246.14
157	184	2014-02-06 17:27:21.956348+11	203.5.246.14
158	185	2014-02-06 19:35:30.778231+11	49.184.71.248
159	186	2014-02-06 19:48:02.321825+11	49.184.71.248
160	187	2014-02-07 08:32:48.581507+11	131.170.5.3
161	188	2014-02-07 08:47:35.680261+11	131.170.5.4
162	189	2014-02-07 08:56:45.155705+11	131.170.5.5
163	190	2014-02-07 11:12:24.698605+11	139.216.147.253
164	190	2014-02-07 11:12:45.737641+11	139.216.147.253
165	191	2014-02-07 12:07:19.444591+11	131.170.90.3
166	192	2014-02-07 13:38:15.175485+11	139.216.147.253
167	193	2014-02-07 13:40:25.206931+11	139.216.147.253
168	194	2014-02-07 13:40:34.000003+11	139.216.147.253
169	194	2014-02-07 13:44:52.122833+11	139.216.147.253
170	195	2014-02-07 13:45:24.248281+11	139.216.147.253
171	195	2014-02-07 14:40:08.636844+11	139.216.147.253
172	196	2014-02-07 15:56:22.26804+11	139.216.147.253
173	197	2014-02-07 15:56:54.959966+11	139.216.147.253
174	198	2014-02-07 15:57:19.689425+11	139.216.147.253
175	199	2014-02-07 16:11:04.336081+11	139.216.147.253
176	200	2014-02-07 16:13:22.128216+11	139.216.147.253
177	201	2014-02-07 16:13:41.132674+11	139.216.147.253
178	202	2014-02-07 16:18:52.094817+11	139.216.147.253
179	203	2014-02-07 16:22:36.389975+11	139.216.147.253
180	204	2014-02-07 16:27:22.754433+11	139.216.147.253
181	204	2014-02-07 16:27:40.724808+11	139.216.147.253
182	205	2014-02-07 16:39:57.112318+11	139.216.147.253
183	206	2014-02-07 16:47:07.154081+11	139.216.147.253
184	207	2014-02-07 16:53:26.934397+11	139.216.147.253
185	208	2014-02-07 16:54:23.158463+11	139.216.147.253
186	209	2014-02-07 22:16:33.589047+11	118.209.7.234
187	210	2014-02-07 22:17:42.894478+11	118.209.7.234
188	211	2014-02-07 22:17:57.169791+11	118.209.7.234
189	212	2014-02-07 22:19:18.415897+11	118.209.7.234
190	213	2014-02-07 22:19:50.407633+11	118.209.7.234
191	214	2014-02-07 22:20:20.782145+11	118.209.7.234
192	215	2014-02-07 22:21:56.837988+11	118.209.7.234
193	216	2014-02-07 22:22:04.594229+11	118.209.7.234
194	217	2014-02-07 22:22:42.523265+11	118.209.7.234
195	218	2014-02-07 22:23:06.388854+11	118.209.7.234
196	219	2014-02-07 22:23:18.154647+11	118.209.7.234
197	220	2014-02-07 22:23:30.395726+11	118.209.7.234
198	221	2014-02-07 22:24:27.302488+11	118.209.7.234
199	222	2014-02-07 22:25:08.327152+11	118.209.7.234
200	223	2014-02-07 22:25:26.254869+11	118.209.7.234
201	224	2014-02-07 22:26:06.052723+11	118.209.7.234
202	225	2014-02-07 22:26:16.564622+11	118.209.7.234
203	226	2014-02-07 22:27:35.468052+11	118.209.7.234
204	227	2014-02-07 22:27:48.774365+11	118.209.7.234
205	228	2014-02-07 22:28:05.483394+11	118.209.7.234
206	229	2014-02-07 22:28:19.341543+11	118.209.7.234
207	230	2014-02-07 22:29:07.186545+11	118.209.7.234
208	231	2014-02-07 22:29:16.482523+11	118.209.7.234
209	232	2014-02-08 14:14:36.273292+11	120.149.82.82
210	233	2014-02-08 17:14:56.468182+11	118.209.7.234
211	234	2014-02-09 12:03:43.721367+11	118.209.7.234
212	235	2014-02-09 12:05:37.751123+11	118.209.7.234
213	236	2014-02-09 12:12:22.308343+11	118.209.7.234
214	237	2014-02-09 21:36:44.386225+11	118.209.29.18
215	238	2014-02-09 21:38:04.609426+11	118.209.29.18
216	239	2014-02-09 21:39:10.698675+11	118.209.29.18
217	240	2014-02-09 21:40:53.141808+11	118.209.29.18
218	241	2014-02-09 21:55:34.921662+11	118.209.29.18
219	242	2014-02-09 22:00:58.714419+11	118.209.29.18
220	243	2014-02-11 18:50:29.84385+11	139.216.147.253
221	244	2014-02-11 18:52:21.183878+11	139.216.147.253
222	245	2014-02-12 09:13:19.477886+11	14.201.97.148
223	246	2014-02-12 13:03:36.490574+11	139.216.147.253
224	247	2014-02-12 14:13:54.731324+11	139.216.147.253
225	248	2014-02-12 14:18:14.078057+11	139.216.147.253
226	249	2014-02-12 14:20:50.121871+11	139.216.147.253
227	249	2014-02-12 14:22:15.100841+11	139.216.147.253
228	250	2014-02-12 14:22:25.070689+11	139.216.147.253
229	251	2014-02-12 15:49:02.965337+11	139.216.147.253
230	252	2014-02-12 15:49:50.909572+11	139.216.147.253
231	253	2014-02-12 15:50:26.713205+11	139.216.147.253
232	254	2014-02-12 15:51:17.806928+11	139.216.147.253
233	255	2014-02-12 15:51:30.370903+11	139.216.147.253
234	256	2014-02-12 15:51:38.919787+11	139.216.147.253
235	257	2014-02-12 15:52:03.462398+11	139.216.147.253
236	258	2014-02-12 16:04:00.817826+11	139.216.147.253
237	259	2014-02-12 16:04:58.042971+11	139.216.147.253
238	260	2014-02-12 16:05:06.72174+11	139.216.147.253
239	261	2014-02-12 16:28:38.573562+11	139.216.147.253
240	262	2014-02-12 16:29:06.650277+11	139.216.147.253
241	262	2014-02-12 17:09:03.190203+11	139.216.147.253
242	263	2014-02-12 17:09:26.885372+11	139.216.147.253
243	264	2014-02-12 17:10:57.402754+11	139.216.147.253
244	265	2014-02-12 18:40:37.155946+11	139.216.147.253
245	266	2014-02-12 18:41:36.232657+11	139.216.147.253
246	267	2014-02-12 18:42:00.929516+11	139.216.147.253
247	268	2014-02-12 18:52:13.427603+11	139.216.147.253
248	269	2014-02-12 18:52:51.945214+11	139.216.147.253
249	270	2014-02-12 22:10:14.193592+11	118.209.121.200
250	271	2014-02-12 22:12:00.375462+11	118.209.121.200
251	272	2014-02-12 22:12:39.633874+11	118.209.121.200
252	273	2014-02-12 22:13:16.358146+11	118.209.121.200
253	274	2014-02-12 22:13:37.598871+11	118.209.121.200
254	275	2014-02-12 22:14:12.640863+11	118.209.121.200
255	276	2014-02-12 22:14:25.763189+11	118.209.121.200
256	276	2014-02-12 22:15:01.193127+11	118.209.121.200
257	277	2014-02-12 22:15:28.325549+11	118.209.121.200
258	278	2014-02-12 22:15:51.688426+11	118.209.121.200
259	279	2014-02-12 22:17:33.400775+11	118.209.121.200
260	280	2014-02-12 22:17:44.920849+11	118.209.121.200
261	281	2014-02-12 22:18:19.287167+11	118.209.121.200
262	282	2014-02-13 16:57:00.246429+11	131.170.5.5
263	283	2014-02-13 16:58:19.139795+11	131.170.5.5
264	284	2014-02-13 19:15:05.45772+11	131.170.90.4
265	285	2014-02-13 22:02:12.040115+11	118.209.91.160
266	286	2014-02-13 22:02:44.717973+11	118.209.91.160
267	287	2014-02-13 22:10:15.486073+11	118.209.91.160
268	288	2014-02-14 10:30:01.57742+11	118.209.91.160
269	289	2014-02-14 10:34:06.133952+11	118.209.91.160
270	290	2014-02-14 10:42:07.195159+11	118.209.91.160
271	291	2014-02-14 10:42:39.668511+11	118.209.91.160
272	292	2014-02-14 12:37:19.145654+11	118.209.91.160
273	293	2014-02-14 12:38:02.806555+11	118.209.91.160
274	294	2014-02-14 20:32:21.694961+11	101.115.36.15
275	295	2014-02-15 21:23:03.973723+11	118.209.7.148
276	296	2014-02-15 22:52:02.860781+11	78.193.34.41
277	297	2014-02-16 22:06:21.122359+11	118.209.88.187
278	298	2014-02-16 22:06:30.042612+11	118.209.88.187
279	299	2014-02-16 22:07:01.516091+11	118.209.88.187
280	299	2014-02-17 11:27:03.333721+11	110.175.236.101
281	300	2014-02-17 11:30:03.874675+11	220.244.145.217
282	301	2014-02-17 11:41:58.309167+11	50.164.167.96
283	302	2014-02-17 12:21:33.050836+11	131.170.5.2
284	303	2014-02-17 12:21:53.94085+11	131.170.5.2
285	304	2014-02-17 12:45:41.233363+11	101.173.255.235
286	305	2014-02-17 14:23:48.607013+11	101.119.27.118
287	306	2014-02-17 15:49:14.738938+11	101.119.26.118
288	307	2014-02-17 22:28:54.056242+11	118.209.109.80
289	308	2014-02-17 22:30:05.504979+11	203.219.246.138
290	308	2014-02-17 22:54:15.956429+11	101.119.28.239
291	309	2014-02-17 22:54:41.890798+11	101.119.28.239
292	310	2014-02-17 22:55:20.233246+11	101.119.28.239
293	311	2014-02-17 22:55:30.680664+11	101.119.28.239
294	312	2014-02-17 22:55:44.148285+11	101.119.28.239
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

