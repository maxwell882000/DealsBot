--
-- PostgreSQL database dump
--

-- Dumped from database version 10.14 (Ubuntu 10.14-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.14 (Ubuntu 10.14-0ubuntu0.18.04.1)

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
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


--
-- Name: cart_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_items (
    id integer NOT NULL,
    user_id integer,
    dish_id integer,
    count integer
);


--
-- Name: cart_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cart_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cart_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cart_items_id_seq OWNED BY public.cart_items.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    text character varying(100),
    user_id integer,
    username character varying(100)
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: dish_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dish_categories (
    id integer NOT NULL,
    name character varying(100),
    name_uz character varying(100),
    number integer,
    lft integer NOT NULL,
    rgt integer NOT NULL,
    level integer NOT NULL,
    tree_id integer,
    parent_id integer,
    image_id character varying(150),
    image_path character varying(150)
);


--
-- Name: dish_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dish_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dish_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dish_categories_id_seq OWNED BY public.dish_categories.id;


--
-- Name: dishes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dishes (
    id integer NOT NULL,
    name character varying(100),
    name_uz character varying(100),
    image_id character varying(150),
    image_path character varying(150),
    description character varying(500),
    description_uz character varying(500),
    is_hidden boolean,
    price double precision,
    number integer,
    category_id integer,
    show_usd boolean,
    quantity integer
);


--
-- Name: dishes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dishes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dishes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dishes_id_seq OWNED BY public.dishes.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.locations (
    id integer NOT NULL,
    latitude double precision,
    longitude double precision,
    address character varying(100),
    order_id integer
);


--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;


--
-- Name: notification_chats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notification_chats (
    chat_id integer NOT NULL,
    chat_title character varying(100)
);


--
-- Name: notification_chats_chat_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notification_chats_chat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notification_chats_chat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notification_chats_chat_id_seq OWNED BY public.notification_chats.chat_id;


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_items (
    id integer NOT NULL,
    order_id integer,
    dish_id integer,
    count integer
);


--
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    user_id integer,
    user_name character varying(100),
    shipping_method character varying(50),
    payment_method character varying(50),
    address_txt character varying(100),
    phone_number character varying(15),
    confirmed boolean,
    confirmation_date timestamp without time zone,
    delivery_price integer,
    total_amount double precision,
    distance character varying(15)
);


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: registration_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.registration_requests (
    id integer NOT NULL,
    user_id integer,
    phone_number character varying(20),
    tg_username character varying(100),
    username character varying(100),
    created_at timestamp without time zone
);


--
-- Name: registration_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.registration_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: registration_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.registration_requests_id_seq OWNED BY public.registration_requests.id;


--
-- Name: user_admins; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_admins (
    id integer NOT NULL,
    email character varying(100),
    password_hash character varying(120)
);


--
-- Name: user_admins_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_admins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_admins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_admins_id_seq OWNED BY public.user_admins.id;


--
-- Name: user_dish; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_dish (
    user_id integer NOT NULL,
    dish_id integer
);


--
-- Name: user_dish_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_dish_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_dish_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_dish_user_id_seq OWNED BY public.user_dish.user_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    full_user_name character varying(100),
    username character varying(100),
    phone_number character varying(15),
    language character varying(5),
    token character varying(50),
    confirmed boolean,
    telegram_id integer,
    registration_date timestamp without time zone,
    accept_policy boolean
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: cart_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_items ALTER COLUMN id SET DEFAULT nextval('public.cart_items_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: dish_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dish_categories ALTER COLUMN id SET DEFAULT nextval('public.dish_categories_id_seq'::regclass);


--
-- Name: dishes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dishes ALTER COLUMN id SET DEFAULT nextval('public.dishes_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);


--
-- Name: notification_chats chat_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_chats ALTER COLUMN chat_id SET DEFAULT nextval('public.notification_chats_chat_id_seq'::regclass);


--
-- Name: order_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: registration_requests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.registration_requests ALTER COLUMN id SET DEFAULT nextval('public.registration_requests_id_seq'::regclass);


--
-- Name: user_admins id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_admins ALTER COLUMN id SET DEFAULT nextval('public.user_admins_id_seq'::regclass);


--
-- Name: user_dish user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_dish ALTER COLUMN user_id SET DEFAULT nextval('public.user_dish_user_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.alembic_version (version_num) FROM stdin;
825d5878cecb
\.


--
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_items (id, user_id, dish_id, count) FROM stdin;
4	1021601371	1	1
5	1021601371	38	1
12	202624021	68	1
24	76777495	1	1
25	1208782613	34	1
26	202624021	82	3
27	583411442	103	5
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comments (id, text, user_id, username) FROM stdin;
1	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	64925540	Владимир Мякота
2	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	311723796	Aliev
3	Hammasi yoqdi ⭐️⭐️⭐️⭐️⭐️	56008096	Маъруф Жўрабоев
4	Всё понравилось ⭐️⭐️⭐️⭐️⭐️	1294618325	Точка Точковна.
\.


--
-- Data for Name: dish_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.dish_categories (id, name, name_uz, number, lft, rgt, level, tree_id, parent_id, image_id, image_path) FROM stdin;
\.


--
-- Data for Name: dishes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.dishes (id, name, name_uz, image_id, image_path, description, description_uz, is_hidden, price, number, category_id, show_usd, quantity) FROM stdin;
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locations (id, latitude, longitude, address, order_id) FROM stdin;
2	41.3627129999999994	69.2382900000000063	Узбекистан, Ташкент, Олмазорский район, махалля Гулсарой	2
19	41.3626099999999965	69.23827	Узбекистан, Ташкент, Олмазорский район, махалля Гулсарой	5
22	41.3626099999999965	69.23827	Узбекистан, Ташкент, Олмазорский район, махалля Гулсарой	30
23	41.3023450000000025	69.2295500000000033	Узбекистан, Ташкент, 2-й проезд Козиробод	44
25	41.3144399999999976	69.1897199999999941	Узбекистан, Ташкент, улица Марс	46
28	41.2961999999999989	69.2806499999999943	Узбекистан, Ташкент, улица Саида Барака	49
29	41.3628599999999977	69.2382099999999951	Узбекистан, Ташкент, Олмазорский район, махалля Гулсарой	56
30	41.3626099999999965	69.23827	Узбекистан, Ташкент, Олмазорский район, махалля Гулсарой	57
31	41.3627400000000023	69.2388839999999988	Узбекистан, Ташкент, Карасарайская улица, 325Б	59
32	41.2961099999999988	69.2804950000000019	Узбекистан, Ташкент, улица Саида Барака	60
33	41.2962599999999966	69.2807799999999929	Узбекистан, Ташкент, улица Саида Барака	61
34	41.3845370000000017	69.2676850000000002	Узбекистан, Ташкент, махалля Хасанбой	65
35	41.3845370000000017	69.2676850000000002	Узбекистан, Ташкент, махалля Хасанбой	66
\.


--
-- Data for Name: notification_chats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.notification_chats (chat_id, chat_title) FROM stdin;
-616274168	icegoldgroup
-542940444	asd
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: -
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
135	49	38	1
139	51	68	1
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
177	59	56	5
178	59	2	1
179	59	99	5
180	60	38	1
181	60	96	5
182	60	98	1
183	60	68	2
184	60	90	7
185	61	34	1
186	62	6	8
187	63	82	6
188	64	93	5
189	65	99	9
190	66	93	5
191	67	103	5
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orders (id, user_id, user_name, shipping_method, payment_method, address_txt, phone_number, confirmed, confirmation_date, delivery_price, total_amount, distance) FROM stdin;
\.


--
-- Data for Name: registration_requests; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.registration_requests (id, user_id, phone_number, tg_username, username, created_at) FROM stdin;
\.


--
-- Data for Name: user_admins; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_admins (id, email, password_hash) FROM stdin;
1	admin@example.com	pbkdf2:sha256:150000$mqgOLfNO$1b9e134780b95a45d6de2e1b74c3326cfc1fe064aaa8fbec24c1aadcabedf720
\.


--
-- Data for Name: user_dish; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_dish (user_id, dish_id) FROM stdin;
76777495	1
311723796	1
518109259	1
190643941	2
202624021	2
628662870	2
56008096	3
816743	34
3120828	34
155962879	34
1208782613	34
1021601371	38
735995	52
42162733	70
1271743636	70
102570577	95
583411442	103
64925540	104
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, full_user_name, username, phone_number, language, token, confirmed, telegram_id, registration_date, accept_policy) FROM stdin;
735995  Dilovar by_dilovar  998909995674    ru  \N   2020-08-05
816743  Dg  SunEdition  998901001616    uz  \N   2020-08-05
\.


--
-- Name: cart_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cart_items_id_seq', 43, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_id_seq', 3, true);


--
-- Name: dish_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.dish_categories_id_seq', 274, true);


--
-- Name: dishes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.dishes_id_seq', 787, true);


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.locations_id_seq', 4, true);


--
-- Name: notification_chats_chat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.notification_chats_chat_id_seq', 1, false);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_items_id_seq', 32, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.orders_id_seq', 13, true);


--
-- Name: registration_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.registration_requests_id_seq', 1, false);


--
-- Name: user_admins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_admins_id_seq', 2, true);


--
-- Name: user_dish_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_dish_user_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: cart_items cart_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: dish_categories dish_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dish_categories
    ADD CONSTRAINT dish_categories_pkey PRIMARY KEY (id);


--
-- Name: dishes dishes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dishes
    ADD CONSTRAINT dishes_pkey PRIMARY KEY (id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: notification_chats notification_chats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_chats
    ADD CONSTRAINT notification_chats_pkey PRIMARY KEY (chat_id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: registration_requests registration_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.registration_requests
    ADD CONSTRAINT registration_requests_pkey PRIMARY KEY (id);


--
-- Name: user_admins user_admins_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_admins
    ADD CONSTRAINT user_admins_pkey PRIMARY KEY (id);


--
-- Name: user_dish user_dish_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_dish
    ADD CONSTRAINT user_dish_pkey PRIMARY KEY (user_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: dish_categories_level_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX dish_categories_level_idx ON public.dish_categories USING btree (level);


--
-- Name: dish_categories_lft_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX dish_categories_lft_idx ON public.dish_categories USING btree (lft);


--
-- Name: dish_categories_rgt_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX dish_categories_rgt_idx ON public.dish_categories USING btree (rgt);


--
-- Name: ix_user_admins_email; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_user_admins_email ON public.user_admins USING btree (email);


--
-- Name: ix_user_dish_dish_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_user_dish_dish_id ON public.user_dish USING btree (dish_id);


--
-- Name: ix_user_dish_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_user_dish_user_id ON public.user_dish USING btree (user_id);


--
-- Name: dish_categories dish_categories_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dish_categories
    ADD CONSTRAINT dish_categories_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.dish_categories(id) ON DELETE CASCADE;


--
-- Name: dishes dishes_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dishes
    ADD CONSTRAINT dishes_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.dish_categories(id);


--
-- Name: orders orders_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

