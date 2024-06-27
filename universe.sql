--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    coordinates integer,
    weight_in_kg integer,
    temperature_in_celsius numeric,
    description text NOT NULL,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: meteorite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteorite (
    meteorite_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(50) NOT NULL
);


ALTER TABLE public.meteorite OWNER TO freecodecamp;

--
-- Name: meteorite_id_meteorite_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteorite_id_meteorite_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteorite_id_meteorite_seq OWNER TO freecodecamp;

--
-- Name: meteorite_id_meteorite_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteorite_id_meteorite_seq OWNED BY public.meteorite.meteorite_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    coordinates integer,
    weight_in_kg integer,
    temperature_in_celsius numeric,
    description text NOT NULL,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    coordinates integer,
    weight_in_kg integer,
    temperature_in_celsius numeric,
    description text NOT NULL,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    coordinates integer,
    weight_in_kg integer,
    temperature_in_celsius numeric,
    description text NOT NULL,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: meteorite meteorite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite ALTER COLUMN meteorite_id SET DEFAULT nextval('public.meteorite_id_meteorite_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 100, 3000000, 30.1, 'A good galaxy from universe', true);
INSERT INTO public.galaxy VALUES (2, 'Beseste', 200, 4000000, 30.6, 'A good galaxy from universe', true);
INSERT INTO public.galaxy VALUES (3, 'Stradivarius', 300, 4500000, 30.4, 'A good galaxy from universe', true);
INSERT INTO public.galaxy VALUES (4, 'Artifice', 400, 3500000, 30.2, 'A good galaxy from universe', true);
INSERT INTO public.galaxy VALUES (5, 'Krokota', 500, 6500000, 40.2, 'A good galaxy from universe', false);
INSERT INTO public.galaxy VALUES (6, 'Estatfi', 700, 1500000, 25.2, 'A good galaxy from universe', true);


--
-- Data for Name: meteorite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteorite VALUES (1, 'meteorite 1', 'good meteorite');
INSERT INTO public.meteorite VALUES (2, 'meteorite 2', 'good meteorite');
INSERT INTO public.meteorite VALUES (3, 'meteorite 3', 'good meteorite');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan 1', 1522, 456, -200.3, 'A good moon from planet', false, 1);
INSERT INTO public.moon VALUES (2, 'Titan 2', 1522, 456, -200.3, 'A good moon from planet', false, 1);
INSERT INTO public.moon VALUES (3, 'Titan 3', 1522, 456, -200.3, 'A good moon from planet', false, 1);
INSERT INTO public.moon VALUES (4, 'Titan 4', 1522, 456, -200.3, 'A good moon from planet', false, 1);
INSERT INTO public.moon VALUES (5, 'Titan 5', 1522, 456, -200.3, 'A good moon from planet', false, 1);
INSERT INTO public.moon VALUES (6, 'Experimentation 1', 1529, 482, -500.6, 'A good moon from planet', false, 2);
INSERT INTO public.moon VALUES (7, 'Experimentation 2', 1529, 482, -500.6, 'A good moon from planet', false, 2);
INSERT INTO public.moon VALUES (8, 'Experimentation 3', 1529, 482, -500.6, 'A good moon from planet', false, 2);
INSERT INTO public.moon VALUES (9, 'Experimentation 4', 1529, 482, -500.6, 'A good moon from planet', false, 2);
INSERT INTO public.moon VALUES (10, 'Experimentation 5', 1529, 482, -500.6, 'A good moon from planet', false, 2);
INSERT INTO public.moon VALUES (11, 'Vow 1', 1611, 682, -100.6, 'A good moon from planet', false, 3);
INSERT INTO public.moon VALUES (12, 'Vow 2', 1611, 682, -100.6, 'A good moon from planet', false, 3);
INSERT INTO public.moon VALUES (13, 'Vow 3', 1611, 682, -100.6, 'A good moon from planet', false, 3);
INSERT INTO public.moon VALUES (14, 'Vow 4', 1611, 682, -100.6, 'A good moon from planet', false, 3);
INSERT INTO public.moon VALUES (15, 'Vow 5', 1611, 682, -100.6, 'A good moon from planet', false, 3);
INSERT INTO public.moon VALUES (16, 'Adamance 1', 1451, 242, -800.6, 'A good moon from planet', false, 4);
INSERT INTO public.moon VALUES (17, 'Adamance 2', 1451, 242, -800.6, 'A good moon from planet', false, 4);
INSERT INTO public.moon VALUES (18, 'Adamance 3', 1451, 242, -800.6, 'A good moon from planet', false, 4);
INSERT INTO public.moon VALUES (19, 'Adamance 4', 1451, 242, -800.6, 'A good moon from planet', false, 4);
INSERT INTO public.moon VALUES (20, 'Adamance 5', 1451, 242, -800.6, 'A good moon from planet', false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1181, 450, 20.1, 'A good planet from galaxy', true, 1);
INSERT INTO public.planet VALUES (2, 'Quaker', 1181, 451, 20.3, 'A good planet from galaxy', true, 1);
INSERT INTO public.planet VALUES (3, 'Quaker 1', 1181, 451, 20.3, 'A good planet from galaxy', true, 1);
INSERT INTO public.planet VALUES (4, 'Quaker 2', 1181, 451, 20.3, 'A good planet from galaxy', true, 1);
INSERT INTO public.planet VALUES (5, 'Quaker 3', 1181, 451, 20.3, 'A good planet from galaxy', true, 1);
INSERT INTO public.planet VALUES (6, 'Falseus 1', 1520, 454, 40.3, 'A good planet from galaxy', false, 2);
INSERT INTO public.planet VALUES (7, 'Falseus 2', 1520, 454, 40.3, 'A good planet from galaxy', false, 2);
INSERT INTO public.planet VALUES (8, 'Falseus 3', 1520, 454, 40.3, 'A good planet from galaxy', false, 2);
INSERT INTO public.planet VALUES (9, 'Falseus 4', 1520, 454, 40.3, 'A good planet from galaxy', false, 2);
INSERT INTO public.planet VALUES (10, 'Falseus 5', 1520, 454, 40.3, 'A good planet from galaxy', false, 2);
INSERT INTO public.planet VALUES (11, 'Trotacan 1', 1522, 456, 20.3, 'A good planet from galaxy', true, 3);
INSERT INTO public.planet VALUES (12, 'Trotacan 2', 1522, 456, 20.3, 'A good planet from galaxy', true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Actartas', 110, 300, 3000.1, 'A good star from galaxy', false, 1);
INSERT INTO public.star VALUES (2, 'Actorias', 111, 350, 40521.1, 'A good star from galaxy', true, 2);
INSERT INTO public.star VALUES (3, 'Caperti', 112, 350, 4130.1, 'A good star from galaxy', true, 3);
INSERT INTO public.star VALUES (4, 'Piloret', 113, 350, 1130.1, 'A good star from galaxy', true, 4);
INSERT INTO public.star VALUES (5, 'Quartar', 115, 350, 2330.1, 'A good star from galaxy', true, 5);
INSERT INTO public.star VALUES (6, 'Lelet', 118, 450, 4530.1, 'A good star from galaxy', true, 6);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: meteorite_id_meteorite_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteorite_id_meteorite_seq', 3, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 20, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 12, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteorite meteorite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT meteorite_pkey PRIMARY KEY (meteorite_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy u_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT u_galaxy UNIQUE (galaxy_id);


--
-- Name: meteorite u_meteorite; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT u_meteorite UNIQUE (meteorite_id);


--
-- Name: moon u_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT u_moon UNIQUE (moon_id);


--
-- Name: planet u_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT u_planet UNIQUE (planet_id);


--
-- Name: star u_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT u_star UNIQUE (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_references; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_references FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
