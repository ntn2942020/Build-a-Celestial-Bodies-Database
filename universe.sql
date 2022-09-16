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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30),
    mass text NOT NULL,
    abundance text,
    formation text,
    physically_allow text
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    mass_milm integer,
    size_kpc numeric,
    type text,
    naked_eye_galaxy boolean
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
    planet_id integer,
    has_life text,
    diameter_km numeric
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
    star_id integer,
    mass numeric,
    has_life boolean,
    planet_types text,
    numbers_of_moon integer
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
    galaxy_id integer,
    distance_from_earth numeric,
    mass integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Mini', '<3', 'rare or none', 'unknown', 'maybe');
INSERT INTO public.blackhole VALUES (2, 'stella-mass', '3-<50', 'common', 'collapse of a star', 'yes');
INSERT INTO public.blackhole VALUES (3, 'intermediate', '50-<50000', 'rare or none', 'unknown', 'yes');
INSERT INTO public.blackhole VALUES (4, 'supermassive', '>50000', 'common', 'part of galaxy foramtion', 'yes');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Large Magellanic', 138000, 9.86, 'SB(s)m', true);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic', NULL, 5.78, 'SB(s)m pec', true);
INSERT INTO public.galaxy VALUES (5, 'Messier 81', NULL, NULL, 'SA(s)ab', false);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1150000, 26.8, 'Sb,Sbc,SB(rs)bc', true);
INSERT INTO public.galaxy VALUES (4, 'Comet Galaxy', 380, 18, 'dir', false);
INSERT INTO public.galaxy VALUES (6, 'Andromeda Galaxy', 1500000, 46.56, 'SA(s)b', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 3, 'false', 3475);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'false', 22.2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'false', 12.6);
INSERT INTO public.moon VALUES (4, 'Metis', 5, 'false', 43);
INSERT INTO public.moon VALUES (5, 'Adrastea', 5, 'false', 16.4);
INSERT INTO public.moon VALUES (6, 'Amalthea', 5, 'false', 167);
INSERT INTO public.moon VALUES (7, 'Thebe', 5, 'false', 98.6);
INSERT INTO public.moon VALUES (8, 'Io', 5, 'false', 3643.2);
INSERT INTO public.moon VALUES (9, 'Europa', 5, 'false', 3121.6);
INSERT INTO public.moon VALUES (10, 'Ganymede', 5, 'false', 5268.2);
INSERT INTO public.moon VALUES (11, 'Callisto', 5, 'false', 4820.6);
INSERT INTO public.moon VALUES (12, 'Themisto', 5, 'false', 9);
INSERT INTO public.moon VALUES (13, 'Leada', 5, 'false', 21.5);
INSERT INTO public.moon VALUES (14, 'Mimas', 6, 'false', 396);
INSERT INTO public.moon VALUES (15, 'Enceladus', 6, 'false', 504);
INSERT INTO public.moon VALUES (16, 'Tethys', 6, 'false', 1062);
INSERT INTO public.moon VALUES (17, 'Dione', 6, 'false', 1123);
INSERT INTO public.moon VALUES (18, 'Rhea', 6, 'false', 1527);
INSERT INTO public.moon VALUES (19, 'Titan', 6, 'false', 5149);
INSERT INTO public.moon VALUES (20, 'lapetus', 6, 'false', 1470);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0.055, false, 'terrestrial', 0);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 0.815, false, 'terrestrial', 0);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 0.000003, true, 'terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 0.107, false, 'terrestrial', 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 317.8, false, 'gas giants', 80);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 95.16, false, 'gas giants', 83);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 14.54, false, 'ice giants', 27);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 17.15, false, 'ice giants', 14);
INSERT INTO public.planet VALUES (9, 'Planet b', 7, 1.07, false, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet c', 7, 7, false, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet d', 7, 0.26, false, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'b', 8, 2, false, 'unknown', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirius', 1, 8.6, 3);
INSERT INTO public.star VALUES (3, 'Canopus', 1, 310, 10);
INSERT INTO public.star VALUES (4, 'Arcturus', 1, 37, 1);
INSERT INTO public.star VALUES (5, 'Vega', 1, 25, 2);
INSERT INTO public.star VALUES (6, 'Capella', 1, 43, 6);
INSERT INTO public.star VALUES (1, 'Sun', 1, 0.0000158, 2);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 1, 4.24, 0);
INSERT INTO public.star VALUES (8, 'Tau Ceti', 1, 12, 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: blackhole blackhole_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_type_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- PostgreSQL database dump complete
--

