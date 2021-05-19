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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO telegrambot;

--
-- Name: cart_items; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.cart_items (
    id integer NOT NULL,
    user_id integer,
    dish_id integer,
    count integer
);


ALTER TABLE public.cart_items OWNER TO telegrambot;

--
-- Name: cart_items_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.cart_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_items_id_seq OWNER TO telegrambot;

--
-- Name: cart_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.cart_items_id_seq OWNED BY public.cart_items.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    text character varying(100),
    user_id integer,
    username character varying(100)
);


ALTER TABLE public.comments OWNER TO telegrambot;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO telegrambot;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: dish_categories; Type: TABLE; Schema: public; Owner: telegrambot
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


ALTER TABLE public.dish_categories OWNER TO telegrambot;

--
-- Name: dish_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.dish_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dish_categories_id_seq OWNER TO telegrambot;

--
-- Name: dish_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.dish_categories_id_seq OWNED BY public.dish_categories.id;


--
-- Name: dishes; Type: TABLE; Schema: public; Owner: telegrambot
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


ALTER TABLE public.dishes OWNER TO telegrambot;

--
-- Name: dishes_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.dishes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dishes_id_seq OWNER TO telegrambot;

--
-- Name: dishes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.dishes_id_seq OWNED BY public.dishes.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.locations (
    id integer NOT NULL,
    latitude double precision,
    longitude double precision,
    address character varying(100),
    order_id integer
);


ALTER TABLE public.locations OWNER TO telegrambot;

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_id_seq OWNER TO telegrambot;

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;


--
-- Name: notification_chats; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.notification_chats (
    chat_id integer NOT NULL,
    chat_title character varying(100)
);


ALTER TABLE public.notification_chats OWNER TO telegrambot;

--
-- Name: notification_chats_chat_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.notification_chats_chat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_chats_chat_id_seq OWNER TO telegrambot;

--
-- Name: notification_chats_chat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.notification_chats_chat_id_seq OWNED BY public.notification_chats.chat_id;


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.order_items (
    id integer NOT NULL,
    order_id integer,
    dish_id integer,
    count integer
);


ALTER TABLE public.order_items OWNER TO telegrambot;

--
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_items_id_seq OWNER TO telegrambot;

--
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: telegrambot
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


ALTER TABLE public.orders OWNER TO telegrambot;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO telegrambot;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: registration_requests; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.registration_requests (
    id integer NOT NULL,
    user_id integer,
    phone_number character varying(20),
    tg_username character varying(100),
    username character varying(100),
    created_at timestamp without time zone
);


ALTER TABLE public.registration_requests OWNER TO telegrambot;

--
-- Name: registration_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.registration_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.registration_requests_id_seq OWNER TO telegrambot;

--
-- Name: registration_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.registration_requests_id_seq OWNED BY public.registration_requests.id;


--
-- Name: user_admins; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.user_admins (
    id integer NOT NULL,
    email character varying(100),
    password_hash character varying(120)
);


ALTER TABLE public.user_admins OWNER TO telegrambot;

--
-- Name: user_admins_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.user_admins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_admins_id_seq OWNER TO telegrambot;

--
-- Name: user_admins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.user_admins_id_seq OWNED BY public.user_admins.id;


--
-- Name: user_dish; Type: TABLE; Schema: public; Owner: telegrambot
--

CREATE TABLE public.user_dish (
    user_id integer NOT NULL,
    dish_id integer
);


ALTER TABLE public.user_dish OWNER TO telegrambot;

--
-- Name: user_dish_user_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.user_dish_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_dish_user_id_seq OWNER TO telegrambot;

--
-- Name: user_dish_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.user_dish_user_id_seq OWNED BY public.user_dish.user_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: telegrambot
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


ALTER TABLE public.users OWNER TO telegrambot;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: telegrambot
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO telegrambot;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telegrambot
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: cart_items id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.cart_items ALTER COLUMN id SET DEFAULT nextval('public.cart_items_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: dish_categories id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.dish_categories ALTER COLUMN id SET DEFAULT nextval('public.dish_categories_id_seq'::regclass);


--
-- Name: dishes id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.dishes ALTER COLUMN id SET DEFAULT nextval('public.dishes_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);


--
-- Name: notification_chats chat_id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.notification_chats ALTER COLUMN chat_id SET DEFAULT nextval('public.notification_chats_chat_id_seq'::regclass);


--
-- Name: order_items id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: registration_requests id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.registration_requests ALTER COLUMN id SET DEFAULT nextval('public.registration_requests_id_seq'::regclass);


--
-- Name: user_admins id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.user_admins ALTER COLUMN id SET DEFAULT nextval('public.user_admins_id_seq'::regclass);


--
-- Name: user_dish user_id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.user_dish ALTER COLUMN user_id SET DEFAULT nextval('public.user_dish_user_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.alembic_version (version_num) FROM stdin;
3ddb763db202
\.


--
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.cart_items (id, user_id, dish_id, count) FROM stdin;
12	465632014	\N	1
19	465632014	727	1
26	465632014	749	2
28	1294618325	727	1
30	1294618325	707	1
31	1294618325	749	2
34	1294618325	705	1
35	1294618325	740	1
42	64925540	730	4
43	583411442	727	1
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.comments (id, text, user_id, username) FROM stdin;
3	/start	64925540	Владимир Мякота
\.


--
-- Data for Name: dish_categories; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.dish_categories (id, name, name_uz, number, lft, rgt, level, tree_id, parent_id, image_id, image_path) FROM stdin;
263	Супы	Супы	1	1	2	1	2	\N	\N	\N
264	Роллы	Роллы	1	1	2	1	3	\N	\N	\N
265	Роллы горячие	Роллы горячие	1	1	2	1	4	\N	\N	\N
266	WOK	WOK	1	1	2	1	5	\N	\N	\N
267	Горячие закуски	Горячие закуски	1	1	2	1	6	\N	\N	\N
268	Суши	Суши	1	1	2	1	7	\N	\N	\N
269	Салаты	Салаты	1	1	2	1	8	\N	\N	\N
270	Сендвич роллы	Сендвич роллы	1	1	2	1	9	\N	\N	\N
271	Топинг	Топинг	1	1	2	1	10	\N	\N	\N
262	Сеты	Сеты	1	1	4	1	1	\N	\N	\N
274	sushi	cola	1	2	3	2	1	262	\N	\N
\.


--
-- Data for Name: dishes; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.dishes (id, name, name_uz, image_id, image_path, description, description_uz, is_hidden, price, number, category_id, show_usd, quantity) FROM stdin;
740	Стеклянный	Стеклянный	\N	\N	Стеклянный	Стеклянный	f	0	1	266	f	1
696	Филоман 	Филоман 	\N	\N	Филоман 	Филоман 	f	0	1	262	f	24
697	Океан	Океан	\N	\N	Океан	Океан	f	0	1	262	f	104
698	SeriYaki 	SeriYaki 	\N	\N	SeriYaki 	SeriYaki 	f	0	1	262	f	44
699	Cold Action	Cold Action	\N	\N	Cold Action	Cold Action	f	0	1	262	f	24
700	Hot Action	Hot Action	\N	\N	Hot Action	Hot Action	f	0	1	262	f	24
701	Spicy Action	Spicy Action	\N	\N	Spicy Action	Spicy Action	f	0	1	262	f	24
702	1 кг запеченных роллов	1 кг запеченных роллов	\N	\N	1 кг запеченных роллов	1 кг запеченных роллов	f	0	1	262	f	150
703	1,5 кг роллов	1,5 кг роллов	\N	\N	1,5 кг роллов	1,5 кг роллов	f	0	1	262	f	150
704	Большая пятница	Большая пятница	\N	\N	Большая пятница	Большая пятница	f	0	1	262	f	80
705	Веган	Веган	\N	\N	Веган	Веган	f	0	1	262	f	1
706	Том Ям	Том Ям	\N	\N	Том Ям	Том Ям	f	0	1	263	f	1
707	Ким Чи	Ким Чи	\N	\N	Ким Чи	Ким Чи	f	0	1	263	f	1
708	Сливочный Лосось	Сливочный Лосось	\N	\N	Сливочный Лосось	Сливочный Лосось	f	0	1	263	f	1
709	Миса 	Миса 	\N	\N	Миса 	Миса 	f	0	1	263	f	1
710	Филаделфия Классик	Филаделфия Классик	\N	\N	Филаделфия Классик	Филаделфия Классик	f	0	1	264	f	8
711	Филаделфия Шеф 	Филаделфия Шеф 	\N	\N	Филаделфия Шеф 	Филаделфия Шеф 	f	0	1	264	f	8
712	Филаделфия Грин	Филаделфия Грин	\N	\N	Филаделфия Грин	Филаделфия Грин	f	0	1	264	f	8
713	Филаделфия Масага	Филаделфия Масага	\N	\N	Филаделфия Масага	Филаделфия Масага	f	0	1	264	f	8
714	Филаделфия Угорь	Филаделфия Угорь	\N	\N	Филаделфия Угорь	Филаделфия Угорь	f	0	1	264	f	8
715	Калифорния Классик	Калифорния Классик	\N	\N	Калифорния Классик	Калифорния Классик	f	0	1	264	f	8
716	Калифорния Угорь	Калифорния Угорь	\N	\N	Калифорния Угорь	Калифорния Угорь	f	0	1	264	f	8
717	Калифорния Крем-краб	Калифорния Крем-краб	\N	\N	Калифорния Крем-краб	Калифорния Крем-краб	f	0	1	264	f	8
718	Калифорния Креветки	Калифорния Креветки	\N	\N	Калифорния Креветки	Калифорния Креветки	f	0	1	264	f	8
719	Мини краб	Мини краб	\N	\N	Мини краб	Мини краб	f	0	1	264	f	12
720	Мини огурец	Мини огурец	\N	\N	Мини огурец	Мини огурец	f	0	1	264	f	12
721	Мини угорь	Мини угорь	\N	\N	Мини угорь	Мини угорь	f	0	1	264	f	12
722	Мини креветки	Мини креветки	\N	\N	Мини креветки	Мини креветки	f	0	1	264	f	12
723	Мини Лосось	Мини Лосось	\N	\N	Мини Лосось	Мини Лосось	f	0	1	264	f	12
724	Бурито	Бурито	\N	\N	Бурито	Бурито	f	0	1	264	f	8
725	Инь Янь	Инь Янь	\N	\N	Инь Янь	Инь Янь	f	0	1	264	f	8
726	Ким бап	Ким бап	\N	\N	Ким бап	Ким бап	f	0	1	264	f	8
727	Горячая тройка	Горячая тройка	\N	\N	Горячая тройка	Горячая тройка	f	0	1	265	f	8
728	Креветки шеф	Креветки шеф	\N	\N	Креветки шеф	Креветки шеф	f	0	1	265	f	8
729	Заводной апельсин 	Заводной апельсин 	\N	\N	Заводной апельсин 	Заводной апельсин 	f	0	1	265	f	8
730	Аяши	Аяши	\N	\N	Аяши	Аяши	f	0	1	265	f	8
731	Филаделфия гриль	Филаделфия гриль	\N	\N	Филаделфия гриль	Филаделфия гриль	f	0	1	265	f	8
732	Муви жареный	Муви жареный	\N	\N	Муви жареный	Муви жареный	f	0	1	265	f	8
733	Калифорния в темпуре 	Калифорния в темпуре 	\N	\N	Калифорния в темпуре 	Калифорния в темпуре 	f	0	1	265	f	8
734	Румяный	Румяный	\N	\N	Румяный	Румяный	f	0	1	265	f	8
735	Горячий лосось 	Горячий лосось 	\N	\N	Горячий лосось 	Горячий лосось 	f	0	1	265	f	8
736	Краб хот 	Краб хот 	\N	\N	Краб хот 	Краб хот 	f	0	1	265	f	8
737	Сырный 	Сырный 	\N	\N	Сырный 	Сырный 	f	0	1	265	f	8
738	Легенда	Легенда	\N	\N	Легенда	Легенда	f	0	1	265	f	8
739	Креветки 	Креветки 	\N	\N	Креветки 	Креветки 	f	0	1	265	f	8
741	Удон	Удон	\N	\N	Удон	Удон	f	0	1	266	f	8
742	Яичный	Яичный	\N	\N	Яичный	Яичный	f	0	1	266	f	8
743	Соба	Соба	\N	\N	Соба	Соба	f	0	1	266	f	8
744	Рис Веган	Рис Веган	\N	\N	Рис Веган	Рис Веган	f	0	1	266	f	8
786	sushi	sushii	\N	\N	hj	hg	f	23000	1	\N	f	4
749	Веган	Веган	\N	\N	Веган	Веган	f	0	1	266	f	6
761	Лосось 	Лосось 	\N	\N	Лосось 	Лосось 	f	0	1	268	f	0
745	Рис Гов	Рис Гов	\N	\N	Рис Гов	Рис Гов	f	0	1	266	f	8
746	Рис Бар	Рис Бар	\N	\N	Рис Бар	Рис Бар	f	0	1	266	f	8
747	Рис с рыбой	Рис с рыбой	\N	\N	Рис с рыбой	Рис с рыбой	f	0	1	266	f	8
748	Курица с овощами в кислосладком соусе 	Курица с овощами в кислосладком соусе 	\N	\N	Курица с овощами в кислосладком соусе 	Курица с овощами в кислосладком соусе 	f	0	1	266	f	8
750	Гов с древесными грибами	Гов с древесными грибами	\N	\N	Гов с древесными грибами	Гов с древесными грибами	f	0	1	266	f	8
751	Креветки в темпуре	Креветки в темпуре	\N	\N	Креветки в темпуре	Креветки в темпуре	f	0	1	267	f	8
752	Мидии в темпуре	Мидии в темпуре	\N	\N	Мидии в темпуре	Мидии в темпуре	f	0	1	267	f	8
753	Гребешки в темпуре	Гребешки в темпуре	\N	\N	Гребешки в темпуре	Гребешки в темпуре	f	0	1	267	f	8
754	Лосось в темпуре	Лосось в темпуре	\N	\N	Лосось в темпуре	Лосось в темпуре	f	0	1	267	f	8
755	Овощи в темпуре	Овощи в темпуре	\N	\N	Овощи в темпуре	Овощи в темпуре	f	0	1	267	f	8
756	Голень куриная в терияки 	Голень куриная в терияки 	\N	\N	Голень куриная в терияки 	Голень куриная в терияки 	f	0	1	267	f	8
757	Крылышки в терияки 	Крылышки в терияки 	\N	\N	Крылышки в терияки 	Крылышки в терияки 	f	0	1	267	f	8
758	мини асорти	мини асорти	\N	\N	мини асорти	мини асорти	f	0	1	267	f	8
759	макси асорти 	макси асорти 	\N	\N	макси асорти 	макси асорти 	f	0	1	267	f	8
760	Sushi set	Sushi set	\N	\N	Sushi set	Sushi set	f	0	1	268	f	8
762	Угорь	Угорь	\N	\N	Угорь	Угорь	f	0	1	268	f	8
763	Запеч мидии 	Запеч мидии 	\N	\N	Запеч мидии 	Запеч мидии 	f	0	1	268	f	8
764	Суши чука 	Суши чука 	\N	\N	Суши чука 	Суши чука 	f	0	1	268	f	8
765	Чука	Чука	\N	\N	Чука	Чука	f	0	1	269	f	8
766	Греческий	Греческий	\N	\N	Греческий	Греческий	f	0	1	269	f	8
767	Курица	Курица	\N	\N	Курица	Курица	f	0	1	270	f	8
768	Лосось	Лосось	\N	\N	Лосось	Лосось	f	0	1	270	f	8
769	Кукуруза	Кукуруза	\N	\N	Кукуруза	Кукуруза	f	0	1	271	f	8
770	Грибы шитаки	Грибы шитаки	\N	\N	Грибы шитаки	Грибы шитаки	f	0	1	271	f	8
771	Грибы шамп	Грибы шамп	\N	\N	Грибы шамп	Грибы шамп	f	0	1	271	f	8
772	Вешенки	Вешенки	\N	\N	Вешенки	Вешенки	f	0	1	271	f	8
773	Сыр моцарелла	Сыр моцарелла	\N	\N	Сыр моцарелла	Сыр моцарелла	f	0	1	271	f	8
774	Зел горох	Зел горох	\N	\N	Зел горох	Зел горох	f	0	1	271	f	8
775	Паприка красная	Паприка красная	\N	\N	Паприка красная	Паприка красная	f	0	1	271	f	8
776	Гов	Гов	\N	\N	Гов	Гов	f	0	1	271	f	8
777	Бар	Бар	\N	\N	Бар	Бар	f	0	1	271	f	8
778	Кур	Кур	\N	\N	Кур	Кур	f	0	1	271	f	8
779	Соуса 	Соуса 	\N	\N	Соуса 	Соуса 	f	0	1	271	f	8
780	Лосось	Лосось	\N	\N	Лосось	Лосось	f	0	1	271	f	8
781	Креветки	Креветки	\N	\N	Креветки	Креветки	f	0	1	271	f	8
782	Мидии	Мидии	\N	\N	Мидии	Мидии	f	0	1	271	f	8
783	Салатные криветки 	Салатные криветки 	\N	\N	Салатные криветки 	Салатные криветки 	f	0	1	271	f	8
784	Ананас 	Ананас 	\N	\N	Ананас 	Ананас 	f	0	1	271	f	8
785	Омлет 	Омлет 	\N	\N	Омлет 	Омлет 	f	0	1	271	f	8
787	lklkljlk	lkjlkjlkjlnin	\N	\N	j	bkm	f	23000	1	274	f	4
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.locations (id, latitude, longitude, address, order_id) FROM stdin;
2	41.344695999999999	69.3439319999999952	Узбекистан, Ташкент, улица Шахриабад	3
3	41.3468659999999986	69.3506569999999982	Узбекистан, Ташкент, Мирзо-Улугбекский район, массив Буз-2, 7	4
4	41.2078720000000018	69.1928220000000067	Узбекистан, Ташкент, Сергелийский район, массив Сергели-IX, 83	12
\.


--
-- Data for Name: notification_chats; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.notification_chats (chat_id, chat_title) FROM stdin;
-472717355	Notify
-422407350	IZOBILE оповещения
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.order_items (id, order_id, dish_id, count) FROM stdin;
5	4	\N	1
6	5	\N	1
4	3	\N	4
10	7	740	5
11	7	749	2
12	8	761	5
13	9	761	1
14	10	761	2
15	11	740	2
26	13	712	8
27	13	740	1
28	12	727	1
29	12	707	1
30	12	749	2
31	12	705	1
32	12	740	1
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.orders (id, user_id, user_name, shipping_method, payment_method, address_txt, phone_number, confirmed, confirmation_date, delivery_price, total_amount, distance) FROM stdin;
3	465632014	Nvrbckdown	delivery	cash	\N	998909643469	t	2020-09-05 18:57:00.340227	16000	2016000	(4.2,км)
4	465632014	Nvrbckdown	delivery	cash	\N	998909643469	t	2020-09-05 19:01:53.766247	19000	21000	(4.8,км)
13	583411442	\N	delivery	\N	\N	\N	f	\N	\N	\N	\N
5	1294618325	q	delivery	cash	фыв	+79032024978	t	2020-09-05 19:02:04.643506	\N	2000	\N
12	1294618325	\N	delivery	cash	\N	79032024978	f	\N	82700	\N	(15.7,км)
7	1294618325	q	delivery	cash	asd	+79032024978	t	2020-09-05 19:31:49.979587	\N	0	\N
8	583411442	sd	delivery	cash	asa	998977777777	t	2020-09-05 19:33:17.851136	\N	0	\N
9	583411442	sd	delivery	cash	ds	998977777777	t	2020-09-05 19:34:05.877551	\N	0	\N
10	583411442	sd	delivery	cash	sdsa	998977777777	t	2020-09-05 19:34:49.112921	\N	0	\N
11	64925540	Владимир	delivery	cash	шайхонтахур	+998935856774	t	2020-09-06 18:20:02.957726	\N	0	\N
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
2	admin@example.com	pbkdf2:sha256:150000$rIEj3Dmf$140a895554b891c644c87ec18b37f1e5d84ccb600e95204911904da86acd2622
\.


--
-- Data for Name: user_dish; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.user_dish (user_id, dish_id) FROM stdin;
1294618325	759
64925540	754
583411442	764
465632014	749
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: telegrambot
--

COPY public.users (id, full_user_name, username, phone_number, language, token, confirmed, telegram_id, registration_date, accept_policy) FROM stdin;
465632014	Nvrbckdown	Nvrbckdown	998909643469	ru	\N	\N	\N	2020-09-05 18:56:16.330438	t
64925540	Владимир	BJIaDMuP	+998935856774	ru	\N	\N	\N	2020-09-05 19:11:00.552207	t
155962879	Мурад	Seo_of_vid_uz	+998909408196	ru	\N	\N	\N	2020-09-05 19:16:24.936597	t
1294618325	q	permanentusernames	79032024978	ru	\N	\N	\N	2020-09-05 17:39:33.543152	\N
583411442	sd	zakking1	998977777777	ru	\N	\N	\N	2020-09-05 19:30:26.945585	t
\.


--
-- Name: cart_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.cart_items_id_seq', 43, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.comments_id_seq', 3, true);


--
-- Name: dish_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.dish_categories_id_seq', 274, true);


--
-- Name: dishes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.dishes_id_seq', 787, true);


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.locations_id_seq', 4, true);


--
-- Name: notification_chats_chat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.notification_chats_chat_id_seq', 1, false);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.order_items_id_seq', 32, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.orders_id_seq', 13, true);


--
-- Name: registration_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.registration_requests_id_seq', 1, false);


--
-- Name: user_admins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.user_admins_id_seq', 2, true);


--
-- Name: user_dish_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.user_dish_user_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telegrambot
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: cart_items cart_items_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: dish_categories dish_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.dish_categories
    ADD CONSTRAINT dish_categories_pkey PRIMARY KEY (id);


--
-- Name: dishes dishes_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.dishes
    ADD CONSTRAINT dishes_pkey PRIMARY KEY (id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: notification_chats notification_chats_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.notification_chats
    ADD CONSTRAINT notification_chats_pkey PRIMARY KEY (chat_id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: registration_requests registration_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.registration_requests
    ADD CONSTRAINT registration_requests_pkey PRIMARY KEY (id);


--
-- Name: user_admins user_admins_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.user_admins
    ADD CONSTRAINT user_admins_pkey PRIMARY KEY (id);


--
-- Name: user_dish user_dish_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.user_dish
    ADD CONSTRAINT user_dish_pkey PRIMARY KEY (user_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: dish_categories_level_idx; Type: INDEX; Schema: public; Owner: telegrambot
--

CREATE INDEX dish_categories_level_idx ON public.dish_categories USING btree (level);


--
-- Name: dish_categories_lft_idx; Type: INDEX; Schema: public; Owner: telegrambot
--

CREATE INDEX dish_categories_lft_idx ON public.dish_categories USING btree (lft);


--
-- Name: dish_categories_rgt_idx; Type: INDEX; Schema: public; Owner: telegrambot
--

CREATE INDEX dish_categories_rgt_idx ON public.dish_categories USING btree (rgt);


--
-- Name: ix_user_admins_email; Type: INDEX; Schema: public; Owner: telegrambot
--

CREATE INDEX ix_user_admins_email ON public.user_admins USING btree (email);


--
-- Name: ix_user_dish_dish_id; Type: INDEX; Schema: public; Owner: telegrambot
--

CREATE INDEX ix_user_dish_dish_id ON public.user_dish USING btree (dish_id);


--
-- Name: ix_user_dish_user_id; Type: INDEX; Schema: public; Owner: telegrambot
--

CREATE INDEX ix_user_dish_user_id ON public.user_dish USING btree (user_id);


--
-- Name: cart_items cart_items_dish_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_dish_id_fkey FOREIGN KEY (dish_id) REFERENCES public.dishes(id) ON DELETE SET NULL;


--
-- Name: cart_items cart_items_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: comments comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: dish_categories dish_categories_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.dish_categories
    ADD CONSTRAINT dish_categories_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.dish_categories(id) ON DELETE CASCADE;


--
-- Name: dishes dishes_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.dishes
    ADD CONSTRAINT dishes_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.dish_categories(id);


--
-- Name: locations locations_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: order_items order_items_dish_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_dish_id_fkey FOREIGN KEY (dish_id) REFERENCES public.dishes(id) ON DELETE SET NULL;


--
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: orders orders_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: telegrambot
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

