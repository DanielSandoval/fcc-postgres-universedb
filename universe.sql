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
    name character varying(20) NOT NULL,
    age_in_millions_of_years numeric(8,2),
    number_of_planets integer,
    galaxy_types text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_spherical boolean,
    times_being_impacted integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    distance_from_earth numeric(10,4),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    times_bigger_compared_to_the_sun numeric(7,2),
    galaxy_id integer,
    star_color_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_color; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_color (
    star_color_id integer NOT NULL,
    name character varying(20) NOT NULL,
    level_of_brightness_1_to_10 integer
);


ALTER TABLE public.star_color OWNER TO freecodecamp;

--
-- Name: star_color_star_color_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_color_star_color_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_color_star_color_id_seq OWNER TO freecodecamp;

--
-- Name: star_color_star_color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_color_star_color_id_seq OWNED BY public.star_color.star_color_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_color star_color_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_color ALTER COLUMN star_color_id SET DEFAULT nextval('public.star_color_star_color_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2.50, 20000, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 0.30, 25000, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Paramecium', 3.70, 14000, 'elliptical');
INSERT INTO public.galaxy VALUES (4, 'Little Sombrero', 5.00, 37000, 'irregular');
INSERT INTO public.galaxy VALUES (5, 'Eye Of Sauron', 3.30, 17500, 'elliptical');
INSERT INTO public.galaxy VALUES (6, 'Circinus', 4.80, 24200, 'irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon_1', false, 305, 1);
INSERT INTO public.moon VALUES (34, 'Moon_2', true, 120, 1);
INSERT INTO public.moon VALUES (35, 'Moon_3', false, 46, 1);
INSERT INTO public.moon VALUES (36, 'Moon_4', false, 155, 2);
INSERT INTO public.moon VALUES (37, 'Moon_5', true, 570, 2);
INSERT INTO public.moon VALUES (38, 'Moon_6', true, 230, 2);
INSERT INTO public.moon VALUES (39, 'Moon_7', false, 710, 3);
INSERT INTO public.moon VALUES (40, 'Moon_8', false, 565, 3);
INSERT INTO public.moon VALUES (41, 'Moon_9', false, 390, 3);
INSERT INTO public.moon VALUES (42, 'Moon_10', true, 165, 4);
INSERT INTO public.moon VALUES (43, 'Moon_11', true, 77, 4);
INSERT INTO public.moon VALUES (44, 'Moon_12', false, 435, 4);
INSERT INTO public.moon VALUES (45, 'Moon_13', true, 60, 5);
INSERT INTO public.moon VALUES (46, 'Moon_14', false, 220, 5);
INSERT INTO public.moon VALUES (47, 'Moon_15', false, 190, 5);
INSERT INTO public.moon VALUES (48, 'Moon_16', true, 555, 5);
INSERT INTO public.moon VALUES (49, 'Moon_17', true, 275, 6);
INSERT INTO public.moon VALUES (50, 'Moon_18', false, 230, 6);
INSERT INTO public.moon VALUES (51, 'Moon_19', false, 90, 6);
INSERT INTO public.moon VALUES (52, 'Moon_20', true, 440, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'PA', false, 25000.5000, 1);
INSERT INTO public.planet VALUES (2, 'N2', true, 37000.0000, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 0.0000, 2);
INSERT INTO public.planet VALUES (4, 'Neptune', false, 270.0000, 2);
INSERT INTO public.planet VALUES (5, 'Parasplanet', false, 10500.3000, 35);
INSERT INTO public.planet VALUES (6, 'Parastune', false, 8000.0000, 35);
INSERT INTO public.planet VALUES (7, 'Little Somplanet', true, 27050.0000, 36);
INSERT INTO public.planet VALUES (8, 'Planetarium', false, 23400.2500, 36);
INSERT INTO public.planet VALUES (9, 'Sauronplanet', true, 47500.0000, 37);
INSERT INTO public.planet VALUES (10, 'Planet Of Rings', true, 38700.5000, 37);
INSERT INTO public.planet VALUES (11, 'Circiplanet', false, 11350.7000, 38);
INSERT INTO public.planet VALUES (12, 'Planetus', false, 12000.2000, 38);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 15.50, 1, 4);
INSERT INTO public.star VALUES (2, 'Sun', 1.00, 2, 3);
INSERT INTO public.star VALUES (35, 'Parastar', 7.30, 3, 1);
INSERT INTO public.star VALUES (36, 'Starmon', 0.70, 4, 5);
INSERT INTO public.star VALUES (37, 'Sauron', 4.80, 5, 3);
INSERT INTO public.star VALUES (38, 'Circini', 12.00, 6, 2);


--
-- Data for Name: star_color; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_color VALUES (1, 'Blue', 5);
INSERT INTO public.star_color VALUES (2, 'White', 0);
INSERT INTO public.star_color VALUES (3, 'Yellow', 8);
INSERT INTO public.star_color VALUES (4, 'Orange', 7);
INSERT INTO public.star_color VALUES (5, 'Red', 3);
INSERT INTO public.star_color VALUES (6, 'Blue-White', 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 52, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_color_star_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_color_star_color_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 38, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star_color star_color_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_color
    ADD CONSTRAINT star_color_color_key UNIQUE (name);


--
-- Name: star_color star_color_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_color
    ADD CONSTRAINT star_color_pkey PRIMARY KEY (star_color_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_star_color_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_color_id_fkey FOREIGN KEY (star_color_id) REFERENCES public.star_color(star_color_id);


--
-- PostgreSQL database dump complete
--

