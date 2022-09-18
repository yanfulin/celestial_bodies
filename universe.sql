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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(255),
    description text,
    age integer,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    distance numeric,
    type text
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    description text,
    age integer,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    distance numeric,
    type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    description text,
    age integer,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    distance numeric,
    type text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    description text,
    age integer,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    distance numeric,
    type text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255),
    description text,
    age integer,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    distance numeric,
    type text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'asteroid1', 'asteroid1_descriiption', 100, true, true, 100, 'asteroid_type100');
INSERT INTO public.asteroid VALUES (2, 'asteroid2', 'asteroid2_descriiption', 200, true, true, 200, 'asteroid_type200');
INSERT INTO public.asteroid VALUES (3, 'asteroid3', 'asteroid3_descriiption', 300, true, true, 300, 'asteroid_type300');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'larygalaxy1', 'galaxy1_descriiption', 1000, true, true, 1000, 'type1000');
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 'galaxy2_descriiption', 2000, true, true, 2000, 'type2000');
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 'galaxy3_descriiption', 3000, true, true, 3000, 'type3000');
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 'galaxy4_descriiption', 4000, true, true, 4000, 'type4000');
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 'galaxy5_descriiption', 5000, true, true, 5000, 'type5000');
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 'galaxy6_descriiption', 6000, true, true, 6000, 'type6000');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon1_descriiption', 100, true, true, 100, 'moon_type100', 1);
INSERT INTO public.moon VALUES (2, 'moon2', 'moon2_descriiption', 200, true, true, 200, 'moon_type200', 2);
INSERT INTO public.moon VALUES (3, 'moon3', 'moon3_descriiption', 300, true, true, 300, 'moon_type300', 3);
INSERT INTO public.moon VALUES (4, 'moon4', 'moon4_descriiption', 400, true, true, 400, 'moon_type400', 4);
INSERT INTO public.moon VALUES (5, 'moon5', 'moon5_descriiption', 500, true, true, 500, 'moon_type500', 5);
INSERT INTO public.moon VALUES (6, 'moon6', 'moon6_descriiption', 600, true, true, 600, 'moon_type600', 6);
INSERT INTO public.moon VALUES (7, 'moon7', 'moon7_descriiption', 700, true, true, 700, 'moon_type700', 1);
INSERT INTO public.moon VALUES (8, 'moon8', 'moon8_descriiption', 800, true, true, 800, 'moon_type800', 2);
INSERT INTO public.moon VALUES (9, 'moon9', 'moon9_descriiption', 900, true, true, 900, 'moon_type900', 3);
INSERT INTO public.moon VALUES (10, 'moon10', 'moon10_descriiption', 1000, true, true, 1000, 'moon_type1000', 4);
INSERT INTO public.moon VALUES (11, 'moon11', 'moon11_descriiption', 1100, true, true, 1100, 'moon_type1100', 5);
INSERT INTO public.moon VALUES (12, 'moon12', 'moon12_descriiption', 1200, true, true, 1200, 'moon_type1200', 6);
INSERT INTO public.moon VALUES (13, 'moon13', 'moon13_descriiption', 1300, true, true, 1300, 'moon_type1300', 7);
INSERT INTO public.moon VALUES (14, 'moon14', 'moon14_descriiption', 1400, true, true, 1400, 'moon_type1400', 7);
INSERT INTO public.moon VALUES (15, 'moon15', 'moon15_descriiption', 1500, true, true, 1500, 'moon_type1500', 7);
INSERT INTO public.moon VALUES (16, 'moon16', 'moon16_descriiption', 1600, true, true, 1600, 'moon_type1600', 7);
INSERT INTO public.moon VALUES (17, 'moon17', 'moon17_descriiption', 1700, true, true, 1700, 'moon_type1700', 7);
INSERT INTO public.moon VALUES (18, 'moon18', 'moon18_descriiption', 1800, true, true, 1800, 'moon_type1800', 7);
INSERT INTO public.moon VALUES (19, 'moon19', 'moon19_descriiption', 1900, true, true, 1900, 'moon_type1900', 7);
INSERT INTO public.moon VALUES (20, 'moon20', 'moon20_descriiption', 2000, true, true, 2000, 'moon_type2000', 7);
INSERT INTO public.moon VALUES (21, 'moon21', 'moon21_descriiption', 2100, true, true, 2100, 'moon_type2100', 7);
INSERT INTO public.moon VALUES (22, 'moon22', 'moon22_descriiption', 2200, true, true, 2200, 'moon_type2200', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'planet1_descriiption', 100, true, true, 100, 'planet_type100', 1);
INSERT INTO public.planet VALUES (2, 'planet2', 'planet2_descriiption', 200, true, true, 200, 'planet_type200', 2);
INSERT INTO public.planet VALUES (3, 'planet3', 'planet3_descriiption', 300, true, true, 300, 'planet_type300', 3);
INSERT INTO public.planet VALUES (4, 'planet4', 'planet4_descriiption', 400, true, true, 400, 'planet_type400', 4);
INSERT INTO public.planet VALUES (5, 'planet5', 'planet5_descriiption', 500, true, true, 500, 'planet_type500', 5);
INSERT INTO public.planet VALUES (6, 'planet6', 'planet6_descriiption', 600, true, true, 600, 'planet_type600', 6);
INSERT INTO public.planet VALUES (7, 'planet7', 'planet7_descriiption', 700, true, true, 700, 'planet_type700', 1);
INSERT INTO public.planet VALUES (8, 'planet8', 'planet8_descriiption', 800, true, true, 800, 'planet_type800', 2);
INSERT INTO public.planet VALUES (9, 'planet9', 'planet9_descriiption', 900, true, true, 900, 'planet_type900', 3);
INSERT INTO public.planet VALUES (10, 'planet10', 'planet10_descriiption', 1000, true, true, 1000, 'planet_type1000', 4);
INSERT INTO public.planet VALUES (11, 'planet11', 'planet11_descriiption', 1100, true, true, 1100, 'planet_type1100', 5);
INSERT INTO public.planet VALUES (12, 'planet12', 'planet12_descriiption', 1200, true, true, 1200, 'planet_type1200', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'star1_descriiption', 1000, true, true, 1000, 'star_type1000', 1);
INSERT INTO public.star VALUES (2, 'star2', 'star2_descriiption', 2000, true, true, 2000, 'star_type2000', 2);
INSERT INTO public.star VALUES (3, 'star3', 'star3_descriiption', 3000, true, true, 3000, 'star_type3000', 3);
INSERT INTO public.star VALUES (4, 'star4', 'star4_descriiption', 4000, true, true, 4000, 'star_type4000', 4);
INSERT INTO public.star VALUES (5, 'star5', 'star5_descriiption', 5000, true, true, 5000, 'star_type5000', 5);
INSERT INTO public.star VALUES (6, 'star6', 'star6_descriiption', 6000, true, true, 6000, 'star_type6000', 6);


--
-- Name: star _copy_1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT _copy_1 PRIMARY KEY (star_id);


--
-- Name: planet _copy_1_copy_1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT _copy_1_copy_1 PRIMARY KEY (planet_id);


--
-- Name: moon _copy_1_copy_2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT _copy_1_copy_2 PRIMARY KEY (moon_id);


--
-- Name: galaxy _copy_3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT _copy_3 PRIMARY KEY (galaxy_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_type_key UNIQUE (type);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: moon moon_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_type_key UNIQUE (type);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

