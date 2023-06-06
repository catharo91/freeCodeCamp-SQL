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
-- Name: color; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.color (
    color_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.color OWNER TO freecodecamp;

--
-- Name: color_color_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.color_color_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.color_color_id_seq OWNER TO freecodecamp;

--
-- Name: color_color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.color_color_id_seq OWNED BY public.color.color_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_in_ly numeric,
    diameter_in_ly integer
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
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    distance_to_planet_km numeric,
    is_spherical boolean,
    diameter_in_km integer
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
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    diameter_in_km integer,
    is_rotating_axe boolean
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL,
    color_id integer
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
-- Name: color color_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.color ALTER COLUMN color_id SET DEFAULT nextval('public.color_color_id_seq'::regclass);


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
-- Data for Name: color; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.color VALUES (2, 'orange', NULL);
INSERT INTO public.color VALUES (3, 'yellow', NULL);
INSERT INTO public.color VALUES (4, 'green', NULL);
INSERT INTO public.color VALUES (5, 'white', NULL);
INSERT INTO public.color VALUES (1, 'red', 'Coldest temperature');
INSERT INTO public.color VALUES (6, 'blue', 'Hottest temperature');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'We live here. The name derives from the Greek mythology, from the goddess Hera who spilled milk across the sky', 0, 100000);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'The large Magellanic Cloudis a satellite galaxy of the Milky Way', 158000, 14000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Closest spiral galaxy to the Milky Way. Also called M31', 2500000, 220000);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 'Also M82 or NGC 3034', 11500000, 37000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'Also M101 or NGC 5457', 20870000, 170000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Also M104', 29350000, 50000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Europa', 4, NULL, true, 3121);
INSERT INTO public.moon VALUES (3, 'Ganymede', 4, NULL, true, 5268);
INSERT INTO public.moon VALUES (4, 'Callisto', 4, NULL, true, 4820);
INSERT INTO public.moon VALUES (5, 'Io', 4, NULL, true, 3643);
INSERT INTO public.moon VALUES (6, 'Metis', 4, NULL, false, 43);
INSERT INTO public.moon VALUES (7, 'Adrastea', 4, NULL, false, 16);
INSERT INTO public.moon VALUES (8, 'Amalthea', 4, NULL, false, 167);
INSERT INTO public.moon VALUES (9, 'Thebe', 4, NULL, false, 98);
INSERT INTO public.moon VALUES (10, 'Himalia', 4, NULL, false, 139);
INSERT INTO public.moon VALUES (11, 'Leda', 4, NULL, false, 21);
INSERT INTO public.moon VALUES (12, 'Elara', 4, NULL, false, 80);
INSERT INTO public.moon VALUES (13, 'Titan', 2, NULL, true, 5149);
INSERT INTO public.moon VALUES (14, 'Rhea', 2, NULL, true, 1527);
INSERT INTO public.moon VALUES (15, 'Dione', 2, NULL, true, 1122);
INSERT INTO public.moon VALUES (16, 'Iapetus', 2, NULL, true, 1468);
INSERT INTO public.moon VALUES (17, 'Tethys', 2, NULL, true, 1062);
INSERT INTO public.moon VALUES (18, 'Pandora', 2, NULL, false, 81);
INSERT INTO public.moon VALUES (19, 'Prometheus', 2, NULL, false, 86);
INSERT INTO public.moon VALUES (20, 'Atlas', 2, NULL, false, 30);
INSERT INTO public.moon VALUES (1, 'Moon', 1, 384400, true, 3474);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 12742, true);
INSERT INTO public.planet VALUES (2, 'Saturn', 1, 116460, true);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 12104, true);
INSERT INTO public.planet VALUES (4, 'Jupiter', 1, 139820, true);
INSERT INTO public.planet VALUES (5, 'Uranus', 1, 50724, true);
INSERT INTO public.planet VALUES (6, 'Mercury', 1, 4879, true);
INSERT INTO public.planet VALUES (7, 'Mars', 1, 6779, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 49244, true);
INSERT INTO public.planet VALUES (9, 'Ross 128b', 7, 14016, true);
INSERT INTO public.planet VALUES (10, 'Tau Ceti g', 8, 15035, true);
INSERT INTO public.planet VALUES (11, 'Tau Ceti e', 8, 23059, true);
INSERT INTO public.planet VALUES (12, 'Tau Cetie f', 8, 23059, true);
INSERT INTO public.planet VALUES (13, 'Tau Cetie h', 8, 15160, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4500, 1, 3);
INSERT INTO public.star VALUES (2, 'Alhpa Centauri A', 5300, 1, 3);
INSERT INTO public.star VALUES (3, 'Alhpa Centauri B', 5300, 1, 2);
INSERT INTO public.star VALUES (4, 'Sirius A', 238, 1, 6);
INSERT INTO public.star VALUES (5, 'Sirius B', 238, 1, 5);
INSERT INTO public.star VALUES (6, 'Ross 154', 999, 1, 1);
INSERT INTO public.star VALUES (7, 'Ross 128', NULL, 1, 1);
INSERT INTO public.star VALUES (8, 'Tau Ceti', NULL, 1, 3);


--
-- Name: color_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.color_color_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: color color_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_name_key UNIQUE (name);


--
-- Name: color color_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_pkey PRIMARY KEY (color_id);


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
-- Name: star star_color_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_color_id_fkey FOREIGN KEY (color_id) REFERENCES public.color(color_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

