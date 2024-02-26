--
-- PostgreSQL database dump
--

-- Dumped from database version 13.14 (Debian 13.14-1.pgdg120+2)
-- Dumped by pg_dump version 13.14 (Debian 13.14-1.pgdg120+2)

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
-- Name: AdminCredential; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."AdminCredential" (
    username text NOT NULL,
    "hashedPassword" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."AdminCredential" OWNER TO username;

--
-- Name: AdminOAuthAllowList; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."AdminOAuthAllowList" (
    email text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."AdminOAuthAllowList" OWNER TO username;

--
-- Name: AdminUser; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."AdminUser" (
    id text NOT NULL,
    "displayName" text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "lastSeen" timestamp(3) without time zone
);


ALTER TABLE public."AdminUser" OWNER TO username;

--
-- Name: Example; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Example" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Example" OWNER TO username;

--
-- Name: Game; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Game" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    description text,
    "defaultNumItemsPerRound" integer,
    mode text NOT NULL,
    "modeConfigJson" text,
    "customCss" text
);


ALTER TABLE public."Game" OWNER TO username;

--
-- Name: GameObject; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."GameObject" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    description text
);


ALTER TABLE public."GameObject" OWNER TO username;

--
-- Name: GameObjectRelationship; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."GameObjectRelationship" (
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "weightId" text NOT NULL,
    "fromGameObjectId" text NOT NULL,
    "toGameObjectId" text NOT NULL
);


ALTER TABLE public."GameObjectRelationship" OWNER TO username;

--
-- Name: Player; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Player" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    name text
);


ALTER TABLE public."Player" OWNER TO username;

--
-- Name: PlayerScore; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."PlayerScore" (
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    score numeric(65,30) NOT NULL,
    "playerId" text NOT NULL,
    "gameObjectId" text NOT NULL
);


ALTER TABLE public."PlayerScore" OWNER TO username;

--
-- Name: Secret; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Secret" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    name text,
    description text,
    secret text NOT NULL
);


ALTER TABLE public."Secret" OWNER TO username;

--
-- Name: Tag; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Tag" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    description text
);


ALTER TABLE public."Tag" OWNER TO username;

--
-- Name: Weight; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Weight" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    name text,
    description text,
    weight numeric(65,30) NOT NULL
);


ALTER TABLE public."Weight" OWNER TO username;

--
-- Name: _GameObjectToTag; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."_GameObjectToTag" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_GameObjectToTag" OWNER TO username;

--
-- Name: _GameToTag; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."_GameToTag" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_GameToTag" OWNER TO username;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO username;

--
-- Data for Name: AdminCredential; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."AdminCredential" (username, "hashedPassword", "createdAt", "updatedAt") FROM stdin;
username	28e2299b2a4740f837d539bb856f280644a6246018ef6f5fa890b2118e57e256	2024-02-25 06:26:18.328	2024-02-25 06:26:18.328
steven	966ca472c1e8ee8b98345fac51426f55b77ba994a16e5d146ce32e93b79bc78b	2024-02-25 06:33:24.763	2024-02-25 06:33:24.763
\.


--
-- Data for Name: AdminOAuthAllowList; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."AdminOAuthAllowList" (email, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: AdminUser; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."AdminUser" (id, "displayName", "createdAt", "updatedAt", "lastSeen") FROM stdin;
username	username	2024-02-25 06:26:18.328	2024-02-26 01:03:22.913	2024-02-26 01:03:22.912
steven	steven	2024-02-25 06:33:24.763	2024-02-26 01:00:08.947	2024-02-26 01:00:08.946
\.


--
-- Data for Name: Example; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Example" (id, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Game" (id, "createdAt", "updatedAt", name, description, "defaultNumItemsPerRound", mode, "modeConfigJson", "customCss") FROM stdin;
book_preferences_game	2024-02-25 06:49:37.634	2024-02-26 01:01:59.31	Book Preferences	\N	9	classic	{"replacePolicy":"keep-picked"}	\N
\.


--
-- Data for Name: GameObject; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."GameObject" (id, "createdAt", "updatedAt", name, description) FROM stdin;
clt24hdtq000acdy0wvvgr9xw	2024-02-25 23:09:55.647	2024-02-25 23:09:57.503	Horror	\N
clt28bnbl000ccdy0xferb2hg	2024-02-26 00:57:26.482	2024-02-26 00:57:29.079	Comics	\N
clt15huxr0003dkl1gufulann	2024-02-25 06:50:31.263	2024-02-26 01:00:08.665	Adventure	\N
clt15hywh0004dkl1nnta72jg	2024-02-25 06:50:36.401	2024-02-26 01:00:08.665	Action	\N
clt1wl4aa0000cdy0al7w0wdw	2024-02-25 19:28:52.973	2024-02-26 01:00:08.665	Mystery	\N
clt1wp0300001cdy01s8xh7ex	2024-02-25 19:31:54.155	2024-02-26 01:00:08.665	Fantasy	\N
clt1x7tdu0002cdy0l9hbnayl	2024-02-25 19:46:31.938	2024-02-26 01:00:08.665	Romance	\N
clt1yfu4l0003cdy0ek3pquhc	2024-02-25 20:20:45.765	2024-02-26 01:00:08.665	Nonfiction	\N
clt1ygta70006cdy0ulfobxxc	2024-02-25 20:21:31.327	2024-02-26 01:00:08.665	Biography	\N
clt24g06q0007cdy0r8ud3pit	2024-02-25 23:08:51.314	2024-02-26 01:00:08.665	Poetry	\N
clt1ygh2s0005cdy0m9mtcu8z	2024-02-25 20:21:15.508	2024-02-26 01:02:51.127	Picture Books	\N
clt1yg8p80004cdy0l79gq0ri	2024-02-25 20:21:04.652	2024-02-26 01:02:55.504	Historical Fiction	\N
clt24hjns000bcdy0al5xf3zg	2024-02-25 23:10:03.209	2024-02-26 01:03:02.546	Graphic Novels	\N
clt24gtrb0009cdy0avvtn56n	2024-02-25 23:09:29.639	2024-02-26 01:03:06.44	Fairy Tale	\N
clt24g6je0008cdy0gnrm79p2	2024-02-25 23:08:59.546	2024-02-26 01:03:09.207	Young Adult	\N
\.


--
-- Data for Name: GameObjectRelationship; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."GameObjectRelationship" ("createdAt", "updatedAt", "weightId", "fromGameObjectId", "toGameObjectId") FROM stdin;
\.


--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Player" (id, "createdAt", "updatedAt", name) FROM stdin;
steven	2024-02-25 06:50:55.779	2024-02-25 06:50:55.779	\N
username	2024-02-25 19:36:51.719	2024-02-25 19:36:51.719	\N
f843abc1-2814-48e0-a438-ab57048a8fbf	2024-02-25 20:07:00.361	2024-02-25 20:07:00.361	connie
ebd938e6-5c6a-4975-95a9-79985362d320	2024-02-25 20:38:24.933	2024-02-25 20:38:24.933	test
d6c01aa8-d569-4bfd-8fe1-3bea51c6233b	2024-02-25 21:43:10.716	2024-02-25 21:43:10.716	meow
5c559274-1c90-49eb-b8ce-ed3b0a912694	2024-02-25 22:49:49.617	2024-02-25 22:49:49.617	meow
30d957fd-19fe-4083-9017-a8872ee7cb44	2024-02-25 23:02:26.702	2024-02-25 23:02:26.702	meoww
753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	2024-02-26 00:36:41.978	2024-02-26 00:36:41.978	coonie
\.


--
-- Data for Name: PlayerScore; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."PlayerScore" ("createdAt", "updatedAt", score, "playerId", "gameObjectId") FROM stdin;
2024-02-25 06:51:04.484	2024-02-25 07:09:08.603	1.000000000000000000000000000000	steven	clt15hywh0004dkl1nnta72jg
2024-02-25 06:51:04.484	2024-02-25 07:09:08.603	0.200000000000000000000000000000	steven	clt15huxr0003dkl1gufulann
2024-02-25 21:43:14.013	2024-02-25 22:42:52.103	0.000000000000000000000000000000	d6c01aa8-d569-4bfd-8fe1-3bea51c6233b	clt1ygta70006cdy0ulfobxxc
2024-02-25 22:25:13.051	2024-02-25 22:42:52.103	1.000000000000000000000000000000	d6c01aa8-d569-4bfd-8fe1-3bea51c6233b	clt1wl4aa0000cdy0al7w0wdw
2024-02-25 21:51:05.93	2024-02-25 22:42:52.103	0.333333332694184000000000000000	d6c01aa8-d569-4bfd-8fe1-3bea51c6233b	clt1ygh2s0005cdy0m9mtcu8z
2024-02-25 21:43:14.013	2024-02-25 22:42:52.103	0.000000001917448033131661000000	d6c01aa8-d569-4bfd-8fe1-3bea51c6233b	clt1wp0300001cdy01s8xh7ex
2024-02-25 22:49:58.944	2024-02-25 22:49:58.962	0.384615384615384600000000000000	5c559274-1c90-49eb-b8ce-ed3b0a912694	clt15hywh0004dkl1nnta72jg
2024-02-25 22:49:58.944	2024-02-25 22:49:58.962	0.000000000000000000000000000000	5c559274-1c90-49eb-b8ce-ed3b0a912694	clt1wp0300001cdy01s8xh7ex
2024-02-25 22:49:58.944	2024-02-25 22:49:58.962	0.000000000000000000000000000000	5c559274-1c90-49eb-b8ce-ed3b0a912694	clt15huxr0003dkl1gufulann
2024-02-25 22:49:58.944	2024-02-25 22:49:58.962	0.000000000000000000000000000000	5c559274-1c90-49eb-b8ce-ed3b0a912694	clt1ygh2s0005cdy0m9mtcu8z
2024-02-25 20:38:30.83	2024-02-25 21:35:40.726	0.124615028614379600000000000000	ebd938e6-5c6a-4975-95a9-79985362d320	clt1ygta70006cdy0ulfobxxc
2024-02-25 20:43:22.734	2024-02-25 21:35:40.726	0.000000000000000000000000000000	ebd938e6-5c6a-4975-95a9-79985362d320	clt1x7tdu0002cdy0l9hbnayl
2024-02-25 22:49:58.944	2024-02-25 22:49:58.962	0.000000000000000000000000000000	5c559274-1c90-49eb-b8ce-ed3b0a912694	clt1x7tdu0002cdy0l9hbnayl
2024-02-25 22:49:58.944	2024-02-25 22:49:58.962	1.000000000000000000000000000000	5c559274-1c90-49eb-b8ce-ed3b0a912694	clt1yg8p80004cdy0l79gq0ri
2024-02-25 19:36:51.733	2024-02-25 19:48:26.137	0.430769230769230600000000000000	username	clt1wp0300001cdy01s8xh7ex
2024-02-25 19:47:54.325	2024-02-25 19:48:26.137	0.461538461538461200000000000000	username	clt1x7tdu0002cdy0l9hbnayl
2024-02-25 19:36:51.733	2024-02-25 19:48:26.137	0.030769230769230770000000000000	username	clt1wl4aa0000cdy0al7w0wdw
2024-02-25 19:36:51.733	2024-02-25 19:48:26.137	1.000000000000000000000000000000	username	clt15hywh0004dkl1nnta72jg
2024-02-25 19:36:51.733	2024-02-25 19:48:26.137	0.430769230769230600000000000000	username	clt15huxr0003dkl1gufulann
2024-02-25 20:07:02.727	2024-02-25 20:37:52.127	0.014891179839633440000000000000	f843abc1-2814-48e0-a438-ab57048a8fbf	clt1x7tdu0002cdy0l9hbnayl
2024-02-25 20:23:42.919	2024-02-25 20:37:52.127	0.000000000000000000000000000000	f843abc1-2814-48e0-a438-ab57048a8fbf	clt1yfu4l0003cdy0ek3pquhc
2024-02-25 20:27:08.122	2024-02-25 20:37:52.127	0.375715922107674700000000000000	f843abc1-2814-48e0-a438-ab57048a8fbf	clt1ygta70006cdy0ulfobxxc
2024-02-25 20:27:35.41	2024-02-25 20:37:52.127	0.573883161512027600000000000000	f843abc1-2814-48e0-a438-ab57048a8fbf	clt1yg8p80004cdy0l79gq0ri
2024-02-25 20:07:02.727	2024-02-25 20:37:52.127	1.000000000000000000000000000000	f843abc1-2814-48e0-a438-ab57048a8fbf	clt15hywh0004dkl1nnta72jg
2024-02-25 20:07:02.727	2024-02-25 20:37:52.127	0.412371134020618500000000000000	f843abc1-2814-48e0-a438-ab57048a8fbf	clt15huxr0003dkl1gufulann
2024-02-25 20:07:09.464	2024-02-25 20:37:52.127	0.879725085910653000000000000000	f843abc1-2814-48e0-a438-ab57048a8fbf	clt1wp0300001cdy01s8xh7ex
2024-02-25 20:07:02.727	2024-02-25 20:37:52.127	0.187857961053837200000000000000	f843abc1-2814-48e0-a438-ab57048a8fbf	clt1wl4aa0000cdy0al7w0wdw
2024-02-25 21:43:34.868	2024-02-25 22:42:52.103	0.153906301831017200000000000000	d6c01aa8-d569-4bfd-8fe1-3bea51c6233b	clt1yg8p80004cdy0l79gq0ri
2024-02-25 20:38:30.83	2024-02-25 21:35:40.726	0.000000000000000000000000000000	ebd938e6-5c6a-4975-95a9-79985362d320	clt1wl4aa0000cdy0al7w0wdw
2024-02-25 20:38:30.83	2024-02-25 21:35:40.726	0.000016714893403184440000000000	ebd938e6-5c6a-4975-95a9-79985362d320	clt15hywh0004dkl1nnta72jg
2024-02-25 20:43:22.734	2024-02-25 21:35:40.726	1.000000000000000000000000000000	ebd938e6-5c6a-4975-95a9-79985362d320	clt1wp0300001cdy01s8xh7ex
2024-02-25 20:38:30.83	2024-02-25 21:35:40.726	0.000000008073852628032568000000	ebd938e6-5c6a-4975-95a9-79985362d320	clt15huxr0003dkl1gufulann
2024-02-25 20:38:30.83	2024-02-25 21:35:40.726	0.000001854967641290481000000000	ebd938e6-5c6a-4975-95a9-79985362d320	clt1ygh2s0005cdy0m9mtcu8z
2024-02-25 20:43:22.734	2024-02-25 21:35:40.726	0.000000000000000000000000000000	ebd938e6-5c6a-4975-95a9-79985362d320	clt1yfu4l0003cdy0ek3pquhc
2024-02-25 20:38:30.83	2024-02-25 21:35:40.726	0.001538018464061280000000000000	ebd938e6-5c6a-4975-95a9-79985362d320	clt1yg8p80004cdy0l79gq0ri
2024-02-25 21:51:22.803	2024-02-25 22:42:52.103	0.051175740784955680000000000000	d6c01aa8-d569-4bfd-8fe1-3bea51c6233b	clt1yfu4l0003cdy0ek3pquhc
2024-02-25 23:02:37.215	2024-02-25 23:23:51.355	0.000000000000000000000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt15huxr0003dkl1gufulann
2024-02-25 21:50:38.55	2024-02-25 22:42:52.103	0.000000000000000000000000000000	d6c01aa8-d569-4bfd-8fe1-3bea51c6233b	clt15huxr0003dkl1gufulann
2024-02-25 21:43:14.013	2024-02-25 22:42:52.103	0.025398330654402770000000000000	d6c01aa8-d569-4bfd-8fe1-3bea51c6233b	clt1x7tdu0002cdy0l9hbnayl
2024-02-25 21:55:56.605	2024-02-25 22:42:52.103	0.007581591440450623000000000000	d6c01aa8-d569-4bfd-8fe1-3bea51c6233b	clt15hywh0004dkl1nnta72jg
2024-02-26 00:37:02.032	2024-02-26 01:12:20.121	1.000000000000000000000000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt15huxr0003dkl1gufulann
2024-02-26 00:37:02.032	2024-02-26 01:12:20.121	0.000152429008076055000000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt1x7tdu0002cdy0l9hbnayl
2024-02-26 00:37:02.032	2024-02-26 01:12:20.121	0.000062321508425191570000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt15hywh0004dkl1nnta72jg
2024-02-25 23:02:37.215	2024-02-25 23:23:51.355	1.000000000000000000000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt15hywh0004dkl1nnta72jg
2024-02-25 23:02:37.215	2024-02-25 23:23:51.355	0.009966777408637875000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt1ygh2s0005cdy0m9mtcu8z
2024-02-25 23:10:44.077	2024-02-25 23:23:51.355	0.000000000000000000000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt24gtrb0009cdy0avvtn56n
2024-02-25 23:10:44.077	2024-02-25 23:23:51.355	0.000000000000000000000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt1wp0300001cdy01s8xh7ex
2024-02-25 23:22:16.213	2024-02-25 23:23:51.355	0.000000000000000000000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt1x7tdu0002cdy0l9hbnayl
2024-02-25 23:10:44.077	2024-02-25 23:23:51.355	0.008305647840531562000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt1ygta70006cdy0ulfobxxc
2024-02-25 23:02:37.215	2024-02-25 23:23:51.355	0.000000000000000000000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt1yg8p80004cdy0l79gq0ri
2024-02-25 23:02:37.215	2024-02-25 23:23:51.355	0.000000000000000000000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt1wl4aa0000cdy0al7w0wdw
2024-02-25 23:10:44.077	2024-02-25 23:23:51.355	0.000000000000000000000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt24hdtq000acdy0wvvgr9xw
2024-02-25 23:22:16.213	2024-02-25 23:23:51.355	0.000000000000000000000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt24g6je0008cdy0gnrm79p2
2024-02-25 23:02:37.215	2024-02-25 23:23:51.355	0.003322259136212624000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt1yfu4l0003cdy0ek3pquhc
2024-02-25 23:22:16.213	2024-02-25 23:23:51.355	0.000000000000000000000000000000	30d957fd-19fe-4083-9017-a8872ee7cb44	clt24hjns000bcdy0al5xf3zg
2024-02-26 00:37:02.032	2024-02-26 01:12:20.121	0.000000006323333308832522000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt1ygta70006cdy0ulfobxxc
2024-02-26 00:37:02.032	2024-02-26 01:12:20.121	0.000000003793999985299516000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt24hdtq000acdy0wvvgr9xw
2024-02-26 00:37:02.032	2024-02-26 01:12:20.121	0.000000000000000000000000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt1wp0300001cdy01s8xh7ex
2024-02-26 00:37:02.032	2024-02-26 01:12:20.121	0.000000000000000000000000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt1yfu4l0003cdy0ek3pquhc
2024-02-26 00:37:02.032	2024-02-26 01:12:20.121	0.000000404693331765281500000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt24hjns000bcdy0al5xf3zg
2024-02-26 00:54:22.954	2024-02-26 01:12:20.121	0.000000000000000000000000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt24g6je0008cdy0gnrm79p2
2024-02-26 01:04:48.374	2024-02-26 01:12:20.121	0.000000000000000000000000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt24gtrb0009cdy0avvtn56n
2024-02-26 00:37:02.032	2024-02-26 01:12:20.121	0.000006826670640215592000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt1ygh2s0005cdy0m9mtcu8z
2024-02-26 00:56:58.96	2024-02-26 01:12:20.121	0.000000000000000000000000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt1yg8p80004cdy0l79gq0ri
2024-02-26 00:37:02.032	2024-02-26 01:12:20.121	0.000000000000000000000000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt24g06q0007cdy0r8ud3pit
2024-02-26 00:54:22.954	2024-02-26 01:12:20.121	0.005045686108449649000000000000	753f9a00-7c8c-4ee8-b7e8-b23c55479fd8	clt1wl4aa0000cdy0al7w0wdw
\.


--
-- Data for Name: Secret; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Secret" (id, "createdAt", "updatedAt", name, description, secret) FROM stdin;
Project	2024-02-25 06:25:55.846	2024-02-25 20:25:35.402	example-secret	\N	example-secret-value
\.


--
-- Data for Name: Tag; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Tag" (id, "createdAt", "updatedAt", name, description) FROM stdin;
clt28eo52000dcdy03d2j3z95	2024-02-26 00:59:47.51	2024-02-26 01:03:09.201	Book Preferences	\N
\.


--
-- Data for Name: Weight; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Weight" (id, "createdAt", "updatedAt", name, description, weight) FROM stdin;
LOW	2024-02-25 06:25:55.851	2024-02-25 06:25:55.851	LOW	\N	0.100000000000000000000000000000
MEDIUM	2024-02-25 06:25:55.852	2024-02-25 06:25:55.852	MEDIUM	\N	0.250000000000000000000000000000
HIGH	2024-02-25 06:25:55.852	2024-02-25 06:25:55.852	HIGH	\N	0.500000000000000000000000000000
\.


--
-- Data for Name: _GameObjectToTag; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."_GameObjectToTag" ("A", "B") FROM stdin;
clt15huxr0003dkl1gufulann	clt28eo52000dcdy03d2j3z95
clt15hywh0004dkl1nnta72jg	clt28eo52000dcdy03d2j3z95
clt1wl4aa0000cdy0al7w0wdw	clt28eo52000dcdy03d2j3z95
clt1wp0300001cdy01s8xh7ex	clt28eo52000dcdy03d2j3z95
clt1x7tdu0002cdy0l9hbnayl	clt28eo52000dcdy03d2j3z95
clt1yfu4l0003cdy0ek3pquhc	clt28eo52000dcdy03d2j3z95
clt1ygta70006cdy0ulfobxxc	clt28eo52000dcdy03d2j3z95
clt24g06q0007cdy0r8ud3pit	clt28eo52000dcdy03d2j3z95
clt24hjns000bcdy0al5xf3zg	clt28eo52000dcdy03d2j3z95
clt24gtrb0009cdy0avvtn56n	clt28eo52000dcdy03d2j3z95
clt24g6je0008cdy0gnrm79p2	clt28eo52000dcdy03d2j3z95
\.


--
-- Data for Name: _GameToTag; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."_GameToTag" ("A", "B") FROM stdin;
book_preferences_game	clt28eo52000dcdy03d2j3z95
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
62b1ee17-f9d4-4b20-b694-0dc7d97aa701	2ce77ae0cb668e7ba3c6b44dd75315617e1263da967a96c3957e02680106861a	2024-02-25 06:25:55.417042+00	20240223030209_init	\N	\N	2024-02-25 06:25:55.348388+00	1
\.


--
-- Name: AdminCredential AdminCredential_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."AdminCredential"
    ADD CONSTRAINT "AdminCredential_pkey" PRIMARY KEY (username);


--
-- Name: AdminOAuthAllowList AdminOAuthAllowList_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."AdminOAuthAllowList"
    ADD CONSTRAINT "AdminOAuthAllowList_pkey" PRIMARY KEY (email);


--
-- Name: AdminUser AdminUser_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."AdminUser"
    ADD CONSTRAINT "AdminUser_pkey" PRIMARY KEY (id);


--
-- Name: Example Example_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Example"
    ADD CONSTRAINT "Example_pkey" PRIMARY KEY (id);


--
-- Name: GameObjectRelationship GameObjectRelationship_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."GameObjectRelationship"
    ADD CONSTRAINT "GameObjectRelationship_pkey" PRIMARY KEY ("fromGameObjectId", "toGameObjectId");


--
-- Name: GameObject GameObject_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."GameObject"
    ADD CONSTRAINT "GameObject_pkey" PRIMARY KEY (id);


--
-- Name: Game Game_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Game"
    ADD CONSTRAINT "Game_pkey" PRIMARY KEY (id);


--
-- Name: PlayerScore PlayerScore_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."PlayerScore"
    ADD CONSTRAINT "PlayerScore_pkey" PRIMARY KEY ("playerId", "gameObjectId");


--
-- Name: Player Player_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Player"
    ADD CONSTRAINT "Player_pkey" PRIMARY KEY (id);


--
-- Name: Secret Secret_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Secret"
    ADD CONSTRAINT "Secret_pkey" PRIMARY KEY (id);


--
-- Name: Tag Tag_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY (id);


--
-- Name: Weight Weight_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Weight"
    ADD CONSTRAINT "Weight_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: _GameObjectToTag_AB_unique; Type: INDEX; Schema: public; Owner: username
--

CREATE UNIQUE INDEX "_GameObjectToTag_AB_unique" ON public."_GameObjectToTag" USING btree ("A", "B");


--
-- Name: _GameObjectToTag_B_index; Type: INDEX; Schema: public; Owner: username
--

CREATE INDEX "_GameObjectToTag_B_index" ON public."_GameObjectToTag" USING btree ("B");


--
-- Name: _GameToTag_AB_unique; Type: INDEX; Schema: public; Owner: username
--

CREATE UNIQUE INDEX "_GameToTag_AB_unique" ON public."_GameToTag" USING btree ("A", "B");


--
-- Name: _GameToTag_B_index; Type: INDEX; Schema: public; Owner: username
--

CREATE INDEX "_GameToTag_B_index" ON public."_GameToTag" USING btree ("B");


--
-- Name: AdminCredential AdminCredential_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."AdminCredential"
    ADD CONSTRAINT "AdminCredential_username_fkey" FOREIGN KEY (username) REFERENCES public."AdminUser"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: AdminOAuthAllowList AdminOAuthAllowList_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."AdminOAuthAllowList"
    ADD CONSTRAINT "AdminOAuthAllowList_email_fkey" FOREIGN KEY (email) REFERENCES public."AdminUser"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: GameObjectRelationship GameObjectRelationship_fromGameObjectId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."GameObjectRelationship"
    ADD CONSTRAINT "GameObjectRelationship_fromGameObjectId_fkey" FOREIGN KEY ("fromGameObjectId") REFERENCES public."GameObject"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: GameObjectRelationship GameObjectRelationship_toGameObjectId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."GameObjectRelationship"
    ADD CONSTRAINT "GameObjectRelationship_toGameObjectId_fkey" FOREIGN KEY ("toGameObjectId") REFERENCES public."GameObject"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: GameObjectRelationship GameObjectRelationship_weightId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."GameObjectRelationship"
    ADD CONSTRAINT "GameObjectRelationship_weightId_fkey" FOREIGN KEY ("weightId") REFERENCES public."Weight"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: PlayerScore PlayerScore_gameObjectId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."PlayerScore"
    ADD CONSTRAINT "PlayerScore_gameObjectId_fkey" FOREIGN KEY ("gameObjectId") REFERENCES public."GameObject"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: PlayerScore PlayerScore_playerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."PlayerScore"
    ADD CONSTRAINT "PlayerScore_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES public."Player"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _GameObjectToTag _GameObjectToTag_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."_GameObjectToTag"
    ADD CONSTRAINT "_GameObjectToTag_A_fkey" FOREIGN KEY ("A") REFERENCES public."GameObject"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _GameObjectToTag _GameObjectToTag_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."_GameObjectToTag"
    ADD CONSTRAINT "_GameObjectToTag_B_fkey" FOREIGN KEY ("B") REFERENCES public."Tag"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _GameToTag _GameToTag_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."_GameToTag"
    ADD CONSTRAINT "_GameToTag_A_fkey" FOREIGN KEY ("A") REFERENCES public."Game"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _GameToTag _GameToTag_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."_GameToTag"
    ADD CONSTRAINT "_GameToTag_B_fkey" FOREIGN KEY ("B") REFERENCES public."Tag"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

