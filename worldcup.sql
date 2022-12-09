--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (168, 2018, 'Final', 354, 355, 4, 2);
INSERT INTO public.games VALUES (169, 2018, 'Third Place', 356, 357, 2, 0);
INSERT INTO public.games VALUES (170, 2018, 'Semi-Final', 355, 357, 2, 1);
INSERT INTO public.games VALUES (171, 2018, 'Semi-Final', 354, 356, 1, 0);
INSERT INTO public.games VALUES (172, 2018, 'Quarter-Final', 355, 363, 3, 2);
INSERT INTO public.games VALUES (173, 2018, 'Quarter-Final', 357, 365, 2, 0);
INSERT INTO public.games VALUES (174, 2018, 'Quarter-Final', 356, 367, 2, 1);
INSERT INTO public.games VALUES (175, 2018, 'Quarter-Final', 354, 369, 2, 0);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 357, 371, 2, 1);
INSERT INTO public.games VALUES (177, 2018, 'Eighth-Final', 365, 373, 1, 0);
INSERT INTO public.games VALUES (178, 2018, 'Eighth-Final', 356, 375, 3, 2);
INSERT INTO public.games VALUES (179, 2018, 'Eighth-Final', 367, 377, 2, 0);
INSERT INTO public.games VALUES (180, 2018, 'Eighth-Final', 355, 379, 2, 1);
INSERT INTO public.games VALUES (181, 2018, 'Eighth-Final', 363, 381, 2, 1);
INSERT INTO public.games VALUES (182, 2018, 'Eighth-Final', 369, 383, 2, 1);
INSERT INTO public.games VALUES (183, 2018, 'Eighth-Final', 354, 385, 4, 3);
INSERT INTO public.games VALUES (184, 2014, 'Final', 386, 385, 1, 0);
INSERT INTO public.games VALUES (185, 2014, 'Third Place', 388, 367, 3, 0);
INSERT INTO public.games VALUES (186, 2014, 'Semi-Final', 385, 388, 1, 0);
INSERT INTO public.games VALUES (187, 2014, 'Semi-Final', 386, 367, 7, 1);
INSERT INTO public.games VALUES (188, 2014, 'Quarter-Final', 388, 395, 1, 0);
INSERT INTO public.games VALUES (189, 2014, 'Quarter-Final', 385, 356, 1, 0);
INSERT INTO public.games VALUES (190, 2014, 'Quarter-Final', 367, 371, 2, 1);
INSERT INTO public.games VALUES (191, 2014, 'Quarter-Final', 386, 354, 1, 0);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 367, 403, 2, 1);
INSERT INTO public.games VALUES (193, 2014, 'Eighth-Final', 371, 369, 2, 0);
INSERT INTO public.games VALUES (194, 2014, 'Eighth-Final', 354, 407, 2, 0);
INSERT INTO public.games VALUES (195, 2014, 'Eighth-Final', 386, 409, 2, 1);
INSERT INTO public.games VALUES (196, 2014, 'Eighth-Final', 388, 377, 2, 1);
INSERT INTO public.games VALUES (197, 2014, 'Eighth-Final', 395, 413, 2, 1);
INSERT INTO public.games VALUES (198, 2014, 'Eighth-Final', 385, 373, 1, 0);
INSERT INTO public.games VALUES (199, 2014, 'Eighth-Final', 356, 417, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (354, 'France');
INSERT INTO public.teams VALUES (355, 'Croatia');
INSERT INTO public.teams VALUES (356, 'Belgium');
INSERT INTO public.teams VALUES (357, 'England');
INSERT INTO public.teams VALUES (363, 'Russia');
INSERT INTO public.teams VALUES (365, 'Sweden');
INSERT INTO public.teams VALUES (367, 'Brazil');
INSERT INTO public.teams VALUES (369, 'Uruguay');
INSERT INTO public.teams VALUES (371, 'Colombia');
INSERT INTO public.teams VALUES (373, 'Switzerland');
INSERT INTO public.teams VALUES (375, 'Japan');
INSERT INTO public.teams VALUES (377, 'Mexico');
INSERT INTO public.teams VALUES (379, 'Denmark');
INSERT INTO public.teams VALUES (381, 'Spain');
INSERT INTO public.teams VALUES (383, 'Portugal');
INSERT INTO public.teams VALUES (385, 'Argentina');
INSERT INTO public.teams VALUES (386, 'Germany');
INSERT INTO public.teams VALUES (388, 'Netherlands');
INSERT INTO public.teams VALUES (395, 'Costa Rica');
INSERT INTO public.teams VALUES (403, 'Chile');
INSERT INTO public.teams VALUES (407, 'Nigeria');
INSERT INTO public.teams VALUES (409, 'Algeria');
INSERT INTO public.teams VALUES (413, 'Greece');
INSERT INTO public.teams VALUES (417, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 199, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 417, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

