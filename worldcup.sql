--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(25) NOT NULL
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (277, 2018, 845, 846, 4, 2, 'Final');
INSERT INTO public.games VALUES (278, 2018, 847, 848, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (279, 2018, 846, 848, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (280, 2018, 845, 847, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (281, 2018, 846, 849, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (282, 2018, 848, 850, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (283, 2018, 847, 851, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (284, 2018, 845, 852, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (285, 2018, 848, 853, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (286, 2018, 850, 854, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (287, 2018, 847, 855, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (288, 2018, 851, 856, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (289, 2018, 846, 857, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (290, 2018, 849, 858, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (291, 2018, 852, 859, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (292, 2018, 845, 860, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (293, 2014, 861, 860, 1, 0, 'Final');
INSERT INTO public.games VALUES (294, 2014, 862, 851, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (295, 2014, 860, 862, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (296, 2014, 861, 851, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (297, 2014, 862, 863, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (298, 2014, 860, 847, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (299, 2014, 851, 853, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (300, 2014, 861, 845, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (301, 2014, 851, 864, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (302, 2014, 853, 852, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (303, 2014, 845, 865, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (304, 2014, 861, 866, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (305, 2014, 862, 856, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (306, 2014, 863, 867, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (307, 2014, 860, 854, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (308, 2014, 847, 868, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (845, 'France');
INSERT INTO public.teams VALUES (846, 'Croatia');
INSERT INTO public.teams VALUES (847, 'Belgium');
INSERT INTO public.teams VALUES (848, 'England');
INSERT INTO public.teams VALUES (849, 'Russia');
INSERT INTO public.teams VALUES (850, 'Sweden');
INSERT INTO public.teams VALUES (851, 'Brazil');
INSERT INTO public.teams VALUES (852, 'Uruguay');
INSERT INTO public.teams VALUES (853, 'Colombia');
INSERT INTO public.teams VALUES (854, 'Switzerland');
INSERT INTO public.teams VALUES (855, 'Japan');
INSERT INTO public.teams VALUES (856, 'Mexico');
INSERT INTO public.teams VALUES (857, 'Denmark');
INSERT INTO public.teams VALUES (858, 'Spain');
INSERT INTO public.teams VALUES (859, 'Portugal');
INSERT INTO public.teams VALUES (860, 'Argentina');
INSERT INTO public.teams VALUES (861, 'Germany');
INSERT INTO public.teams VALUES (862, 'Netherlands');
INSERT INTO public.teams VALUES (863, 'Costa Rica');
INSERT INTO public.teams VALUES (864, 'Chile');
INSERT INTO public.teams VALUES (865, 'Nigeria');
INSERT INTO public.teams VALUES (866, 'Algeria');
INSERT INTO public.teams VALUES (867, 'Greece');
INSERT INTO public.teams VALUES (868, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 308, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 868, true);


--
-- Name: games games_opponent_id_winner_id_year_round_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_winner_id_year_round_key UNIQUE (opponent_id, winner_id, year, round);


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
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

