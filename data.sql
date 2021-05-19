--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.alembic_version (
    version_num character varying(12) DEFAULT NULL::character varying
);


ALTER TABLE public.alembic_version OWNER TO telegrambot;

--
-- Name: cart_items; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.cart_items (
    id smallint,
    user_id bigint,
    dish_id smallint,
    count smallint
);


ALTER TABLE public.cart_items OWNER TO telegrambot;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.comments (
    id smallint,
    text character varying(199) DEFAULT NULL::character varying,
    user_id bigint,
    username character varying(35) DEFAULT NULL::character varying
);


ALTER TABLE public.comments OWNER TO telegrambot;

--
-- Name: dish_categories; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.dish_categories (
    id smallint,
    name character varying(36) DEFAULT NULL::character varying,
    name_uz character varying(35) DEFAULT NULL::character varying,
    number smallint,
    lft smallint,
    rgt smallint,
    level smallint,
    tree_id smallint,
    parent_id character varying(2) DEFAULT NULL::character varying,
    image_id character varying(1) DEFAULT NULL::character varying,
    image_path character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public.dish_categories OWNER TO telegrambot;

--
-- Name: dishes; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.dishes (
    id smallint,
    name character varying(24) DEFAULT NULL::character varying,
    name_uz character varying(29) DEFAULT NULL::character varying,
    image_id character varying(100) DEFAULT NULL::character varying,
    image_path character varying(75) DEFAULT NULL::character varying,
    description character varying(175) DEFAULT NULL::character varying,
    description_uz character varying(161) DEFAULT NULL::character varying,
    is_hidden smallint,
    price numeric(7,1) DEFAULT NULL::numeric,
    number smallint,
    category_id character varying(2) DEFAULT NULL::character varying,
    show_usd smallint
);


ALTER TABLE public.dishes OWNER TO telegrambot;

--
-- Name: locations; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.locations (
    id smallint,
    latitude numeric(8,6) DEFAULT NULL::numeric,
    longitude numeric(8,6) DEFAULT NULL::numeric,
    address character varying(111) DEFAULT NULL::character varying,
    order_id smallint
);


ALTER TABLE public.locations OWNER TO telegrambot;

--
-- Name: notification_chats; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.notification_chats (
    chat_id bigint,
    chat_title character varying(12) DEFAULT NULL::character varying
);


ALTER TABLE public.notification_chats OWNER TO telegrambot;

--
-- Name: order_items; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.order_items (
    id smallint,
    order_id smallint,
    dish_id smallint,
    count smallint
);


ALTER TABLE public.order_items OWNER TO telegrambot;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.orders (
    id integer,
    user_id integer,
    user_name character varying(21) DEFAULT NULL::character varying,
    shipping_method character varying(8) DEFAULT NULL::character varying,
    payment_method character varying(5) DEFAULT NULL::character varying,
    address_txt character varying(48) DEFAULT NULL::character varying,
    phone_number character varying(17) DEFAULT NULL::character varying,
    confirmed boolean,
    confirmation_date character varying(10) DEFAULT NULL::character varying,
    delivery_price integer,
    total_amount double precision
);


ALTER TABLE public.orders OWNER TO telegrambot;

--
-- Name: registration_requests; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.registration_requests (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    phone_number character varying(1) DEFAULT NULL::character varying,
    tg_username character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public.registration_requests OWNER TO telegrambot;

--
-- Name: user_admins; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.user_admins (
    id smallint,
    email character varying(17) DEFAULT NULL::character varying,
    password_hash character varying(94) DEFAULT NULL::character varying
);


ALTER TABLE public.user_admins OWNER TO telegrambot;

--
-- Name: user_dish; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.user_dish (
    user_id bigint,
    dish_id smallint
);


ALTER TABLE public.user_dish OWNER TO telegrambot;

--
-- Name: users; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.users (
    id bigint,
    full_user_name character varying(32) DEFAULT NULL::character varying,
    username character varying(30) DEFAULT NULL::character varying,
    phone_number character varying(17) DEFAULT NULL::character varying,
    language character varying(2) DEFAULT NULL::character varying,
    token character varying(27) DEFAULT NULL::character varying,
    confirmed smallint,
    telegram_id character varying(1) DEFAULT NULL::character varying,
    registration_date character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public.users OWNER TO telegrambot;

--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.alembic_version (version_num) FROM stdin;
825d5878cecb
\.


--
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.cart_items (id, user_id, dish_id, count) FROM stdin;
4	1021601371	1	1
5	1021601371	38	1
12	202624021	68	1
26	202624021	82	3
27	888860	1	1
29	1240123642	1	1
30	84551212	1	1
31	84551212	34	1
32	9796302	91	5
33	728862754	1	1
34	354406284	1	1
37	265550912	2	1
39	830522641	75	1
40	732088389	1	1
41	336886195	54	2
42	76462417	50	1
43	336886195	99	2
44	76462417	94	1
45	1053979100	1	1
46	615011731	1	1
47	1200923694	1	5
48	33826188	1	1
49	985422184	93	1
50	873216461	90	1
51	873216461	1	2
55	785342339	56	1
56	780706549	38	2
57	900595486	1	2
58	899853592	59	2
60	466083330	50	1
61	466083330	90	1
62	466083330	1	1
63	290155336	55	1
64	290155336	5	1
65	560404568	2	1
68	980225110	59	1
69	74438538	2	7
71	321654067	2	1
72	321654067	90	1
73	870270310	41	1
74	1170067137	32	1
75	875154984	32	9
77	900428242	38	1
78	900428242	2	1
79	468580284	82	1
80	518109259	98	1
82	1137867467	53	1
84	719801646	32	1
85	719801646	1	1
86	719801646	102	1
87	719801646	6	1
88	728577333	35	1
89	82012131	37	1
90	82012131	98	1
92	277458432	2	1
93	277458432	1	1
94	341746147	97	1
95	71291403	1	1
96	71291403	90	1
97	71291403	4	1
98	71291403	96	1
100	666192848	90	1
102	1224702788	45	1
106	824768428	78	1
107	723186466	53	1
108	612518382	6	1
110	421955254	1	1
111	326694372	1	1
112	326694372	58	1
113	668359712	1	1
115	1697416	1	1
117	1064406105	91	1
119	231448569	36	1
120	231448569	70	1
121	633288098	60	5
122	633288098	4	1
123	633288098	68	1
124	633288098	2	1
125	185170494	56	1
128	331338712	66	1
129	1106534904	1	1
131	1088270118	38	1
132	1088270118	1	1
133	842738606	50	1
134	842738606	32	1
135	842738606	2	1
136	842738606	70	1
137	674437582	95	1
144	639336999	56	1
145	639336999	97	1
146	639336999	2	1
147	639336999	102	1
149	1005127798	36	3
150	528110896	1	1
154	528110896	50	1
155	528110896	56	1
156	528110896	87	1
157	528110896	80	1
160	1208782613	72	1
161	879926986	93	1
162	1105524412	1	1
163	658055554	42	1
164	674437582	92	1
165	853545025	44	1
166	631909445	72	1
167	483404120	1	2
168	483404120	35	2
170	1325778149	1	1
171	631909445	82	1
172	65830674	59	9
173	1064406105	55	1
175	2954263	32	1
176	2954263	1	1
177	1138264	1	1
181	1067304463	35	1
182	1067304463	59	1
183	149312635	38	1
184	231463850	57	1
186	237340668	56	1
187	785342339	2	1
188	346621489	53	1
189	782748337	1	1
190	72636478	7	1
191	905595505	1	1
192	991708613	34	1
196	64925540	81	5
197	873087515	50	1
198	873087515	68	1
200	659909758	34	1
201	77578750	87	1
202	456096813	59	1
203	488987326	1	4
204	672850186	81	1
205	672850186	66	1
206	370388307	1	1
207	81730797	7	100
208	81730797	6	100
209	81730797	4	100
210	201458407	1	1
211	1192081954	1	1
212	568320617	97	1
213	700371950	1	2
214	44234689	33	1
215	44234689	81	1
216	360449283	35	1
217	1046197926	1	2
218	130601865	1	2
219	130601865	5	4
220	208659570	4	1
221	787596435	72	1
225	398161966	6	1
227	398161966	70	1
230	693962405	68	9
231	693962405	2	2
232	496518276	7	3
233	1240123642	96	1
234	1240123642	66	1
235	1208782613	1	1
236	723207829	1	2
238	580327136	2	1
239	580327136	1	1
240	975830453	1	4
242	650797819	84	1
243	650797819	44	1
245	518109259	34	1
247	1207426620	2	1
248	1207426620	38	1
249	955289219	1	1
250	4036197	2	1
251	623501868	32	1
252	623501868	59	1
253	1031175996	35	1
254	1031175996	81	1
255	1356858	56	2
256	1386729457	1	1
258	991985389	1	2
259	1040882142	34	1
260	895380287	34	5
261	463621855	72	2
262	2377401	69	9
265	977716421	1	1
266	40044213	2	1
267	714275948	38	1
268	714275948	5	1
269	714275948	68	1
270	1110033868	38	2
271	1110033868	97	2
272	2301816	1	1
273	1238428198	1	5
274	1238428198	3	2
275	1238428198	4	3
276	1238428198	93	5
277	873087515	84	1
278	458600651	93	1
279	991903472	1	1
280	991903472	2	2
281	991903472	93	1
282	991903472	97	2
283	761336078	38	1
284	1138871296	59	1
285	1138871296	84	1
286	1138871296	81	1
287	262302725	66	1
288	77752470	1	9
289	77752470	2	2
290	384450944	32	1
292	632119349	1	1
293	748127078	53	1
294	748127078	93	1
295	591094948	56	1
296	591094948	78	1
297	985300624	2	1
298	985300624	1	1
299	298441765	1	2
301	1233414130	1	1
302	2582088	56	1
303	2582088	69	1
304	464358955	44	1
305	464358955	4	2
306	464358955	68	1
307	430040542	3	1
308	123026072	56	1
309	366163369	38	2
310	529907638	7	1
311	529907638	3	1
312	529907638	5	1
313	529907638	4	1
314	529907638	6	1
315	529907638	1	1
316	529907638	2	1
317	529907638	69	1
318	529907638	56	1
319	529907638	32	1
324	647323874	1	1
325	104613592	78	8
326	77988353	59	1
327	260429456	2	1
328	33417447	38	1
329	843523805	56	2
330	51855712	1	2
332	673142023	34	2
333	843523805	53	1
334	1347837938	34	2
335	67870712	34	1
336	802131373	1	1
337	1358477835	1	1
338	133733347	38	1
339	801784773	34	1
340	954632319	87	1
341	606574614	2	1
342	776576315	35	1
344	81959386	1	1
345	1106206798	1	1
346	1173450490	44	2
347	1132959724	2	6
348	1248848934	56	9
349	662808794	34	1
350	662808794	93	1
351	662808794	1	1
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.comments (id, text, user_id, username) FROM stdin;
1	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	64925540	Владимир Мякота
2	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	311723796	Aliev
3	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	56008096	Маъруф Жўрабоев
4	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	659363183	Davron
5	Yaxshi ⭐️⭐️⭐️⭐️	848733647	Kasimov Dilshod
6	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	1208782613	ɪᴄᴇ&ɢᴏʟᴅ ᴇxᴄʟᴜsɪᴠᴇ
7	✍️ Оставить отзыв	1208782613	ɪᴄᴇ&ɢᴏʟᴅ ᴇxᴄʟᴜsɪᴠᴇ
8	Не плохо ⭐️⭐️⭐️	1208782613	ɪᴄᴇ&ɢᴏʟᴅ ᴇxᴄʟᴜsɪᴠᴇ
9	Очень плохо ⭐️	1208782613	ɪᴄᴇ&ɢᴏʟᴅ ᴇxᴄʟᴜsɪᴠᴇ
10	Menyu	2753522	ð²Bar
11	ð Buyurtma ber	651124733	Abror Reimov
12	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	201458407	Акбар⚡
13	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	201458407	Акбар⚡
14	Хорошо ⭐️⭐️⭐️⭐️	201458407	Акбар⚡
15	Не плохо ⭐️⭐️⭐️	201458407	Акбар⚡
16	Плохо ⭐️⭐️	201458407	Акбар⚡
17	Очень плохо ⭐️	201458407	Акбар⚡
18	Плохо ⭐️⭐️	327658966	.
19	нужны фотографии	327658966	.
20	⬅️ Меню	201458407	Акбар⚡
21	asd	201458407	Акбар⚡
22	ð Tilni ozgartir	816743	Sunnat
23	Assalomu alaykum!!! Yetkazib berish qancha vaqtni oz ichiga oladi!!!	776576315	Дилмурод
24	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	201458407	Акбар⚡
25	Yomon ⭐️⭐️	511774034	ð Io
26	Juda yomon ⭐️	631909445	مويدينوا
27	Rasmlari yoqmi?	149312635	ð
28	Yoqmadi ⭐️⭐️⭐️	40200066	Avazmirzo
29	/start	1192081954	❤️
30	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	1017018673	.
31	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	475877782	ðºð
32	Очень плохо ⭐️	195435935	ð°ð
33	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	601871763	Murod Yusupov
34	Адрес где у вас	737441695	Бегзод&Шахзода
35	Хорошо ⭐️⭐️⭐️⭐️	1031175996	Мð
36	Menu	392120312	ð
37	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	75155463	Лора
38	Хорошо ⭐️⭐️⭐️⭐️	202624021	Ram
39	Man siladan iltimosim bor edi	1232284271	ðMusli
40	Mani 2 nafar farzandim bor 3 farzandimga xomilador edim onamnikida yashiman man siladan maxsulotilani olmoxchidim lekin oyilaviy sharoyitim togri kemidi iltimos manga yordam tariqasida bera olasilami	1232284271	ðMusli
41	Yoqmadi ⭐️⭐️⭐️	1068750372	onajonim jannatim dunyoyimsz onajon
42	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	1213046645	Sobir Azimov
43	Yaxshi ⭐️⭐️⭐️⭐️	1029442868	ð½ððð
44	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	1238428198	thegrsmafa
45	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	895380287	Robish_keee
46	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	914533356	D ð
47	Yoqmadi ⭐️⭐️⭐️	141704184	Javohir
48	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	865964924	Fazilatkhan
49	Очень плохо ⭐️	991903472	shoxob_ake_
50	Очень плохо ⭐️	991903472	shoxob_ake_
51	Juda yomon ⭐️	1138871296	فضلدىن بي
52	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	1138871296	فضلدىن بي
53	ð Buyurtma ber	933810605	UKTAMOVA .N
54	Yaxshi ⭐️⭐️⭐️⭐️	727654769	ᴹᵃᶠᵗᵘᶰᵃᵏʰᵃᶰ
55	ð Заказ	717212945	Елена
56	Очень плохо ⭐️	977849065	⚜️ð
57	Yaxshi ⭐️⭐️⭐️⭐️	1298755495	Dildora
58	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	998576686	Bochit010
59	Yaxshi ⭐️⭐️⭐️⭐️	78343754	Ugilkhon Todjieva
60	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	673142023	I am kind
61	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	462699805	ð
62	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	615138015	Jodugar
63	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	954632319	?
64	Assalomu alaykum !!! Yetkazib berish xizmati pullikmi yoki yoq?? Agar pullik bulsa hammasini bittada hisoblab berilsin buyurtma berganda	776576315	Дилмурод
65	Andijongaham filialilani ochila	515253189	ðºАДНО
66	ð Buyurtma ber	1307130589	&&&&&&&&&&
67	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	1230849186	MONALIZA♥️
68	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	5267002	Севинч
69	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	5267002	Севинч
\.


--
-- Data for Name: dish_categories; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.dish_categories (id, name, name_uz, number, lft, rgt, level, tree_id, parent_id, image_id, image_path) FROM stdin;
2	ðСн	ðGazak	2	1	2	1	2			
3	ð«Фо	ð«Fon	3	1	2	1	3			
4	ð¦Мороже	ð¦Muzqay	4	1	6	1	4			
5	ð¥¤Кокте	ð¥¤Kokteyl	5	1	2	1	5			
6	ð¹Напи	ð¹Ichimlik	6	1	2	1	6			
11	Итальянское мороженое	Italiyalik muzqaymoq	1	2	3	2	4	4		
12	Эксклюзивное мороженое	Eksklyuziv muzqaymoq	1	4	5	2	4	4		
21	ð§Бельгийский ва	ð§Belgiya vafl	1	1	34	1	7			
22	С шоколадом CALLEBAUT	CALLEBAUT shokoladi bilan	2	2	7	2	7	21		
23	С клубникой и шоколадом CALLEBAUT	Qulupnayli va CALLEBAUT shokoladli	3	8	13	2	7	21		
24	С бананом и шоколадом CALLEBAUT	Bananli va CALLEBAUT shokoladli	4	14	19	2	7	21		
25	Фруктовый микс с шоколадом CALLEBAUT	Mevali miks va CALLEBAUT shokoladli	5	20	25	2	7	21		
28	С джемом	Qiyomli	7	26	31	2	7	21		
29	Сладкое тесто	Shirin xamir	1	3	4	3	7	22		
30	Шоколадное тесто	Shokoladli xamir	1	5	6	3	7	22		
31	Exclusive waffles	Exclusive waffles	1	32	33	2	7	21		
32	Сладкое тесто	Shirin xamir	1	9	10	3	7	23		
33	Шоколадное тесто	Shokoladli xamir	1	11	12	3	7	23		
34	Сладкое тесто	Shirin xamir	1	15	16	3	7	24		
37	Шоколадное тесто	Shokoladli xamir	1	17	18	3	7	24		
38	Сладкое тесто	Shirin xamir	1	21	22	3	7	25		
39	Шоколадное тесто	Shokoladli xamir	1	23	24	3	7	25		
40	Сладкое тесто	Shirin xamir	1	27	28	3	7	28		
41	Шоколадное тесто	Shokoladli xamir	1	29	30	3	7	28		
42	ð¥Гонконгский ва	ð¥Gonkong vafl	1	1	28	1	8			
43	С шоколадом CALLEBAUT	CALLEBAUT shokoladi bilan	1	2	7	2	8	42		
44	Сладкое тесто	Shirin xamir	1	3	4	3	8	43		
45	Шоколадное тесто	Shokoladli xamir	1	5	6	3	8	43		
46	С клубникой и шоколадом CALLEBAUT	Qulupnayli va CALLEBAUT shokoladli	2	8	13	2	8	42		
47	Сладкое тесто	Shirin xamir	1	9	10	3	8	46		
48	Шоколадное тесто	Shokoladli xamir	1	11	12	3	8	46		
49	С бананом и шоколадом CALLEBAUT	Bananli va CALLEBAUT shokoladli	2	14	19	2	8	42		
50	Сладкое тесто	Shirin xamir	1	15	16	3	8	49		
51	Шоколадное тесто	Shokoladli xamir	1	17	18	3	8	49		
52	Фруктовый микс с шоколадом CALLEBAUT	Mevali miks va CALLEBAUT shokoladli	2	20	25	2	8	42		
53	Сладкое тесто	Shirin xamir	1	21	22	3	8	52		
54	Шоколадное тесто	Shokoladli xamir	1	23	24	3	8	52		
55	Exclusive waffles	Exclusive waffles	1	26	27	2	8	42		
\.


--
-- Data for Name: dishes; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.dishes (id, name, name_uz, image_id, image_path, description, description_uz, is_hidden, price, number, category_id, show_usd) FROM stdin;
1	Фондю с вафлями	Fondyu vafli bilan	AgACAgIAAxkDAAIpOV8xCYS7NdnHEc2SF1ojyscp41xMAAL2sTEbnkCISfdB5W4QF-OME_EZlS4AAwEAAwIAA3gAA9CyAgABGgQ	/home/telegrambot/Ice-GoldBot/data/dd9636d0-4b11-4862-8491-57df541f2fed.jpg	Фондю с вафлями - Молочный шоколад CALLEBAUT, кусочки Гонконгских вафель, клубника, банан в одноразовой посуде.\r\n\r\nВ цену включён набор одноразовой посуды.	Fondyu vafli bilan - CALLEBAUT sutli shokolad, Gonkong vaflisi bolakchalari, qulupnay, banan bir martalik idishda toplami.\r\n\r\nNarxga idish toplami kiritilgan.	0	52000.0	1	3	0
2	Фондю с фруктами	Fondyu meva bilan	AgACAgIAAxkDAAIpQF8xCabIRsEaos7-YxX8pomMF81cAAL4sTEbnkCISVj0OGqapdao54ZvkS4AAwEAAwIAA3gAA-_DBgABGgQ	/home/telegrambot/Ice-GoldBot/data/13b034d2-b6ed-45e1-927e-6b29c348f71c.jpg	Фондю с фруктами - Молочный шоколад CALLEBAUT, киви, клубника, банан в одноразовой посуде.\r\n\r\nВ цену включён набор одноразовой посуды.	Fondyu meva bilan - CALLEBAUT sutli shokolad, kivi, qulupnay, banan bir martalik idishda toplami.\r\n\r\nNarxga idish toplami kiritilgan.	0	46000.0	1	3	0
3	Мороженое Ferrero Rocher	Ferrero Rocher muzqaymoq	AgACAgIAAxkDAAIO8l8v1-TpDJkb5gYfXzNQDin54hbiAAImsDEb1k2ASWE91aQHX9vuAzN6kS4AAwEAAwIAA3cAAwPEBgABGgQ	/home/telegrambot/Ice-GoldBot/data/17.png	Мороженое Ferrero Rocher - Сливочный пломбир, Бельгийский шоколад CALLEBAUT, кусочки шоколада Ferrero Rocher.	Ferrero Rocher muzqaymoq - Qaymoqli muzqaymoq, Belgiya CALLEBAUT shokoladi, Ferrero Rocher shokolad bolaklari.	0	31000.0	1	12	0
4	Мороженое Rafaello	Rafaello muzqaymoq	AgACAgIAAxkDAAILP18u7ykvrX_o7oPVzCgGKUqm4EGpAALmrTEboYR4Sc90qVS8Tigfs7C9ki4AAwEAAwIAA3cAA4hzBQABGgQ	/home/telegrambot/Ice-GoldBot/data/18.png	Мороженое Rafaello - Сливочный пломбир, Бельгийский шоколад CALLEBAUT и кусочки шоколада Rafaello.	Rafaello muzqaymoq - Qaymoqli muzqaymoq, Belgiya CALLEBAUT shokoladi, Rafaello shokolad bolaklari.	0	31000.0	1	12	0
5	Мороженое Kinder	Kinder muzqaymoq	AgACAgIAAxkDAAIJrV8ujkUfRJB-q3ZEJlUw-pJ4-1YBAAKesDEbe114Sf3wCVxqlD66TkPCki4AAwEAAwIAA3cAA85tBQABGgQ	/home/telegrambot/Ice-GoldBot/data/16.png	Мороженое Kinder - Сливочный пломбир, Бельгийский шоколад CALLEBAUT, кусочки шоколада Kinder.	Kinder muzqaymoq - Qaymoqli muzqaymoq, Belgiya CALLEBAUT shokoladi, Kinder shokolad bolaklari.	0	27000.0	1	12	0
6	Мороженое KitKat	KitKat muzqaymoq	AgACAgIAAxkDAAILRl8u7zKVQhrNcfs1S-Z5oriuUiHLAALnrTEboYR4SQVr5KVwp66ZAh65ki4AAwEAAwIAA3cAA7J5BQABGgQ	/home/telegrambot/Ice-GoldBot/data/19.png	Мороженое KitKat - Сливочный пломбир, Бельгийский шоколад CALLEBAUT, кусочки шоколада KitKat.	KitKat muzqaymoq - Qaymoqli muzqaymoq, Belgiya CALLEBAUT shokoladi, KitKat shokolad bolaklari.	0	24000.0	1	12	0
7	Мороженое Oreo	Oreo muzqaymoq	AgACAgIAAxkDAAIrM18xGD44JF9FIHqXqpaWafTm5CEvAAIwrzEbiSSISX2CCS7lzAesgXtDli4AAwEAAwIAA3cAA4J6AAIaBA	/home/telegrambot/Ice-GoldBot/data/1.jpg	Мороженое Oreo - Сливочный пломбир, Бельгийский шоколад CALLEBAUT, кусочки шоколада Oreo.	Oreo muzqaymoq - Qaymoqli muzqaymoq, Belgiya CALLEBAUT shokoladi, Oreo shokolad bolaklari.	0	24000.0	1	12	0
8	белый	oq	AgACAgIAAxkDAAIHvF8lP3rZtR3S1bXL8HdCptRayrZRAAJCrzEbBQYhSV3rnPvn62zZmMjDki4AAwEAAwIAA3gAA5IhBQABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 5.jpg			0	25000.0	1		0
9	белый	oq	AgACAgIAAxkDAAIcN18odJjO-TPuxHmT1Wrx09KyQgeFAAL-rTEbBQYZSXGDqFYZWgWT94RvkS4AAwEAAwIAA3gAA0VaBgABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 1.jpg			0	25000.0	1		0
10	молочный	sutli	AgACAgIAAxkDAAIHzV8lQDUBeHhm_u7VKpUpd9Q-1OIvAAJCrzEbBQYhSV3rnPvn62zZmMjDki4AAwEAAwIAA3gAA5IhBQABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 5.jpg			0	25000.0	1		0
11	молочный	sutli	AgACAgIAAxkDAAIRll8myzHeqD7HXwjPVzhnPxIZh_PFAAL-rTEbBQYZSXGDqFYZWgWT94RvkS4AAwEAAwIAA3gAA0VaBgABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 1.jpg			0	25000.0	1		0
12	тёмный	qora	AgACAgIAAxkDAAILuF8mcXhgrxLkmgS3eRw1S-c-biQuAAJCrzEbBQYhSV3rnPvn62zZmMjDki4AAwEAAwIAA3gAA5IhBQABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 5.jpg			0	25000.0	1		0
13	тёмный	qora	AgACAgIAAxkDAAIcPF8odJ-_ChXVYHF3LDzyMMqvray-AAL-rTEbBQYZSXGDqFYZWgWT94RvkS4AAwEAAwIAA3gAA0VaBgABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 1.jpg			0	25000.0	1		0
14	банан	banan	AgACAgIAAxkDAAIIc18lRmp2bJt2_P2J-BhgIKX3ORkLAAOvMRsFBiFJF-oFzC_WJLlBDgWSLgADAQADAgADeAADmXsEAAEaBA	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 6.jpg			0	30000.0	1		0
15	банан	banan		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 2.jpg			0	30000.0	1		0
16	клубника	qulupnay	AgACAgIAAxkDAAIIeF8lRm5mCd2Z2m2RbT9cnM0yeYvQAAJ1rzEb4iwhSYlrUA01TK6SrBd0kS4AAwEAAwIAA3gAA7lqBgABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 8.jpg			0	35000.0	1		0
17	клубника	qulupnay	AgACAgIAAxkDAAIQEl8mvnArkrvnXUDpuWegzUr52RL-AALlrjEbqR8xSe5vYHFL277oR6S6ki4AAwEAAwIAA3gAA841BQABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 4.jpg			0	35000.0	1		0
18	фруктовый микс	meva aralashmasi	AgACAgIAAxkDAAIIbl8lRl6cyGUR4xKLvxv-K3roXjAXAAJ0rzEb4iwhSQvUUw-gl9KrKaNMli4AAwEAAwIAA3gAA_ELAAIaBA	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 7.jpg			0	38000.0	1		0
19	фруктовый микс	meva aralashmasi		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 3.jpg			0	38000.0	1		0
20	белый	oq	AgACAgIAAxkDAAIVzl8m3dmX2_3qCjqRRlEx2e50XgshAAKjrTEb2sA4Sa1EhHE7vYXIsSyCki4AAwEAAwIAA3gAA12eBAABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 12.jpg			0	24000.0	1		0
21	молочный	sutli		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 12.jpg			0	24000.0	1		0
22	темный	qora		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 12.jpg			0	24000.0	1		0
23	белый	oq		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 9.jpg			0	24000.0	1		0
24	молочный	sutli		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 9.jpg			0	24000.0	1		0
25	тёмный	qora		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 9.jpg			0	24000.0	1		0
26	банан	banan		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 13.jpg			0	29000.0	1		0
27	фруктовый микс	meva aralashmasi		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 14.jpg			0	37000.0	1		0
28	банан	banan		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 10.jpg			0	29000.0	1		0
29	фруктовый микс	meva aralashmasi		/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 11.jpg			0	37000.0	1		0
30	товар в тест	tovar v test			testiruem	asdasd	0	123123.0	1		0
31	tovar vne k	tovar vne k			sad	asd	0	123.0	1		0
32	Double Wafflle	Double Wafflle	AgACAgIAAxkDAAIHjF8s8tja1EiMVyZ_HZOJkVBJZCQ5AAK_sDEbW-JoSSiXxwwhgfcByU0SlS4AAwEAAwIAA3gAA5aNAgABGgQ	/home/telegrambot/Ice-GoldBot/data/2178391c-ab31-4918-a1f6-af12eb55faa3.jpg	Double Wafflle - Двойной вафли с шоколадом CALLEBAUT, пломбирным мороженым, клубникой и бананом. \r\n\r\nВ цену включён набор одноразовой посуды.	Double Wafflle - Ikki qavatli vafli CALLEBAUT shokoladli, muzqaymoq, banan va qulupnay.\r\n\r\nNarxga idish toplami kiritilgan.	0	66000.0	1	31	0
33	Day & Night	Day & Night	AgACAgIAAxkDAAIHkV8s8t0BusJ6YAq018CoZsdS1fr3AALAsDEbW-JoSZ-JOo1NpZWM0rODki4AAwEAAwIAA3kAA6fSBAABGgQ	/home/telegrambot/Ice-GoldBot/data/photo5273972827785113317.jpg	Day & Night - Бельгийский вафли из сладкого теста, покрытая белым и молочным шоколадом с добавлением ароматного кунжута и арахиса. \r\n\r\nВ цену включён набор одноразовой посуды.	Day & Night - Shirin hamirli, sutli va oq shokolad bilan qoplangan, xushboy sedana va yeryongoqli Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	36000.0	1	31	0
34	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAIHR18r-EFldKk8X98BuxNra2MfH6PbAAL7rzEbZDphSZjA9HJS2CD6IqRMli4AAwEAAwIAA3cAAxZRAAIaBA	/home/telegrambot/Ice-GoldBot/data/1.png	Бельгийский вафли из сладкого теста, с молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokoladli, shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	29000.0	1	29	0
35	Exclusive waffle	Exclusive waffle	AgACAgIAAxkDAAIHll8s8wABwa7QxfX_hq1ACUSnzi4-xQACwbAxG1viaEm3ch3ApdS8NSRtTJEuAAMBAAMCAAN3AAMl6wYAARoE	/home/telegrambot/Ice-GoldBot/data/12.png	Exclusive waffle - Бельгийский вафли из шоколадного теста, молочный шоколад CALLEBAUT, банан, клубника, сливочное мороженое.\r\n\r\nВ цену включён набор одноразовой посуды.	Exclusive waffle - Shokolad xamiridan tayyorlangan Belgiya vafli, CALLEBAUT sutli shokolad, banan, qulupnay, muzqaymoq.\r\n\r\nNarxga idish toplami kiritilgan.	0	46000.0	1	31	0
36	Белый шоколад	Oq shokolad			Бельгийский вафли из сладкого теста, с белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokoladli, shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	29000.0	1	29	0
37	Тёмный шоколад	Achchiq shokolad			Бельгийский вафли из сладкого теста, с тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achchiq shokoladli, shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	29000.0	1	29	0
38	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAJmSF85UzCTLB15q6Z6X65VE84fWPtMAAKOrjEb5D7RSQO5UN_Ntr40GgFFli4AAwEAAwIAA3kAA4XAAAIaBA	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 1.jpg	Бельгийский вафли из шоколадного теста, с молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokoladli, shokolad xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	29000.0	1	30	0
39	Белый шоколад	Oq shokolad			Бельгийский вафли из шоколадного теста, с белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokoladli, shokolad xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	29000.0	1	30	0
40	Тёмный шоколад	Achchiq shokolad			Бельгийский вафли из шоколадного теста, с тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achchiq shokoladli, shokolad xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	29000.0	1	30	0
41	Молочный шоколад	Sutli shokolad			Бельгийский вафли из сладкого теста, с клубникой и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, qulupnay va shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	39000.0	1	32	0
42	Белым шоколад	Oq shokolad			Бельгийский вафли из сладкого теста, с клубникой и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, qulupnay va shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	39000.0	1	32	0
43	Тёмный шоколад	Achchiq shokolad			Бельгийский вафли из сладкого теста, с клубникой и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achchiq shokolad, qulupnay va shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	39000.0	1	32	0
44	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAJmV185U0CTMylLgLlRso39254oWg20AAKPrjEb5D7RSbNK7asfpf2tFIvmkS4AAwEAAwIAA3kAA5W5BQABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 4.jpg	Бельгийский вафли из шоколадного теста, с клубникой и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, qulupnay va shokoladli xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	39000.0	1	33	0
45	Белый шоколад	Oq shokolad			Бельгийский вафли из шоколадного теста, с клубникой и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, qulupnay va shokoladli xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	39000.0	1	33	0
46	Тёмный шоколад	Achiq shokolad			Бельгийский вафли из шоколадного теста, с клубникой и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achiq shokolad, qulupnay va shokoladli xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	39000.0	1	33	0
48	товар 1	товар 1					0	123.0	1		0
49	товар 2	товар 2					0	123.0	1		0
50	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAIIDl8s9CNRC3jrH2lTPwIr5BzrUyNiAALDsDEbW-JoSXR8auJvyMl2szR6kS4AAwEAAwIAA3cABKYGAAEaBA	/home/telegrambot/Ice-GoldBot/data/2.png	Бельгийский вафли из сладкого теста, с бананом и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, banan va shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	34000.0	1	34	0
51	Белым шоколад	Oq shokolad			Бельгийский вафли из сладкого теста, с бананом и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, banan va shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	34000.0	1	34	0
52	Тёмный шоколад	Achchiq shokolad			Бельгийский вафли из сладкого теста, с бананом и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achchiq shokolad, banan va shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	34000.0	1	34	0
53	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAJnFF85bAqdRZg3YaYy2_wT0CaliFDMAAKdrzEbSBzISSIxjTiQ-_EMsNUTlS4AAwEAAwIAA3kAAwPyAgABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 2.jpg	Бельгийский вафли из шоколадного теста, с бананом и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, banan va shokoladli xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	34000.0	1	37	0
54	Белый шоколад	Oq shokolad			Бельгийский вафли из шоколадного теста, с бананом и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, banan va shokoladli xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	34000.0	1	37	0
55	Тёмный шоколад	Achiq shokolad			Бельгийский вафли из шоколадного теста, с бананом и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achiq shokolad, banan va shokoladli xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	34000.0	1	37	0
56	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAIJk18ujf4G_CoCpu7PF2jlAUkBS6yCAAKcsDEbe114SVYxIGQrUt-olx25ki4AAwEAAwIAA3cAA4x_BQABGgQ	/home/telegrambot/Ice-GoldBot/data/8.png	Бельгийский вафли из сладкого теста, с бананом, клубникой и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, banan, qulupnay va shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	42000.0	1	38	0
57	Белым шоколад	Oq shokolad			Бельгийский вафли из сладкого теста, с бананом, клубникой и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, banan, qulupnay va shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	42000.0	1	38	0
58	Тёмный шоколад	Achchiq shokolad			Бельгийский вафли из сладкого теста, с бананом, клубникой и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achchiq shokolad, banan, qulupnay va shirin xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	42000.0	1	38	0
59	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAJqll86mIMlsBm41LKh0iAW2puZtlF3AALarjEbwvTZSQzaehEZ3G5loJEhlS4AAwEAAwIAA3kAA90CAwABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 3.jpg	Бельгийский вафли из шоколадного теста, с бананом, клубникой и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, banan, qulupnay va shokoladli xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	42000.0	1	39	0
60	Белый шоколад	Oq shokolad			Бельгийский вафли из шоколадного теста, с бананом, клубникой и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, banan, qulupnay va shokoladli xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	42000.0	1	39	0
61	Тёмный шоколад	Achiq shokolad			Бельгийский вафли из шоколадного теста, с бананом, клубникой и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achiq shokolad, banan, qulupnay va shokoladli xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	42000.0	1	39	0
62	C джемом смородины	Qora qoragat murabbosi bilan	AgACAgIAAxkDAAJZ1182qJmLoH5VszYkc1C-eWCR-1rBAALhrjEbTlmISbUvD7te2uTxShxLli4AAwEAAwIAA3cAA8V8AAIaBA	/home/telegrambot/Ice-GoldBot/data/5.png	Бельгийский вафли из сладкого теста, с джемом смородины.\r\n\r\nВ цену включён набор одноразовой посуды.	Qora qoragat qiyomi bilan va shirin xamirdan tayyorlangan Belgiya vafli.	0	21000.0	1	40	0
63	С джемом лесных ягод	Reza mevalaridan qiyom	AgACAgIAAxkDAAIqWV8xEx2wYQABTbzJbos2UrELR0t21QAC4a4xG05ZiEm1Lw-7Xtrk8UocS5YuAAMBAAMCAAN3AAPFfAACGgQ	/home/telegrambot/Ice-GoldBot/data/5.png	Бельгийский вафли из сладкого теста, с джемом лесных ягод.\r\n\r\nВ цену включён набор одноразовой посуды.	Reza mevalari qiyomi bilan va shirin xamirdan tayyorlangan Belgiya vafli.	0	21000.0	1	40	0
64	C джемом смородины	Qora qoragat murabbosi bilan			Бельгийский вафли из шоколадного теста, с джемом смородины.\r\n\r\nВ цену включён набор одноразовой посуды.	Qora qoragat qiyomi bilan va shokolad xamirdan tayyorlangan Belgiya vafli.	0	21000.0	1	41	0
65	С джемом лесных ягод	Reza mevalaridan qiyom			Бельгийский вафли из шоколадного теста, с джемом лесных ягод.\r\n\r\nВ цену включён набор одноразовой посуды.	Reza mevalari qiyomi bilan va shokolad xamirdan tayyorlangan Belgiya vafli.	0	21000.0	1	41	0
66	Half 50	Half 50	AgACAgIAAxkDAAIHm18s8wjeu411kmn74g9rWJKyFooiAALCsDEbW-JoSctzL9OIHPGOJhq5ki4AAwEAAwIAA3cAA0FqBQABGgQ	/home/telegrambot/Ice-GoldBot/data/IMG_5475.JPG	Half 50 - Половина Бельгийский вафли из сладкого теста, с бананом, клубникой и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	Half 50 - CALLEBAUT sutli shokolad, banan, qulupnay va shirin yarim xamirdan tayyorlangan Belgiya vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	24000.0	1	31	0
67	njdfh	njdfh			asd	asd	0	123.0	1		0
68	Молочный milkshake	Sutli milkshake	AgACAgIAAxkDAAIInl8tENOw-pKj63GADnje1vjt_92XAALZrjEbO31pSYJtR0z07urjPHtDli4AAwEAAwIAA3cAA79aAAIaBA	/home/telegrambot/Ice-GoldBot/data/14.png	Молочный milkshake - Сливочное мороженое и натурального молоко в одном стакане.	Sutli milkshake - Bir stakan ichida qaymoqli muzqaymoq va tabiiy sut.	0	20000.0	1	5	0
69	Клубничный milkshake	Qulupnayli milkshake	AgACAgIAAxkDAAIIo18tENs7FmnpgeboRx89u3IQkccmAALarjEbO31pSQf0czHGSjbgeKO6ki4AAwEAAwIAA3cAAydnBQABGgQ	/home/telegrambot/Ice-GoldBot/data/13.png	Клубничный milkshake - Сливочное мороженое, натурального молоко, клубничный  в одном стакане.	Qulupnayli milkshake - Bir stakan ichida qaymoqli muzqaymoq, tabiiy sut, qulupnay.	0	25000.0	1	5	0
70	Банановый milkshake	Bananli milkshake	AgACAgIAAxkDAAIIrV8tEOTdH0ClTIU1yXqRSMhVASyyAALZrjEbO31pSYJtR0z07urjPHtDli4AAwEAAwIAA3cAA79aAAIaBA	/home/telegrambot/Ice-GoldBot/data/14.png	Банановый milkshake - Сливочное мороженое, натурального молоко, банан в одном стакане.	Bananli milkshake - Bir stakan ichida qaymoqli muzqaymoq, tabiiy sut, banan.	0	25000.0	1	5	0
71	Маракуйя milkshake	Marakuyya milkshake	AgACAgIAAxkDAAIIqF8tEOCaL5lMFCSPRSATEUg5wy7EAALbrjEbO31pSdxKjUkBkirUb-Tmki4AAwEAAwIAA3cAA6bLBAABGgQ	/home/telegrambot/Ice-GoldBot/data/15.png	Маракуйя milkshake - Сливочное мороженое, натурального молоко, маракуйя в одном стакане.	Marakuyya milkshake - Bir stakan ichida qaymoqli muzqaymoq, tabiiy sut, marakuyya.	0	25000.0	1	5	0
72	Молочный шоколад	Sutli shokolad			Гонконгский вафли из сладкого теста, с молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokoladli, shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	28000.0	1	44	0
73	Белый шоколад	Oq shokolad			Гонконгский вафли из сладкого теста, с белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokoladli, shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	28000.0	1	44	0
74	Тёмный шоколад	Achchiq shokolad			Гонконгский вафли из сладкого теста, с тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achchiq shokoladli, shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	28000.0	1	44	0
75	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAJpdF86kZqe4alctyErjLV3JlPJ5vjPAAI_rzEb2P7ZSYD6Q-uPLrG7QH_Xli4AAwEAAwIAA3kAAzofAAIaBA	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 9.jpg	Гонконгский вафли из шоколадного теста, с молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokoladli, shokolad xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	28000.0	1	45	0
76	Белый шоколад	Oq shokolad			Гонконгский вафли из шоколадного теста, с белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokoladli, shokolad xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	28000.0	1	45	0
77	Тёмный шоколад	Achchiq shokolad			Гонконгский вафли из шоколадного теста, с тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achchiq shokoladli, shokolad xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	28000.0	1	45	0
78	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAJmpF85XgHTkYfPzHexB3JA-6FBE8SxAAKjrjEb5D7RSXvBFJAzxbGj9hk2ly4AAwEAAwIAA3cAAxkWAAIaBA	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 111.jpg	Гонконгский вафли из сладкого теста, с клубникой и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, qulupnay va shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	38000.0	1	47	0
79	Белым шоколад	Oq shokolad			Гонконгский вафли из сладкого теста, с клубникой и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, qulupnay va shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	38000.0	1	47	0
80	Тёмный шоколад	Achchiq shokolad			Гонконгский вафли из сладкого теста, с клубникой и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achchiq shokolad, qulupnay va shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	38000.0	1	47	0
81	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAJmkF85XaoHuKZJDo7GNXBKJek4eYFMAAIPsDEb68yBSfMSG2xEssyrcAsglS4AAwEAAwIAA3cAA4exAgABGgQ	/home/telegrambot/Ice-GoldBot/data/7.png	Гонконгский вафли из шоколадного теста, с клубникой и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, qulupnay va shokoladli xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	38000.0	1	48	0
82	Белый шоколад	Oq shokolad			Гонконгский вафли из шоколадного теста, с клубникой и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, qulupnay va shokoladli xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	38000.0	1	48	0
83	Тёмный шоколад	Achiq shokolad			Гонконгский вафли из шоколадного теста, с клубникой и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achiq shokolad, qulupnay va shokoladli xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	38000.0	1	48	0
84	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAINL18vw8Lovv9kYmkKR5L70aewSsg_AALqrzEbUcOBSZJNMcuObEe3je4ZlS4AAwEAAwIAA3cAA76qAgABGgQ	/home/telegrambot/Ice-GoldBot/data/4.png	Гонконгский вафли из сладкого теста, с бананом и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, banan va shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	33000.0	1	50	0
85	Белым шоколад	Oq shokolad			Гонконгский вафли из сладкого теста, с бананом и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, banan va shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	33000.0	1	50	0
86	Тёмный шоколад	Achchiq shokolad			Гонконгский вафли из сладкого теста, с бананом и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achchiq shokolad, banan va shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	33000.0	1	50	0
87	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAJqsF86mKigDaDNtkPlVFjKEdQZRX9xAALbrjEbwvTZSXPrMfWSA9nZoKeAki4AAwEAAwIAA3kAA509BQABGgQ	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 10.jpg	Гонконгский вафли из шоколадного теста, с бананом и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, banan va shokoladli xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	33000.0	1	51	0
88	Белый шоколад	Oq shokolad			Гонконгский вафли из шоколадного теста, с бананом и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, banan va shokoladli xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	33000.0	1	51	0
89	Тёмный шоколад	Achiq shokolad			Гонконгский вафли из шоколадного теста, с бананом и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achiq shokolad, banan va shokoladli xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	33000.0	1	51	0
90	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAINeV8vzcN-ShP2TJoqWSmZ6_44aw6XAAKyrzEby9uBSZJcKFWZA_J5P9YTlS4AAwEAAwIAA3cAA6esAgABGgQ	/home/telegrambot/Ice-GoldBot/data/6.png	Гонконгский вафли из сладкого теста, с бананом, клубникой и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, banan, qulupnay va shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	41000.0	1	53	0
91	Белым шоколад	Oq shokolad			Гонконгский вафли из сладкого теста, с бананом, клубникой и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, banan, qulupnay va shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	41000.0	1	53	0
92	Тёмный шоколад	Achchiq shokolad			Гонконгский вафли из сладкого теста, с бананом, клубникой и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achchiq shokolad, banan, qulupnay va shirin xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	41000.0	1	53	0
93	Молочный шоколад	Sutli shokolad	AgACAgIAAxkDAAJpjV86ka_aNztTEIua0MqUCtK3Z_npAAJArzEb2P7ZSVwrNlt7KO5IplEIly4AAwEAAwIAA3kAA6QfAAIaBA	/home/telegrambot/Ice-GoldBot/data/Ice & GOLD 11.jpg	Гонконгский вафли из шоколадного теста, с бананом, клубникой и молочным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT sutli shokolad, banan, qulupnay va shokoladli xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	0	41000.0	1	54	0
94	Белый шоколад	Oq shokolad			Гонконгский вафли из шоколадного теста, с бананом, клубникой и белым шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT oq shokolad, banan, qulupnay va shokoladli xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	41000.0	1	54	0
95	Тёмный шоколад	Achiq shokolad			Гонконгский вафли из шоколадного теста, с бананом, клубникой и тёмным шоколадом CALLEBAUT.\r\n\r\nВ цену включён набор одноразовой посуды.	CALLEBAUT achiq shokolad, banan, qulupnay va shokoladli xamirdan tayyorlangan Gonkong vaflisi.\r\n\r\nNarxga idish toplami kiritilgan.	1	41000.0	1	54	0
96	С фисташкой	Xandon pista bilan	AgACAgIAAxkDAAIW9F8v_51za2VbQ3hu7nrdqjKX2CXUAAJQsDEbUcOBSaZdviGsE4wPYE8SlS4AAwEAAwIAA3cAA8StAgABGgQ	/home/telegrambot/Ice-GoldBot/data/11.png	Гонконгский вафли из сладкого теста, молочный бельгийский шоколад CALLEBAUT, мелкие крошки фисташки, мороженое.	Shirin xamirdan tayyorlangan Gonkong vaflisi, CALLEBAUT sutli Belgiya shokoladi, maydalangan xandon pista, muzqaymoq.	0	43000.0	1	55	0
97	С M&M’s	M&M’s bilan	AgACAgIAAxkDAAIJoF8ujixEvpJN1OCy91cKaNp4TkQ6AAKdsDEbe114Sa_nGvBJOwjVwFD1lC4AAwEAAwIAA3cAAy8JAwABGgQ	/home/telegrambot/Ice-GoldBot/data/10.png	Гонконгский вафли из сладкого теста, молочный бельгийский шоколад CALLEBAUT, шоколад M&M’s, мороженое.	Shirin xamirdan tayyorlangan Gonkong vaflisi, CALLEBAUT sutli Belgiya shokoladi, M&M’s shokoladi, muzqaymoq.	0	33000.0	1	55	0
98	MOJITO классический	Klassik MOJITO			MOJITO классический	Klassik MOJITO	1	18000.0	1	6	0
99	ICE TEA классический	Klassik ICE TEA			ICE TEA классический	Klassik ICE TEA	1	18000.0	1	6	0
100	MOJITO персиковый	Shaftolili MOJITO			MOJITO персиковый	Shaftolili MOJITO	1	20000.0	1	6	0
101	MOJITO манго	Mangoli MOJITO			MOJITO манго	Mangoli MOJITO	1	22000.0	1	6	0
102	MOJITO клубничный	Qulupnayli MOJITO			MOJITO клубничный	Qulupnayli MOJITO	1	22000.0	1	6	0
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.locations (id, latitude, longitude, address, order_id) FROM stdin;
2	41.362713	69.238290	Узбекистан, Ташкент, Олмазорский район, махалля Гулсарой	2
19	41.362610	69.238270	Узбекистан, Ташкент, Олмазорский район, махалля Гулсарой	5
22	41.362610	69.238270	Узбекистан, Ташкент, Олмазорский район, махалля Гулсарой	30
23	41.302345	69.229550	Узбекистан, Ташкент, 2-й проезд Козиробод	44
25	41.314440	69.189720	Узбекистан, Ташкент, улица Марс	46
29	41.362860	69.238210	Узбекистан, Ташкент, Олмазорский район, махалля Гулсарой	56
30	41.362610	69.238270	Узбекистан, Ташкент, Олмазорский район, махалля Гулсарой	57
35	41.278786	69.250700	Узбекистан, Ташкент, Яккасарайский район, махалля Мухандислар	64
36	41.256836	69.161480	Узбекистан, Ташкент, 3-й проезд Заргарлик, 71	65
37	41.329220	69.281480	Узбекистан, Ташкент, Юнусабадский район, массив Минор	67
38	41.295345	69.180270	Узбекистан, Ташкент, Учтепинский район, массив Чиланзар, 15-й квартал, 8	68
39	41.353470	69.343500	Узбекистан, Ташкент, Мирзо-Улугбекский район, махалля Шахриобод	69
40	41.359620	69.214470	Узбекистан, Ташкент, 1-я улица Каракамыш	70
41	41.289257	69.139305	Узбекистан, Ташкент, Учтепинский район, махалля Урикзор	73
42	41.363390	69.274310	Узбекистан, Ташкент, Юнусабадский район, махалля Кушчинор	74
44	41.360813	69.370500	Узбекистан, Ташкент, Мирзо-Улугбекский район, массив Феруза-3	76
45	41.274746	69.309820	Узбекистан, Ташкент, Фергана Йули	75
46	41.359997	69.291565	Узбекистан, Ташкент, 5-й проезд Хушнаво	77
47	41.285450	69.242600	Узбекистан, Ташкент, улица Юсуфа Хамадони	78
48	41.362118	69.394000	Узбекистан, Ташкент, Мирзо-Улугбекский район, махалля Юзработ	79
49	41.234486	69.169050	Узбекистан, Ташкентская область, Зангиатинский район, городской посёлок Эркин, 8-й проезд Комолиддин Бехзод	81
51	41.332375	69.303530	Узбекистан, Ташкент, улица Аккурган, 35	84
52	41.285490	69.171930	Узбекистан, Ташкент, Учтепинский район, массив Чиланзар, 23-й квартал, 47	85
53	39.749855	64.399254	Узбекистан, Бухарская область, Бухара	86
54	41.341340	69.230110	Узбекистан, Ташкент, Олмазорский район, махалля Гузарбоши	87
55	41.356530	69.358600	Узбекистан, Ташкент, улица Мирзо Улугбека	89
56	41.266106	69.216934	Узбекистан, Ташкент, Кичик Халка Йули, 45А	90
57	41.295338	69.180336	Узбекистан, Ташкент, Учтепинский район, массив Чиланзар, 15-й квартал, 8	91
58	41.269280	69.209100	Узбекистан, Ташкент, улица Тупкайрагач, 21	88
59	41.324886	69.297226	Узбекистан, Ташкент, улица Осиё, 3	92
60	41.275326	69.313920	Узбекистан, Ташкент, Фергана Йули, 95А/1	94
61	41.287334	69.142250	Узбекистан, Ташкент, Учтепинский район, Зарафшанская улица	97
62	41.327293	69.254486	Узбекистан, Ташкент, Шайхантахурский район, массив Джангох, 3/4	99
63	41.330524	69.246490	Узбекистан, Ташкент, Олмазорский район, массив Себзар, 1	100
64	41.323620	69.326170	Узбекистан, Ташкент, улица Мухаммада Юсуфа	101
65	41.324180	69.229570	Узбекистан, Ташкент, Шайхантахурский район, массив Гульабад, улица Гулобод	102
66	41.355118	69.253460	Узбекистан, Ташкент, Олмазорский район, махалля Мискин	103
67	41.324284	69.229675	Узбекистан, Ташкент, Шайхантахурский район, массив Гульабад, улица Гулобод	104
68	41.241863	69.334580	Узбекистан, Ташкент, Яшнободский район, массив Куйлюк-Центр, 10В	105
70	41.324097	69.331450	Узбекистан, Ташкент, 2-й проезд Хирмонтепа, 14	109
71	41.368477	69.274360	Узбекистан, Ташкент, Юнусабадский район, махалля Астробод	110
73	41.338516	69.250950	Узбекистан, Ташкент, Шайхантахурский район, махалля Юкори Себзор	112
74	41.325817	69.263626	Узбекистан, Ташкент, улица Лабзак, 30	111
75	41.325363	69.263050	Узбекистан, Ташкент, Шайхантахурский район, массив Ц-13	113
76	41.315964	69.191055	Узбекистан, Ташкент, 1-й проезд Маннона Уйгура, 4	114
77	41.324886	69.297226	Узбекистан, Ташкент, улица Осиё, 3	115
78	41.326520	69.181020	Узбекистан, Ташкент, Учтепинский район, махалля Богичинор	116
79	41.324657	69.297180	Узбекистан, Ташкент, улица Осиё, 3	117
80	41.315018	69.293120	Узбекистан, Ташкент, улица Хамида Алимджана, 5	118
81	41.292908	69.283300	Узбекистан, Ташкент, улица Хонзодабегим, 3	119
83	41.358800	69.130580	Узбекистан, Ташкентская область, Ташкентский район, городской посёлок Шамсиабад	121
84	41.313150	69.111480	Узбекистан, Ташкентская область, Зангиатинский район, населённый пункт Алимбува	124
85	41.343082	69.208800	Узбекистан, Ташкент, улица Фараби, 5А	125
86	41.296356	69.357506	Узбекистан, Ташкент, Яшнободский район, массив Тузель, 1-й квартал, 10	126
87	41.291300	69.225350	Узбекистан, Ташкент, улица Мукими, 22	128
88	41.315110	69.290360	Узбекистан, Ташкент, Мирзо-Улугбекский район, улица Шастри	130
89	41.370987	69.214930	Узбекистан, Ташкент, улица Остона	129
90	41.371030	69.215330	Узбекистан, Ташкент, улица Сора Эшонтураева	131
91	41.319286	69.199130	Узбекистан, Ташкент, улица Бехзода, 16	132
92	41.295746	69.254060	Узбекистан, Ташкент, улица Юсуфа Хос Ходжиба, 64А	133
93	41.295788	69.254036	Узбекистан, Ташкент, Яккасарайский район, махалля Тепа	134
95	41.262623	69.396866	Узбекистан, Ташкентская область, Юкарычирчикский район, населённый пункт Шаназар	136
96	41.315580	69.285706	Узбекистан, Ташкент, Мирзо-Улугбекский район, массив Олой, 5	137
97	41.241886	69.334570	Узбекистан, Ташкент, Яшнободский район, массив Куйлюк-Центр, 10В	106
98	41.204464	69.207790	Узбекистан, Ташкент, 6-й проезд Ёркин Хаёт, 11	139
99	41.204487	69.207770	Узбекистан, Ташкент, 6-й проезд Ёркин Хаёт, 11	140
100	41.363113	69.321465	Узбекистан, Ташкент, 5-й проезд Октепа, 4	141
101	41.371147	69.307790	Узбекистан, Ташкент, Юнусабадский район, массив Юнусабад, 14-й квартал, 37	120
102	41.301258	69.219090	Узбекистан, Ташкент, улица Гульхани	143
103	41.332500	69.173080	Узбекистан, Ташкент, улица Сойгузар	144
104	41.362747	69.238914	Узбекистан, Ташкент, Карасарайская улица, 325Б	135
105	41.338844	69.190040	Узбекистан, Ташкент, улица Пахтачи	145
106	41.378082	69.281610	Узбекистан, Ташкент, Юнусабадский район, массив Юнусабад, 9-й квартал, 3А	146
107	41.289745	69.221930	Узбекистан, Ташкент, Чиланзарский район, массив Чиланзар, квартал Е, 10	147
108	41.310210	69.340620	Узбекистан, Ташкент, улица Карнок, 15	148
109	41.362747	69.238914	Узбекистан, Ташкент, Карасарайская улица, 325Б	150
110	41.217117	69.224760	Узбекистан, Ташкент, Сергелийский район, махалля Софдил	151
111	41.269375	69.193214	Узбекистан, Ташкент, улица Эски-Катартал, 9	152
113	41.353607	69.324890	Узбекистан, Ташкент, Наманганская улица, 2	154
114	41.278908	69.349970	Узбекистан, Ташкент, улица Куламли, 17	155
115	41.289540	69.270770	Узбекистан, Ташкент, тупик Акбара Мирокилова	156
116	41.256836	69.161480	Узбекистан, Ташкент, 3-й проезд Заргарлик, 71	157
117	41.286050	69.144035	Узбекистан, Ташкент, улица Нуравшан, 20	158
119	41.245903	69.284900	Узбекистан, Ташкент, Сергелийский район, 7-й квартал, 8	160
120	41.241863	69.334580	Узбекистан, Ташкент, Яшнободский район, массив Куйлюк-Центр, 10В	161
121	41.318928	69.369545	Узбекистан, Ташкентская область, Кибрайский район, населённый пункт Гульзар, улица Тараккиёт	164
122	41.317184	69.157450	Узбекистан, Ташкент, улица Мухаббат, 75	159
123	41.361816	69.194670	Узбекистан, Ташкент, Олмазорский район, массив Олимпия, 7	165
124	41.326275	69.305275	Узбекистан, Ташкент, улица Аккурган, 18	166
125	41.380733	69.287970	Узбекистан, Ташкент, улица Хидиралиева, 14	167
126	41.389362	69.366770	Узбекистан, Ташкентская область, Кибрайский район, городской посёлок Салар	168
127	41.278900	69.349945	Узбекистан, Ташкент, улица Куламли, 17	169
128	41.344270	69.243720	Узбекистан, Ташкент, Олмазорский район, массив Бобохонова, 8	170
129	41.276344	69.178040	Узбекистан, Ташкент, Учтепинский район, массив Чиланзар, 26-й квартал, 22	153
130	41.346725	69.351020	Узбекистан, Ташкент, улица Суфизода	171
131	41.362830	69.238880	Узбекистан, Ташкент, Карасарайская улица, 325Б	172
132	41.338000	69.272530	Узбекистан, Ташкент, Юнусабадский район, Кичик Халка Йули, 57	173
133	41.287310	69.240364	Узбекистан, Ташкент, улица Урикзор	176
134	41.362747	69.238914	Узбекистан, Ташкент, Карасарайская улица, 325Б	177
135	41.362747	69.238914	Узбекистан, Ташкент, Карасарайская улица, 325Б	178
136	41.314262	69.189680	Узбекистан, Ташкент, улица Марс, 48	179
137	41.350750	69.306850	Узбекистан, Ташкент, улица Отчопар, 67	180
138	41.362774	69.238930	Узбекистан, Ташкент, Карасарайская улица, 325Б	181
139	41.302723	69.161354	Узбекистан, Ташкент, 8-й проезд Атаи, 66	183
140	41.295532	69.279655	Узбекистан, Ташкент, улица Саида Барака	184
141	41.315090	69.290470	Узбекистан, Ташкент, Мирзо-Улугбекский район, улица Шастри	185
142	41.241653	69.185390	Узбекистан, Ташкент, Чиланзарский район, махалля Бешкургон	186
143	41.241863	69.334580	Узбекистан, Ташкент, Яшнободский район, массив Куйлюк-Центр, 10В	187
144	41.314587	69.202220	Узбекистан, Ташкент, Бахмальская улица, 41	188
145	41.358307	69.216590	Узбекистан, Ташкент, Олмазорский район, махалля Истикбол	189
146	41.295200	69.279340	Узбекистан, Ташкент, Мирабадский район, массив Айбек, 14	190
147	41.295208	69.279366	Узбекистан, Ташкент, Мирабадский район, массив Айбек, 14	191
148	41.290493	69.259800	Узбекистан, Ташкент, улица Шота Руставели, 35	192
149	41.215300	69.242780	Узбекистан, Ташкент, Сергелийский район, массив Сергели-IV, 20	193
150	41.362797	69.238920	Узбекистан, Ташкент, Карасарайская улица, 325Б	194
151	41.362797	69.238920	Узбекистан, Ташкент, Карасарайская улица, 325Б	195
152	41.322124	69.214264	Узбекистан, Ташкент, проезд Кукча-Дарвоза	196
153	41.331090	69.246170	Узбекистан, Ташкент, Олмазорский район, махалля Янги Себзор	197
154	41.205666	69.218350	Узбекистан, Ташкент, Сергелийский район, массив Сергели-I, 54	198
155	41.264490	69.312360	Узбекистан, Ташкент, 4-й проезд Окбилол, 19	199
157	41.196316	69.206840	Узбекистан, Ташкент, Сергелийский район, массив Йолак, 2	203
158	41.321217	69.300680	Узбекистан, Ташкент, проспект Мустакиллик, 77	202
159	41.348700	69.372246	Узбекистан, Ташкент, улица Буюк Ипак Йули, 396А	205
160	41.283863	69.203350	Узбекистан, Ташкент, улица Катартал	206
161	41.295338	69.180244	Узбекистан, Ташкент, Учтепинский район, массив Чиланзар, 15-й квартал, 8	207
162	41.359970	69.291900	Узбекистан, Ташкент, Юнусабадский район, махалля Юнусабад	208
163	41.256836	69.161480	Узбекистан, Ташкент, 3-й проезд Заргарлик, 71	209
164	41.295360	69.250150	Узбекистан, Ташкент, улица Бабура, 10	210
165	41.357180	69.299510	Узбекистан, Ташкент, улица Азимтепа	211
166	41.201750	69.228160	Узбекистан, Ташкент, Сергелийский район, массив Йулдош, 10-й квартал	212
167	41.308080	69.269720	Узбекистан, Ташкент, улица Ислама Каримова, 17Б	213
168	41.244976	69.323780	Узбекистан, Ташкент, улица Парвона, 10	214
169	41.326260	69.180960	Узбекистан, Ташкент, улица Богичинор	215
171	41.326680	69.305170	Узбекистан, Ташкент, улица Аккурган, 18	217
172	41.328316	69.277870	Узбекистан, Ташкент, улица Осиё	218
173	41.296482	69.193770	Узбекистан, Ташкент, Кичик Халка Йули	219
174	41.241860	69.334910	Узбекистан, Ташкент, Яшнободский район, массив Куйлюк-Центр	220
175	41.349480	69.380830	Узбекистан, Ташкент, улица Яшна, 16	222
176	41.328266	69.277954	Узбекистан, Ташкент, улица Осиё	223
178	41.316140	69.255264	Узбекистан, Ташкент, Шайхантахурский район, махалля Урда	225
179	41.278877	69.349950	Узбекистан, Ташкент, улица Куламли, 17	227
180	41.296120	69.263900	Узбекистан, Ташкент, улица Восита Вохидова, 106	228
181	41.344074	69.242360	Узбекистан, Ташкент, Карасарайская улица, 238	229
182	41.372322	69.187770	Узбекистан, Ташкентская область, Ташкентский район, городской посёлок имени М. Фозилова, 1-й тупик Н. Рустамова	230
183	41.228580	69.212790	Узбекистан, Ташкент, Сергелийский район, массив Сергели-VIа, 6	232
184	41.287310	69.240364	Узбекистан, Ташкент, улица Урикзор	233
186	41.380936	69.223970	Узбекистан, Ташкент, улица Узумбог, 34	235
187	41.332367	69.293170	Узбекистан, Ташкент, Юнусабадский район, Кичик Халка Йули	236
189	41.252743	69.344240	Узбекистан, Ташкент, улица Курувчилар	238
190	41.326393	69.376230	Узбекистан, Ташкентская область, Кибрайский район, населённый пункт Гульзар, улица Ватан	239
191	41.326385	69.376300	Узбекистан, Ташкентская область, Кибрайский район, населённый пункт Гульзар, улица Ватан	240
192	41.396187	69.236020	Узбекистан, Ташкент, 4-й проезд Катта Хасанбой	241
193	41.196940	69.203170	Узбекистан, Ташкент, Сергелийский район, Кипчак, 16	242
194	41.292404	69.207100	Узбекистан, Ташкент, 1-я улица Катартал	243
195	41.341370	69.278240	Узбекистан, Ташкент, Юнусабадский район, махалля Минор	237
196	41.341390	69.278220	Узбекистан, Ташкент, Юнусабадский район, махалля Минор	244
197	41.278957	69.246960	Узбекистан, Ташкент, улица Шота Руставели, 65	245
198	41.324528	69.296890	Узбекистан, Ташкент, Мирзо-Улугбекский район, махалля Хамид Олимжон	247
199	41.273373	69.148910	Узбекистан, Ташкент, улица Кизил Шарк	248
200	41.389088	69.227190	Узбекистан, Ташкент, 9-й проезд Узумбог, 72	249
201	41.439117	69.553764	Узбекистан, Ташкентская область, Чирчик	250
202	41.335987	69.255880	Узбекистан, Ташкент, улица Себзар, 7	251
203	41.265960	69.321390	Узбекистан, Ташкент, 1-й Акдарьинский проезд, 81	253
204	41.278893	69.349915	Узбекистан, Ташкент, улица Куламли, 17	255
205	41.321690	69.246980	Узбекистан, Ташкент, улица Алишера Навои	256
206	41.291306	69.171400	Узбекистан, Ташкент, Учтепинский район, массив Чиланзар, 21-й квартал, 1	257
207	41.288643	69.274185	Узбекистан, Ташкент, улица Нукус, 73А	258
208	41.296770	69.280680	Узбекистан, Ташкент, улица Тараса Шевченко, 38А	259
209	41.286520	69.265610	Узбекистан, Ташкент, улица Кичик Миробод, 106	260
210	41.278540	69.248146	Узбекистан, Ташкент, улица Мукими	261
211	41.192270	69.155410	Узбекистан, Ташкентская область, Зангиатинский район, городской посёлок Уртааул	262
212	41.327870	69.375460	Узбекистан, Ташкентская область, Кибрайский район, населённый пункт Гульзар, улица Бунёдкорлик	263
213	41.295830	69.209760	Узбекистан, Ташкент, Чиланзарский район, массив Чиланзар, 7-й квартал, 18В	265
214	41.316690	69.240234	Узбекистан, Ташкент, Шайхантахурский район, массив Караташ	266
215	41.294098	69.272310	Узбекистан, Ташкент, улица Мирабад, 47	267
216	41.381523	69.270500	Узбекистан, Ташкент, 4-й проезд Исламабада	268
217	41.256836	69.161480	Узбекистан, Ташкент, 3-й проезд Заргарлик, 71	269
218	40.626446	68.743760	Узбекистан, Сырдарьинская область, Гулистанский район	271
219	41.281445	69.302680	Узбекистан, Ташкент, улица Янгизамон	273
220	41.363550	69.325480	Узбекистан, Ташкент, 1-й проезд Сохибкор	274
221	41.328068	69.304665	Узбекистан, Ташкент, улица Аккурган, 25	276
222	41.326540	69.228570	Узбекистан, Ташкент, улица Беруни, 3А	277
223	41.388767	69.227090	Узбекистан, Ташкент, Олмазорский район, махалля Ахил	278
224	41.290836	69.173160	Узбекистан, Ташкент, Учтепинский район, махалля Бирлик	279
225	41.293050	69.212006	Узбекистан, Ташкент, улица Катартал, 60	280
226	41.338650	69.369700	Узбекистан, Ташкент, Мирзо-Улугбекский район, массив Карасу, 1-й квартал, 1А	281
227	41.311770	69.192850	Узбекистан, Ташкент, 1-й проезд Маннона Уйгура, 57	282
228	41.333145	69.344150	Узбекистан, Ташкент, улица Зайтун, 5	286
229	41.357970	69.324630	Узбекистан, Ташкент, 3-й проезд Богистон, 2	287
230	41.325380	69.328710	Узбекистан, Ташкент, Кибрайская улица, 7Б	288
231	41.366886	69.314750	Узбекистан, Ташкент, Юнусабадский район, массив Юнусабад, 18-й квартал, 31	290
232	41.354588	69.358765	Узбекистан, Ташкент, Военный городок	127
233	41.363186	69.179400	Узбекистан, Ташкент, Олмазорский район, массив Шифокорлар Шахарчаси, 7	291
234	41.281048	69.202576	Узбекистан, Ташкент, улица Катартал, 28	292
235	41.266186	69.153130	Узбекистан, Ташкент, Учтепинский район, массив Чиланзар, 31-й квартал, 52	294
236	41.300022	69.286080	Узбекистан, Ташкент, Мирабадский район, махалля Мовароуннахр	295
\.


--
-- Data for Name: notification_chats; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.notification_chats (chat_id, chat_title) FROM stdin;
-616274168	icegoldgroup
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.order_items (id, order_id, dish_id, count) FROM stdin;
2	2	10	1
3	2	4	1
4	3	2	5
12	9	8	5
16	13	8	8
19	15	54	9
25	21	7	2
27	23	8	2
28	23	44	5
29	24	45	2
30	24	42	5
33	5	18	1
34	5	34	1
35	5	42	5
36	5	33	1
40	27	34	5
41	27	44	6
42	27	50	8
46	29	44	5
47	29	20	5
48	29	2	8
49	29	6	8
50	30	34	2
51	30	44	2
52	30	53	3
53	31	45	1
54	31	34	2
55	31	50	7
56	32	45	2
57	32	38	4
58	32	54	8
59	33	41	5
60	33	45	6
61	33	50	8
72	37	39	6
73	37	44	9
74	37	34	5
87	40	45	6
88	40	38	6
89	40	50	5
101	43	45	5
102	43	36	6
103	43	50	1
104	44	45	4
105	44	53	3
106	44	34	8
110	46	34	7
111	46	42	2
112	46	52	1
113	46	43	2
114	46	39	1
142	54	1	2
143	54	2	5
144	54	84	2
168	55	82	5
169	56	34	3
170	56	95	5
171	57	34	5
172	57	1	2
173	57	69	4
174	57	98	6
175	58	78	2
176	53	39	2
187	63	1	1
188	64	1	1
189	65	78	1
190	65	1	1
191	66	1	1
192	66	75	1
193	67	1	1
194	68	81	1
195	68	59	1
196	68	1	1
197	69	56	1
198	69	90	1
199	69	1	1
200	69	6	1
201	70	1	1
202	70	69	1
204	72	75	1
205	71	1	1
206	73	1	1
207	74	1	1
210	76	34	1
211	76	72	1
212	75	1	1
213	75	2	1
214	75	70	1
215	77	1	2
216	78	1	2
217	79	1	1
218	79	2	1
219	80	2	1
220	80	90	1
221	81	32	1
222	82	32	9
224	84	59	1
225	84	93	1
226	84	2	1
227	85	90	1
228	86	35	1
229	87	34	3
230	87	2	1
232	89	53	2
233	90	2	1
234	90	1	1
235	91	1	1
236	88	38	1
237	88	2	1
238	92	1	1
239	92	78	1
240	93	90	1
241	94	87	1
242	94	57	1
243	95	45	1
244	95	35	1
245	96	81	1
246	97	1	2
247	98	46	1
248	98	38	1
249	98	2	1
250	99	1	1
251	100	1	1
252	100	53	1
253	101	2	1
254	101	85	1
255	101	35	1
256	102	1	1
257	102	2	1
258	103	93	1
259	103	99	2
260	104	1	1
261	104	2	1
262	105	56	1
263	105	2	1
265	107	1	1
266	107	58	1
268	109	84	4
269	109	61	1
270	110	60	5
271	110	4	1
272	110	68	1
273	110	2	1
276	112	56	1
277	111	6	1
278	113	97	1
279	114	34	1
280	115	78	1
281	115	1	1
282	116	59	1
283	116	5	1
284	116	68	1
285	117	1	1
286	118	90	1
287	119	50	1
288	119	32	1
289	119	2	1
290	119	70	1
298	122	56	1
299	121	3	2
300	121	7	2
301	121	69	5
302	121	56	2
303	121	90	2
304	121	5	1
305	123	93	1
306	123	42	1
307	123	1	1
308	124	2	2
309	125	53	1
310	125	7	1
311	126	59	2
313	128	56	1
314	128	35	1
316	130	59	1
317	130	85	1
318	129	1	1
319	129	50	1
320	129	56	1
321	129	87	1
322	129	80	1
323	131	50	1
324	131	56	1
325	131	87	1
326	131	80	1
327	132	2	1
328	132	53	1
329	133	2	1
330	133	79	1
331	133	5	2
332	134	3	1
335	136	90	1
336	136	1	1
337	137	93	1
338	138	93	1
339	106	1	1
340	106	2	1
341	106	60	1
342	139	2	1
343	140	1	1
344	141	94	1
345	120	95	1
346	120	92	1
347	142	44	1
349	143	1	1
350	144	59	1
351	135	98	1
352	145	53	1
353	145	3	1
354	146	1	2
355	147	1	1
356	148	54	1
357	148	72	1
358	148	1	1
359	149	32	1
360	149	1	1
361	150	98	1
362	151	2	1
363	152	1	2
365	154	90	1
366	154	38	1
367	155	1	2
368	156	91	1
369	156	55	1
370	157	1	1
371	157	84	1
372	158	1	2
373	158	2	1
376	160	56	1
377	160	35	1
378	160	93	1
379	160	99	1
380	160	70	1
381	160	98	1
382	161	54	1
384	162	56	1
385	163	1	1
386	163	56	1
387	163	2	1
388	164	56	2
389	159	1	1
390	159	97	1
391	159	2	1
392	165	53	1
393	166	2	2
394	166	87	1
395	167	7	1
396	168	75	2
397	168	1	2
398	168	97	2
399	169	90	2
400	169	1	1
403	170	72	2
404	170	2	2
405	153	1	1
406	171	70	1
408	172	68	1
409	173	56	1
410	174	1	1
411	175	34	1
412	176	1	2
413	176	50	1
415	177	68	1
416	178	68	1
417	179	68	1
418	180	1	1
419	180	75	1
420	181	68	1
421	182	56	4
422	183	56	4
423	184	59	1
424	185	72	1
425	185	84	2
426	185	75	1
427	186	1	4
428	187	78	1
429	187	69	1
430	187	4	1
431	188	1	1
432	189	1	1
433	190	34	2
434	191	75	1
435	191	34	2
436	192	56	1
437	192	93	2
438	193	1	1
439	194	68	1
440	195	68	1
441	195	33	1
442	108	1	1
443	196	1	2
444	197	1	2
445	197	5	4
446	198	2	1
447	198	1	1
448	198	32	1
449	199	1	1
450	199	70	1
451	199	63	1
452	199	56	1
453	199	69	1
454	200	4	1
455	201	72	1
457	203	6	1
458	203	70	1
459	202	1	2
460	204	35	1
461	205	35	1
462	206	56	1
463	206	90	1
464	206	5	1
465	206	1	1
466	207	2	1
467	207	90	1
468	207	56	1
469	208	1	3
470	209	84	1
471	209	1	1
472	210	35	1
473	211	90	1
474	211	35	1
475	212	1	1
476	213	1	1
477	214	1	2
478	215	59	1
479	215	5	1
480	215	68	1
482	217	2	1
483	217	1	1
484	218	1	2
485	219	59	1
486	220	84	1
487	220	44	1
488	221	1	2
489	221	44	1
490	222	1	1
491	222	34	1
492	222	72	1
493	223	1	1
498	225	44	1
499	224	93	1
500	224	96	1
501	224	56	1
502	224	34	1
503	226	2	1
504	226	38	1
505	227	1	1
506	227	56	1
507	228	90	2
508	229	53	1
509	229	90	1
510	229	4	1
511	216	72	1
512	230	32	1
513	230	59	1
514	231	35	1
515	231	81	1
516	51	68	1
517	51	82	3
518	232	1	2
519	233	1	2
520	233	33	1
522	235	56	2
523	235	90	2
524	235	1	2
525	236	34	1
526	236	4	2
527	236	5	2
528	236	3	2
529	236	6	2
531	238	1	1
532	239	1	2
533	239	72	2
534	240	35	2
535	240	71	2
536	241	56	2
537	241	1	2
538	242	2	1
539	242	68	1
540	243	75	1
541	243	44	1
542	243	97	1
543	243	78	1
544	237	1	1
545	237	69	1
546	244	2	1
547	245	1	1
548	246	38	2
549	246	97	2
550	247	32	1
551	247	59	1
552	248	1	1
553	248	32	1
554	248	56	1
555	248	35	1
556	249	33	1
557	249	59	1
558	249	1	1
559	250	1	2
560	250	56	1
561	250	84	1
562	251	1	2
563	252	1	5
564	252	3	2
565	252	4	3
566	252	93	5
567	253	90	1
568	253	1	1
569	254	34	1
570	254	72	1
571	254	3	1
572	254	5	1
573	254	4	1
574	255	1	2
575	256	97	1
576	256	56	1
577	257	1	1
578	257	69	1
579	258	1	1
580	259	1	3
581	260	1	1
582	261	1	1
583	262	93	1
584	262	59	1
585	263	1	2
586	264	2	1
587	264	1	1
588	265	1	2
589	265	71	1
590	265	68	1
591	266	93	1
592	266	1	1
593	266	68	2
594	267	32	1
595	268	56	2
596	268	90	1
597	269	84	1
598	269	1	1
599	270	1	1
600	271	53	6
601	272	2	1
602	272	1	1
603	273	44	1
604	273	4	2
605	273	68	1
606	274	1	2
607	275	7	1
608	275	3	1
610	276	1	1
611	277	1	1
612	278	50	1
613	278	59	1
614	278	1	1
615	279	1	1
616	234	1	1
617	280	59	1
618	281	2	1
619	281	1	1
620	282	56	2
621	283	34	2
622	284	1	2
623	285	90	4
624	286	34	1
625	286	72	1
626	287	38	1
627	288	56	2
628	288	69	2
629	288	72	2
630	289	87	1
631	289	34	1
632	83	81	5
633	290	1	1
634	127	35	1
635	291	1	1
636	291	90	1
637	292	1	1
638	292	59	1
639	293	2	6
640	294	58	1
641	294	56	1
642	295	1	1
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.orders (id, user_id, user_name, shipping_method, payment_method, address_txt, phone_number, confirmed, confirmation_date, delivery_price, total_amount) FROM stdin;
2	518109259	Анвар	delivery	cash		998909272673	1	2020-08-01		56000.0
3	64925540	Владимир	delivery	cash	Шайхонтахур	+998935856774	1	2020-08-01		240000.0
5	518109259	Анвар	delivery	cash		998909272673	1	2020-08-02		291000.0
9	64925540	Владимир	delivery	cash	Шайхонтахур	+998935856774	1	2020-08-02		125000.0
13	64925540	Владимир	delivery	cash	шайхонтахур, казирабад, дом 4	+998935856774	1	2020-08-02		200000.0
15	64925540	Владимир	delivery	cash	шайхонтахур	+998935856774	1	2020-08-02		297000.0
21	64925540	Владимир	delivery	cash	локая	+998935856774	1	2020-08-02		48000.0
23	64925540	Владимир	delivery	cash	Шайхонтахур	+998935856774	1	2020-08-02		240000.0
24	64925540	Владимир	delivery	cash	Шайхонтахур	+998935856774	1	2020-08-02		266000.0
27	64925540	Владимир	delivery	cash	моя локация	+998935856774	1	2020-08-02		632000.0
29	64925540	Владимир	delivery	cash	Шайхонтахур	+998935856774	1	2020-08-02		886000.0
30	518109259	Анвар	delivery	cash		998909272673	1	2020-08-02		231000.0
31	64925540	Владимир	delivery	cash	шайхонтахур	+998935856774	1	2020-08-02		325000.0
32	64925540	Владимир	delivery	cash	ш	+998935856774	1	2020-08-02		452000.0
33	64925540	Владимир	delivery	cash	ш	+998935856774	1	2020-08-02		682000.0
37	64925540	Владимир	delivery	cash	ш	+998935856774	1	2020-08-02		650000.0
40	64925540	Владимир	delivery	cash	ш	+998935856774	1	2020-08-02		561000.0
43	64925540	Владимир	delivery	cash	ш	+998935856774	1	2020-08-02		391000.0
44	64925540	Владимир	delivery	cash		+998935856774	1	2020-08-02		475000.0
46	518109259	Анвар	delivery	cash		998909272673	1	2020-08-02		409000.0
51	202624021		delivery				0			
53	816743	Dg	delivery	cash	Test	998901001616	1	2020-08-05		58000.0
54	64925540	Владимир	delivery	cash	Шайхонтахур	+998935856774	1	2020-08-05		400000.0
55	64925540	Владимир	delivery	cash	привет	+998935856774	1	2020-08-05		190000.0
56	102570577	Zoir	delivery	cash		998977231618	1	2020-08-05		292000.0
57	518109259	Анвар	delivery	cash		998909272673	1	2020-08-05		457000.0
58	64925540	Владимир	delivery	cash	в	+998935856774	1	2020-08-05		76000.0
63	888860		delivery				0			
64	697481	Feruza	delivery	cash		998946805333	1	2020-08-08		52000.0
65	495508670	Mushtariy	delivery	cash		998909460087	1	2020-08-08		90000.0
66	1047062152	Xadicha	delivery	cash	Komolon mahalla Xabibi kocha 16 uy	998946754447	1	2020-08-09		80000.0
67	480558355	+998907888656	delivery	cash		+998907888656	1	2020-08-09		52000.0
68	635083348	Feride	delivery	cash		998993227544	1	2020-08-09		132000.0
69	434675053	Sitora Shaxobiddinova	delivery	cash		998907888552	1	2020-08-09		159000.0
70	883393724	Komola	delivery	cash		998935719955	1	2020-08-09		77000.0
71	1025714550	Noila	delivery	cash	Sergeli sputnik 3 46-8kv	998909282958	1	2020-08-09		52000.0
72	830522641		delivery				0			
73	732088389		delivery	cash		998998548873	0			
74	33826188		delivery	payme		998909556805	0			
75	631766780	Nazokat	delivery	cash		998909962562	1	2020-08-09		123000.0
76	450791988	Mohira	delivery	cash		998903516997	1	2020-08-09		57000.0
77	853524041	Мирсадулла	delivery	payme		998998109333	1	2020-08-09		104000.0
78	541997393	Egamberdiyeva Mohira	delivery	payme		998998390968	1	2020-08-09		104000.0
79	783851934	Dinara	delivery	cash		998909955909	1	2020-08-09		98000.0
80	321654067		delivery		Мирзо улугбекский район Ялангач 69 кв25		0			
81	1170067137		delivery	cash		998909352288	0			
82	875154984		delivery				0			
83	64925540		delivery			+998935856774	0			
84	162099531	Akbar	delivery	payme		998909717978	1	2020-08-10		129000.0
85	665298910		delivery	payme		998990275840	0			
86	728577333		delivery	cash		998937042407	0			
87	702261039	Madina	delivery	cash		998977094000	1	2020-08-10		133000.0
88	249576911	Шахзод	delivery	payme		998977350384	1	2020-08-10		75000.0
89	631270439	Elyor	delivery	cash		998974071234	1	2020-08-10		68000.0
90	277458432		delivery	payme		998 90 353 81 51	0			
91	635083348	Feride	delivery	cash		998993227544	1	2020-08-10		52000.0
92	677139217	Yulduz	delivery	cash		998930039999	1	2020-08-10		90000.0
93	998436613	Xusan	delivery	cash	Arintir oxun boboyev	99894 6145614	1	2020-08-10		41000.0
94	456547805	Юлия	delivery	cash		998909593993	1	2020-08-10		75000.0
95	1342062712	Farangiz	delivery	cash	Yunusoboda 19 31 81	+998974250889	1	2020-08-10		85000.0
96	109299250	Шахризода	delivery	payme	Матбуотчилар, 32\r\nПойтахт ТРЦ капитал банк	998909654962	1	2020-08-10		38000.0
97	1013688936	sher	delivery	cash		998990013116	1	2020-08-10		104000.0
98	51854	Ibrohim	delivery	cash	Нурафшон 22 уй	998998213333	1	2020-08-10		114000.0
99	577092273	Лола	delivery	cash		998998688869	1	2020-08-10		52000.0
100	2215132	Малика	delivery	payme		998911912867	1	2020-08-11		86000.0
101	417500559	Ленара	delivery	cash		+998974709403	1	2020-08-11		125000.0
102	1067308982	Gulnoza	delivery	payme		998900112121	1	2020-08-11		98000.0
103	38033923	Мохира	delivery	payme		998935782132	1	2020-08-11		77000.0
104	1067308982	Gulnoza	delivery	cash		998900112121	1	2020-08-11		98000.0
105	967156349	Shahzoda	delivery	cash		998935680214	1	2020-08-11		88000.0
106	967156349	Shahzoda	delivery	cash		998935680214	1	2020-08-13		140000.0
107	326694372		delivery				0			
108	201458407		delivery			+998 90 900 00 00	0			
109	1044472599	Юлдуз	delivery	cash		+998935408017	1	2020-08-11		174000.0
110	633288098		delivery	payme		998974009909	0			
111	1010290310	Zebuniso	delivery	cash		998978578787	1	2020-08-11		24000.0
112	185170494		delivery	payme		998977544002	0			
113	1010290310	Zebuniso	delivery	cash		998978578787	1	2020-08-11		33000.0
114	735995	Dilovar	delivery	cash		998909995674	1	2020-08-12		29000.0
115	677139217	Yulduz	delivery	cash		998930039999	1	2020-08-11		90000.0
116	1057308049	Madina	delivery	cash		998973334368	1	2020-08-11		89000.0
117	677139217	Yulduz	delivery	cash		998930039999	1	2020-08-12		52000.0
118	1024387462	Baron	delivery	cash		998977211010	1	2020-08-12		41000.0
119	842738606		delivery	cash		998935076925	0			
120	674437582		delivery	cash		+998903562831	0			
121	474394698	Kamola	delivery	cash		998998147727	1	2020-08-12		428000.0
122	639336999		delivery				0			
123	1034076869	Abduhamid	delivery	cash	Qatortol parus	998977911999	1	2020-08-12		132000.0
124	51854	Ibrohim	delivery	cash		998998213333	1	2020-08-12		92000.0
125	1342062712	Farangiz	delivery	cash		+998999211990	1	2020-08-12		58000.0
126	806862192	Бахром	delivery	cash		+998935155835	1	2020-08-12		84000.0
127	776576315		delivery	payme		998911924404	0			
128	56222324	Shohruh	delivery	cash		998913304004	1	2020-08-12		88000.0
129	528110896		delivery	cash		998933947788	0			
130	985851871	Madina	delivery	cash		998998841402	1	2020-08-13		75000.0
131	1993055	Barno	delivery	cash		998935021188	1	2020-08-13		147000.0
132	994383088	Nurilloh	delivery	cash		+998974443490	1	2020-08-13		80000.0
133	1199303	Валерия	delivery	cash		998935444346	1	2020-08-13		138000.0
134	1199303	Валерия	delivery	cash		998935444346	1	2020-08-13		31000.0
135	735995	Dilovar	delivery	payme		998909995674	1	2020-08-14		18000.0
136	1035376208	Farangiz	delivery	cash		998994814095	1	2020-08-13		93000.0
137	805112552	Mehribon	delivery	cash		998941255552	1	2020-08-13		41000.0
138	879926986		delivery				0			
139	44455601	Ravshanjon	delivery	cash		998974111989	1	2020-08-13		46000.0
140	44455601	Ravshanjon	delivery	cash		998974111989	1	2020-08-13		52000.0
141	686636762	991111779	delivery	cash		998991111779	1	2020-08-14		41000.0
142	853545025		delivery				0			
143	892771117	+998931727544	delivery	payme		998931727544	1	2020-08-14		52000.0
144	692829189	Nilufar	delivery	cash		998909462175	1	2020-08-14		42000.0
145	1394764430	Islom	delivery	cash		998900375155	1	2020-08-14		65000.0
146	311304724	Robiya	delivery	cash		998909980502	1	2020-08-15		104000.0
147	1129346981	Сабина	delivery	cash		998977318224	1	2020-08-15		52000.0
148	780884856	Marhabo	delivery	cash		998974073128	1	2020-08-15		114000.0
149	2954263		delivery				0			
150	735995	Dilovar	delivery	payme		998909995674	1	2020-08-15		18000.0
151	106604584	Hojiakbar	delivery	cash		998946239699	1	2020-08-15		46000.0
152	1038255611	Ислом	delivery	cash		998974010204	1	2020-08-15		104000.0
153	76777495	Дмитрий	delivery	payme		998909879930	1	2020-08-18		52000.0
154	985851871	Madina	delivery	cash		998998841402	1	2020-08-15		70000.0
155	222470719	Nigora	delivery	cash		998977600030	1	2020-08-15		104000.0
156	1064406105		delivery	cash			0			
157	495508670	Mushtariy	delivery	cash		998909460087	1	2020-08-15		85000.0
158	51854	Ibrohim	delivery	cash		998998213333	1	2020-08-15		150000.0
159	398191053	Xusnora	delivery	cash		998911663223	1	2020-08-17		131000.0
160	7322737	Азиз	delivery	cash		998909553519	1	2020-08-16		190000.0
161	807905068	Севинч	delivery	cash		998935764660	1	2020-08-16		34000.0
162	237340668		delivery				0			
163	785342339		delivery				0			
164	508483061	Муниса	delivery	cash		998935576676	1	2020-08-17		84000.0
165	346621489		delivery	cash		998935409324	0			
166	1014372002	Мадина	delivery	cash		998903565412	1	2020-08-18		125000.0
167	72636478		delivery	cash		998977601103	0			
168	461824401	Iroda	delivery	cash		+998935303030	1	2020-08-18		226000.0
169	222470719	Nigora	delivery	payme		998977600030	1	2020-08-18		134000.0
170	1358147870	Mubina	delivery	cash		998909157060	1	2020-08-18		148000.0
171	465632014		delivery				0			
172	735995	Dilovar	delivery	payme		998909995674	1	2020-08-19		20000.0
173	711946568	Iqbola	delivery	cash		998999912725	1	2020-08-19		42000.0
174	1089781112	Висола	delivery	cash	Yapon bog’i	998904048330	1	2020-08-19		52000.0
175	659909758		delivery				0			
176	720736753	Bahodir	delivery	cash		998901856762	1	2020-08-19		138000.0
177	735995	Dilovar	delivery	payme		998909995674	1	2020-08-19		20000.0
178	735995	Dilovar	delivery	payme		998909995674	1	2020-08-19		20000.0
179	735995	Dilovar	delivery	payme		998909995674	1	2020-08-19		20000.0
180	559484236	Nilufar	delivery	cash		998977111859	1	2020-08-20		80000.0
181	735995	Dilovar	delivery	payme		998909995674	1	2020-08-20		20000.0
182	508483061	Муниса	delivery	cash	Ресторан:Трюфель	998935576676	1	2020-08-20		168000.0
183	973984579	/start	delivery	payme		998998874911	1	2020-08-20		168000.0
184	456096813		delivery				0			
185	985851871	Madina	delivery	payme		998998841402	1	2020-08-20		122000.0
186	488987326		delivery	payme		998977111155	0			
187	807905068	Севинч	delivery	cash		998935764660	1	2020-08-20		94000.0
188	742736529	Turgunova Shahrizoda	delivery	cash		998991012210	1	2020-08-20		52000.0
189	1192081954		delivery	cash			0			
190	374539657	Камола	delivery	cash		998903530018	1	2020-08-21		58000.0
191	374539657	Камола	delivery	cash		998903530018	1	2020-08-21		86000.0
192	712076972	Nigina	delivery	cash		998915570100	1	2020-08-21		124000.0
193	523948893	Õğiloy	delivery	cash		998909331739	1	2020-08-21		52000.0
194	735995	Dilovar	delivery	payme		998909995674	1	2020-08-21		20000.0
195	735995	Dilovar	delivery	cash		998909995674	1	2020-08-21		56000.0
196	1046197926		delivery	cash		998994382299	0			
197	130601865		delivery	payme		+998977777716	0			
198	51855712	Виктория	delivery	cash		998909512216	1	2020-08-22		164000.0
199	63914585	Снежана	delivery	cash		998903158242	1	2020-08-22		165000.0
200	208659570		delivery				0			
201	787596435		delivery				0			
202	841762185	Komiljon	delivery	cash		998998456911	1	2020-08-23		104000.0
203	398161966		delivery				0			
204	1122741162	nodira	delivery	cash	kish mish kafe	+998998684844	1	2020-08-24		46000.0
205	115037958	Sharofiddin	delivery	cash		+998994538023	1	2020-08-24		46000.0
206	937159959	Rahmatillo	delivery	cash		998976902177	1	2020-08-24		162000.0
207	635083348	Feride	delivery	cash		998993227544	1	2020-08-24		129000.0
208	853524041	Мирсадулла	delivery	cash		998998109333	1	2020-08-24		156000.0
209	495508670	Mushtariy	delivery	cash		998909460087	1	2020-08-24		85000.0
210	999270777	Nilufar	delivery	cash		998990550378	1	2020-08-25		46000.0
211	304331745	Tölqin	delivery	cash		+998973303434	1	2020-08-25		87000.0
212	659577046	назокат	delivery	cash		998993050177	1	2020-08-25		
213	530406280	Мафтуна	delivery	cash		998971014952	1	2020-08-25		52000.0
214	723207829		delivery	cash		998946547115	0			
215	1057308049	Madina	delivery	cash		998973334368	1	2020-08-25		89000.0
216	1294618325		delivery				0			
217	580327136		delivery	cash			0			
218	1066852197	Sardor	delivery	cash		998990008062	1	2020-08-26		104000.0
219	834171401	Nazosh	delivery	cash		998998851317	1	2020-08-26		42000.0
220	650797819		delivery	cash		998977126779	0			
221	677139217	Yulduz	delivery	cash	улица мустакиллик 6/28	998930039999	1	2020-08-26		143000.0
222	1623486	Икром	delivery	payme		998977484684	1	2020-08-26		109000.0
223	1066852197	Sardor	delivery	cash		998990008062	1	2020-08-27		52000.0
224	332569044	998974459282	delivery	cash	Яккасарайский район братский могила хазинабог 67	998974459282	1	2020-08-27		155000.0
225	119309130	дадахожаева зилола	delivery	cash		998997205662	1	2020-08-27		39000.0
226	1207426620		delivery				0			
227	222470719	Nigora	delivery	cash		998977600030	1	2020-08-27		94000.0
228	1065747543	Komola	delivery	cash		998903934474	1	2020-08-27		82000.0
229	575408119	Elmira	delivery	payme		998998038460	1	2020-08-28		106000.0
230	623501868		delivery	cash		+998936050000	0			
231	1031175996		delivery		ð Оформить за		0			
232	789034008	Holida	delivery	cash		998974458982	1	2020-08-29		104000.0
233	655138385	Bahodir	delivery	cash		998946902622	1	2020-08-30		140000.0
234	1386729457		delivery			+998974901002	0			
235	497007594	/stop	delivery	cash		998946650099	1	2020-08-30		270000.0
236	101667102	Шерзод	delivery	payme		998977027777	1	2020-08-30		255000.0
237	40044213	Ёркиной	delivery	cash		998909750072	1	2020-08-31		77000.0
238	659696908	Sara	delivery	cash		998909446166	1	2020-08-30		52000.0
239	63961	Диля	delivery	cash		998977337440	1	2020-08-30		160000.0
240	63961	Диля	delivery	cash		998977337440	1	2020-08-30		142000.0
241	373712050	Хумаюн	delivery	cash		998973301212	1	2020-08-30		188000.0
242	1028288652	shahrizoda	delivery	cash		998990999616	1	2020-08-31		66000.0
243	1034076869	Abduhamid	delivery	cash		998977911999	1	2020-08-31		138000.0
244	40044213		delivery	payme		998909750072	0			
245	1198101713	Madina	delivery	cash		+998993734343	1	2020-08-31		
246	1110033868		delivery				0			
247	877081752	Наргиза	delivery	payme		998971460077	1	2020-08-31		108000.0
248	295396198	Жасур	delivery	cash		+998917870303	1	2020-08-31		206000.0
249	1028960510	Нозима	delivery	cash		998998829020	1	2020-08-31		130000.0
250	1986767	Nodir	delivery	cash		998933990220	1	2020-08-31		179000.0
251	517545777	Шохсанам Ибрагимова	delivery	cash		+998903382818	1	2020-08-31		104000.0
252	1238428198		delivery				0			
253	1670606	Dono	delivery	cash		998911664554	1	2020-09-01		93000.0
254	58208356		delivery				0			
255	222470719	Nigora	delivery	cash		998977600030	1	2020-09-01		104000.0
256	142689547	Laziza	delivery	cash		998977471324	1	2020-09-02		75000.0
257	795612417	/start	delivery	payme		998903937177	1	2020-09-02		77000.0
258	68801773	rano	delivery	payme		+998977446004	1	2020-09-03		52000.0
259	7349942	Асаль	delivery	cash		998903555529	1	2020-09-04		156000.0
260	169735979	Шодия	delivery	cash		998977690600	1	2020-09-04		52000.0
261	37598247	Feruza	delivery	cash		998945881088	1	2020-09-04		52000.0
262	1358184776	Bilol	delivery	cash		+998998800772	1	2020-09-04		83000.0
263	593664713	Мумин	delivery	cash		998917700077	1	2020-09-04		104000.0
264	51854	Ibrohim	delivery	cash	Нурафшон 22	998998213333	1	2020-09-04		98000.0
265	1182499136	Gozal	delivery	cash		998903461979	1	2020-09-05		149000.0
266	803282553	Шахзода	delivery	cash		998901220303	1	2020-09-05		133000.0
267	384450944		delivery	payme		998973429119	0			
268	124823685	Saida	delivery	cash		998977032411	1	2020-09-05		
269	495508670	Mushtariy	delivery	cash		998909460087	1	2020-09-05		85000.0
270	632119349		delivery				0			
271	861840906	Nozima	delivery	cash		998915053005	1	2020-09-06		204000.0
272	985300624		delivery				0			
273	464358955		delivery	payme		998906800305	0			
274	745458462	Саодат	delivery	cash		998990717771	1	2020-09-06		104000.0
275	529907638		delivery				0			
276	647323874		delivery	cash		998900023008	0			
277	958304502	Nodira	delivery	cash		998975380107	1	2020-09-07		52000.0
278	1028960510	Нозима	delivery	cash		998998829020	1	2020-09-07		128000.0
279	1380652842	Mastona	delivery	cash		+998900147676	1	2020-09-07		52000.0
280	77988353		delivery				0			
281	164925654	Мадина	delivery	cash		998999787318	1	2020-09-07		98000.0
282	527608137	Abdumajid	delivery	cash		998977753443	1	2020-09-07		84000.0
283	1347837938		delivery	cash	Abay korzinka	998994644870	0			
284	51855712		delivery	cash	Сергели 1, 54 дом, 59 квартира	998909512216	0			
285	344471826	Sora	delivery	cash	чорсу площадь 3 а	998909106087	1	2020-09-08		164000.0
286	1032065627	Shahzodq	delivery	cash		998935441498	1	2020-09-08		57000.0
287	133733347		delivery				0			
288	544101535	Iskander	delivery	cash		998909533333	1	2020-09-08		190000.0
289	954632319		delivery				0			
290	873928306	Nozima	delivery	cash		998935604311	1	2020-09-08		52000.0
291	1203552	Kamola	delivery	cash		998977684546	1	2020-09-09		93000.0
292	88753752	Ширин	delivery	payme		998909371232	1	2020-09-09		94000.0
293	1132959724		delivery				0			
294	1248848934		delivery	cash		998990831132	0			
295	508270977	Милана	delivery	cash		998990551525	1	2020-09-10		52000.0
\.


--
-- Data for Name: registration_requests; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.registration_requests (id, user_id, phone_number, tg_username, username, created_at) FROM stdin;
\.


--
-- Data for Name: user_admins; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.user_admins (id, email, password_hash) FROM stdin;
1	admin@example.com	pbkdf2:sha256:150000$mqgOLfNO$1b9e134780b95a45d6de2e1b74c3326cfc1fe064aaa8fbec24c1aadcabedf720
\.


--
-- Data for Name: user_dish; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.user_dish (user_id, dish_id) FROM stdin;
382857	1
697481	1
736166	1
1670606	1
1697416	1
2301816	1
2753522	1
2954263	1
3712548	1
7349942	1
33826188	1
37598247	1
41257852	1
44455601	1
68801773	1
72636478	1
74509916	1
75716067	1
78582735	1
81927230	1
96010349	1
100190602	1
101524905	1
161536814	1
169735979	1
201384689	1
222470719	1
247103580	1
247260510	1
255465159	1
280232257	1
298441765	1
301386661	1
311723796	1
312452547	1
354406284	1
370388307	1
373712050	1
398191053	1
424255768	1
451095612	1
477831574	1
488987326	1
495508670	1
497007594	1
501558319	1
508270977	1
517545777	1
523948893	1
530406280	1
548728892	1
568320617	1
580327136	1
593664713	1
610162877	1
613589872	1
622920664	1
624007320	1
625299884	1
632119349	1
637455300	1
644115580	1
652482995	1
659577046	1
662808794	1
668359712	1
688702356	1
691188321	1
700371950	1
716800695	1
717403243	1
719801646	1
723207829	1
732088389	1
742736529	1
745458462	1
780884856	1
781396927	1
782748337	1
789034008	1
796590081	1
802131373	1
805264003	1
832244828	1
841762185	1
846768710	1
853524041	1
857840475	1
873928306	1
883094294	1
889917708	1
892771117	1
899853592	1
905595505	1
925740928	1
937159959	1
956517390	1
968650671	1
975830453	1
977716421	1
985300624	1
997210522	1
1002178100	1
1009993361	1
1013074756	1
1013688936	1
1035376208	1
1038255611	1
1046197926	1
1053979100	1
1066852197	1
1073531636	1
1089781112	1
1101295389	1
1105524412	1
1106206798	1
1106534904	1
1129346981	1
1180332414	1
1186969535	1
1192081954	1
1198101713	1
1200923694	1
1208782613	1
1219365499	1
1233414130	1
1252962808	1
1254122256	1
1275025094	1
1335899436	1
1380652842	1
1386729457	1
4036197	2
40044213	2
74938280	2
96321455	2
105756298	2
106604584	2
111404289	2
155962879	2
164925654	2
168322157	2
190643941	2
202624021	2
220461404	2
236710001	2
249576911	2
265550912	2
302616358	2
321654067	2
369245025	2
430924505	2
466083330	2
496181524	2
496518276	2
560404568	2
564698869	2
590751141	2
606574614	2
628662870	2
633288098	2
665298910	2
666192848	2
671390463	2
678806736	2
701385488	2
702261039	2
748518352	2
785342339	2
797434165	2
813230318	2
817653660	2
856415853	2
877334939	2
895380287	2
903060273	2
909692811	2
930074438	2
954765698	2
967582045	2
987525613	2
992586225	2
1025714550	2
1032065627	2
1067308982	2
1132959724	2
1153038347	2
1271427851	2
1279756135	2
1297155763	2
1358147870	2
1199303	3
56008096	3
63071124	3
67870712	3
132150951	3
175774785	3
284886975	3
295396198	3
366163369	3
430040542	3
469492761	3
527608137	3
561976955	3
711946568	3
795587209	3
998576686	3
1004697359	3
1207426620	3
1360196135	3
1394764430	3
404777	4
1138264	4
21564297	4
58208356	4
81730797	4
98652663	4
208659570	4
575408119	4
631602425	4
672244132	4
761336078	4
807905068	4
925618965	4
1236615021	4
1242044258	4
130601865	5
254184003	5
290155336	5
322923514	5
344753329	5
541997393	5
563992255	5
1044472599	5
1830652	6
77752470	6
101667102	6
314601227	6
434675053	6
612518382	6
654822497	6
667027966	6
783851934	6
829951812	6
913817843	6
994266624	6
1076835740	6
1122741162	6
2215132	7
214725095	7
231919458	7
260429456	7
341746147	7
386783578	7
464117397	7
473416257	7
557457484	7
669734439	7
805112552	7
924276602	7
947461081	7
957267123	7
1110465922	7
1342062712	7
33417447	32
654417280	32
717212945	32
812881339	32
875154984	32
735995	33
816743	33
446146970	33
655138385	33
936382329	33
1047062152	33
1913349	34
34013412	34
45198996	34
62268645	34
76777495	34
84551212	34
216422834	34
221631579	34
268018976	34
332569044	34
347095851	34
374539657	34
419397254	34
446478820	34
458865556	34
465632014	34
515588435	34
518109259	34
592847796	34
616840140	34
647323874	34
659909758	34
673142023	34
720191394	34
801784773	34
873087515	34
876153005	34
912464405	34
953426239	34
956039575	34
991708613	34
1040882142	34
1045094698	34
1074618010	34
1294618325	34
1325778149	34
1347837938	34
9822359	35
51855712	35
56222324	35
74438538	35
115037958	35
304331745	35
360449283	35
461303523	35
483404120	35
533631673	35
725926695	35
728577333	35
776576315	35
842356597	35
996558256	35
999270777	35
1086489178	35
1005127798	36
1239222834	36
133733347	38
149312635	38
198336525	38
552045600	38
618102499	38
651880188	38
667214956	38
780706549	38
817028728	38
854969691	38
991762328	38
991985389	38
998092165	38
1021601371	38
1029442868	38
1088270118	38
1095619607	38
1107969944	38
1148234934	38
1377804508	38
480558355	39
666407236	39
824768428	39
197188043	41
301895461	41
305737609	41
330605486	41
446792260	41
494387375	41
527341100	41
888860	42
658055554	42
760913092	43
1080833725	43
25240844	44
53982452	44
109499387	44
117985025	44
119309130	44
277745212	44
324502573	44
411268426	44
650797819	44
677139217	44
702318126	44
707246645	44
853545025	44
877703839	44
879926986	44
1158968437	44
1173450490	44
170993104	45
75981474	46
449962536	46
992382738	46
1364085299	46
3036621	50
64925540	50
119068282	50
231448569	50
432901480	50
573317968	50
718605731	50
720736753	50
870694682	50
971901804	50
1153673504	50
1170067137	50
1285912930	50
1315459097	50
65830674	53
77247081	53
269861608	53
336199578	53
346621489	53
350858796	53
473593032	53
615910111	53
631270439	53
644947405	53
663049866	53
723186466	53
815089260	53
843523805	53
933810605	53
994383088	53
1007073972	53
1137867467	53
948967286	55
1064406105	55
84985	56
1356858	56
2478155	56
9777056	56
70836411	56
123026072	56
125789854	56
142689547	56
185170494	56
191733231	56
221034074	56
255643719	56
351264292	56
462699805	56
488279533	56
501872869	56
508483061	56
577092273	56
635083348	56
658505102	56
761640629	56
851432881	56
906899925	56
973984579	56
1046282459	56
1064667684	56
1110033868	56
1135294174	56
1141495967	56
1383722099	56
231463850	57
456547805	57
714383063	57
361634380	58
646166685	58
1219020905	58
2703474	59
3282623	59
77988353	59
88753752	59
119232035	59
398161966	59
456096813	59
475877782	59
586359485	59
623501868	59
652479438	59
653609321	59
692829189	59
761488651	59
765875620	59
806862192	59
834171401	59
877081752	59
980225110	59
1044834717	59
1060229385	59
1062619587	59
1358184776	59
362508112	60
967156349	60
995016621	60
421955254	61
326694372	65
651124733	65
72684587	66
93691754	66
262302725	66
277458432	66
331338712	66
342217193	66
565484896	66
630485513	66
639336999	66
743979450	66
958304502	66
1071418365	66
1240123642	66
201458407	68
282068243	68
299491470	68
410587771	68
423925390	68
464358955	68
567412915	68
612886413	68
726614016	68
748127078	68
803282553	68
1028288652	68
1057308049	68
1182499136	68
51854	69
895990	69
75178365	69
104613592	69
334372411	69
384450944	69
474394698	69
693962405	69
728862754	69
795612417	69
821118523	69
883393724	69
951226883	69
955289219	69
1110955015	69
42162733	70
66795761	70
237340668	70
417500559	70
631766780	70
659696908	70
833238280	70
842738606	70
865964924	70
1010655563	70
1028960510	70
1226264496	70
63961	71
346244	71
457688828	71
685247013	71
861005517	71
1017018673	71
1248848934	71
1623486	72
81959386	72
450791988	72
463621855	72
544101535	72
695440843	72
786667933	72
787596435	72
811532990	72
812152460	72
900595486	72
1358477835	72
125881160	75
285376202	75
559484236	75
640666162	75
704488465	75
706844800	75
830522641	75
871172161	75
985851871	75
1042912827	75
1221670480	75
304399344	76
431976116	76
569175251	76
2548937	78
117521576	78
207522298	78
261342879	78
265772264	78
309267023	78
520644391	78
529907638	78
591094948	78
763050020	78
848454748	78
882207728	78
1034076869	78
1993055	80
528110896	80
1233292570	80
44234689	81
109299250	81
290469875	81
583411442	81
615011731	81
740680204	81
762992232	81
818011345	81
848733647	81
985097565	81
1031175996	81
1138871296	81
1169012778	81
273528409	82
330704912	82
468580284	82
563982823	82
631909445	82
1120168973	83
1986767	84
206093155	84
252370547	84
1019268191	84
1224702788	84
77578750	87
242747382	87
390852170	87
518973604	87
667195561	87
725743074	87
780236531	87
861840906	87
954632319	87
1014372002	87
1165353248	87
1307130589	87
311304724	88
324260934	89
1203552	90
2582088	90
63914585	90
112896492	90
124823685	90
230268999	90
264184824	90
344471826	90
577477454	90
746677319	90
840636543	90
945874692	90
998436613	90
1007218333	90
1024387462	90
1062793187	90
1065747543	90
1211170776	90
9796302	91
259442603	91
496834329	91
674437582	92
1957730	93
2377401	93
34320884	93
57434681	93
61922295	93
253894186	93
275312221	93
327658966	93
377397458	93
458600651	93
571977469	93
633826806	93
712076972	93
725156955	93
765426842	93
771884635	93
887721954	93
985422184	93
1013851175	93
1067304463	93
1238428198	93
1285826482	93
1374169778	93
56369815	94
76462417	94
465563942	94
686636762	94
102570577	95
998871744	95
10194381	96
71291403	96
385268473	96
672850186	96
714275948	96
868965093	96
870270310	96
873216461	96
1283444236	96
47428827	97
83526466	97
162793756	97
461824401	97
561378253	97
813909907	97
991903472	97
1010290310	97
1271743636	97
1291956675	97
7322737	98
82012131	98
162099531	98
900428242	98
2230335	99
38033923	99
336886195	99
859321779	99
962468737	101
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.users (id, full_user_name, username, phone_number, language, token, confirmed, telegram_id, registration_date) FROM stdin;
51854	Ibrohim	anvaroff1	998998213333	uz		0		2020-08-10
63961	Диля	Dilya0400	998977337440	ru		0		2020-08-30
84985	Javokhir	aydashev	+998998895888	ru		0		2020-08-10
223980	Наима		998909590989	ru		0		2020-09-08
346244	Анастасия		998901760671	ru		0		2020-09-07
378354	Zebo		998909821880	uz		0		2020-08-25
382857	Камила	Kaa0907	998901787815	ru		0		2020-08-28
384694	909006660	Nodir_fx	998909006660	ru		0		2020-08-14
404777	Джамиля		998909028030	ru		0		2020-08-29
697481	Feruza		998946805333	ru		0		2020-08-08
735995	Dilovar	by_dilovar	998909995674	ru		0		2020-08-10
736166	Сарвар	srv_dogma	998977503334	ru		0		2020-08-09
765555	Умид	Vertu8888	998901788844	ru		0		2020-08-11
776066	Дилмира	DilmiraAbdulmalek	998909997233	ru		0		2020-08-09
816743	Dg	SunEdition	998901001616	ru		0		2020-08-05
880280	Сарвар	Arikashirukashi	998998136585	ru		0		2020-08-16
888860	Сабина	Sabino4kaTashmatova	998946398414	ru		0		2020-08-08
895990	Nigora		998911914622	ru		0		2020-08-31
1016047	Зики		+998908078777	ru		0		2020-08-11
1120113	Malika		998909211188	ru		0		2020-08-09
1138264	Ruxsora		+998903580507	ru		0		2020-08-15
1140592	Sardor	Djemo	998909586933	ru		0		2020-08-15
1199303	Валерия	valeriya100992	998935444346	ru		0		2020-08-13
1203552	Kamola		998977684546	uz		0		2020-09-02
1294788	Nargiza		998946686855	uz		0		2020-08-12
1347216	Отабек	SeVeN70	998977160545	ru		0		2020-09-06
1356858	Ильхом	HiddenBurjuy	998977805695	ru		0		2020-08-29
1623486	Икром	i_muminov	998977484684	ru		0		2020-08-26
1670606	Dono	Donowa	998911664554	ru		0		2020-09-01
1697416	Davronbek Rustamov	Rustamov_Davronbek	998935311818	ru		0		2020-08-11
1713391	Anvar	bako_88	998909930040	ru		0		2020-08-26
1728779	Саодат	sardorandhismom	998909500050	ru		0		2020-09-06
1800346	Наргиза		998946505050	ru		0		2020-08-31
1830652	Фарход	Fpppffppp	998946628822	uz		0		2020-08-17
1913349	Асаль		998996119646	ru		0		2020-09-07
1957730	Абдумалик	abdulmalik006	998993933800	ru		0		2020-09-07
1986767	Nodir		998933990220	ru		0		2020-08-31
1993055	Barno		998935021188	ru		0		2020-08-13
2039701	Suxrob	Meliboyevs	998933770955	uz		0		2020-08-09
2114545	Nozima		998935656363	uz		0		2020-09-02
2156661	Mirziyodman		998935757070	uz		0		2020-08-09
2215132	Малика	malika_ikramovna	998911912867	ru		0		2020-08-11
2230335	Olimbek	Bek878	998909855572	uz		0		2020-08-10
2277808	Акмаль		998903748866	ru		0		2020-08-10
2301816	Нигора	Uzaeroports	998901855755	ru		0		2020-08-31
2318343	93/556-16-17		998935561617	ru		0		2020-09-06
2377401	Хуршида	khadjimuratova	998909263790	ru		0		2020-08-31
2392834	Людмила		998911626690	ru		0		2020-08-10
2428248	Sarvar		998998571771	uz		0		2020-08-09
2478155	Юля	jueldita_juli	998909389597	ru		0		2020-08-09
2548937	Shahloxon		998977674533	uz		0		2020-08-31
2582088	Умида		998974327500	ru		0		2020-09-06
2703474	Даяна		998909228245	ru		0		2020-08-30
2753522	Barno		998911180608	ru		0		2020-08-10
2757345	Fazliddin		998935544332	uz		0		2020-08-10
2822677	Amaliya	Amalitta	998933805595	ru		0		2020-08-14
2864570	Nilufar	nelichka_757	998901674440	ru		0		2020-08-30
2954263	Zaur	aze_17	998998401115	ru		0		2020-08-15
3036621	Muhammadjon		998909922723	uz		0		2020-09-06
3079010	Zarnigor		998907124300	uz		0		2020-08-26
3282623	Ойбек	Aberkulov	998930002888	ru		0		2020-09-08
3654988	Shaxlo		998946380202	uz		0		2020-09-08
3690609	Bobur	Bobur_005	998977778282	ru		0		2020-08-09
3712548	Зарина	Zarina_Djuraeva	998909118400	ru		0		2020-08-10
3760084	Маргарита		998909616093	ru		0		2020-08-16
4036197	Madina		998909584616	uz		0		2020-08-28
5267002	/start		998913105228	uz		0		2020-09-10
5491502	Marufbek	global_ice1991	998905101991	uz		0		2020-08-17
7322737	Азиз	AzizNasimov	998909553519	ru		0		2020-08-16
7349942	Асаль		998903555529	ru		0		2020-09-04
9777056	Ziyoda		998909753015	uz		0		2020-08-22
9796302	Хасан	Ganikhodjaev	998909072184	ru		0		2020-08-09
9822359	Kamila	Kamila_O	998946422575	ru		0		2020-08-28
10194381	Мики		998901252141	ru		0		2020-08-21
11992352	Ойхон		998913248034	uz		0		2020-09-07
14758115	Sherzod		998974804494	uz		0		2020-08-29
21564297	Дильфуза		998933761171	uz		0		2020-08-22
22715154	Диёра	Diyora_Dusova	998973428489	uz		0		2020-08-12
25240844	(90)1754510	Alinochka8511	+998901754510	ru		0		2020-08-11
27443664	Otabek		998909964884	uz		0		2020-09-06
28756001	Сурайё	umarova_s_u	998903361334	ru		0		2020-09-03
32250767	Moon	Moon_85	998946720073	uz		0		2020-08-31
33417447	Диера	Diorass	998974485834	ru		0		2020-08-10
33670230	Феруза		998909776434	ru		0		2020-09-07
33826188	Fazilat	Snow_white_98	998909556805	uz		0		2020-08-09
34013412	Bobur	Bobur_0203	998909210203	uz		0		2020-09-07
34267295	Sirojiddin		998974222141	uz		0		2020-08-13
34320884	Азизбек		998977720702	ru		0		2020-08-09
36187133	Nilufar		998909101065	uz		0		2020-09-07
37562454	Намуна		998935833511	uz		0		2020-09-09
37598247	Feruza	FeruzaShuxratovna	998945881088	uz		0		2020-09-04
38033923	Мохира	mokhee_a	998935782132	ru		0		2020-08-11
39711277	Sayyora		998946984704	ru		0		2020-08-09
39770115	Альбина		+998977046810	ru		0		2020-08-09
40044213	Ёркиной	Kumush7	998909750072	uz		0		2020-08-30
40200066	Avaz		+998909953222	uz		0		2020-08-18
40833853	Guli		998914700393	uz		0		2020-08-21
41135941	Шерзод		998998250007	uz		0		2020-08-11
41257852	Азиза	akhmedjanovaaziza	998915284634	ru		0		2020-08-10
42162733	Shavkat		998909445400	uz		0		2020-08-05
42333826	Dilnoza	didiya641	998909595970	ru		0		2020-09-06
42651192	/start	Bibi2210	998908057106	ru		0		2020-08-14
43819237	Mirkomron		998996818161	ru		0		2020-09-09
44234689	Nafosat	HarvardGirl	998909994626	ru		0		2020-08-21
44455601	Ravshanjon	RonaldWIUT	998974111989	uz		0		2020-08-13
45198996	Sardor		998977717388	uz		0		2020-08-09
47428827	Дилафруз		998935396749	uz		0		2020-09-01
47551276	Азиза		998977176942	ru		0		2020-08-23
48331872	сайёра		998903183875	uz		0		2020-08-22
50906379	Шерзод	Cl0WT	+998909049272	ru		0		2020-08-14
51855712	Виктория		998909512216	ru		0		2020-08-22
53982452	Шохрух	Yuldashevich880	998998279900	ru		0		2020-09-08
55886690	Guli		998946544553	uz		0		2020-09-09
56008096	Маъруф	yozing	998981246999	uz		0		2020-08-06
56222324	Shohruh	Shokhrukh92	998913304004	uz		0		2020-08-12
56369815	Zufunun	Zufunun	998935928787	ru		0		2020-08-16
57434681	Юлиана	YuIiana	+998909481085	ru		0		2020-08-30
58208356	Нуриддин	nuri_12	998998371112	ru		0		2020-08-12
59355039	Nazokat	Damawniy_tort	998974238089	uz		0		2020-09-07
59497789	Дилфуза		998935880048	uz		0		2020-09-09
60043919	Селин		998946663913	ru		0		2020-09-07
60540062	Nigina		998946241411	ru		0		2020-09-10
60985641	DIDI		998909854478	uz		0		2020-09-08
61922295	Валерия	Valeriya0613	998909164513	ru		0		2020-09-09
62268645	Нилуфар	nilufar_kholdarova	998909904511	ru		0		2020-08-23
63071124	Виктория		998935609192	ru		0		2020-08-14
63374843	Gulhayo		998901077773	uz		0		2020-09-03
63393519	Azimjon	Azim_0712	998977722551	uz		0		2020-09-09
63673586	Шахло	ShahloOminaSumayya	998935962770	uz		0		2020-09-08
63914585	Снежана	Snejka13	998903158242	ru		0		2020-08-22
64870516	Oscar	Oscar_Hosam	998909652564	ru		0		2020-08-26
64925540	Владимир	BJIaDMuP	+998935856774	ru		0		2020-08-01
65830674	Akbarxon		998903722005	ru		0		2020-08-15
66073162	Saida	Saishka1	998903294653	uz		0		2020-08-12
66795761	Назиля		998971555885	ru		0		2020-08-10
67870712	Дильдора	Dora_frkh	998901759130	ru		0		2020-09-07
68801773	rano	R_Erkin0va	+998977446004	uz		0		2020-09-03
69638210	Sardor	A_Sardor_A	998904070777	uz		0		2020-08-12
70836411	Хилола	salikhovakhilola	998909316068	ru		0		2020-08-14
71291403	Nigina	Nigina2770	998909542770	uz		0		2020-08-10
72636478	Diyora		998977601103	ru		0		2020-08-18
72684587	Zarina		998909108028	ru		0		2020-08-09
74012475	Любовь	lyubasha_saveleva	998977776940	ru		0		2020-08-22
74438538	+998946097996		998946097996	ru		0		2020-08-09
74509916	Sardor		998974347667	uz		0		2020-08-17
74938280	Фаррух	ZoKiRoFF96	79619602233	ru		0		2020-08-31
75155463	Лариса	tszena	998974109999	ru		0		2020-08-29
75178365	Ольга		998977503728	ru		0		2020-08-10
75716067	Малика	umeemu	998909979747	ru		0		2020-08-13
75981474	Комола		998909008400	ru		0		2020-08-09
76462417	Парвиз		998973972272	uz		0		2020-08-09
76777495	Дмитрий	dmitriyl99	998909879930	ru		0		2020-08-01
77247081	Sevara	sevara_rus	998901672552	ru		0		2020-09-03
77578750	Dilmurod	dilmurod2606	998977515131	ru		0		2020-08-19
77752470	Masuda	Hikmatova21	998933761746	uz		0		2020-08-19
77988353	Камила	Kamila_Sultanova	998909728765	ru		0		2020-09-07
78343754	Todjieva Ugilkhon		998998372339	uz		0		2020-09-07
78493029	Zilol a	irisova_Z	+998911344210	uz		0		2020-09-09
78582735	Олим	oceans11	998977120442	ru		0		2020-09-07
78900112	Shakhnossa	shakhnossa	998977744755	ru		0		2020-08-30
79033472	Наргиза		998977979500	ru		0		2020-09-08
81334141	/start		998933407077	ru		0		2020-09-08
81730797	Elyor		998916813131	uz		0		2020-08-20
81927230	Iroda		998974142228	ru		0		2020-09-08
81959386	Dilnoza		998900372299	uz		0		2020-09-09
82012131	/	Uzgold17	+998974483135	ru		0		2020-08-10
83526466	Диля	usmanovad1	998909723253	ru		0		2020-08-12
84551212	Зарнигор		998931660000	ru		0		2020-08-08
86645306	Fazliddin	nodirovich	998977789058	uz		0		2020-08-24
88753752	Ширин		998909371232	ru		0		2020-08-09
93657530	Мали		998916007777	ru		0		2020-08-16
93691754	Азиза	Mamina_radost	998977251295	ru		0		2020-08-22
96010349	Лазиза	Mashrabjonovna	998977407448	ru		0		2020-08-13
96321455	/start	Shahnozka_I	998903259855	ru		0		2020-09-06
98652663	Gavhar	TASNIM_707	998977080383	uz		0		2020-09-10
98892006	Паризода	Perisha_peri	+998946084532	uz		0		2020-09-08
100190602	Камрон	gaffarovk	998990028887	ru		0		2020-09-09
101524905	Муниса	munisakas	+998990205732	ru		0		2020-08-12
101667102	Шерзод	leo702	998977027777	ru		0		2020-08-30
102570577	Zoir		998977231618	ru		0		2020-08-05
103349474	Ксения		998903521770	ru		0		2020-08-15
104613592	Эзоза		998972605111	ru		0		2020-09-07
105756298	Malika	M_Fakhriddinovna	998909002263	uz		0		2020-09-07
106604584	Hojiakbar	djuraev_uae	998946239699	uz		0		2020-08-14
109299250	Шахризода	Shakhriii	998909654962	ru		0		2020-08-10
109499387	Карина		998901869783	ru		0		2020-08-22
111404289	Бинафша		998974032727	ru		0		2020-09-01
112896492	Наргиза		998977009363	ru		0		2020-09-06
113725009	Надира	BeboPom	998977773233	ru		0		2020-09-07
115037958	Sharofiddin	Hacker_No	+998994538023	uz		0		2020-08-24
117521576	Ясмин	Angel_or_69	998903242726	ru		0		2020-09-06
117985025	Диана	IN00CREDIBLE	998909533256	ru		0		2020-08-30
119068282	Iqbola		998901201155	uz		0		2020-09-09
119232035	Fayoz	M_R_X	998977722238	ru		0		2020-09-09
119309130	дадахожаева зилола	zil7709	998997205662	ru		0		2020-08-27
119977567	Ирина		998901860604	ru		0		2020-08-09
123026072	Мадина	dma_u	998990339546	ru		0		2020-09-06
124823685	Saida	ssaidar	998977032411	ru		0		2020-09-05
125789854	Зиёда		998971552878	uz		0		2020-09-09
125881160	Adem		998901858184	uz		0		2020-08-09
130601865	Абдулла		+998977777716	ru		0		2020-08-22
132150951	Екатерина	ShabanovaY	998931626012	ru		0		2020-09-07
133733347	Karim	Muhammadkarim2001	998909408505	uz		0		2020-09-08
139967148	Mirolim		998977581101	uz		0		2020-09-09
141704184	Javohir		998909003717	uz		0		2020-09-01
142689547	Laziza		998977471324	uz		0		2020-09-02
148615565	Madina		998903504348	uz		0		2020-08-29
149032977	+998 93 540-80-17		998935408017	ru		0		2020-08-11
149312635	Madinabonu		998903258228	uz		0		2020-08-16
149738839	Луиза		998909158810	ru		0		2020-09-08
153322125	Suxrob	suxrob07	998900005544	ru		0		2020-08-09
154749832	Iroda		+998903538960	uz		0		2020-08-16
155962879	Мурад	Seo_of_vid_uz	+998909408196	ru		0		2020-08-07
156617556	Hilola	zubaydullohilola	998903211428	uz		0		2020-08-30
159891327	Умидахон		998 99 8895272	uz		0		2020-09-06
161536814	Ванесса	Tenv_26	998974346844	ru		0		2020-08-29
162099531	Akbar	ShKhojiakbar	998909717978	ru		0		2020-08-10
162793756	Камила	kamila_grb	998909480419	ru		0		2020-09-08
164925654	Мадина	m_radiant	998999787318	ru		0		2020-09-04
168322157	Элина	Elinchik_Sh	998909195437	ru		0		2020-09-06
169478939	Islom		998 93 5906000	uz		0		2020-09-01
169630487	Насиба	Nasibam084	998974115363	ru		0		2020-08-31
169735979	Шодия	AuraCebilon1Tashkent	998977690600	ru		0		2020-08-10
170993104	Муслима	louise_carr	998909169825	ru		0		2020-08-09
173712102	/start		+998974402821	ru		0		2020-09-10
175774785	Ширин	Manis_sladkaya	998946857710	ru		0		2020-08-22
177674677	Abdulqodir	GospodinQobulovich	998977160301	ru		0		2020-08-10
177879536	Раьно		998998772767	ru		0		2020-09-04
180954440	Мухаммад		998974504221	ru		0		2020-08-13
183147043	Yana		998909081531	ru		0		2020-09-10
185170494	Азиза		998977544002	ru		0		2020-08-09
190643941	Otabek	Otabek0425	998909385652	uz		0		2020-08-05
191733231	Дарина	DariPolich	+998977572804	ru		0		2020-08-16
192284984	Shahnoza		+998971317444	uz		0		2020-08-11
195435935	Feruza	Sedaf_wedding_salon	+998998568877	ru		0		2020-08-24
196714221	Нигина		998909544500	ru		0		2020-09-09
197188043	Zhanara	t_zhanara	77756355858	ru		0		2020-08-10
198336525	Bel	mirzobekashurov	998909357578	ru		0		2020-08-09
201384689	Нодира	Nonasulton	998977305996	ru		0		2020-08-30
201458407	Акбар	Hornet_21	+998 90 900 00 00	ru		0		2020-08-11
202624021	Рамиль		998909623532	ru		0		2020-08-05
204273908	Юлиана		998974404023	ru		0		2020-09-07
205090328	Dilnoza	balubabalu_biyyabiy_batuba	998998931671	uz		0		2020-08-12
206093155	Anvar		998998327576	ru		0		2020-08-24
207522298	Азиз	Azimov_Aziz	998909347044	uz		0		2020-08-25
207581149	Sadulla	AKRAMOVSN	998977440222	uz		0		2020-08-10
208659570	Shahnoza	shahnozahamroyeva	998935371129	uz		0		2020-08-22
214725095	Munisa		+998909223556	uz		0		2020-08-24
215853129	дилдора		998998562929	uz		0		2020-08-20
216422834	Сарвар	s_madaminov	998909749977	ru		0		2020-08-11
220461404	Madina		998909442181	ru		0		2020-09-06
221034074	Бекзод	bebebet	998974472608	ru		0		2020-09-03
221631579	Vladimir	Khvangene	998 97 424 83 80	ru		0		2020-08-22
222470719	Nigora		998977600030	uz		0		2020-08-15
230268999	Ahmadjon		998998999955	uz		0		2020-08-11
231448569	Otabek		998909404098	uz		0		2020-08-11
231463850	Шухрат		998977378804	ru		0		2020-08-16
231919458	Ozoda		998977643388	uz		0		2020-09-07
236710001	Akbar	xojiakbar_n	998974644447	ru		0		2020-08-12
236903502	Aziza	AzizaFarhodova	998944053132	uz		0		2020-08-14
237340668	Dildora		998909552122	uz		0		2020-08-17
239823149	Malika	umidovaa_m	998903180446	uz		0		2020-08-16
242747382	S	bintu_rosul	998903525525	ru		0		2020-08-09
244763372	Дилфуза		998977491449	ru		0		2020-08-15
245329864	Дилноза		998935223344	ru		0		2020-08-12
245603132	sardor	sareekc	998991009450	uz		0		2020-09-06
247103580	Abdullox	A19575	998998759575	uz		0		2020-08-12
247260510	Mary		998990125023	ru		0		2020-08-23
249576911	Шахзод		998977350384	uz		0		2020-08-09
251840924	Шахзода	Vanellope7	998995351769	ru		0		2020-09-09
252370547	Umida Tulaganova	UmidaKamron	998977621513	uz		0		2020-09-01
252895698	+998977627781		998977627781	ru		0		2020-08-09
253894186	Зарина	Dil_Zar	998998600044	uz		0		2020-08-10
254184003	Gulrux	Shukurova_Gulrux	+998998353883	uz		0		2020-09-03
254906589	Gavhar	Gavhar97	998977626068	ru		0		2020-09-09
255465159	Алекс	sunnydrop	998977292493	ru		0		2020-08-13
255643719	Elena	Sallen_1808	998999164999	ru		0		2020-08-18
259442603	Шахло	AbdukadirovaShahlo_1	+998998454575	ru		0		2020-08-12
260429456	Диля		998901215554	ru		0		2020-09-07
261342879	Jovohir		998983078281	uz		0		2020-09-02
261667586	Nazokat	nna_757	998974002580	uz		0		2020-08-26
261831727	Бахром		998903236627	ru		0		2020-08-09
262302725	Yulduz	NazarovaY	998974437334	uz		0		2020-08-09
264184824	Елена	Helena_Yak	998903241035	ru		0		2020-08-16
265550912	Бехзод	Bekhzodjaan	998977587212	ru		0		2020-08-09
265772264	Комила	Komila73	998977510011	ru		0		2020-08-29
268018976	Дурдона	durdonashod	998915342330	ru		0		2020-09-09
269353106	Sardor		998983620346	uz		0		2020-08-12
269861608	Акрамжон	akram_john	998999908066	ru		0		2020-08-09
273528409	Павел		998935706785	ru		0		2020-08-09
274348443	Mohinur		998903180447	uz		0		2020-08-10
275034089	Ибрагим	Ibragim_abdusamatov01	998900030131	ru		0		2020-09-06
275312221	Abdulazizkhan	khan_I3	998946543070	uz		0		2020-08-18
277023102	Шахзода	Shazoshka	998935342314	ru		0		2020-08-30
277458432	Сардор	acm92	998 90 353 81 51	ru		0		2020-08-10
277745212	Мария	MagenTri1310	998903498626	ru		0		2020-09-06
280232257	Миржалол	SouL_Kitchenn	+998909794733	ru		0		2020-08-30
280568429	Oybek		998946091010	uz		0		2020-08-10
282068243	Bahrom	ifor_parfums	998909969338	ru		0		2020-08-28
284886975	Ilyos		998903599353	uz		0		2020-09-02
285376202	Noiba		998903558834	uz		0		2020-09-08
288721209	Karomat	Murodaliyeva	998998887672	uz		0		2020-09-06
290155336	Асадбек	asad_ks	998977081007	ru		0		2020-08-09
290469875	Muhabbat		998974401144	uz		0		2020-09-04
295396198	Жасур	jasur_b1	+998917870303	uz		0		2020-08-31
298441765	Шахноза		998977489800	ru		0		2020-09-06
299491470	Komola		998998002750	uz		0		2020-09-07
301386661	Komoliddin	komol89	998998117038	ru		0		2020-08-09
301631812	Сардор	sardor_017	998971004737	ru		0		2020-09-04
301895461	998935851818	Barsaaaaaal	998935851818	ru		0		2020-08-11
302616358	Begzod		998998033535	uz		0		2020-08-10
304331745	Tölqin	Abduvakhobovich	+998973303434	uz		0		2020-08-25
304399344	Raima	Raima_99	998998991208	ru		0		2020-08-13
304969301	Shuxrat	Shux1312	998998159999	uz		0		2020-08-12
305319455	Альбина		998977740146	ru		0		2020-08-09
305737609	Бехруз	Behruz_akh	998909020373	ru		0		2020-08-09
309267023	Мадхия		998998988070	ru		0		2020-08-22
311304724	Robiya		998909980502	ru		0		2020-08-15
311723796	Jorullox		998998886617	uz		0		2020-08-05
312452547	Saida		998977644191	uz		0		2020-09-01
314090824	Nazokat	Abidovna_96	998946566646	ru		0		2020-09-06
314601227	Ziyoda	Ziyodakhonnn	998998503108	uz		0		2020-08-20
318499019	Ала	Asdfhrwe	998998224503	ru		0		2020-08-12
321654067	Jasmin	Mira595	+998998687868	ru		0		2020-08-10
322524870	Shoxrux	MAMARASULOVSHOXRUX	998993771555	ru		0		2020-09-08
322923514	Ulugbek	Z7777ZZZZ	+998935695794	uz		0		2020-09-08
324260934	Дил	Dilmurod_Tulyaganov	998901144106	ru		0		2020-08-09
324502573	Aziz	zidimon1717	998998831994	uz		0		2020-08-09
325312623	Xikmattilla	X_Xikmattilla	+998990100098	uz		0		2020-08-14
325931323	Azamat Talipov		998909877080	uz		0		2020-08-09
326694372	Александра	lashes_aleksiya	998909406436	ru		0		2020-08-11
326739104	Juratxoja	juratxoja	998935695556	uz		0		2020-08-14
327658966	абдуллох	ffrayer	998998627347	ru		0		2020-08-11
330605486	Нодиржон	Nodirjon_96	998911921272	ru		0		2020-08-09
330704912	Азиза		998903717123	ru		0		2020-08-12
331338712	Hsss	abdslv	998977371998	ru		0		2020-08-11
332569044	998974459282		998974459282	ru		0		2020-08-27
334372411	Шоазиз	shopulatovs	998983373755	uz		0		2020-08-30
335796350	Ziyoviddin		998935999956	uz		0		2020-08-31
336199578	Камронбеу	rkama_018	998974477779	ru		0		2020-09-06
336886195	Murod		998977173004	uz		0		2020-08-09
341746147	Любовь		998900157020	ru		0		2020-08-10
342217193	Sitora		998903323314	ru		0		2020-09-09
343748933	Dilmurod		998977407704	ru		0		2020-09-07
344471826	Sora		998909106087	ru		0		2020-09-08
344753329	Наталья	Kinder_Natalya	998998428047	ru		0		2020-09-05
346621489	+998970013010	madomee	998935409324	ru		0		2020-08-17
347095851	Komolxoja	KomolxojaSaidakbarov	998998661566	uz		0		2020-08-12
350858796	Владимир	nnnnaf	998909039266	ru		0		2020-08-09
351264292	Dilfuza	Dil899	998998996988	ru		0		2020-09-06
354406284	Зухра		998909434693	ru		0		2020-08-09
358476336	Akmal	akma1chek	998998562959	ru		0		2020-08-09
360449283	Ziyoda		+998911669940	uz		0		2020-08-11
361634380	Карина	soldatova98	+998903715227	ru		0		2020-08-16
362012047	Roza	Di_fl	998974774835	ru		0		2020-08-31
362508112	Lobar		998971314943	ru		0		2020-08-14
362508771	Sahxnoza		998933787136	ru		0		2020-08-13
366163369	Abbos		998998487377	uz		0		2020-09-06
368090022	Mohira		998909370587	uz		0		2020-08-25
369245025	Абдулазиз	Abdulaziz77	998977719000	ru		0		2020-08-30
370388307	Цой Ольга		998998994208	ru		0		2020-08-20
373712050	Хумаюн	huma_hodjahanov	998973301212	ru		0		2020-08-30
373792706	Sora		998909721115	uz		0		2020-09-09
374539657	Камола	Kamolazafarova	998903530018	ru		0		2020-08-21
377397458	Shaxnoza		998903483354	uz		0		2020-09-07
377770554	Рухсора		998909082554	ru		0		2020-08-10
377810048	Gulsara	Alhamdulillah_75	998977608695	uz		0		2020-08-19
379239413	А	shtadm	998903163160	ru		0		2020-08-12
384450944	Шохсанам		998973429119	ru		0		2020-09-05
384966694	Xojiakbar	Kadirov_4929	998946284929	uz		0		2020-09-07
385268473	Муниса		+998997856359	uz		0		2020-09-03
386783578	Shodiya	Shodiyaxon1993	998909727289	uz		0		2020-09-08
386919230	Розалией		998977088213	ru		0		2020-08-27
390517197	Анастасия	popova_anastasiia	998998601857	ru		0		2020-09-07
390852170	Назокат		998977409242	ru		0		2020-09-06
392120312	Komil	kadirov_8100	998909528100	uz		0		2020-08-28
393631379	Abdumannop		998977744624	uz		0		2020-08-10
397308874	Abdulaziz	AbdulazizNazrullayev	998990703899	uz		0		2020-08-30
397910414	Русалина	aidaabasova	998935880119	ru		0		2020-08-17
398161966	NG		998909552823	ru		0		2020-08-23
398191053	Xusnora		998911663223	uz		0		2020-08-16
398435795	Omina		998911631985	uz		0		2020-09-08
400133491	Мукаддам	khaydarova7	998905451777	ru		0		2020-08-24
402911500	Habiba	Kxamidova701	998998279347	uz		0		2020-09-02
409844579	Lobar	lobar_muxiddinova	998998557005	uz		0		2020-08-21
410587771	Да		998946939000	ru		0		2020-08-08
411268426	Mukhammadjon	MukhammadJhon	998974776041	uz		0		2020-08-09
412065784	Farzona		998909196864	uz		0		2020-09-01
416155588	Mirabror		998 93 000 07 59	uz		0		2020-08-09
417500559	Ленара		+998974709403	ru		0		2020-08-11
419397254	Murodil	admiin9090	998944639090	ru		0		2020-09-06
421955254	Александра	kim_aleksiya	79967424887	ru		0		2020-08-11
423343055	Sitora	sitoraix	998911636462	ru		0		2020-09-09
423420660	Sanjar	sanjarakooo	998933869627	uz		0		2020-09-08
423785687	Komola		998974448350	uz		0		2020-08-10
423925390	Guzal		998901683220	ru		0		2020-08-30
424255768	Камола		998998241542	uz		0		2020-08-30
426028131	Комрон	TemirovK	998911906462	uz		0		2020-08-10
430040542	Севара	firuzovna_01	998946091216	ru		0		2020-09-06
430924505	+998998428884		998998428884	ru		0		2020-08-31
431976116	+998977050504	sultonov_022	998977050504	uz		0		2020-08-10
432901480	Яна	Alex_diehard	998994399570	ru		0		2020-09-03
434359629	Asal	asal_xon	998935192800	uz		0		2020-09-04
434675053	Sitora Shaxobiddinova		998907888552	uz		0		2020-08-09
440069331	Елизавета	ruli13	998977536044	ru		0		2020-09-06
440142534	Mirkomil	ManUnited1151	+998 97 711 11 51	uz		0		2020-08-31
440945087	Dilshod		998998700339	uz		0		2020-08-09
441382397	Shahzoda	shvzo	998903292111	ru		0		2020-08-27
442592456	Сардор	SGDS90	998998006415	ru		0		2020-09-10
446146970	Камила		998909198303	ru		0		2020-08-24
446478820	Madina		998998897212	uz		0		2020-08-18
446792260	Афзал		998931875566	ru		0		2020-08-09
449962536	Abdulboqiy	Abdulboq1y	998916803257	uz		0		2020-08-10
450691492	Aziza		998911364701	uz		0		2020-08-21
450791988	Mohira		998903516997	uz		0		2020-08-09
451095612	Фатима	patyfa1	998998844994	ru		0		2020-08-31
452225498	hilola		998977524387	uz		0		2020-09-07
452478942	Sanam		998977666446	ru		0		2020-09-07
456096813	Сабина	sabikamilovna_3003	998901789944	ru		0		2020-08-20
456547805	Юлия		998909593993	ru		0		2020-08-10
457688828	Хумоюг	ibragimov_x911	998998995161	ru		0		2020-08-23
458600651	Doston	TTT008	998978313333	ru		0		2020-09-02
458865556	Madina	BintuMubin	998977431102	ru		0		2020-09-08
460553863	Azimjon + 998998403731		998998403731	uz		0		2020-08-09
461303523	Мария	mariaclassy	998998719838	ru		0		2020-08-16
461492450	Abdulvahhob		998981777781	uz		0		2020-09-03
461824401	Iroda	amina_xo	+998935303030	uz		0		2020-08-18
462699805	Dilnoza	d_mirkomilova	998998379965	uz		0		2020-09-07
463621855	Madina	bahadir_talibnazarov	998946470030	uz		0		2020-08-31
464117397	Burhon		998998678822	ru		0		2020-09-06
464358955	Javohir	Javohir060	998906800305	uz		0		2020-09-06
465563942	Abdurazzoq		998983696090	uz		0		2020-08-09
465632014	Abdulqodir	Nvrbckdown	+998909643469	ru		0		2020-08-18
466083330	Mukaram		998977693669	uz		0		2020-08-09
468580284	Fayzullo		998935999552	uz		0		2020-08-10
469492761	Shaxrizoda		998973440036	ru		0		2020-08-12
473416257	Дмитрий		998935157629	ru		0		2020-08-23
473593032	Islom	umarov_36	998909163336	ru		0		2020-08-09
474394698	Kamola		998998147727	ru		0		2020-08-12
475877782	Музаффар		998998281200	uz		0		2020-08-22
477383270	Barno		998903180429	uz		0		2020-08-16
477831574	Нигина	niginapirnazarova	998935860199	uz		0		2020-09-07
480558355	+998907888656		+998907888656	ru		0		2020-08-09
482181034	Nodira		+998946758180	uz		0		2020-08-09
483404120	Durdona		998909040757	ru		0		2020-08-08
484035007	Fotima		998998957974	uz		0		2020-08-09
488279533	Munisa	Imona2427	998977448224	uz		0		2020-08-31
488987326	Behzod Shovkatov	showcatoff	998977111155	uz		0		2020-08-20
492678504	Висола		998974484478	ru		0		2020-08-15
494387375	Zamira		998998470013	ru		0		2020-08-14
495508670	Mushtariy		998909460087	uz		0		2020-08-08
496181524	Ziyodbek	Ziyodbek_502	998977742220	uz		0		2020-08-10
496518276	Надира	nadira_u	998944157777	ru		0		2020-08-24
496834329	Nozima		998998822112	uz		0		2020-08-12
497007594	/stop	Khasan002	998946650099	uz		0		2020-08-30
501558319	Музаффар	mirjavkharov_m	998977702428	uz		0		2020-08-18
501872869	Сабина	Sabina8925	998998165235	ru		0		2020-08-25
506343357	Jahongir		998997107171	uz		0		2020-08-09
506526099	Sobir	china_exx	998998484424	uz		0		2020-08-09
508270977	Милана		998990551525	ru		0		2020-09-10
508311259	Feruza	NasirovaFeruza	998977188282	ru		0		2020-09-06
508483061	Муниса		998935576676	ru		0		2020-08-17
510982455	Азиза		998977770722	ru		0		2020-08-11
511774034	Madina	silion79	998903508501	uz		0		2020-08-14
514537465	Omina		998946374020	uz		0		2020-09-09
515253189	Adnona		998999022444	uz		0		2020-09-09
515588435	/start	om1ji	998974504074	ru		0		2020-09-07
516611361	Nigora		998909180109	uz		0		2020-09-01
517545777	Шохсанам Ибрагимова	IbrakhimovaSh	+998903382818	ru		0		2020-08-31
518109259	Анвар	anvarmirza	998909272673	ru		0		2020-08-01
518973604	Ali	blum_uzb	998909996875	uz		0		2020-08-09
520644391	Malika		998903165002	uz		0		2020-08-22
523948893	Õğiloy	doctor_Muxtorovna	998909331739	uz		0		2020-08-21
527341100	Мафтуна		998974103320	ru		0		2020-08-09
527608137	Abdumajid	Abdumajiddd	998977753443	uz		0		2020-09-07
528110896	Samira	samirattsh	998933947788	ru		0		2020-08-12
529196795	Саид	saidmakhsudov	998998033030	uz		0		2020-08-10
529907638	Dilnoza	dilnozik1195	998998993883	ru		0		2020-09-06
530406280	Мафтуна	maftuna_raimova	998971014952	ru		0		2020-08-23
531378611	Dilmurod		998994612314	uz		0		2020-08-10
533631673	Асаль	solyamarmeladova	998977175117	ru		0		2020-08-12
537476034	Robiya		998933957945	uz		0		2020-09-08
540768474	H	absolutely_zer0	998909529450	ru		0		2020-08-10
541997393	Egamberdiyeva Mohira	egamberdiyeva23	998998390968	uz		0		2020-08-08
542633266	Элёр	Elyor667	998946672567	uz		0		2020-08-11
544101535	Iskander		998909533333	ru		0		2020-09-08
544860987	Muborak		998911361612	uz		0		2020-08-30
548728892	Mohinur		998974801898	uz		0		2020-09-06
551748698	Азиза	azizakhmedova	998935784901	ru		0		2020-08-16
552045600	Камола		998909486779	ru		0		2020-08-22
553130550	Maya		+998946335776	uz		0		2020-09-03
555299026	Dono		998908080154	ru		0		2020-09-09
556542829	Shakhzod	shakhzod01011	998972996226	uz		0		2020-09-06
557457484	Гузаль		998977818570	ru		0		2020-09-06
559484236	Nilufar		998977111859	uz		0		2020-08-20
559896280	Iroda		998977340650	uz		0		2020-09-08
560404568	Islom	islom_dobri	998998183761	uz		0		2020-08-09
561069037	Sirojiddin		998974704333	uz		0		2020-08-09
561378253	Элина	elina_reed	998909789886	ru		0		2020-09-08
561976955	Doniyor		998911655588	uz		0		2020-08-22
563982823	Dilafruz		998977606881	uz		0		2020-08-14
563992255	Barno		998998477232	uz		0		2020-09-08
564143933	Abdulla		998977557488	uz		0		2020-08-11
564698869	Анастасия	Anabet4	998990175071	ru		0		2020-08-16
564790333	Fotima		998977700669	uz		0		2020-08-31
565484896	Гульноза	gsmileg	998974121270	ru		0		2020-08-14
567412915	Dilfuza	Dilfuzichka94	998909482665	uz		0		2020-09-04
567624539	Shorasul		998946789787	uz		0		2020-08-14
568320617	Gulnoza	Kinderka_G	998977807758	uz		0		2020-08-17
569175251	Jasur	apasniy_01	+998996462829	uz		0		2020-08-09
570176396	Bekzod		998900004447	uz		0		2020-08-29
571940102	Bobur	bobsnn	+998993080002	uz		0		2020-08-09
571977469	Akbar	Xurshidakhan	998946542221	uz		0		2020-08-12
572139262	Василя	GorbVasilya	+998977760765	ru		0		2020-08-12
573317968	Мадина	gaybullaevam	998998738055	ru		0		2020-08-14
573604337	Habibulloh		998933948988	uz		0		2020-08-13
575408119	Elmira	elmira_nazimova	998998038460	ru		0		2020-08-28
575941499	Gulomxoja	khujayev_g	998935405577	uz		0		2020-08-10
577092273	Лола	queen19992	998998688869	ru		0		2020-08-10
577477454	Uchqun	fatkhullayev_u	998909269466	uz		0		2020-08-09
580327136	Самира	syama_06	998998896648	ru		0		2020-08-26
583411442	Жавлон	zakking1	998998503725	ru		0		2020-08-13
584066859	Shoxrux	Shoxrux_701	998944747007	uz		0		2020-08-15
586359485	Baxtiyor	Baxtiyor_1999	998990994554	ru		0		2020-08-12
590751141	Насимов Жовидхон	NJSH_2004	998901766740	ru		0		2020-08-09
591094948	+998903302255		998903302255	ru		0		2020-09-06
591789426	Malika		998900041202	ru		0		2020-08-27
592847796	Диер	Onajonimm_jannatimmm	+998946377323	ru		0		2020-08-09
593004307	Gulhayo		998909210032	uz		0		2020-08-21
593664713	Мумин		998917700077	uz		0		2020-08-30
600433169	Ситора		998977257991	ru		0		2020-08-09
601871763	Murodjon		998998446306	uz		0		2020-08-26
606087376	Umida		998909391030	uz		0		2020-09-02
606574614	Дилором	Dilichka_dm	998974335885	ru		0		2020-09-08
606723736	998005507		998998005507	ru		0		2020-08-10
606755954	Farangiz	zxcvbn29	+998903167708	uz		0		2020-08-09
611336665	Дурдона		998900342421	uz		0		2020-09-08
612518382	Будур	budur1999	+998944199552	ru		0		2020-08-10
612886413	Назокат	Nazokat_brend	998973301808	uz		0		2020-08-09
613589872	Мухиддин	mproduz	998999015238	uz		0		2020-08-09
615011731	Javohir	Javakhir_95	998998554778	uz		0		2020-08-09
615138015	Muxlisa	Jodugaar	998935724042	ru		0		2020-09-08
615910111	Munavar		998974212882	uz		0		2020-08-14
616840140	Санжар		99899 8868252	ru		0		2020-08-27
618102499	Aziza	Aziza_Italy	998998440852	uz		0		2020-08-23
622920664	Humoyun		998974346010	uz		0		2020-08-10
623501868	936050000	dm_m1	+998936050000	ru		0		2020-08-29
624007320	+998911660200	far1za_d	+998911660200	ru		0		2020-09-06
625299884	Kamola	KamillaAdmin	998977809356	ru		0		2020-09-07
627705619	Лилия		998935708608	ru		0		2020-09-10
628662870	Laziza		+998903581802	uz		0		2020-08-05
630485513	Mehribonu	MehribonuHamid	998946882059	uz		0		2020-09-10
631270439	Elyor	Khudaykulovvv220	998974071234	uz		0		2020-08-10
631602425	977112010	kamilovna_1606	998977112010	ru		0		2020-08-09
631766780	Nazokat	Djuraeva_N_I	998909962562	ru		0		2020-08-09
631909445	Gullola	gulolaslog	998997907400	uz		0		2020-08-14
632119349	Mahzuna	Makhzun	998946302524	uz		0		2020-09-06
633288098	Сирожиддин		998974009909	ru		0		2020-08-11
633826806	Халиса		998974333363	ru		0		2020-09-04
633950582	Madina		998908053338	uz		0		2020-08-19
635083348	Feride	FerideBassaeva	998993227544	ru		0		2020-08-09
635655596	Дильноза	Cheriiiish	998977077633	ru		0		2020-08-12
637455300	Хуснора	Khus_k	998909222611	ru		0		2020-08-12
637691381	/	n9n1n5	998909390085	ru		0		2020-09-06
639336999	Гузаля	ggg_mm23	998909796408	ru		0		2020-08-12
639840492	Shuhrat	kasimovss	+998 97 1010714	ru		0		2020-08-25
640666162	Дилдора		998977009192	uz		0		2020-08-26
642332509	Zilola		998990877812	uz		0		2020-08-25
643675650	Камилахон	Ka_mila_xon	998 90 8067922	ru		0		2020-08-13
644115580	998027006		998998027006	ru		0		2020-09-06
644947405	Zulxumor		998998744171	uz		0		2020-08-29
646166685	+998909993788		998909993788	ru		0		2020-08-09
646731445	Sevara	sevaraa_00	998998283634	ru		0		2020-08-23
647323874	Хонзода		998900023008	ru		0		2020-09-06
650797819	Nilufar		998977126779	uz		0		2020-08-26
651124733	Abror		998973491008	uz		0		2020-08-10
651356202	Ксения	Ksyushelya	998998305106	ru		0		2020-08-09
651880188	998994406616	adiba_12	998994406616	ru		0		2020-08-31
652479438	Бахром		998998518998	ru		0		2020-08-27
652482995	Shox	shox_5977	998900140550	uz		0		2020-08-16
653609321	Асаль	asalyakennedy	998977322290	ru		0		2020-08-09
654417280	Mushtariy		998983647777	uz		0		2020-08-10
654822497	Odiljon	odiljohns	998935181893	uz		0		2020-08-09
655138385	Bahodir		998946902622	ru		0		2020-08-30
656045062	Aзим		998946638575	ru		0		2020-08-09
658055554	кукумбер		821077271902	ru		0		2020-08-13
658505102	Dilzoda	dindin80_19	998998782869	uz		0		2020-09-08
659363183	Davron	Davron_090	998983690140	uz		0		2020-08-09
659577046	назокат	bakhromava	998993050177	ru		0		2020-08-25
659696908	Sara		998909446166	uz		0		2020-08-30
659909758	Сохиб	alimbekov	998983692110	uz		0		2020-08-19
660681091	Shirin	farzonam_00	998990027717	uz		0		2020-09-10
662808794	Суннатилло	booklife_uzz	998911917781	ru		0		2020-09-10
663049866	Shexzede	shexzede	998998680397	ru		0		2020-09-08
665298910	Shodiya	Renesmee_s	998990275840	uz		0		2020-08-10
666192848	Ziyoda	ziyodaz	998998575885	ru		0		2020-08-10
666407236	Dildora		998977143940	uz		0		2020-08-09
667027966	Javlon	iJavlon	998988098089	uz		0		2020-08-09
667195561	Madina	Milasaa	998946354567	uz		0		2020-08-09
667214956	Sirojiddin		+998998748482	uz		0		2020-09-08
668359712	Iroda		+998977239515	uz		0		2020-08-11
669734439	Mohinur		998903941234	uz		0		2020-08-24
670818614	Mohinur	mohinur_akramovna	998998522938	uz		0		2020-08-17
671390463	Abdulaziz		998909374331	uz		0		2020-08-17
671664786	Zilola		998935296655	uz		0		2020-08-30
672244132	Roza	Gevorkyan_Roza	998935479099	ru		0		2020-08-09
672850186	Азиза	azizamirobidova	998973330855	ru		0		2020-08-20
673142023	Парвина	Salon2447	+998998792447	ru		0		2020-09-07
674437582	Diyora		+998903562831	uz		0		2020-08-12
676274917	990040888		998990040888	ru		0		2020-08-18
677139217	Yulduz	yuwki	998930039999	ru		0		2020-08-10
678806736	Komola		998903710742	ru		0		2020-09-07
679850172	Abbos	Waxsultan	+998983671771	uz		0		2020-08-10
681419070	Нодира	adm_joynamooz	998909151984	ru		0		2020-09-06
685247013	Севара	Sevara_Vision	998971560691	uz		0		2020-09-09
686385782	Luiza		998935817809	ru		0		2020-08-18
686636762	991111779	khursh1d_01	998991111779	uz		0		2020-08-12
688702356	umida	umi2930	+998909712930	uz		0		2020-08-09
689548859	Saboxat	SNsinner	998908067275	uz		0		2020-08-14
691188321	Ильдар	Miruqi	998909126680	ru		0		2020-08-12
691523464	Nargiza		998990330539	uz		0		2020-08-21
692775649	Мафтун	mftn23	998909566733	ru		0		2020-08-17
692829189	Nilufar		998909462175	ru		0		2020-08-14
693962405	Мадина	madi_ka07	998971432181	ru		0		2020-08-24
695440843	ðð	mahish_ka	998935132627	uz		0		2020-08-14
699649299	Durdona		998998869529	uz		0		2020-08-10
700371950	Аля		998977835773	ru		0		2020-08-21
701385488	Farangiz		998911650130	ru		0		2020-08-31
702261039	Madina		998977094000	uz		0		2020-08-10
702318126	Нисошка		998998325686	ru		0		2020-08-10
702379930	ibrohim	therealikh	998909267969	uz		0		2020-09-03
704337795	Nozima		998944105050	uz		0		2020-09-08
704488465	Iroda	irodakhon12	998974490337	uz		0		2020-08-30
706641206	Тимур	timuuur17	998909433090	ru		0		2020-08-31
706844800	Shahnoza		998946815137	uz		0		2020-09-07
707246645	Хилола		998974440207	ru		0		2020-08-10
710425535	Ameen		+998998919199	uz		0		2020-09-07
711946568	Iqbola		998999912725	uz		0		2020-08-19
712076972	Nigina		998915570100	uz		0		2020-08-21
714275948	Диера		998998418555	ru		0		2020-08-31
714383063	Malika		998993003344	uz		0		2020-08-09
716391294	Xojimurod	Xojimurod_Anvarov	998977602056	uz		0		2020-08-09
716800695	Mirafzal		998996018660	ru		0		2020-08-09
717212945	Елена		+998993152507	ru		0		2020-09-06
717403243	Умида		998977300931	uz		0		2020-09-07
718605731	Madina	Mbas2013	998946887688	uz		0		2020-08-09
719801646	Anora	ShaxinaUz	998998113230	uz		0		2020-08-10
720191394	Muslima	M_sadikovaa	998909688694	uz		0		2020-09-08
720736753	Bahodir		998901856762	ru		0		2020-08-19
720850407	Махмуда		998977217151	uz		0		2020-08-26
723186466	Komola		998935777015	uz		0		2020-08-10
723207829	Aziza	Ilkh_aziza	998946547115	uz		0		2020-08-25
723515670	Adkins	Marjona_KIA	998997267735	uz		0		2020-08-30
725156955	/start		998977113550	uz		0		2020-08-17
725743074	Malika	Doctor_malika_1102	998900321319	uz		0		2020-09-07
725926695	Умар		998909747863	ru		0		2020-08-27
726614016	Мухаммад Нодирбек		998911370999	ru		0		2020-08-11
727436743	Зайниддин	Rakhimoff_officia1	+998909326700	uz		0		2020-09-06
727654769	Maftuna		998998677927	uz		0		2020-09-06
728577333	бехзод	husenov24_07	998937042407	uz		0		2020-08-10
728862754	Нодира		998935294487	ru		0		2020-08-09
728991993	Nazokat	Abdumajidovaa	998909251349	uz		0		2020-09-07
732088389	Yoldasheva nargiza		998998548873	uz		0		2020-08-09
732551848	Фазилат		998911363312	ru		0		2020-09-08
737441695	Шахзода	Parizoda_B	998901957772	uz		0		2020-08-27
740680204	Зилола	Makhmudkhodjayeva	998935786611	ru		0		2020-08-09
742736529	Turgunova Shahrizoda	Turgunoffa	998991012210	uz		0		2020-08-20
743979450	Sharifa		+998935722638	ru		0		2020-08-13
745458462	Саодат	saodaaathon	998990717771	ru		0		2020-08-23
746677319	Ziyoda		998998676069	ru		0		2020-08-10
748127078	Холида	fx_sw	998999721185	ru		0		2020-09-06
748518352	Mohira	Akhmatova_1909	+998935525528	uz		0		2020-08-09
749653497	Abdulloh		998946409195	uz		0		2020-08-11
752552796	Sitora		998977233939	ru		0		2020-09-07
752800438	Ойбек		998909795754	ru		0		2020-08-19
755156814	Амалия		998909726298	ru		0		2020-09-07
756087107	Элина	SeoLina10	998909533177	ru		0		2020-09-06
758349942	/		998901300700	ru		0		2020-08-20
758668569	Дениель	L_4D4N	79151316839	ru		0		2020-08-28
759376289	madina		998974405839	uz		0		2020-09-06
760913092	Otabek	TopTextileUzbekistan	998974240226	uz		0		2020-08-11
761336078	Диляфруз		998935418333	ru		0		2020-09-04
761488651	Жасмина	rozimova	998974100082	ru		0		2020-08-31
761640629	DIYORA	Diyorasultonzoda	977730092	ru		0		2020-08-23
761648316	Siroj	Siroj_700	998909350909	ru		0		2020-08-10
762992232	Muyassar		998935869639	uz		0		2020-08-17
763050020	Маша	Kriss_teen1	998998193563	ru		0		2020-09-08
763359526	Sardor		998997202424	uz		0		2020-08-13
765178585	Камила		998998828023	ru		0		2020-09-06
765426842	Диана	gloriya_global	998909680406	ru		0		2020-08-11
765575907	Мухаммадали	mkhmmd_l	998990276913	uz		0		2020-09-01
765875620	Xadicha		998935102886	uz		0		2020-09-08
768609039	Bobur		998998580101	ru		0		2020-08-14
769825034	Dilorom	Innatillayevna	998998218596	uz		0		2020-09-07
770400535	Mirona		998994874757	ru		0		2020-08-31
771541156	Oybek		998909605700	uz		0		2020-08-27
771884635	UMA		998998470400	ru		0		2020-09-10
772047008	Nilufar	Ninishka8787	998909181281	ru		0		2020-09-08
772152950	Feruza	AFeruzaR99	998998266731	uz		0		2020-08-26
776576315	Dilmurod	DilmurodUsarov	998911924404	uz		0		2020-08-09
777960456	Dilshod	ddavronov1	998 97 3444401	ru		0		2020-08-10
778333577	97 722 04 08	Durdona_Vis_ion	998977220408	ru		0		2020-08-30
780236531	Сурайе	SureyaYu	998930062448	ru		0		2020-08-24
780516835	Лайла		998971575910	ru		0		2020-08-15
780706549	Gozal		998909049912	uz		0		2020-08-09
780884856	Marhabo		998974073128	ru		0		2020-08-15
781396927	Shaxzod	kasimov_sh26	998977730403	ru		0		2020-09-06
782748337	Надежда	nadievs	998946811405	ru		0		2020-08-18
783851934	Dinara		998909955909	ru		0		2020-08-09
784566060	Marhabo		998974344405	uz		0		2020-08-30
785342339	Tohir		998973446200	ru		0		2020-08-09
786667933	Диана	Lllgd03	998997949813	ru		0		2020-08-26
787596435	Sarvar	lamoreuz	+998990808778	uz		0		2020-08-23
789034008	Holida		998974458982	uz		0		2020-08-29
791889437	Mehrinisa	kadirovamekhrinisa	998946972882	uz		0		2020-08-09
794023379	Samira	samirakhon5358	+998995117999	uz		0		2020-09-06
795587209	Хумора	xomyak16	998993973018	ru		0		2020-08-21
795612417	/start		998903937177	ru		0		2020-08-30
796404092	Ziyouddin	Ziyoviness	998908083159	uz		0		2020-08-10
796590081	Xadicha		998977585055	uz		0		2020-09-05
797434165	Умидахон		998901169996	ru		0		2020-08-23
798737190	Mustafo	Mustaf0_0	998903165181	ru		0		2020-08-19
798916712	Dilmurod	rashidov1007	+998990701705	uz		0		2020-08-09
800153901	/		+998907909168	ru		0		2020-09-07
801784773	Dinara		998903310101	uz		0		2020-09-08
802131373	Madina		998998200414	uz		0		2020-09-07
803282553	Шахзода		998901220303	ru		0		2020-09-05
804278024	Fotima	chulievaa	+998972454242	uz		0		2020-08-13
805112552	Mehribon	Mehribon94	998941255552	uz		0		2020-08-13
805117559	Zuhraxon		998935555059	ru		0		2020-08-10
805264003	Мадина		998977394994	ru		0		2020-09-07
806862192	Бахром		+998935155835	ru		0		2020-08-09
807087293	Guzal	guzal_jamshidovna	998990008772	ru		0		2020-08-23
807905068	Севинч	ev_mad	998935764660	uz		0		2020-08-16
811532990	+998971464494	asadullaevas	998971464494	ru		0		2020-08-27
811644356	Bernora	Bellaslifee	998949388748	uz		0		2020-08-10
812152460	Ирина		998909169218	ru		0		2020-09-09
812881339	Дилноза		998935493033	ru		0		2020-08-20
813230318	Hamida		998946793343	uz		0		2020-08-30
813909907	Xamida		998973308891	ru		0		2020-08-10
815089260	Umida		998998601044	uz		0		2020-08-25
817028728	iammurodceek	iammurodceek	998946368741	uz		0		2020-08-10
817653660	Gozal	dr_Ilhomovna	998946495666	uz		0		2020-09-06
818011345	Chciv		998998170996	ru		0		2020-08-21
819477405	Азиза	Ziza013005A	998972603001	uz		0		2020-09-07
820702784	Диёрбек	Mirjamalov_d	998998406621	ru		0		2020-09-07
821118523	Камил	KomiL4iK_777	998998755731	ru		0		2020-09-01
824768428	Кристина	Kkkkkkkkkkkkkkkkkkkrrrrrrrrrrr	998909716397	ru		0		2020-08-10
826158104	Саида		998909483808	ru		0		2020-08-22
828094497	Anvar		998990338881	uz		0		2020-09-01
829951812	Firuze		998974002666	uz		0		2020-08-31
830522641	Сарвиноз	sarviinoz	+998930099064	uz		0		2020-08-09
832244828	Madina		998977089398	uz		0		2020-09-06
833238280	Камол		998901132246	ru		0		2020-08-09
834171401	Nazosh		998998851317	uz		0		2020-08-26
836148285	Рахима		998998397379	ru		0		2020-08-23
838391996	Muhriddin	Mirzakharimov7	998993950712	uz		0		2020-08-31
840636543	Фозылбек		998999330043	ru		0		2020-08-09
841762185	Komiljon	Lexus_001k	998998456911	ru		0		2020-08-23
841958895	Zilola		998909547108	uz		0		2020-08-24
842356597	Носирова Мухтарам	nosirovam19	998990398123	ru		0		2020-09-07
842738606	Валентина	lyalya_e	998935076925	ru		0		2020-08-12
843119397	Dior	Maxkamov_10	998946368585	uz		0		2020-09-08
843523805	Robiya	phalenopsiis	998977675005	ru		0		2020-09-07
844268896	Masuda	za1wa_0303	998933958081	uz		0		2020-09-07
845212210	Рустам		998977274488	ru		0		2020-09-04
846768710	Malika	kmalika_handmade	998909003017	ru		0		2020-08-31
848454748	Sarvinoz	s_khane	998975734434	uz		0		2020-08-30
848733647	Dilshod	kasimovd_d	998998386444	uz		0		2020-08-09
851432881	Сохиба		998909088559	ru		0		2020-08-24
851798115	Samandar		+998977379505	uz		0		2020-08-30
852216644	Ibrohim +998998767666		998998767667	uz		0		2020-08-15
853524041	Мирсадулла	justmirka	998998109333	ru		0		2020-08-09
853545025	+998905010909	baxtik_0909_I_B_M	998905010909	ru		0		2020-08-14
854969691	Сурайё		998999012862	uz		0		2020-09-09
856415853	Shohrux	K1NG08	998976155566	uz		0		2020-09-06
857840475	Farangiz		998977571705	uz		0		2020-09-09
859321779	Tillo	DANGER_CAPlTAN	998901668293	uz		0		2020-08-09
861005517	Миромил Садиков		998946687494	ru		0		2020-09-10
861840906	Nozima	khalbaeva_n	998915053005	uz		0		2020-09-06
865492778	Dilim	Kosmetologdilim	+998902337997	uz		0		2020-08-31
865964924	Fazilat		998977477018	uz		0		2020-09-03
866103245	Мафтуна		998930044442	uz		0		2020-09-05
868965093	Sabina		998909633181	ru		0		2020-08-26
870270310	Visola		998977210798	ru		0		2020-08-10
870694682	Севара		998990111639	ru		0		2020-08-18
870740758	Dilnoza	Ninoz_sayfullayeva	998903517119	uz		0		2020-09-07
871172161	Лайло	spectrophobiaa	998909218798	ru		0		2020-08-09
873087515	Шахзода		998946595505	ru		0		2020-08-14
873175522	Guli		998909203780	uz		0		2020-08-14
873216461	Zilola		998935777774	ru		0		2020-08-09
873928306	Nozima		998935604311	uz		0		2020-09-06
875154984	иброхим	ibrokhim73	+998998390205	ru		0		2020-08-10
875694379	Saida		998946975957	uz		0		2020-08-20
876153005	Мирдийор		998998786968	ru		0		2020-09-06
876336921	Камилла	dande_1ion	998909097417	ru		0		2020-09-07
877081752	Наргиза		998971460077	ru		0		2020-08-31
877334939	Soliha		998946503430	uz		0		2020-09-09
877703839	Nilufar	Avazova_N_B	998900072575	uz		0		2020-08-26
879926986	Камола		998998976715	ru		0		2020-08-13
880257635	Абдулазиз	abdulaziz_682	998972626229	ru		0		2020-08-12
882207728	Феруза		998946596263	ru		0		2020-09-08
883094294	Гулрух		998998233991	ru		0		2020-08-09
883393724	Komola	Komola_9595	998935719955	uz		0		2020-08-09
887721954	Камолиддин	guest_7774	998977727371	ru		0		2020-08-11
888536136	Adres	Nureke_007	998977740794	uz		0		2020-09-09
889917708	Rano Samadova	Umarovan_10	998977709335	uz		0		2020-09-10
891232064	Abduraxmon		998971450770	uz		0		2020-08-21
892771117	+998931727544	Akbar_04_25	998931727544	ru		0		2020-08-13
895380287	Robiya		998975391500	uz		0		2020-08-31
896166144	Shoxista	Abralova_sh	998998850703	ru		0		2020-09-06
897553579	Nilufar		998977777675	uz		0		2020-09-06
897889378	Mukarrama		998900021112	uz		0		2020-08-24
899853592	_sevara_chocoberry		998935285666	uz		0		2020-08-09
900428242	Sevara		998900000670	uz		0		2020-08-10
900595486	998999931195	wennill	998999931195	uz		0		2020-08-09
903060273	Содиков Абдумуталиб Рустамович	sodykovofficial	+998990001822	ru		0		2020-08-22
904026606	Nargis	farhadovnaaaa	998909307181	uz		0		2020-08-09
904355339	Abduvaliyeva xadicha		998909933998	uz		0		2020-09-07
905595505	Iroda		998977289882	uz		0		2020-08-18
906657907	Шазноз		998909808544	uz		0		2020-08-30
906899925	M		998900019112	uz		0		2020-08-31
909550868	Nilufar		998998374114	uz		0		2020-09-07
909692811	Шоира		998994439948	ru		0		2020-08-08
910038984	Лайло		998901895618	ru		0		2020-08-21
911035615	Dilafruz		998930098877	uz		0		2020-09-09
912464405	Севинч	ismoilova_s_t	998909151433	ru		0		2020-09-08
913817843	Muqaddas		998903541775	uz		0		2020-08-31
914533356	ð·ðº Р		998933784558	ru		0		2020-09-01
915240198	Toshpulatova Durdona Alijon qizi		998946267016	uz		0		2020-09-09
915321784	..		998 935688658	uz		0		2020-08-20
916248341	Аъзам	azam_azka	998998685101	ru		0		2020-09-06
919574915	Robiya		998972689955	uz		0		2020-08-30
920437686	zulya		998977250007	uz		0		2020-09-08
924276602	Эъзоза	Guccifloria	998974141757	uz		0		2020-09-07
925314120	Hamrohon		998977089800	ru		0		2020-09-09
925618965	Халида		998995125069	ru		0		2020-09-07
925740928	Maxmuda		998990177008	uz		0		2020-09-07
927029920	Sevinch		998998101028	uz		0		2020-08-31
927514821	Munisa	zavkiyevna	+998903319990	ru		0		2020-08-12
930074438	Диёра	diyorasfood	998930016031	ru		0		2020-09-06
933810605	Nargiza		998996064183	uz		0		2020-09-04
936382329	Елена	elena_s18	998903231228	ru		0		2020-09-09
937159959	Rahmatillo		998976902177	uz		0		2020-08-24
937989651	Заринабону	Undis_on	998912444224	ru		0		2020-08-10
939384902	Behruz	Behruz_0940	998997100940	uz		0		2020-08-12
939529716	Diyora		+998995358810	uz		0		2020-08-10
940936808	Диля		+998974100180	ru		0		2020-08-30
945874692	Вика		998909385002	ru		0		2020-09-09
947461081	Shirin		998900264000	uz		0		2020-08-08
948967286	Нилуфар	Khadiatullaeva	998997200181	ru		0		2020-08-12
951226883	Мафтуна	maftuw_2220	998994345119	uz		0		2020-08-31
953426239	Komila	khabibullayevna_k	998998371919	uz		0		2020-08-12
954113448	Maktuba	Mirsadikova_0310	998977811223	uz		0		2020-09-09
954632319	Альфия		998913371974	ru		0		2020-09-08
954765698	Мадина		998977165456	ru		0		2020-08-30
955289219	София	Sweetybaby7	998902063077	ru		0		2020-08-27
955591969	.	rayhona_mrr	998909201199	ru		0		2020-09-07
956039575	Mohinur	lady0427	998998720427	uz		0		2020-09-01
956244622	Мухаммад		+998990039733	ru		0		2020-09-09
956517390	Shahzoda	s1ahzoda	998946053722	ru		0		2020-08-15
957136217	Feruz	Feruza_Shavkatovna	998971353538	uz		0		2020-08-08
957267123	Zebowka	Zebowka_Sanatova	998994048818	ru		0		2020-09-07
958096874	Ангелина		998917778947	ru		0		2020-08-10
958304502	Nodira		998975380107	uz		0		2020-09-06
958337270	Dilsora		998977514555	uz		0		2020-09-05
959932287	Фарзона	bakhadirova_04	998993523157	ru		0		2020-09-09
962044843	Доник	Donik_SL	998946352809	ru		0		2020-09-07
962468737	Maftuma	Y_a_p_m	998991234567	uz		0		2020-08-09
967156349	Shahzoda		998935680214	uz		0		2020-08-11
967491289	Рустам	Rustamjumabaev	998993011247	ru		0		2020-08-09
967582045	+998977680508		998977680508	ru		0		2020-09-09
968650671	Ирода	Iroday	998996650555	ru		0		2020-09-05
971432086	Muhammad	Tilla_110	998996003964	uz		0		2020-09-01
971901804	Камила	After_311	998990086900	ru		0		2020-08-16
973984579	/start		998998874911	ru		0		2020-08-19
974207421	Мохинур		998977211901	ru		0		2020-09-08
975173304	Erkinov Jafarbek	Erkinoff_J_1	998900147676	uz		0		2020-09-07
975611798	Мохизар		998975630777	ru		0		2020-08-07
975830453	Nasiba		+998935431705	uz		0		2020-08-26
976000999	Joʻrabek		+998901890606	uz		0		2020-08-13
977716421	Шахсанам		998998585550	ru		0		2020-08-31
977849065	Сагдиана	sagdi_0808	998998820808	ru		0		2020-09-06
980225110	Parvina		998946041875	uz		0		2020-08-09
982992930	Ruxsora		998994440616	uz		0		2020-09-08
985097565	Muazzam		998998514058	uz		0		2020-08-31
985300624	+99890 0003088	Year1998	998900003088	ru		0		2020-08-16
985422184	madina		998996030309	uz		0		2020-08-09
985851871	Madina	Metrika_uz	998998841402	uz		0		2020-08-13
987525613	Абдугафур		998930000767	uz		0		2020-08-09
988329638	Dilnoza	FDARAR	+998996015871	uz		0		2020-08-30
989852823	Gavhar	rga01	998903935601	uz		0		2020-09-07
991062970	Азиз		998900136507	ru		0		2020-08-11
991708613	Fazilat		998994447644	uz		0		2020-08-18
991762328	/start	Miracle1804	998993751804	ru		0		2020-09-07
991903472	Shoxobiddin	Shaxobiddin_01	998990374979	ru		0		2020-09-04
991985389	Latofat		998997000079	uz		0		2020-08-30
992382738	Zilola	febbago01	998998074099	uz		0		2020-08-10
992456810	Umida		998991013031	uz		0		2020-08-22
992586225	Дильбар		998977570032	ru		0		2020-09-06
993284807	Dip	Heaven1113	998977744922	uz		0		2020-09-10
993697778	nilufar		998911953031	uz		0		2020-09-06
993840177	Saidkomol		998994877747	uz		0		2020-08-11
994266624	Хумоюн Мирзо	uzb_O11	998903585545	ru		0		2020-08-12
994383088	Nurilloh		+998974443490	uz		0		2020-08-13
995016621	madina		998998053836	uz		0		2020-08-10
996558256	Nazokat		998998737717	uz		0		2020-08-30
997210522	Farangiz	Jakhongirovnaf	998998400059	uz		0		2020-08-22
998092165	+998997082808	mokhira_g_a	998997082808	ru		0		2020-08-09
998255889	Hurmatulloh	khabibzade_030	998977277718	uz		0		2020-08-27
998436613	Xusan		99894 6145614	uz		0		2020-08-10
998516802	Durdona		998931064141	uz		0		2020-08-30
998576686	Bochit	Bochit7777	+998977779494	uz		0		2020-09-07
998871744	Хилола		998990502404	ru		0		2020-08-13
999270777	Nilufar		998990550378	uz		0		2020-08-25
1000664719	Sevara	k_a_d_i_r_o_v_a	998909244929	uz		0		2020-09-01
1001511309	Fazliddin	Te_amo_D	998990201718	uz		0		2020-09-09
1002178100	Aziz		998900247775	ru		0		2020-08-10
1004697359	Shahnoza	shahnoza_16	998933956722	ru		0		2020-09-07
1005127798	Mubina	Gulchehra_X	998971552729	uz		0		2020-08-13
1007073972	Humora		998909636977	uz		0		2020-09-07
1007218333	IRODA	anv_i_a	998909573705	uz		0		2020-08-30
1008009206	Ramazon		998990277010	uz		0		2020-08-09
1009993361	Саодат	yuldasheva_0110	998974422723	ru		0		2020-09-04
1009999426	Шохси	Shoxsi_ibragimova	998903369647	uz		0		2020-09-09
1010290310	Zebuniso		998978578787	uz		0		2020-08-11
1010655563	Shoxrux	shokhachtoli	998990511511	uz		0		2020-08-13
1010995803	Shahzoda		+998900045818	uz		0		2020-09-08
1012433456	Dilya		998998965959	uz		0		2020-08-09
1013074756	Zulayho		998996378642	uz		0		2020-09-02
1013688936	sher	yusupoff1sh	998990013116	uz		0		2020-08-10
1013851175	Nigina		998935330743	uz		0		2020-08-10
1014315711	Sadirova odina		998977444310	uz		0		2020-08-18
1014372002	Мадина	chipseeek	998903565412	ru		0		2020-08-18
1016215074	Yusufjon	MR_VORISOFF	+998977143200	uz		0		2020-08-09
1017018673	Barno		998977213421	ru		0		2020-08-22
1018151078	Durdona		998909256006	uz		0		2020-09-07
1019268191	Диёра		998990081998	ru		0		2020-08-14
1021601371	Малика	malika314	998977176951	ru		0		2020-08-02
1023928779	Дидафруз		998971468777	ru		0		2020-09-08
1024387462	Baron		998977211010	uz		0		2020-08-12
1025714550	Noila		998909282958	uz		0		2020-08-09
1026069650	Sevara		998911956988	uz		0		2020-09-09
1028288652	shahrizoda		998990999616	uz		0		2020-08-31
1028960510	Нозима		998998829020	uz		0		2020-08-31
1029442868	Nurullaxojayev otabek	nurullaxojayev_o	998998510104	uz		0		2020-08-09
1030222628	Feruz		+998993009696	uz		0		2020-08-21
1031175996	m		998999168455	ru		0		2020-08-27
1032065627	Shahzodq		998935441498	uz		0		2020-09-08
1034076869	Abduhamid	rahmonberdiev_a	998977911999	uz		0		2020-08-12
1035376208	Farangiz		998994814095	uz		0		2020-08-13
1038255611	Ислом	tohirjonov_97	998974010204	ru		0		2020-08-15
1040882142	Sevara		998977765025	uz		0		2020-08-30
1042069466	Дилрабо		998900012662	uz		0		2020-09-07
1042912827	Индира		+998998761370	ru		0		2020-08-10
1044472599	Юлдуз	dododoyrhw	+998935408017	ru		0		2020-08-11
1044834717	Комила	M00mmmm	998998100016	ru		0		2020-09-06
1045047905	Dilrabo		+998946520800	uz		0		2020-08-26
1045094698	Madina		998993047957	uz		0		2020-09-08
1046197926	Guli	gulim_lasmaker	998994382299	uz		0		2020-08-22
1046282459	Abbos	klass_smm	998974093534	ru		0		2020-09-07
1047062152	Xadicha	gayratova_x	998946754447	uz		0		2020-08-09
1053979100	Николай		998977379329	ru		0		2020-08-09
1057308049	Madina	Arifovna_0301	998973334368	uz		0		2020-08-11
1058910604	Oqila	Oqilaxan	998998066227	uz		0		2020-09-09
1060229385	Ummu Kulsum	aminufa_uk	998931081750	uz		0		2020-08-11
1061219663	Robiya		998901204433	uz		0		2020-09-06
1062140101	Zulfiya		998998270297	uz		0		2020-08-31
1062619587	sabina		998935955611	uz		0		2020-08-09
1062793187	Дильноза	D3003Z	998974643730	ru		0		2020-09-09
1064406105	/start		+998911370999	ru		0		2020-08-11
1064582215	Shirin		998996136602	uz		0		2020-08-10
1064667684	Амирхон	amirkhon_s	998981176409	ru		0		2020-08-09
1065380833	Дарина		998990880945	ru		0		2020-09-04
1065747543	Komola		998903934474	ru		0		2020-08-27
1065994783	Afnan		998994415977	uz		0		2020-08-22
1066852197	Sardor		998990008062	uz		0		2020-08-26
1067304463	Усмонбек	USM0NBEK	998909545070	uz		0		2020-08-16
1067308982	Gulnoza	gulnoza_9	998900112121	uz		0		2020-08-11
1068750372	Korakoz		998998007553	uz		0		2020-08-30
1071418365	Azizbek		998999010061	uz		0		2020-09-07
1073531636	/Kamilla		998900176868	ru		0		2020-09-05
1074618010	Dilshod		998998762428	uz		0		2020-09-07
1075285344	MAFTUNA		998909876899	uz		0		2020-09-08
1076015131	Mirona		998999014444	ru		0		2020-08-31
1076835740	Jamoliddin	Jamoliddinxoji97	998887015500	uz		0		2020-09-09
1080833725	Камила		998971323340	ru		0		2020-08-09
1083081438	Azim		+998901252552	uz		0		2020-08-13
1086489178	Дильноза		998977579922	ru		0		2020-08-21
1087703894	Ezoza		998931064671	uz		0		2020-08-09
1088270118	Mmm		998996904255	uz		0		2020-08-11
1089781112	Висола	visola1	998904048330	ru		0		2020-08-19
1091877786	Sevara		998974808218	uz		0		2020-09-06
1095619607	Камода		998977486779	ru		0		2020-08-17
1097233820	Nilufar		+998903283822	uz		0		2020-09-09
1097761839	Гульшан	gugusi	998990198188	ru		0		2020-08-12
1101135740	Komila		998946334885	uz		0		2020-08-31
1101295389	Фериде		998900358003	ru		0		2020-09-09
1105524412	Sitora		998971304414	uz		0		2020-08-13
1106206798	Afruza		998993657235	uz		0		2020-09-09
1106534904	Madina		998977503150	uz		0		2020-08-11
1107969944	Hadiyja	BizjimginaularniAllohgasoldikk	998909712303	uz		0		2020-09-06
1110033868	Maxbuba		998977287717	uz		0		2020-08-31
1110465922	Меруерт		998900121359	ru		0		2020-09-08
1110955015	Амир	Amir_Rakhmanov	998909021363	ru		0		2020-08-11
1113856930	Farrux		998901377737	uz		0		2020-09-09
1115576317	Mohira		998904859994	uz		0		2020-09-07
1118659446	Isfandiyor	arthookahshop	+998993633777	uz		0		2020-08-31
1120168973	Мадина		998977300067	ru		0		2020-08-09
1122741162	nodira		+998998684844	uz		0		2020-08-24
1126193264	Laziza		998938088088	ru		0		2020-08-19
1129346981	Сабина		998977318224	ru		0		2020-08-12
1132026352	Lobar	l_agzamovnaA	998935866441	uz		0		2020-09-07
1132959724	/start		998974000573	ru		0		2020-09-09
1134155403	Зарина		998900349189	ru		0		2020-09-04
1135294174	Marjona		998973652423	ru		0		2020-08-30
1137867467	Sabohat		998909039885	uz		0		2020-08-10
1138871296	Bilol		+998999027391	uz		0		2020-09-04
1141495967	Bilol		+998998800772	uz		0		2020-09-07
1148234934	Malika	mel1iss	998990773457	uz		0		2020-09-08
1152725521	Ruxshona	Ruxshoonaa	+998930036002	uz		0		2020-09-08
1153038347	Ирада	iradatadj	998909335302	ru		0		2020-09-06
1153038717	Nozima		998946865597	uz		0		2020-08-30
1153673504	Shaxlo		998944264476	uz		0		2020-09-08
1154369190	mastonbek	akhrolbekov	998998397005	uz		0		2020-09-06
1154776193	Малика		998997800123	uz		0		2020-09-09
1157062836	Laylo	LayloSultanovaB	998900229994	ru		0		2020-09-03
1158913758	Мохинур		+998903351230	ru		0		2020-09-01
1158968437	Jasur		13477047766	uz		0		2020-08-09
1160785606	Abror		998905700057	uz		0		2020-09-09
1164013178	Nodira		998994096009	uz		0		2020-09-08
1165353248	Oydin		998998383060	ru		0		2020-08-18
1165843624	Dilnozaxon Nabirakhujaeva		+998997258066	uz		0		2020-09-08
1169012778	Альбина		998993742544	ru		0		2020-09-08
1170067137	Komoliddin		998909352288	uz		0		2020-08-10
1173450490	Dilorom		998991008651	uz		0		2020-09-09
1180332414	Saris	ka4apaki	998915068118	ru		0		2020-08-10
1181310152	Zuhraxon	zuhraaxon	998935027020	ru		0		2020-08-10
1182499136	Gozal		998903461979	uz		0		2020-09-05
1185428215	Elephant	elephantgroup01	998971010714	ru		0		2020-08-24
1186969535	Севинч	sevv_a	998995901904	ru		0		2020-09-08
1188023761	Nodira		+998999052535	uz		0		2020-09-08
1192081954	Илина		998901353137	ru		0		2020-08-20
1192943561	Bobur		998998856550	uz		0		2020-09-08
1196360297	Gaybulla		998946615153	uz		0		2020-09-06
1198101713	Madina		+998993734343	uz		0		2020-08-31
1200923694	Набиева Хадича		998998004569	uz		0		2020-08-09
1206814913	Azamat		998939800585	ru		0		2020-08-10
1207426620	Жасур		998909955519	ru		0		2020-08-27
1208782613	Гайбулло	iceandgoldexclusive	998946341414	ru		0		2020-08-09
1208782614	@yozing 		+998998756999		wfXXvM_mlIQWmPXrZBO5nYddEdo	0		2020-08-06
1211170776	nigina		998999097700	uz		0		2020-08-10
1211860449	Farangiz		17472274097	uz		0		2020-08-09
1213046645	Dilmurod		99899 804 68 34	uz		0		2020-08-30
1219020905	Мухаммаджон		998977400313	ru		0		2020-08-08
1219131838	Solixa		998944291551	uz		0		2020-08-12
1219365499	Iroda	brdklvaa	998946438550	ru		0		2020-08-09
1221670480	Komola		998909977468	uz		0		2020-09-07
1224702788	Farangiz		998974250889	uz		0		2020-08-10
1225593874	Dilfuza		998901571858	uz		0		2020-09-07
1226264496	сухроб		998909229363	uz		0		2020-08-30
1230849186	Ziyoda	Mir_jalilova	998974617751	uz		0		2020-09-09
1232284271	Muattar		998977686446	uz		0		2020-08-30
1233292570	+998909935066\r\nElshod		998909935066	uz		0		2020-08-14
1233414130	muslima		998995222005	uz		0		2020-09-06
1236615021	Диёра	dodokin2002	998946883010	ru		0		2020-09-07
1238428198	Maftuna		+998935959601	uz		0		2020-08-31
1238604624	Бахтиёр	Baxti_2030	998946052030	ru		0		2020-08-09
1239222834	Azizbekj		998981702707	ru		0		2020-08-15
1240123642	Lunalika		998990111883	uz		0		2020-08-08
1242044258	Вероника		998930042638	ru		0		2020-09-07
1243630439	Mushtariy		998990477876	uz		0		2020-08-30
1248848934	Samandar	alonewolf1132	998990831132	uz		0		2020-08-09
1252962808	Мухсина Камилова		998909479272	ru		0		2020-09-08
1254122256	Abdulaziz		12692621307	uz		0		2020-08-10
1267736519	Саманназ		998935813833	ru		0		2020-08-26
1271427851	Jamila		998909196206	uz		0		2020-08-10
1271590541	Настя	nastyakd1811	998971391614	ru		0		2020-08-17
1271743636	G’aybullo	rukhullaev	998990848444	uz		0		2020-08-07
1272469256	Shahlo	Shakhlo0301	998998890301	uz		0		2020-09-06
1275025094	Nargiza	ns9503	998977449593	ru		0		2020-08-14
1279756135	Ситора		998900232313	ru		0		2020-08-31
1281387313	Robiya		998990479977	uz		0		2020-08-23
1283444236	Madinabonu	Madiw_8334	998946977025	uz		0		2020-09-08
1285826482	Guli		998995810701	uz		0		2020-08-22
1285912930	zilola		998971013997	uz		0		2020-09-08
1291225030	Zulfiya		998997252559	ru		0		2020-08-25
1291956675	Samandar	Umirzakov00	998935652807	uz		0		2020-08-30
1294618325	Дениель	permanentusernames	998 99 824 80 47	ru		0		2020-08-16
1295321257	Muslima	muhammad1ya	998977154484	uz		0		2020-09-07
1295800874	Jasmina		998945480807	uz		0		2020-09-07
1297155763	islom		998997903031	ru		0		2020-08-12
1298755495	Dildora		+998977380177	uz		0		2020-09-07
1303181563	Rano		998998568845	uz		0		2020-09-07
1307130589	Nilufar		998946001497	uz		0		2020-09-09
1308831886	Aziz		998909925818	uz		0		2020-09-08
1313896035	Малика	malika_rashidovna	998901216221	ru		0		2020-09-06
1315459097	Умида	Umida_yldsh	998909519996	ru		0		2020-08-30
1315834590	Aziz		998909443034	uz		0		2020-09-02
1323072213	Maftuna		998998411103	ru		0		2020-08-31
1325778149	Dilzoda		+998930053855	uz		0		2020-08-14
1331547687	Farangiz		+998994814095	uz		0		2020-08-14
1331779936	Markhabo	otabekovvvna	998999612525	uz		0		2020-09-09
1332410099	Сунэна		+998901160709	ru		0		2020-08-22
1335899436	Жасмин		998901787413	ru		0		2020-09-06
1339717005	Mavluda		998997200910	uz		0		2020-08-31
1342062712	Farangiz		+998999211990	uz		0		2020-08-10
1347837938	Menga hozir vafli kerak		998994644870	uz		0		2020-09-07
1347946951	Shoira		+998900380311	uz		0		2020-09-06
1348931260	Badalova Aisha		998900370230	ru		0		2020-08-16
1358147870	Mubina		998909157060	ru		0		2020-08-18
1358184776	Bilol	Biloln0772	+998998800772	uz		0		2020-09-04
1358477835	Omina		998990199432	uz		0		2020-09-08
1360196135	Komola		998998062750	uz		0		2020-08-30
1362558206	Яна	chuvashka1225	998909901291	ru		0		2020-09-08
1364085299	Madina		998909299592	uz		0		2020-08-15
1374169778	Madina		998998074940	uz		0		2020-09-09
1376155643	Jasur		998935995013	uz		0		2020-08-11
1376623942	Умида		998977699898	ru		0		2020-08-31
1377370815	Диёра		998909126545	ru		0		2020-08-15
1377804508	Abdurasulovamadina		998974770773	uz		0		2020-08-16
1379297941	Maliks		998970002877	uz		0		2020-08-30
1380125902	Odina		998998540356	uz		0		2020-09-10
1380652842	Mastona		+998900147676	uz		0		2020-08-16
1383722099	Nozima		998946020242	uz		0		2020-08-09
1386729457	Malika		+998974901002	uz		0		2020-08-30
1389360817	Nilufar		998976458448	uz		0		2020-08-31
1394764430	Islom		998900375155	ru		0		2020-08-14
1395720340	Jamshid		998971054344	uz		0		2020-09-04
1397554057	+998971490445		998971490445	ru		0		2020-08-16
\.


--
-- PostgreSQL database dump complete
--

