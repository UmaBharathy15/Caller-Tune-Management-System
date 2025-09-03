--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13
-- Dumped by pg_dump version 15.13

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
-- Name: user_tunes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_tunes (
    id uuid NOT NULL,
    clip_end_ms integer NOT NULL,
    clip_start_ms integer NOT NULL,
    created_at timestamp(6) with time zone NOT NULL,
    effective_from timestamp(6) with time zone NOT NULL,
    effective_to timestamp(6) with time zone,
    song_id uuid NOT NULL,
    status character varying(16) NOT NULL,
    updated_at timestamp(6) with time zone NOT NULL,
    user_id character varying(15) NOT NULL,
    CONSTRAINT user_tunes_status_check CHECK (((status)::text = ANY ((ARRAY['ACTIVE'::character varying, 'INACTIVE'::character varying])::text[])))
);


ALTER TABLE public.user_tunes OWNER TO postgres;

--
-- Data for Name: user_tunes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_tunes (id, clip_end_ms, clip_start_ms, created_at, effective_from, effective_to, song_id, status, updated_at, user_id) FROM stdin;
6837af51-518a-457b-914c-b8bae5af95c4	20000	0	2025-08-31 13:25:49.273447+05:30	2025-08-31 13:25:49.273447+05:30	\N	ef54f28b-16a8-42cd-900d-a6b1087687d3	ACTIVE	2025-08-31 13:25:49.273447+05:30	9876543210
d3ca11e1-ef5b-4a3b-87f0-79021ac7c467	25000	5000	2025-08-21 13:25:49.273447+05:30	2025-08-21 13:25:49.273447+05:30	2025-08-29 13:25:49.273447+05:30	01c98096-0b31-45ca-b358-b11c8e925fb3	INACTIVE	2025-08-29 13:25:49.273447+05:30	9876543210
9b306459-bbbf-4890-bd66-f59b221b08a9	20000	10000	2025-08-01 13:25:49.273447+05:30	2025-08-01 13:25:49.273447+05:30	2025-08-11 13:25:49.273447+05:30	3e1619b2-4c34-4fe3-ba9c-ef6870735a75	INACTIVE	2025-08-11 13:25:49.273447+05:30	9876543210
\.


--
-- Name: user_tunes user_tunes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_tunes
    ADD CONSTRAINT user_tunes_pkey PRIMARY KEY (id);


--
-- Name: idx_user_tunes_song_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_tunes_song_id ON public.user_tunes USING btree (song_id);


--
-- Name: idx_user_tunes_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_tunes_user_id ON public.user_tunes USING btree (user_id);


--
-- PostgreSQL database dump complete
--

