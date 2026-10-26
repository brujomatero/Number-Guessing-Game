--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    attempts integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 50, 1);
INSERT INTO public.games VALUES (2, 100, 1);
INSERT INTO public.games VALUES (3, 4, 2);
INSERT INTO public.games VALUES (4, 11, 3);
INSERT INTO public.games VALUES (5, 9, 4);
INSERT INTO public.games VALUES (6, 166, 5);
INSERT INTO public.games VALUES (7, 335, 5);
INSERT INTO public.games VALUES (8, 189, 6);
INSERT INTO public.games VALUES (9, 307, 6);
INSERT INTO public.games VALUES (10, 35, 5);
INSERT INTO public.games VALUES (11, 614, 5);
INSERT INTO public.games VALUES (12, 841, 5);
INSERT INTO public.games VALUES (13, 33, 7);
INSERT INTO public.games VALUES (14, 231, 7);
INSERT INTO public.games VALUES (15, 645, 8);
INSERT INTO public.games VALUES (16, 280, 8);
INSERT INTO public.games VALUES (17, 373, 7);
INSERT INTO public.games VALUES (18, 72, 7);
INSERT INTO public.games VALUES (19, 938, 7);
INSERT INTO public.games VALUES (20, 728, 9);
INSERT INTO public.games VALUES (21, 583, 9);
INSERT INTO public.games VALUES (22, 268, 10);
INSERT INTO public.games VALUES (23, 691, 10);
INSERT INTO public.games VALUES (24, 795, 9);
INSERT INTO public.games VALUES (25, 263, 9);
INSERT INTO public.games VALUES (26, 678, 9);
INSERT INTO public.games VALUES (27, 82, 11);
INSERT INTO public.games VALUES (28, 412, 11);
INSERT INTO public.games VALUES (29, 793, 12);
INSERT INTO public.games VALUES (30, 696, 12);
INSERT INTO public.games VALUES (31, 384, 11);
INSERT INTO public.games VALUES (32, 76, 11);
INSERT INTO public.games VALUES (33, 523, 11);
INSERT INTO public.games VALUES (34, 456, 13);
INSERT INTO public.games VALUES (35, 249, 13);
INSERT INTO public.games VALUES (36, 943, 14);
INSERT INTO public.games VALUES (37, 686, 14);
INSERT INTO public.games VALUES (38, 755, 13);
INSERT INTO public.games VALUES (39, 196, 13);
INSERT INTO public.games VALUES (40, 743, 13);
INSERT INTO public.games VALUES (41, 429, 15);
INSERT INTO public.games VALUES (42, 218, 15);
INSERT INTO public.games VALUES (43, 690, 16);
INSERT INTO public.games VALUES (44, 577, 16);
INSERT INTO public.games VALUES (45, 469, 15);
INSERT INTO public.games VALUES (46, 533, 15);
INSERT INTO public.games VALUES (47, 647, 15);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Facu');
INSERT INTO public.users VALUES (2, 'Carlos');
INSERT INTO public.users VALUES (3, 'Fer');
INSERT INTO public.users VALUES (4, 'and');
INSERT INTO public.users VALUES (5, 'user_1793052703719');
INSERT INTO public.users VALUES (6, 'user_1793052703718');
INSERT INTO public.users VALUES (7, 'user_1793052739834');
INSERT INTO public.users VALUES (8, 'user_1793052739833');
INSERT INTO public.users VALUES (9, 'user_1793052849751');
INSERT INTO public.users VALUES (10, 'user_1793052849750');
INSERT INTO public.users VALUES (11, 'user_1793052871059');
INSERT INTO public.users VALUES (12, 'user_1793052871058');
INSERT INTO public.users VALUES (13, 'user_1793052916440');
INSERT INTO public.users VALUES (14, 'user_1793052916439');
INSERT INTO public.users VALUES (15, 'user_1793052953617');
INSERT INTO public.users VALUES (16, 'user_1793052953616');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 47, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

