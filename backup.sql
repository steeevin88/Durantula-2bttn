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
username	username	2024-02-25 06:26:18.328	2024-02-25 06:45:01.5	2024-02-25 06:45:01.499
steven	steven	2024-02-25 06:33:24.763	2024-02-25 07:09:28.097	2024-02-25 07:09:28.096
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
book_preferences_game	2024-02-25 06:49:37.634	2024-02-25 07:08:48.458	Book Preferences	\N	\N	classic	{"replacePolicy":"replace-all"}	\N
\.


--
-- Data for Name: GameObject; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."GameObject" (id, "createdAt", "updatedAt", name, description) FROM stdin;
clt15huxr0003dkl1gufulann	2024-02-25 06:50:31.263	2024-02-25 06:50:49.287	Adventure	\N
clt15hywh0004dkl1nnta72jg	2024-02-25 06:50:36.401	2024-02-25 06:50:51.05	Action	\N
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
\.


--
-- Data for Name: PlayerScore; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."PlayerScore" ("createdAt", "updatedAt", score, "playerId", "gameObjectId") FROM stdin;
2024-02-25 06:51:04.484	2024-02-25 07:09:08.603	1.000000000000000000000000000000	steven	clt15hywh0004dkl1nnta72jg
2024-02-25 06:51:04.484	2024-02-25 07:09:08.603	0.200000000000000000000000000000	steven	clt15huxr0003dkl1gufulann
\.


--
-- Data for Name: Secret; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Secret" (id, "createdAt", "updatedAt", name, description, secret) FROM stdin;
Project	2024-02-25 06:25:55.846	2024-02-25 07:00:07.21	example-secret	\N	example-secret-value
\.


--
-- Data for Name: Tag; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Tag" (id, "createdAt", "updatedAt", name, description) FROM stdin;
clt15hndo0002dkl1d4m7hrx6	2024-02-25 06:50:21.469	2024-02-25 06:50:51.045	Book Detail	\N
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
clt15huxr0003dkl1gufulann	clt15hndo0002dkl1d4m7hrx6
clt15hywh0004dkl1nnta72jg	clt15hndo0002dkl1d4m7hrx6
\.


--
-- Data for Name: _GameToTag; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."_GameToTag" ("A", "B") FROM stdin;
book_preferences_game	clt15hndo0002dkl1d4m7hrx6
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

