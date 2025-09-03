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
-- Name: media_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.media_file (
    id uuid NOT NULL,
    created_at timestamp(6) with time zone NOT NULL,
    duration_sec integer,
    filename character varying(255) NOT NULL,
    mime_type character varying(255) NOT NULL,
    size_bytes bigint NOT NULL,
    storage_path character varying(255) NOT NULL,
    language character varying(32)
);


ALTER TABLE public.media_file OWNER TO postgres;

--
-- Data for Name: media_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.media_file (id, created_at, duration_sec, filename, mime_type, size_bytes, storage_path, language) FROM stdin;
189d56ab-2534-47d6-843f-03ec2d0c3765	2025-08-30 18:06:29.050957+05:30	\N	Aaruyire.mp3	audio/mpeg	11062888	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Aaruyire.mp3	Tamil
20c482c8-3b62-438d-b64c-6a21fbd90f62	2025-08-30 18:06:29.053954+05:30	\N	Aathi.mp3	audio/mpeg	4893371	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Aathi.mp3	Tamil
fb6fed5c-3892-4c5f-a973-d479f33da79c	2025-08-30 18:06:29.057959+05:30	\N	Adiye Kollade.mp3	audio/mpeg	5083894	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Adiye Kollade.mp3	Tamil
d1905cec-194a-4d7d-a36c-7405390b2f23	2025-08-30 18:06:29.061951+05:30	\N	Adiye.mp3	audio/mpeg	9656650	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Adiye.mp3	Tamil
ca5ec8a5-91b7-42de-82da-2c7f9a9250b1	2025-08-30 18:06:29.065957+05:30	\N	Anbil Avan.mp3	audio/mpeg	10095603	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Anbil Avan.mp3	Tamil
d603c1cc-3ab7-4a7f-84d5-e84b7b4907d1	2025-08-30 18:06:29.069954+05:30	\N	Anbin Vasale.mp3	audio/mpeg	9730973	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Anbin Vasale.mp3	Tamil
c4e8e16a-df76-4f9c-84e5-a52d866b2671	2025-08-30 18:06:29.073646+05:30	\N	Angnyaade.mp3	audio/mpeg	3376162	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Angnyaade.mp3	Tamil
9c652e5b-01a7-4100-a74f-f531f636e72f	2025-08-30 18:06:29.078645+05:30	\N	Anicham Poovazhagi.mp3	audio/mpeg	5687163	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Anicham Poovazhagi.mp3	Tamil
d085f401-987d-42ca-8951-422cb575b200	2025-08-30 18:06:29.083645+05:30	\N	Arabu Nade.mp3	audio/mpeg	5232429	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Arabu Nade.mp3	Tamil
7b88ecaa-6e96-4721-ab5d-b8f447feb7be	2025-08-30 18:06:29.087259+05:30	\N	Askku Laska.mp3	audio/mpeg	15292112	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Askku Laska.mp3	Tamil
2500e572-22e8-400e-a02f-781486d5e4d4	2025-08-30 18:06:29.091248+05:30	\N	Chillena.mp3	audio/mpeg	5726026	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Chillena.mp3	Tamil
be1c46c2-1c63-4efd-b6a4-78852edaeb4d	2025-08-30 18:06:29.096251+05:30	\N	Edho Onru.mp3	audio/mpeg	4066975	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Edho Onru.mp3	Tamil
f2f47184-c087-485c-b0ed-52c1882a0013	2025-08-30 18:06:29.099248+05:30	\N	Elay Keechan.mp3	audio/mpeg	11950823	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Elay Keechan.mp3	Tamil
8617f1ff-012e-4166-a4c3-9a9175c94262	2025-08-30 18:06:29.103253+05:30	\N	En Kadhal Solla.mp3	audio/mpeg	9062016	C:\\CALLERTUNE\\Songs\\Tamil_songs\\En Kadhal Solla.mp3	Tamil
ce6a0f6a-84f9-4d79-bf99-8021c6974bbf	2025-08-30 18:06:29.10825+05:30	\N	Endrendrum Punagai.mp3	audio/mpeg	7492441	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Endrendrum Punagai.mp3	Tamil
f2e036e1-2560-47bd-a64b-f7beefd535ee	2025-08-30 18:06:29.112254+05:30	\N	Engeyo Partha Mayakam.mp3	audio/mpeg	5195199	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Engeyo Partha Mayakam.mp3	Tamil
af59728c-cbb5-40d0-a3ba-e2a549de5b3b	2025-08-30 18:06:29.118253+05:30	\N	Imaye Imaye.mp3	audio/mpeg	3412941	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Imaye Imaye.mp3	Tamil
212629a1-3a8a-4620-a1ae-3b67374f7ddf	2025-08-30 18:06:29.123251+05:30	\N	Innum Konjam Neram.mp3	audio/mpeg	5141441	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Innum Konjam Neram.mp3	Tamil
2e17b14b-0b61-47fa-9c04-eb04b22e0a4b	2025-08-30 18:06:29.127251+05:30	\N	Ival Dhaana.mp3	audio/mpeg	10291249	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Ival Dhaana.mp3	Tamil
1aaefc1b-9f38-4cce-83e3-574413c5612e	2025-08-30 18:06:29.139249+05:30	\N	June Pona.mp3	audio/mpeg	5075145	C:\\CALLERTUNE\\Songs\\Tamil_songs\\June Pona.mp3	Tamil
bcbbe075-d474-4fd8-81db-b76964b98584	2025-08-30 18:06:29.144247+05:30	\N	Kadhal Sadugidu.mp3	audio/mpeg	8711987	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Kadhal Sadugidu.mp3	Tamil
79fdb04e-a569-41e0-872c-f2a43e141a5c	2025-08-30 18:06:29.150462+05:30	\N	Kadhal Vaithu.mp3	audio/mpeg	3816238	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Kadhal Vaithu.mp3	Tamil
41e3885a-12dc-4d11-887b-acfeabc5a61d	2025-08-30 18:06:29.157461+05:30	\N	Kandangi Kandangi.mp3	audio/mpeg	4758885	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Kandangi Kandangi.mp3	Tamil
19932015-54b5-483c-a972-f0a7c3877a10	2025-08-30 18:06:29.161461+05:30	\N	Kangal Irandal.mp3	audio/mpeg	5284382	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Kangal Irandal.mp3	Tamil
2a5ff3c9-b5c5-4c47-a312-3dbeda9f9084	2025-08-30 18:06:29.165191+05:30	\N	Kanimozhiye.mp3	audio/mpeg	5898505	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Kanimozhiye.mp3	Tamil
4f4a6d0b-bef2-4444-821b-194be3b2b1f1	2025-08-30 18:06:29.16919+05:30	\N	Kannaalam.mp3	audio/mpeg	4690558	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Kannaalam.mp3	Tamil
8abf6a20-7bc6-4206-b742-18c818762583	2025-08-30 18:06:29.173746+05:30	\N	Kannum Kannumthan.mp3	audio/mpeg	7145446	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Kannum Kannumthan.mp3	Tamil
792fedad-2421-4d91-88ff-a9d39b484ed5	2025-08-30 18:06:29.177752+05:30	\N	Koodamela Koodavechi.mp3	audio/mpeg	4773354	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Koodamela Koodavechi.mp3	Tamil
7474e144-3edd-4f30-8cf1-4805ede789d7	2025-08-30 18:06:29.181488+05:30	\N	Machaan Machaan.mp3	audio/mpeg	10036255	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Machaan Machaan.mp3	Tamil
db925a90-bb46-4144-9258-cc5ce0094281	2025-08-30 18:06:29.18549+05:30	\N	Magudi Magudi.mp3	audio/mpeg	7271686	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Magudi Magudi.mp3	Tamil
4781ade5-5d5f-4ab8-bf17-ac8347e77d89	2025-08-30 18:06:29.188486+05:30	\N	Malai Kaatru Vanthu.mp3	audio/mpeg	5206245	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Malai Kaatru Vanthu.mp3	Tamil
76737a75-fe2f-4d00-bd27-f97d21f6a353	2025-08-30 18:06:29.259915+05:30	\N	Oru Paathi Kadhavu.mp3	audio/mpeg	10193605	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Oru Paathi Kadhavu.mp3	Tamil
f425336c-174b-4f57-bdb4-79ecd654e3d6	2025-08-30 18:06:29.263916+05:30	\N	Paartha Mudal Nale.mp3	audio/mpeg	14666125	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Paartha Mudal Nale.mp3	Tamil
dfb3dc93-a1da-4ce0-8af8-e7decd99a008	2025-08-30 18:06:29.268917+05:30	\N	Pala Palakkira.mp3	audio/mpeg	5197952	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Pala Palakkira.mp3	Tamil
7955fcd4-41f7-4c06-bab1-5fe7db39f1eb	2025-08-30 18:06:29.272909+05:30	\N	Pani Thuli.mp3	audio/mpeg	10857638	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Pani Thuli.mp3	Tamil
060cf819-390f-469c-a3c4-aefaf58e2fbb	2025-08-30 18:06:29.277755+05:30	\N	Pookal Pookum.mp3	audio/mpeg	6855175	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Pookal Pookum.mp3	Tamil
72101152-500d-45ac-a74e-70b1f07bb16f	2025-08-30 18:06:29.28175+05:30	\N	Pookkale Satru Oivedungal.mp3	audio/mpeg	5247580	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Pookkale Satru Oivedungal.mp3	Tamil
a28678a4-fd0e-4c02-9b74-4ef9f90afd40	2025-08-30 18:06:29.285747+05:30	\N	Pooppol Poopol.mp3	audio/mpeg	2395929	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Pooppol Poopol.mp3	Tamil
0f30b998-1ca6-458f-b355-2b9501e51514	2025-08-30 18:06:29.289875+05:30	\N	Rangola.mp3	audio/mpeg	6626376	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Rangola.mp3	Tamil
3f0bbcb2-47a1-44a6-96ff-0fb0420e52d6	2025-08-30 18:06:29.293749+05:30	\N	Sayndhu Sayndhu.mp3	audio/mpeg	6717641	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Sayndhu Sayndhu.mp3	Tamil
3fddda5e-f087-45e7-add1-1122ddec41cb	2025-08-30 18:06:29.297752+05:30	\N	Sonapareeya.mp3	audio/mpeg	4176908	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Sonapareeya.mp3	Tamil
b3634adf-4c72-48bd-a9df-8d20daa7fd82	2025-08-30 18:06:29.302747+05:30	\N	Suttum Vizhi.mp3	audio/mpeg	7181103	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Suttum Vizhi.mp3	Tamil
45ab96c4-2c3f-40a7-a37d-025d91e86fca	2025-08-30 18:06:29.306755+05:30	\N	Thaen Thaen Thaen.mp3	audio/mpeg	3979392	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Thaen Thaen Thaen.mp3	Tamil
1754653d-315e-4830-a731-1c76e32cc42e	2025-08-30 18:06:29.309749+05:30	\N	Thuli Thuli.mp3	audio/mpeg	4827985	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Thuli Thuli.mp3	Tamil
646a73a7-a84b-46cd-8964-5542cdca9ec4	2025-08-30 18:06:29.313749+05:30	\N	Un Perai Sonnale.mp3	audio/mpeg	11393957	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Un Perai Sonnale.mp3	Tamil
fa3812bd-23bf-4f47-ab59-7955a71c40c1	2025-08-30 18:06:29.318747+05:30	\N	Uyirini Uyire.mp3	audio/mpeg	10544694	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Uyirini Uyire.mp3	Tamil
ba071dc3-7b83-4f11-8f7d-225a46c1e42e	2025-08-30 18:06:29.322751+05:30	\N	Va Va Nilava Pudichi.mp3	audio/mpeg	5777565	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Va Va Nilava Pudichi.mp3	Tamil
a94fdd5c-ba8c-41a8-8771-1c4bc5d8258f	2025-08-30 18:06:29.333749+05:30	\N	Vaaji Vaaji.mp3	audio/mpeg	10290978	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Vaaji Vaaji.mp3	Tamil
96774912-6c4c-4937-b39e-c8816401f992	2025-08-30 18:06:29.338747+05:30	\N	Vaarayo Vaarayo.mp3	audio/mpeg	5165055	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Vaarayo Vaarayo.mp3	Tamil
418d0868-1463-4c41-8b43-8741bf9b789d	2025-08-30 18:06:29.34275+05:30	\N	Velicha Poove.mp3	audio/mpeg	6196572	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Velicha Poove.mp3	Tamil
8ad4bd2e-40f8-4edc-8ab9-58c94e789b3d	2025-08-30 18:06:29.34675+05:30	\N	Venmegam.mp3	audio/mpeg	10139648	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Venmegam.mp3	Tamil
b7c90d99-bf1d-4361-858c-e2158252367a	2025-08-30 18:06:29.350749+05:30	\N	Vennilave.mp3	audio/mpeg	5383975	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Vennilave.mp3	Tamil
6c382535-e29d-43f4-94a7-91160a22cf2e	2025-08-30 18:06:29.355752+05:30	\N	Vizhi Moodi.mp3	audio/mpeg	5413259	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Vizhi Moodi.mp3	Tamil
d33173dd-7afa-41f0-86de-84268d7eb7a5	2025-08-30 18:06:29.359751+05:30	\N	Yaar Intha Penthan.mp3	audio/mpeg	4893878	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Yaar Intha Penthan.mp3	Tamil
3ee9efbf-d449-4bcc-8b04-b253704ad4c7	2025-08-30 18:06:28.245913+05:30	\N	01 - Bol Do Na Zara [Songspk.LINK].mp3	audio/mpeg	11819592	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01 - Bol Do Na Zara [Songspk.LINK].mp3	Hindi
fd9e7d89-46b5-473b-b81b-c8877477fed5	2025-08-30 18:06:28.248907+05:30	\N	01 - Chitta Ve - Udta Punjab [Songspk.LIVE].mp3	audio/mpeg	11621988	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01 - Chitta Ve - Udta Punjab [Songspk.LIVE].mp3	Hindi
18d46b53-9edb-4f71-b89f-e629556e95d0	2025-08-30 18:06:28.252907+05:30	\N	01 - Kar Gayi Chull [Songspk.LINK].mp3	audio/mpeg	7526103	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01 - Kar Gayi Chull [Songspk.LINK].mp3	Hindi
c22879b9-b4de-43b8-a377-6d71708c5439	2025-08-30 18:06:28.255908+05:30	\N	01 - Kuch To Hai - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	audio/mpeg	10002574	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01 - Kuch To Hai - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	Hindi
04401531-8d6d-4a08-8380-66ef390ac44f	2025-08-30 18:06:28.259911+05:30	\N	01 - Pyaar Ki [Songspk.LIVE].mp3	audio/mpeg	9144414	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01 - Pyaar Ki [Songspk.LIVE].mp3	Hindi
dc997f16-ba8d-4d62-93bd-d137b8fcfe91	2025-08-30 18:06:28.265459+05:30	\N	01 - Sab Tera [Songspk.LINK].mp3	audio/mpeg	9194587	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01 - Sab Tera [Songspk.LINK].mp3	Hindi
2f63cda0-6451-4de9-a6c9-6c73f0c2aef0	2025-08-30 18:06:28.269463+05:30	\N	01-Bannosongspk.link.mp3	audio/mpeg	7968614	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-Bannosongspk.link.mp3	Hindi
cf95bd6b-aeee-400f-b59e-f94174c82cb5	2025-08-30 18:06:28.976331+05:30	\N	songs.pkSaheligurdeepMehndiFt.Bohemia-320kbps.mp3	audio/mpeg	6761982	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkSaheligurdeepMehndiFt.Bohemia-320kbps.mp3	Hindi
86cef610-9ba8-4eab-bf38-57c145ae98fc	2025-08-30 18:06:28.979615+05:30	\N	songs.pkSoorajDoobaHainYaaron-Roy-128kbps.mp3	audio/mpeg	5073214	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkSoorajDoobaHainYaaron-Roy-128kbps.mp3	Hindi
233b12a2-d92f-4186-ad5b-0c22a81854e2	2025-08-30 18:06:28.983615+05:30	\N	songs.pkTanuWedsManu-01-SadiGali.mp3	audio/mpeg	5598709	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkTanuWedsManu-01-SadiGali.mp3	Hindi
ad51b2c3-7953-4a41-ae4c-e129ca29235f	2025-08-30 18:06:28.98762+05:30	\N	songs.pkTanuWedsManu-02-YunHi.mp3	audio/mpeg	5981030	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkTanuWedsManu-02-YunHi.mp3	Hindi
738e5b76-487f-4335-9c75-d8c634e8a43e	2025-08-30 18:06:28.991616+05:30	\N	stolenm1www.songs.pk.mp3	audio/mpeg	6991726	C:\\CALLERTUNE\\Songs\\Hindi_songs\\stolenm1www.songs.pk.mp3	Hindi
9e26db39-dbf5-44cd-bcf4-752ed8c3f1dd	2025-08-30 18:06:28.996616+05:30	\N	TereDarParSanamRemakebeMyLove-320kbpssonghspk.link.mp3	audio/mpeg	9894451	C:\\CALLERTUNE\\Songs\\Hindi_songs\\TereDarParSanamRemakebeMyLove-320kbpssonghspk.link.mp3	Hindi
670ff8ad-5036-4230-8d02-61dc0bf6a773	2025-08-30 18:06:28.999623+05:30	\N	TeriDeewaniapniisp.com.mp3	audio/mpeg	5179520	C:\\CALLERTUNE\\Songs\\Hindi_songs\\TeriDeewaniapniisp.com.mp3	Hindi
87aa9bbb-d378-4170-b817-8ac97cab3171	2025-08-30 18:06:29.003613+05:30	\N	TeriMeriKahaanigabbarIsBack-320kbpssongspk.name.mp3	audio/mpeg	13276742	C:\\CALLERTUNE\\Songs\\Hindi_songs\\TeriMeriKahaanigabbarIsBack-320kbpssongspk.name.mp3	Hindi
8d925863-3670-432f-af95-216eb618b76b	2025-08-30 18:06:29.007618+05:30	\N	ValentineMashup-DjKiranKamath128Kbps.mp3	audio/mpeg	4452480	C:\\CALLERTUNE\\Songs\\Hindi_songs\\ValentineMashup-DjKiranKamath128Kbps.mp3	Hindi
7eb23da1-5663-4adf-8ccd-15c89710392f	2025-08-30 18:06:29.010616+05:30	\N	WadaRahan-khaki.mp3	audio/mpeg	4704634	C:\\CALLERTUNE\\Songs\\Hindi_songs\\WadaRahan-khaki.mp3	Hindi
25f9a393-861b-4543-a54e-913a56da1fec	2025-08-30 18:06:29.015168+05:30	\N	_songs.pk_EkThiDaayan-01-Yaaram.mp3	audio/mpeg	5669768	C:\\CALLERTUNE\\Songs\\Hindi_songs\\_songs.pk_EkThiDaayan-01-Yaaram.mp3	Hindi
c1576d8d-c6db-4f6b-b8c7-b79a8ffb31d3	2025-08-30 18:06:29.01917+05:30	\N	_songs.pk_GoGoaGone-02-KhoonChoosLe.mp3	audio/mpeg	3698373	C:\\CALLERTUNE\\Songs\\Hindi_songs\\_songs.pk_GoGoaGone-02-KhoonChoosLe.mp3	Hindi
bf7083a0-50d0-4dcf-a6be-92a6bf1b6ded	2025-08-30 18:06:29.023173+05:30	\N	_songs.pk_Makkhi-01-AreAreAre.mp3	audio/mpeg	5586871	C:\\CALLERTUNE\\Songs\\Hindi_songs\\_songs.pk_Makkhi-01-AreAreAre.mp3	Hindi
e2101d52-38bf-410b-aec7-209729b26d8e	2025-08-30 18:06:29.027167+05:30	\N	_songs.pk_StudentOfTheYear-02-Radha.mp3	audio/mpeg	6916941	C:\\CALLERTUNE\\Songs\\Hindi_songs\\_songs.pk_StudentOfTheYear-02-Radha.mp3	Hindi
f99782d5-ce4b-4dde-bba2-519fed5d2594	2025-08-30 18:06:29.031172+05:30	\N	_songs.pk_StudentOfTheYear-03-IshqWalaLove.mp3	audio/mpeg	5383930	C:\\CALLERTUNE\\Songs\\Hindi_songs\\_songs.pk_StudentOfTheYear-03-IshqWalaLove.mp3	Hindi
7cb80c11-c5a2-475a-af56-660030a6cdb2	2025-08-30 18:06:29.035163+05:30	\N	_songs.pk_StudentOfTheYear-04-TheDiscoSong.mp3	audio/mpeg	7823054	C:\\CALLERTUNE\\Songs\\Hindi_songs\\_songs.pk_StudentOfTheYear-04-TheDiscoSong.mp3	Hindi
d03feb46-164f-4824-b2bd-71cf0daa349a	2025-08-30 18:06:29.038167+05:30	\N	_songs.pk_StudentOfTheYear-05-Kukkad.mp3	audio/mpeg	5960723	C:\\CALLERTUNE\\Songs\\Hindi_songs\\_songs.pk_StudentOfTheYear-05-Kukkad.mp3	Hindi
d3374a60-8e3e-48af-9a19-9aca07c1d080	2025-08-30 18:06:29.041954+05:30	\N	_songs.pk_StudentOfTheYear-06-Vele.mp3	audio/mpeg	4915460	C:\\CALLERTUNE\\Songs\\Hindi_songs\\_songs.pk_StudentOfTheYear-06-Vele.mp3	Hindi
4ef39292-9c5a-4563-839f-42cd3ba6207b	2025-08-30 18:06:29.046964+05:30	\N	_songs.pk_VickyDonor-04-PaniDaRangmale.mp3	audio/mpeg	5826388	C:\\CALLERTUNE\\Songs\\Hindi_songs\\_songs.pk_VickyDonor-04-PaniDaRangmale.mp3	Hindi
822b6146-af1a-4ca8-a8da-a8f577859035	2025-08-30 18:06:29.192487+05:30	\N	Manjal Veiyil.mp3	audio/mpeg	11444795	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Manjal Veiyil.mp3	Tamil
adf56e61-9fbd-4cde-a13c-6e443924e5be	2025-08-30 18:06:29.197365+05:30	\N	Mayiliragae.mp3	audio/mpeg	5315305	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Mayiliragae.mp3	Tamil
bc189670-38bc-4fa7-9ac5-f29700cff7a7	2025-08-30 18:06:29.201372+05:30	\N	Mazhai Varum (Male).mp3	audio/mpeg	8677958	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Mazhai Varum (Male).mp3	Tamil
4a0f6363-a99c-4fba-bf0f-b425a9ac7dde	2025-08-30 18:06:29.205365+05:30	\N	Mella Mella Kalavu.mp3	audio/mpeg	3055883	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Mella Mella Kalavu.mp3	Tamil
f3f48ba8-cdac-4806-b27d-79df4b0c1bed	2025-08-30 18:06:29.209366+05:30	\N	Merke Merke.mp3	audio/mpeg	9794520	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Merke Merke.mp3	Tamil
c29848ff-024a-4f7d-85ce-2b0e8e35a094	2025-08-30 18:06:29.213362+05:30	\N	Molachu Moonu.mp3	audio/mpeg	8829843	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Molachu Moonu.mp3	Tamil
b7c2cb21-dd28-456a-90cd-bdf949671afa	2025-08-30 18:06:29.217368+05:30	\N	Moongil Thottam.mp3	audio/mpeg	8483461	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Moongil Thottam.mp3	Tamil
d1e7b37a-aa17-4f51-8953-b0f98265e651	2025-08-30 18:06:29.222368+05:30	\N	Mootu Ondru Malarnthida.mp3	audio/mpeg	4451151	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Mootu Ondru Malarnthida.mp3	Tamil
8a7c4fc7-022c-4770-9004-bbec6cd44492	2025-08-30 18:06:29.22637+05:30	\N	Mudhal Mazhai.mp3	audio/mpeg	5585787	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Mudhal Mazhai.mp3	Tamil
9dfd03e7-b301-46a0-84b9-bd56495471d1	2025-08-30 18:06:29.230046+05:30	\N	Munbe Vaa.mp3	audio/mpeg	12115120	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Munbe Vaa.mp3	Tamil
a98bb478-447b-4981-a043-e9f93caa20e6	2025-08-30 18:06:29.235035+05:30	\N	Nee Partha.mp3	audio/mpeg	8987721	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Nee Partha.mp3	Tamil
adffa023-0740-4400-8c01-c6b66edf8b7e	2025-08-30 18:06:29.23804+05:30	\N	Nenjukkule.mp3	audio/mpeg	8951001	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Nenjukkule.mp3	Tamil
c752c461-7334-4e94-b44e-60f2338acd55	2025-08-30 18:06:29.242833+05:30	\N	Oday Oday.mp3	audio/mpeg	4593323	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Oday Oday.mp3	Tamil
a3755d53-14ce-4ac9-a863-4ae3cd7c5301	2025-08-30 18:06:29.246829+05:30	\N	Omana Penne.mp3	audio/mpeg	5891226	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Omana Penne.mp3	Tamil
0e232015-b752-4cbe-947d-784734443405	2025-08-30 18:06:29.251829+05:30	\N	Onnum Puriyala.mp3	audio/mpeg	4694726	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Onnum Puriyala.mp3	Tamil
5c469742-9218-4e16-a5c8-2a4d10075a0b	2025-08-30 18:06:29.255829+05:30	\N	Oru Kal.mp3	audio/mpeg	9679155	C:\\CALLERTUNE\\Songs\\Tamil_songs\\Oru Kal.mp3	Tamil
80fcd913-2866-430e-8657-9ac23cd0cd15	2025-08-30 18:06:28.272459+05:30	\N	01-DeewaniMastanisongspk.link.mp3	audio/mpeg	11671486	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-DeewaniMastanisongspk.link.mp3	Hindi
53e64531-1876-4f44-acde-074c15c51e6c	2025-08-30 18:06:28.276459+05:30	\N	01-DilDhadakneDosongspk.link.mp3	audio/mpeg	7781852	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-DilDhadakneDosongspk.link.mp3	Hindi
45df4cd7-ff10-4ec3-954e-5300c814cef1	2025-08-30 18:06:28.279459+05:30	\N	01-Fitoor-Pashminasongspk.link.mp3	audio/mpeg	11596928	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-Fitoor-Pashminasongspk.link.mp3	Hindi
4498b66c-705e-4e56-bff2-bef099dbaf91	2025-08-30 18:06:28.283458+05:30	\N	01-JabraFanhindisongspk.link.mp3	audio/mpeg	7571885	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-JabraFanhindisongspk.link.mp3	Hindi
0ff1c0eb-154c-4f9f-bfb8-c592c0f76435	2025-08-30 18:06:28.286462+05:30	\N	01-Piku-JourneySongsongspk.link.mp3	audio/mpeg	10185333	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-Piku-JourneySongsongspk.link.mp3	Hindi
fb3c4b3b-4827-433f-94b7-f172d07c08eb	2025-08-30 18:06:28.290462+05:30	\N	01-Saiyyan-Www.downloadming.com.mp3	audio/mpeg	5532595	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-Saiyyan-Www.downloadming.com.mp3	Hindi
67742252-925e-4a3d-877a-2e4c224d01dc	2025-08-30 18:06:28.295469+05:30	\N	01-SochNaSake-Airliftsongspk.link.mp3	audio/mpeg	11311780	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-SochNaSake-Airliftsongspk.link.mp3	Hindi
de1af540-1a33-4c62-9171-2302d8551a5b	2025-08-30 18:06:28.300457+05:30	\N	01-Tamasha-Matargashtisongspk.link.mp3	audio/mpeg	13202914	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-Tamasha-Matargashtisongspk.link.mp3	Hindi
527bc0a3-0165-458a-9450-b0f501fc671c	2025-08-30 18:06:28.305456+05:30	\N	01-TumheApnaBananeKasongspk.link.mp3	audio/mpeg	12504868	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-TumheApnaBananeKasongspk.link.mp3	Hindi
4484210a-6477-4a76-96e3-29a86f189ddc	2025-08-30 18:06:28.312459+05:30	\N	01-Wazir-TereBinsongspk.link.mp3	audio/mpeg	9869479	C:\\CALLERTUNE\\Songs\\Hindi_songs\\01-Wazir-TereBinsongspk.link.mp3	Hindi
4fb277ae-de09-46cc-beb4-fdfd1dc4dd72	2025-08-30 18:06:28.324458+05:30	\N	02 - Bolna [Songspk.LINK].mp3	audio/mpeg	8531252	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02 - Bolna [Songspk.LINK].mp3	Hindi
4c035059-4025-4f8a-b39d-746ed21b3225	2025-08-30 18:06:28.328459+05:30	\N	02 - Ikk Kudi (Reprised) [Songspk.LIVE].mp3	audio/mpeg	10015760	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02 - Ikk Kudi (Reprised) [Songspk.LIVE].mp3	Hindi
d160ab22-a006-4835-8450-22ac4d381381	2025-08-30 18:06:28.332462+05:30	\N	02 - Itni Si Baat Hain [Songspk.LINK].mp3	audio/mpeg	11871863	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02 - Itni Si Baat Hain [Songspk.LINK].mp3	Hindi
1b091f7c-bd02-4e11-9288-987e2813f3ad	2025-08-30 18:06:28.335459+05:30	\N	02 - Jeena Marna - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	audio/mpeg	11464390	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02 - Jeena Marna - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	Hindi
9f8ffd11-4320-4091-a3f8-a53d0c67f6d4	2025-08-30 18:06:28.339456+05:30	\N	02 - Let's Talk About Love [Songspk.LINK].mp3	audio/mpeg	8138188	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02 - Let's Talk About Love [Songspk.LINK].mp3	Hindi
62200b08-9de8-4233-aacd-0dc5b30d9b4f	2025-08-30 18:06:28.342463+05:30	\N	02 - Taang Uthake [Songspk.LIVE].mp3	audio/mpeg	10033586	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02 - Taang Uthake [Songspk.LIVE].mp3	Hindi
6e6a83b9-3a7c-4797-9603-2d27f9485eeb	2025-08-30 18:06:28.345459+05:30	\N	02 Rehnuma [Songspk.LINK].mp3	audio/mpeg	10540751	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02 Rehnuma [Songspk.LINK].mp3	Hindi
b4fecbbe-0147-4dfd-a62c-8a4feddea0a2	2025-08-30 18:06:28.348457+05:30	\N	02-Aayatsongspk.link.mp3	audio/mpeg	8182340	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02-Aayatsongspk.link.mp3	Hindi
4067df7e-6ab0-45a6-a5d1-a873de701ea3	2025-08-30 18:06:28.351465+05:30	\N	02-DilCheezTujheDedi-Airliftsongspk.link.mp3	audio/mpeg	10913660	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02-DilCheezTujheDedi-Airliftsongspk.link.mp3	Hindi
7a37f162-83b6-459c-8a61-3cd68f0cf685	2025-08-30 18:06:28.355458+05:30	\N	02-Fitoor-YehFitoorMerasongspk.link.mp3	audio/mpeg	11594853	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02-Fitoor-YehFitoorMerasongspk.link.mp3	Hindi
dc2e6fa0-fc3f-4693-b242-34a9ff8d1ff3	2025-08-30 18:06:28.359457+05:30	\N	02-MoveOnsongspk.link.mp3	audio/mpeg	10094510	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02-MoveOnsongspk.link.mp3	Hindi
bcc1a70d-d4a1-4a4a-a180-cd359d760a01	2025-08-30 18:06:28.363457+05:30	\N	02-PehliBaarsongspk.link.mp3	audio/mpeg	9055933	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02-PehliBaarsongspk.link.mp3	Hindi
4d187e72-abb3-445d-add4-ebfb90e64959	2025-08-30 18:06:28.366455+05:30	\N	02-Piku-Bezubaansongspk.link.mp3	audio/mpeg	13309536	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02-Piku-Bezubaansongspk.link.mp3	Hindi
2d10f8de-6595-4813-b227-c0a9b1b0813d	2025-08-30 18:06:28.370458+05:30	\N	02-Tamasha-HeerTohBadiSadHaisongspk.link.mp3	audio/mpeg	10576124	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02-Tamasha-HeerTohBadiSadHaisongspk.link.mp3	Hindi
adb3b517-fa66-4f21-ac28-d39bd9404e36	2025-08-30 18:06:28.373458+05:30	\N	02-TuIsaqMerasongspk.link.mp3	audio/mpeg	10149501	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02-TuIsaqMerasongspk.link.mp3	Hindi
f51401ba-c186-4550-be7f-0a06f1c1fd57	2025-08-30 18:06:28.376457+05:30	\N	02-Wazir-TuMerePaassongspk.link.mp3	audio/mpeg	9145343	C:\\CALLERTUNE\\Songs\\Hindi_songs\\02-Wazir-TuMerePaassongspk.link.mp3	Hindi
f490ab3b-283a-46dd-8911-f40a5e10123d	2025-08-30 18:06:28.380458+05:30	\N	03 - Ankhiyaan - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	audio/mpeg	10210520	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03 - Ankhiyaan - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	Hindi
1c4dae5a-d6dc-44e4-831a-5cb1460b222d	2025-08-30 18:06:28.386458+05:30	\N	03 - Buddhu Sa Mann [Songspk.LINK].mp3	audio/mpeg	8291945	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03 - Buddhu Sa Mann [Songspk.LINK].mp3	Hindi
6b9017e1-6dbd-4881-ba7b-27e5587793b8	2025-08-30 18:06:28.390456+05:30	\N	03 - Cham Cham [Songspk.LINK].mp3	audio/mpeg	11429494	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03 - Cham Cham [Songspk.LINK].mp3	Hindi
bd600f03-47bc-4650-bc7d-a539d478a1f0	2025-08-30 18:06:28.394458+05:30	\N	03 - Da Da Dasse - [Songspk.LIVE].mp3	audio/mpeg	9779604	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03 - Da Da Dasse - [Songspk.LIVE].mp3	Hindi
421d25b3-e45a-45cd-973f-7a41ceb1f0f2	2025-08-30 18:06:28.398469+05:30	\N	03 - Malamaal [Songspk.LIVE].mp3	audio/mpeg	8162481	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03 - Malamaal [Songspk.LIVE].mp3	Hindi
b3ec9aa1-0e01-4e4b-8bbb-e491cb193f63	2025-08-30 18:06:28.406457+05:30	\N	03 - Oye Oye [Songspk.LINK].mp3	audio/mpeg	9362026	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03 - Oye Oye [Songspk.LINK].mp3	Hindi
78a88dbe-71d9-47bb-8f43-67724b740fb6	2025-08-30 18:06:28.41146+05:30	\N	03 Alfazon Ki Tarah [Songspk.LINK].mp3	audio/mpeg	15319131	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03 Alfazon Ki Tarah [Songspk.LINK].mp3	Hindi
32b70965-2eff-4a1b-a982-3133c97d26d0	2025-08-30 18:06:28.414467+05:30	\N	03-Fitoor-Haminastusongspk.link.mp3	audio/mpeg	10657565	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03-Fitoor-Haminastusongspk.link.mp3	Hindi
473daddd-3f15-4d87-a1e4-c5606790219b	2025-08-30 18:06:28.418462+05:30	\N	03-GallanGoodiyaansongspk.link.mp3	audio/mpeg	10421768	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03-GallanGoodiyaansongspk.link.mp3	Hindi
a840d337-b530-4085-add1-7baa32c4f3e7	2025-08-30 18:06:28.423456+05:30	\N	03-Malharisongspk.link.mp3	audio/mpeg	9123720	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03-Malharisongspk.link.mp3	Hindi
c4394e6c-faa7-4bba-991e-de784d569d6b	2025-08-30 18:06:28.426457+05:30	\N	03-MatJaResongspk.link.mp3	audio/mpeg	9404875	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03-MatJaResongspk.link.mp3	Hindi
5c7702a4-e4a5-424d-a1b4-c092874554b4	2025-08-30 18:06:28.430457+05:30	\N	03-MeraNachanNu-Airliftsongspk.link.mp3	audio/mpeg	8979579	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03-MeraNachanNu-Airliftsongspk.link.mp3	Hindi
60ba8148-591b-4cd3-9550-11a2a3ad5ec3	2025-08-30 18:06:28.433458+05:30	\N	03-Piku-LamheGuzarGayesongspk.link.mp3	audio/mpeg	10405780	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03-Piku-LamheGuzarGayesongspk.link.mp3	Hindi
7d06ae04-94d1-4f95-a2f7-3146ff818aad	2025-08-30 18:06:28.436458+05:30	\N	03-Tamasha-TumSaathHosongspk.link.mp3	audio/mpeg	9929199	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03-Tamasha-TumSaathHosongspk.link.mp3	Hindi
048e50f7-e6c8-4681-bd35-f10f7a2e04b9	2025-08-30 18:06:28.439457+05:30	\N	03-WajahTumHosongspk.link.mp3	audio/mpeg	14414730	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03-WajahTumHosongspk.link.mp3	Hindi
c3e2b984-34c3-4379-b267-2c0769764ec4	2025-08-30 18:06:28.443458+05:30	\N	03-Wazir-Maulasongspk.link.mp3	audio/mpeg	16150319	C:\\CALLERTUNE\\Songs\\Hindi_songs\\03-Wazir-Maulasongspk.link.mp3	Hindi
65af70fc-186e-4a98-992d-76cecd7bd600	2025-08-30 18:06:28.446458+05:30	\N	04 - Agar Tu Hota [Songspk.LINK].mp3	audio/mpeg	13219384	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04 - Agar Tu Hota [Songspk.LINK].mp3	Hindi
8268090f-2d5c-46a2-9578-37de670a1ef3	2025-08-30 18:06:28.449456+05:30	\N	04 - Fake Ishq [Songspk.LIVE].mp3	audio/mpeg	10854123	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04 - Fake Ishq [Songspk.LIVE].mp3	Hindi
6ebe2ac9-0b1a-4aa1-b695-05125cc7ca11	2025-08-30 18:06:28.454458+05:30	\N	04 - Ikk Kudi - [Songspk.LIVE].mp3	audio/mpeg	9810232	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04 - Ikk Kudi - [Songspk.LIVE].mp3	Hindi
32d72f64-e612-4a3a-a4ff-b07075b9c7be	2025-08-30 18:06:28.457457+05:30	\N	04 - Jeena Marna (Female) - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	audio/mpeg	11465509	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04 - Jeena Marna (Female) - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	Hindi
ff1eaeaa-238c-4021-9726-cb0631b2f7dd	2025-08-30 18:06:28.461456+05:30	\N	04 - Tu Hi Na Jaane [Songspk.LINK].mp3	audio/mpeg	13399558	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04 - Tu Hi Na Jaane [Songspk.LINK].mp3	Hindi
714d1ee6-e772-49bd-ab94-85032de928e1	2025-08-30 18:06:28.465461+05:30	\N	04 Aye Khuda [Songspk.LINK].mp3	audio/mpeg	15065147	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04 Aye Khuda [Songspk.LINK].mp3	Hindi
2ede5170-86d7-467b-9007-bdd9e218c1ee	2025-08-30 18:06:28.468459+05:30	\N	04-Fitoor-HonedoBatiyasongspk.link.mp3	audio/mpeg	11070342	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04-Fitoor-HonedoBatiyasongspk.link.mp3	Hindi
b829596c-6c2b-4890-8768-a6f9c8c561d4	2025-08-30 18:06:28.471466+05:30	\N	04-GhaniBawrisongspk.link.mp3	audio/mpeg	10317075	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04-GhaniBawrisongspk.link.mp3	Hindi
888fad09-df7c-4215-b3f9-724e1204b714	2025-08-30 18:06:28.474458+05:30	\N	04-GirlsLikeToSwingsongspk.link.mp3	audio/mpeg	8313361	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04-GirlsLikeToSwingsongspk.link.mp3	Hindi
0eb019b4-b71a-422c-8ea4-4457b51bed71	2025-08-30 18:06:28.478457+05:30	\N	04-MoheRangDoLaalsongspk.link.mp3	audio/mpeg	7785921	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04-MoheRangDoLaalsongspk.link.mp3	Hindi
2fff81ad-e199-4a34-845d-0c7b07480c47	2025-08-30 18:06:28.482013+05:30	\N	04-NeendeinKhulJaatiHainsongspk.link.mp3	audio/mpeg	11308299	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04-NeendeinKhulJaatiHainsongspk.link.mp3	Hindi
fca24251-1841-4c0a-b79c-ddeb4a7204b4	2025-08-30 18:06:28.486004+05:30	\N	04-Piku-Pikusongspk.link.mp3	audio/mpeg	8328509	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04-Piku-Pikusongspk.link.mp3	Hindi
3f655b7d-1a2d-4f82-9dd3-340673260aa2	2025-08-30 18:06:28.489005+05:30	\N	04-Tamasha-WatWatWatsongspk.link.mp3	audio/mpeg	9663402	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04-Tamasha-WatWatWatsongspk.link.mp3	Hindi
573ccc75-8909-4fbc-8126-7685f150e8aa	2025-08-30 18:06:28.492004+05:30	\N	04-TuBhoolaJise-Airliftsongspk.link.mp3	audio/mpeg	10942885	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04-TuBhoolaJise-Airliftsongspk.link.mp3	Hindi
3c9aaca4-86a7-4d57-96b0-76722fc295dc	2025-08-30 18:06:28.496006+05:30	\N	04-Wazir-KhelKhelMeinsongspk.link.mp3	audio/mpeg	9632278	C:\\CALLERTUNE\\Songs\\Hindi_songs\\04-Wazir-KhelKhelMeinsongspk.link.mp3	Hindi
15e516d1-ef74-4f94-ae78-c037e7624dde	2025-08-30 18:06:28.499005+05:30	\N	05 - Girl I Need You  [Songspk.LINK].mp3	audio/mpeg	11980229	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05 - Girl I Need You  [Songspk.LINK].mp3	Hindi
108e9d63-8985-4740-842f-89785e397c52	2025-08-30 18:06:28.503003+05:30	\N	05 - Jeetne Ke Liye [Songspk.LINK].mp3	audio/mpeg	9761173	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05 - Jeetne Ke Liye [Songspk.LINK].mp3	Hindi
6c48c2e7-3609-483b-b7fe-f9748a6a721e	2025-08-30 18:06:28.506009+05:30	\N	05 - Lets Nacho [Songspk.LINK].mp3	audio/mpeg	8621088	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05 - Lets Nacho [Songspk.LINK].mp3	Hindi
ac838a26-867c-4319-aed6-2a03e8e957e3	2025-08-30 18:06:28.510005+05:30	\N	05 - Sehra - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	audio/mpeg	10746543	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05 - Sehra - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	Hindi
0949cc6d-4f6c-4069-9296-801e9db408a4	2025-08-30 18:06:28.513006+05:30	\N	05 - Ud-Daa Punjab - [Songspk.LIVE].mp3	audio/mpeg	11084037	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05 - Ud-Daa Punjab - [Songspk.LIVE].mp3	Hindi
80ce3e2f-d102-48cb-bb08-d86a3501aa33	2025-08-30 18:06:28.518009+05:30	\N	05 Titliyan [Songspk.LINK].mp3	audio/mpeg	14532237	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05 Titliyan [Songspk.LINK].mp3	Hindi
2e5b46d5-bcbb-4999-888d-155cc5b79646	2025-08-30 18:06:28.522045+05:30	\N	05-AlbelaSajansongspk.link.mp3	audio/mpeg	7755241	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05-AlbelaSajansongspk.link.mp3	Hindi
50ea1528-a5e6-431e-9eae-29037b33ac83	2025-08-30 18:06:28.527006+05:30	\N	05-Fitoor-TereLiyesongspk.link.mp3	audio/mpeg	11106913	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05-Fitoor-TereLiyesongspk.link.mp3	Hindi
294aa449-8e93-4885-90f3-e05f18e12137	2025-08-30 18:06:28.531004+05:30	\N	05-OldSchoolGirlsongspk.link.mp3	audio/mpeg	8882436	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05-OldSchoolGirlsongspk.link.mp3	Hindi
b9074442-c005-48e6-b060-a9101b4a4a13	2025-08-30 18:06:28.535003+05:30	\N	05-PhirBhiYehZindagisongspk.link.mp3	audio/mpeg	9152789	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05-PhirBhiYehZindagisongspk.link.mp3	Hindi
4c8f6d04-b707-4cb0-bed8-5e88eca50d50	2025-08-30 18:06:28.540004+05:30	\N	05-Piku-TeriMeriBaateinsongspk.link.mp3	audio/mpeg	13217603	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05-Piku-TeriMeriBaateinsongspk.link.mp3	Hindi
a714b610-d054-4f3b-85f1-299e67038101	2025-08-30 18:06:28.545005+05:30	\N	05-SochNaSakeversion2-Airliftsongspk.link.mp3	audio/mpeg	11322195	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05-SochNaSakeversion2-Airliftsongspk.link.mp3	Hindi
8a187a37-d525-47ff-8469-410a7104b0fd	2025-08-30 18:06:28.55101+05:30	\N	05-Tamasha-ChaliKahanisongspk.link.mp3	audio/mpeg	9846921	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05-Tamasha-ChaliKahanisongspk.link.mp3	Hindi
285dbf2f-6e58-42fb-8aa8-7594a13eb75e	2025-08-30 18:06:28.560556+05:30	\N	05-Wazir-TereLiyeMereKareemsongspk.link.mp3	audio/mpeg	7225924	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05-Wazir-TereLiyeMereKareemsongspk.link.mp3	Hindi
320662d2-f1a5-49d6-9157-6c061f5d447f	2025-08-30 18:06:28.569562+05:30	\N	05_Nenjukkule_-_Shakthishree_Gopalan.mp3	audio/mpeg	4728071	C:\\CALLERTUNE\\Songs\\Hindi_songs\\05_Nenjukkule_-_Shakthishree_Gopalan.mp3	Hindi
64e423db-1728-4f53-9d73-f1ef8b921776	2025-08-30 18:06:28.578555+05:30	\N	06 - Hass Nache Le - [Songspk.LIVE].mp3	audio/mpeg	10895763	C:\\CALLERTUNE\\Songs\\Hindi_songs\\06 - Hass Nache Le - [Songspk.LIVE].mp3	Hindi
84f3d5f6-b059-42d2-b0ea-1b196828a523	2025-08-30 18:06:28.591556+05:30	\N	06 Aye Khuda (Duet Version) [Songspk.LINK].mp3	audio/mpeg	15066385	C:\\CALLERTUNE\\Songs\\Hindi_songs\\06 Aye Khuda (Duet Version) [Songspk.LINK].mp3	Hindi
37460b4d-97b7-4e06-b3c9-ad9ab958ab35	2025-08-30 18:06:28.606426+05:30	\N	06-AbToheJaneNaDoongisongspk.link.mp3	audio/mpeg	7410604	C:\\CALLERTUNE\\Songs\\Hindi_songs\\06-AbToheJaneNaDoongisongspk.link.mp3	Hindi
65c156fd-d929-4f46-8b71-7ac454d608a9	2025-08-30 18:06:28.610981+05:30	\N	06-Fitoor-RangaaRehindiVersionsongspk.link.mp3	audio/mpeg	11831056	C:\\CALLERTUNE\\Songs\\Hindi_songs\\06-Fitoor-RangaaRehindiVersionsongspk.link.mp3	Hindi
25d066da-f465-496b-9965-08e12aa79c2e	2025-08-30 18:06:28.614977+05:30	\N	06-OldSchoolGirlharyanvisongspk.link.mp3	audio/mpeg	10059023	C:\\CALLERTUNE\\Songs\\Hindi_songs\\06-OldSchoolGirlharyanvisongspk.link.mp3	Hindi
f7095351-9f0e-4d63-8694-41bcd5a284b1	2025-08-30 18:06:28.618972+05:30	\N	06-Tamasha-Safarnamasongspk.link.mp3	audio/mpeg	7966752	C:\\CALLERTUNE\\Songs\\Hindi_songs\\06-Tamasha-Safarnamasongspk.link.mp3	Hindi
621482b7-fa45-42ea-8d29-b980884b35f6	2025-08-30 18:06:28.621972+05:30	\N	06-Wazir-WazirThemesongspk.link.mp3	audio/mpeg	7289602	C:\\CALLERTUNE\\Songs\\Hindi_songs\\06-Wazir-WazirThemesongspk.link.mp3	Hindi
1135f4c5-7ab4-4e03-a0ec-13b347a081a1	2025-08-30 18:06:28.624972+05:30	\N	07 - Vadiya - [Songspk.LIVE].mp3	audio/mpeg	10846763	C:\\CALLERTUNE\\Songs\\Hindi_songs\\07 - Vadiya - [Songspk.LIVE].mp3	Hindi
9b26454f-7f81-4d34-862c-6c8cd54b19e9	2025-08-30 18:06:28.629974+05:30	\N	07-Fitoor-RangaaReenglishVersionsongspk.link.mp3	audio/mpeg	11831064	C:\\CALLERTUNE\\Songs\\Hindi_songs\\07-Fitoor-RangaaReenglishVersionsongspk.link.mp3	Hindi
157e7e4d-026f-47b2-a5fa-3276e0c49a60	2025-08-30 18:06:28.633974+05:30	\N	07-HoGayaHaiPyarsongspk.link.mp3	audio/mpeg	9254416	C:\\CALLERTUNE\\Songs\\Hindi_songs\\07-HoGayaHaiPyarsongspk.link.mp3	Hindi
3985c2ff-713d-4de7-8d76-09eb88b52dcc	2025-08-30 18:06:28.638899+05:30	\N	07-Pingasongspk.link.mp3	audio/mpeg	8871633	C:\\CALLERTUNE\\Songs\\Hindi_songs\\07-Pingasongspk.link.mp3	Hindi
283ae935-ce2e-483e-8153-5b0add7b17a4	2025-08-30 18:06:28.644896+05:30	\N	07-Tamasha-ParadeDeLaBastillesongspk.link.mp3	audio/mpeg	7249872	C:\\CALLERTUNE\\Songs\\Hindi_songs\\07-Tamasha-ParadeDeLaBastillesongspk.link.mp3	Hindi
97f632c3-6438-408f-99e6-3de10309100f	2025-08-30 18:06:28.648894+05:30	\N	08-AajIbaadatsongspk.link.mp3	audio/mpeg	9510422	C:\\CALLERTUNE\\Songs\\Hindi_songs\\08-AajIbaadatsongspk.link.mp3	Hindi
2c34a458-1004-4e6c-a8c2-fbd91690d226	2025-08-30 18:06:28.652898+05:30	\N	08-OSathiMeresongspk.link.mp3	audio/mpeg	13986754	C:\\CALLERTUNE\\Songs\\Hindi_songs\\08-OSathiMeresongspk.link.mp3	Hindi
25909c8c-084c-49cc-9539-ec32d76fcae8	2025-08-30 18:06:28.656898+05:30	\N	08-RoNeDothePainOfLovemymp3song.com.mp3	audio/mpeg	4043667	C:\\CALLERTUNE\\Songs\\Hindi_songs\\08-RoNeDothePainOfLovemymp3song.com.mp3	Hindi
ed606662-5ea1-4ad2-997d-383dd50761ef	2025-08-30 18:06:28.659959+05:30	\N	08-Tamasha-WatWatvengeanceMixsongspk.link.mp3	audio/mpeg	7614962	C:\\CALLERTUNE\\Songs\\Hindi_songs\\08-Tamasha-WatWatvengeanceMixsongspk.link.mp3	Hindi
d27e87fe-3a51-43ed-9521-70377cd11586	2025-08-30 18:06:28.663894+05:30	\N	09-Fitoorisongspk.link.mp3	audio/mpeg	8242609	C:\\CALLERTUNE\\Songs\\Hindi_songs\\09-Fitoorisongspk.link.mp3	Hindi
8f38c228-e34f-4046-a07e-e404778f394b	2025-08-30 18:06:28.666971+05:30	\N	09-GhaniBawriremixsongspk.link.mp3	audio/mpeg	9257564	C:\\CALLERTUNE\\Songs\\Hindi_songs\\09-GhaniBawriremixsongspk.link.mp3	Hindi
acbb98e2-e730-4df3-bb4d-b6a7afb01a12	2025-08-30 18:06:28.67196+05:30	\N	09-Tamasha-TuKoiAurHaisongspk.link.mp3	audio/mpeg	14362487	C:\\CALLERTUNE\\Songs\\Hindi_songs\\09-Tamasha-TuKoiAurHaisongspk.link.mp3	Hindi
c3252287-757b-4870-8956-57bb6f4bfa1c	2025-08-30 18:06:28.674958+05:30	\N	AaBhiJaaTuKahinSe-SonuNigam.mp3	audio/mpeg	5551856	C:\\CALLERTUNE\\Songs\\Hindi_songs\\AaBhiJaaTuKahinSe-SonuNigam.mp3	Hindi
cc6fc8c1-7774-431b-a17c-757c7d395478	2025-08-30 18:06:28.679974+05:30	\N	aahatein.mp3	audio/mpeg	3534976	C:\\CALLERTUNE\\Songs\\Hindi_songs\\aahatein.mp3	Hindi
88d3a197-64d9-4da9-985e-87fee8403efe	2025-08-30 18:06:28.685187+05:30	\N	aisha03www.songs.pk.mp3	audio/mpeg	5536211	C:\\CALLERTUNE\\Songs\\Hindi_songs\\aisha03www.songs.pk.mp3	Hindi
13b3d027-5c73-436f-a955-dcd92f99b6d2	2025-08-30 18:06:28.689186+05:30	\N	DheereDheereyoYoHoneySingh-320kbpssongspk.link.mp3	audio/mpeg	8567795	C:\\CALLERTUNE\\Songs\\Hindi_songs\\DheereDheereyoYoHoneySingh-320kbpssongspk.link.mp3	Hindi
0f0bef2f-b1f7-4c23-bc46-5c87f1d8c91b	2025-08-30 18:06:28.69319+05:30	\N	DilDooba-khaki.mp3	audio/mpeg	3842802	C:\\CALLERTUNE\\Songs\\Hindi_songs\\DilDooba-khaki.mp3	Hindi
6aaa15e2-b07d-400c-b2a7-1868bbd5a07c	2025-08-30 18:06:28.696186+05:30	\N	DilKarehoMannJahaan-AtifAslam.mp3	audio/mpeg	4386374	C:\\CALLERTUNE\\Songs\\Hindi_songs\\DilKarehoMannJahaan-AtifAslam.mp3	Hindi
9d4ef1a7-f8a0-40ce-9842-1261eb82288c	2025-08-30 18:06:28.700189+05:30	\N	DjWaleyBabuft.AasthaGill-Badshah-320kbpssongspk.link.mp3	audio/mpeg	6847552	C:\\CALLERTUNE\\Songs\\Hindi_songs\\DjWaleyBabuft.AasthaGill-Badshah-320kbpssongspk.link.mp3	Hindi
6e4482a0-9995-47fa-beab-0c3793fce782	2025-08-30 18:06:28.704191+05:30	\N	Freak-RishiRichProject.mp3	audio/mpeg	3559787	C:\\CALLERTUNE\\Songs\\Hindi_songs\\Freak-RishiRichProject.mp3	Hindi
af3edd5c-5d4a-466d-95c2-a56498b9ebae	2025-08-30 18:06:28.708185+05:30	\N	Friends.mp3	audio/mpeg	616970	C:\\CALLERTUNE\\Songs\\Hindi_songs\\Friends.mp3	Hindi
06f4b736-2cc3-46a8-aefc-6949b39b0113	2025-08-30 18:06:28.712561+05:30	\N	Get Ready To Fight (Baaghi) - 320Kbps [Songspk.LINK].mp3	audio/mpeg	8298523	C:\\CALLERTUNE\\Songs\\Hindi_songs\\Get Ready To Fight (Baaghi) - 320Kbps [Songspk.LINK].mp3	Hindi
36304950-df05-44e9-8a50-2d97b0e11485	2025-08-30 18:06:28.725548+05:30	\N	ghar3www.songs.pk.mp3	audio/mpeg	4008097	C:\\CALLERTUNE\\Songs\\Hindi_songs\\ghar3www.songs.pk.mp3	Hindi
71e74c6d-0570-4577-8cd6-e4f46f073574	2025-08-30 18:06:28.728545+05:30	\N	IshqflintJ.mp3	audio/mpeg	7507731	C:\\CALLERTUNE\\Songs\\Hindi_songs\\IshqflintJ.mp3	Hindi
fac5ad6c-7cbb-4b41-8a55-fa6b5f9e59f8	2025-08-30 18:06:28.733544+05:30	\N	KuchTohLogKahengetitleTrack-SonyTvpakheaven.com.mp3	audio/mpeg	3775006	C:\\CALLERTUNE\\Songs\\Hindi_songs\\KuchTohLogKahengetitleTrack-SonyTvpakheaven.com.mp3	Hindi
67e1e567-f3f0-4db6-ae9f-ae8f77a9dd66	2025-08-30 18:06:28.736546+05:30	\N	MainuIshqDaLagyaRog.mp3	audio/mpeg	4926295	C:\\CALLERTUNE\\Songs\\Hindi_songs\\MainuIshqDaLagyaRog.mp3	Hindi
0f916834-79ac-4a63-b3ef-bd72b361c5df	2025-08-30 18:06:28.740548+05:30	\N	MarJaayenloveshhuda-AtifAslam.mp3	audio/mpeg	5067183	C:\\CALLERTUNE\\Songs\\Hindi_songs\\MarJaayenloveshhuda-AtifAslam.mp3	Hindi
14c87b19-809b-4c72-b8ef-d63ad6099f46	2025-08-30 18:06:28.744728+05:30	\N	MOMMA.mp3	audio/mpeg	346488	C:\\CALLERTUNE\\Songs\\Hindi_songs\\MOMMA.mp3	Hindi
2479abba-3429-479d-b678-1637abcedd54	2025-08-30 18:06:28.749707+05:30	\N	OneBottleDownyoYoHoneySingh-320kbpssongspk.name.mp3	audio/mpeg	8194030	C:\\CALLERTUNE\\Songs\\Hindi_songs\\OneBottleDownyoYoHoneySingh-320kbpssongspk.name.mp3	Hindi
43e1f5ea-2ff4-4cd9-ace2-172fa0a575c3	2025-08-30 18:06:28.753712+05:30	\N	PAPA.mp3	audio/mpeg	198486	C:\\CALLERTUNE\\Songs\\Hindi_songs\\PAPA.mp3	Hindi
dd9ac97d-496e-4700-9625-bffab92d6545	2025-08-30 18:06:28.757707+05:30	\N	players05www.songs.pk.mp3	audio/mpeg	5278886	C:\\CALLERTUNE\\Songs\\Hindi_songs\\players05www.songs.pk.mp3	Hindi
6ef8dc16-b9d9-43bc-a713-a1380c4c3658	2025-08-30 18:06:28.76223+05:30	\N	rdb05www.songs.pk.mp3	audio/mpeg	6347988	C:\\CALLERTUNE\\Songs\\Hindi_songs\\rdb05www.songs.pk.mp3	Hindi
2f5eaf02-3983-4d30-ac85-6c9436864f06	2025-08-30 18:06:28.765224+05:30	\N	Rock Tha Party.mp3	audio/mpeg	8530249	C:\\CALLERTUNE\\Songs\\Hindi_songs\\Rock Tha Party.mp3	Hindi
9068826d-2326-43c3-91cb-9c62da8752aa	2025-08-30 18:06:28.770225+05:30	\N	Saathi Rey.mp3	audio/mpeg	10897867	C:\\CALLERTUNE\\Songs\\Hindi_songs\\Saathi Rey.mp3	Hindi
189b1691-4972-431a-8dd2-f6a45debc1f0	2025-08-30 18:06:28.773905+05:30	\N	Shree420-pyarHuaIqrarHua.mp3	audio/mpeg	3050655	C:\\CALLERTUNE\\Songs\\Hindi_songs\\Shree420-pyarHuaIqrarHua.mp3	Hindi
41e39b56-e35e-460c-8391-700e616d1e12	2025-08-30 18:06:28.776904+05:30	\N	songs.pk01-2States-Offo.mp3	audio/mpeg	6988750	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk01-2States-Offo.mp3	Hindi
799f5bc1-ac0c-4f38-9427-df093cffb2d1	2025-08-30 18:06:28.779903+05:30	\N	songs.pk01-BadtameezDil-YehJawaaniHaiDeewani.mp3	audio/mpeg	5581123	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk01-BadtameezDil-YehJawaaniHaiDeewani.mp3	Hindi
eb7e359e-9c4e-44fc-a136-742a913ab732	2025-08-30 18:06:28.783901+05:30	\N	songs.pk01-Entertainment-VeereyDiWedding.mp3	audio/mpeg	8472000	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk01-Entertainment-VeereyDiWedding.mp3	Hindi
f3412d4c-4282-4c3f-8da5-c5fc27127ed7	2025-08-30 18:06:28.787903+05:30	\N	songs.pk01-SaturdaySaturday.mp3	audio/mpeg	7181677	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk01-SaturdaySaturday.mp3	Hindi
f41a3515-1a5f-4497-99c9-8fce5701e9ed	2025-08-30 18:06:28.790903+05:30	\N	songs.pk01-YoYoHits-LungiDance.mp3	audio/mpeg	5698331	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk01-YoYoHits-LungiDance.mp3	Hindi
5475aa51-452e-4f73-acb7-16454b8d62e8	2025-08-30 18:06:28.794907+05:30	\N	songs.pk02-2States-Locha-e-ulfat.mp3	audio/mpeg	9365224	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk02-2States-Locha-e-ulfat.mp3	Hindi
4faa7124-6c03-4d77-ac8b-c7808820f537	2025-08-30 18:06:28.798901+05:30	\N	songs.pk02-BalamPichkari-YehJawaaniHaiDeewani.mp3	audio/mpeg	5965692	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk02-BalamPichkari-YehJawaaniHaiDeewani.mp3	Hindi
96fd4747-3c6d-4043-997f-b9316b0b6977	2025-08-30 18:06:28.801906+05:30	\N	songs.pk02-Entertainment-TeraNaamDoon.mp3	audio/mpeg	11614042	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk02-Entertainment-TeraNaamDoon.mp3	Hindi
f5279a87-0d7a-43f5-b511-37c6efddad32	2025-08-30 18:06:28.80593+05:30	\N	songs.pk02-Samjhawan.mp3	audio/mpeg	10885333	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk02-Samjhawan.mp3	Hindi
1e7440a3-52fe-44f2-a4dc-8a79fa1857b6	2025-08-30 18:06:28.810931+05:30	\N	songs.pk02-YoYoHits-BringMeBack.mp3	audio/mpeg	3874777	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk02-YoYoHits-BringMeBack.mp3	Hindi
5b215271-3a91-4961-b132-180aa60fab54	2025-08-30 18:06:28.814936+05:30	\N	songs.pk03-2States-MastMagan.mp3	audio/mpeg	9099436	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk03-2States-MastMagan.mp3	Hindi
12ddcd86-cfc0-4882-ad9a-87cba574c6d7	2025-08-30 18:06:28.818929+05:30	\N	songs.pk03-DaingadDaingad.mp3	audio/mpeg	9028679	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk03-DaingadDaingad.mp3	Hindi
466af239-5454-46c3-9e94-4a1ba6a2f987	2025-08-30 18:06:28.822926+05:30	\N	songs.pk03-Entertainment-JohnnyJohnny.mp3	audio/mpeg	7664337	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk03-Entertainment-JohnnyJohnny.mp3	Hindi
967084c5-645c-430c-b910-06dc0697679d	2025-08-30 18:06:28.828927+05:30	\N	songs.pk03-Ilahi-YehJawaaniHaiDeewani.mp3	audio/mpeg	4330859	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk03-Ilahi-YehJawaaniHaiDeewani.mp3	Hindi
9720541e-fffa-4b6f-a733-ea5677143953	2025-08-30 18:06:28.833932+05:30	\N	songs.pk03-YoYoHits-BrownRang.mp3	audio/mpeg	3898776	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk03-YoYoHits-BrownRang.mp3	Hindi
dd510f59-8563-42d3-b9cc-1b6c15cdb91c	2025-08-30 18:06:28.837929+05:30	\N	songs.pk04-2States-IskiUski.mp3	audio/mpeg	8275214	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk04-2States-IskiUski.mp3	Hindi
23455a24-00d8-4757-8f1d-fd6c153fd0fd	2025-08-30 18:06:28.843934+05:30	\N	songs.pk04-Entertainment-TeriMahimaAprampaar.mp3	audio/mpeg	9107349	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk04-Entertainment-TeriMahimaAprampaar.mp3	Hindi
c2bbe41b-78ea-4f42-a70a-ac3bef4cd3c4	2025-08-30 18:06:28.84793+05:30	\N	songs.pk04-Kabira-YehJawaaniHaiDeewani.mp3	audio/mpeg	4427630	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk04-Kabira-YehJawaaniHaiDeewani.mp3	Hindi
14595619-0d45-4a02-8f0f-8c1cc71c2418	2025-08-30 18:06:28.852933+05:30	\N	songs.pk04-LuckyTuLuckyMe.mp3	audio/mpeg	8238652	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk04-LuckyTuLuckyMe.mp3	Hindi
973e51f5-f472-455c-b892-5edc9d4371cc	2025-08-30 18:06:28.856931+05:30	\N	songs.pk04-YoYoHits-BreakupParty.mp3	audio/mpeg	5736302	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk04-YoYoHits-BreakupParty.mp3	Hindi
2aa13043-ac8b-48e0-8110-83574d9c2090	2025-08-30 18:06:28.861926+05:30	\N	songs.pk05-DilliwaaliGirlfriend-YehJawaaniHaiDeewani.mp3	audio/mpeg	5617356	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk05-DilliwaaliGirlfriend-YehJawaaniHaiDeewani.mp3	Hindi
5c637d45-c633-4ddf-8c4a-ddb82d20e489	2025-08-30 18:06:28.86593+05:30	\N	songs.pk05-EmotionalFool.mp3	audio/mpeg	8762106	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk05-EmotionalFool.mp3	Hindi
d71b463f-3054-46b5-acb6-95dcdc37cd01	2025-08-30 18:06:28.873264+05:30	\N	songs.pk05-Entertainment-NahinWohSaamne.mp3	audio/mpeg	4444961	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk05-Entertainment-NahinWohSaamne.mp3	Hindi
84c12e35-c145-4c4c-ab88-17cfc8a85724	2025-08-30 18:06:28.877261+05:30	\N	songs.pk05-YoYoHits-Lonely.mp3	audio/mpeg	4955620	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk05-YoYoHits-Lonely.mp3	Hindi
9fda97cb-82c6-4c8e-aaca-1b186d312722	2025-08-30 18:06:28.892277+05:30	\N	songs.pk06-2States-HullaRe.mp3	audio/mpeg	7207745	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk06-2States-HullaRe.mp3	Hindi
5ddd012d-b23f-4c3a-b469-71bee9c70d98	2025-08-30 18:06:28.896259+05:30	\N	songs.pk06-DSeDance.mp3	audio/mpeg	8276271	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk06-DSeDance.mp3	Hindi
cc603253-2ec3-4e68-871f-b189da21593b	2025-08-30 18:06:28.900311+05:30	\N	songs.pk06-Entertainment-VeereyDiWeddingremix.mp3	audio/mpeg	8809518	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk06-Entertainment-VeereyDiWeddingremix.mp3	Hindi
d46292cd-cc24-44bc-affc-ed030722d662	2025-08-30 18:06:28.903309+05:30	\N	songs.pk06-Subhanallah-YehJawaaniHaiDeewani.mp3	audio/mpeg	5197080	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk06-Subhanallah-YehJawaaniHaiDeewani.mp3	Hindi
2488003b-13ab-477a-86e7-1702d1339596	2025-08-30 18:06:28.90731+05:30	\N	songs.pk07-Ghagra-YehJawaaniHaiDeewani.mp3	audio/mpeg	6641837	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk07-Ghagra-YehJawaaniHaiDeewani.mp3	Hindi
4491ea3c-924e-4f53-a1d2-378eb4160862	2025-08-30 18:06:28.910311+05:30	\N	songs.pk07-YoYoHits-AngrejiBeat.mp3	audio/mpeg	4399147	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk07-YoYoHits-AngrejiBeat.mp3	Hindi
19e7b538-5308-49bf-b7b3-b5e14a6933f2	2025-08-30 18:06:28.91431+05:30	\N	songs.pk08-Kabira-YehJawaaniHaiDeewani.mp3	audio/mpeg	5729026	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk08-Kabira-YehJawaaniHaiDeewani.mp3	Hindi
79eb1d1b-d17e-420d-afbf-3e0c0ec0c3f5	2025-08-30 18:06:28.918009+05:30	\N	songs.pk08-YoYoHits-Bebo.mp3	audio/mpeg	5028876	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk08-YoYoHits-Bebo.mp3	Hindi
38a637c8-828a-4cd3-98e6-918592c5a6c2	2025-08-30 18:06:28.921626+05:30	\N	songs.pk09-YoYoHits-HighHeels.mp3	audio/mpeg	5807713	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk09-YoYoHits-HighHeels.mp3	Hindi
62ac4660-0142-4fe1-8c10-81cdcec9e97f	2025-08-30 18:06:28.92563+05:30	\N	songs.pk10-YoYoHits-MainSharabi.mp3	audio/mpeg	5325459	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk10-YoYoHits-MainSharabi.mp3	Hindi
7c66290a-c5f9-4a14-a99c-e7d0add9779c	2025-08-30 18:06:28.928625+05:30	\N	songs.pk11-YoYoHits-SatanweedPilaDe.mp3	audio/mpeg	5806420	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk11-YoYoHits-SatanweedPilaDe.mp3	Hindi
a6d54f0a-9b66-4aca-8060-bcf641d6ed7c	2025-08-30 18:06:28.932632+05:30	\N	songs.pk13-YoYoHits-PunjabiyaanDiBattery.mp3	audio/mpeg	4197939	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk13-YoYoHits-PunjabiyaanDiBattery.mp3	Hindi
4c16fd91-18d8-4b17-8ce5-b08da2cf54b1	2025-08-30 18:06:28.93563+05:30	\N	songs.pk14-YoYoHits-PartyOnMyMind.mp3	audio/mpeg	4820400	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk14-YoYoHits-PartyOnMyMind.mp3	Hindi
85010af1-954b-4dd7-be31-313d8f30920f	2025-08-30 18:06:28.939622+05:30	\N	songs.pk15-YoYoHits-RaniTuMeinRaja.mp3	audio/mpeg	4716411	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pk15-YoYoHits-RaniTuMeinRaja.mp3	Hindi
b37f3b47-f8af-4601-96bc-b70a83b263b8	2025-08-30 18:06:28.942625+05:30	\N	songs.pkAbcdyaariyan-128kbps.mp3	audio/mpeg	4694141	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkAbcdyaariyan-128kbps.mp3	Hindi
9df07bfc-9137-4717-b177-159d3f1d9824	2025-08-30 18:06:28.946747+05:30	\N	songs.pkBaarishyaariyan-128kbps.mp3	audio/mpeg	7421651	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkBaarishyaariyan-128kbps.mp3	Hindi
ba9cdf53-ecda-44ff-9968-1f5a04fe3b90	2025-08-30 18:06:28.950311+05:30	\N	songs.pkBlueEyesyoYoHoneySingh-128kbps.mp3	audio/mpeg	4303365	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkBlueEyesyoYoHoneySingh-128kbps.mp3	Hindi
692ebe69-4de8-427a-b3f3-572a9c7c5f98	2025-08-30 18:06:28.954298+05:30	\N	songs.pkDanceBasantiungli-320kbps.mp3	audio/mpeg	9036861	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkDanceBasantiungli-320kbps.mp3	Hindi
682e5425-103e-4330-a582-81f5a48cfd0d	2025-08-30 18:06:28.95731+05:30	\N	songs.pkHoshwalonKoKhabarKya-Sarfarosh1999.mp3	audio/mpeg	10358212	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkHoshwalonKoKhabarKya-Sarfarosh1999.mp3	Hindi
d871f6a6-965e-4b3c-a8ff-993e4dc0c7ee	2025-08-30 18:06:28.961305+05:30	\N	songs.pkJeeKardabadlapur-320kbps.mp3	audio/mpeg	7838158	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkJeeKardabadlapur-320kbps.mp3	Hindi
e160558f-527d-4bd9-b8de-e3748067f42b	2025-08-30 18:06:28.966331+05:30	\N	songs.pkLetsCelebratetevar-ImranKhan-320kbps.mp3	audio/mpeg	7777924	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkLetsCelebratetevar-ImranKhan-320kbps.mp3	Hindi
2588d7b1-59a5-4411-9f6e-f94e134f4ecd	2025-08-30 18:06:28.969336+05:30	\N	songs.pkManaliTrancetheShaukeens-HoneySingh-320kbps.mp3	audio/mpeg	8230579	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkManaliTrancetheShaukeens-HoneySingh-320kbps.mp3	Hindi
ebf15e4e-9938-47da-b949-a2d574fa18e8	2025-08-30 18:06:28.973331+05:30	\N	songs.pkPartyToBantiHaibhoothnathReturns-128kbps.mp3	audio/mpeg	1270484	C:\\CALLERTUNE\\Songs\\Hindi_songs\\songs.pkPartyToBantiHaibhoothnathReturns-128kbps.mp3	Hindi
ef54f28b-16a8-42cd-900d-a6b1087687d3	2025-08-30 18:06:27.884256+05:30	\N	03 Hymn for the Weekend.mp3	audio/mpeg	4694016	C:\\CALLERTUNE\\Songs\\English_songs\\03 Hymn for the Weekend.mp3	English
01c98096-0b31-45ca-b358-b11c8e925fb3	2025-08-30 18:06:27.947254+05:30	\N	05 Seasons.mp3	audio/mpeg	8839168	C:\\CALLERTUNE\\Songs\\English_songs\\05 Seasons.mp3	English
3e1619b2-4c34-4fe3-ba9c-ef6870735a75	2025-08-30 18:06:27.953259+05:30	\N	1 million.mp3	audio/mpeg	6322219	C:\\CALLERTUNE\\Songs\\English_songs\\1 million.mp3	English
f6de7d84-6446-4b5e-bf9d-ce4409b3e80c	2025-08-30 18:06:27.959259+05:30	\N	50 cent Candy Shop Lyrics.mp3	audio/mpeg	5059709	C:\\CALLERTUNE\\Songs\\English_songs\\50 cent Candy Shop Lyrics.mp3	English
244e322f-d61e-4408-8540-553fba03087f	2025-08-30 18:06:27.965255+05:30	\N	Afrojack   Martin Garrix - Turn Up The Speakers (Official Music Video) (256.mp3	audio/mpeg	6048000	C:\\CALLERTUNE\\Songs\\English_songs\\Afrojack   Martin Garrix - Turn Up The Speakers (Official Music Video) (256.mp3	English
66d73366-5962-4130-b6c4-8a3abfddea35	2025-08-30 18:06:27.9728+05:30	\N	Bebe 20Rexha 20feat. 20Ty 20Dolla 20$ign 20- 20Bad 20Bitch 20(Mp3goo.com).mp3	audio/mpeg	3158146	C:\\CALLERTUNE\\Songs\\English_songs\\Bebe 20Rexha 20feat. 20Ty 20Dolla 20$ign 20- 20Bad 20Bitch 20(Mp3goo.com).mp3	English
b056477f-3945-4e55-9796-0703f4bc5e0d	2025-08-30 18:06:27.978799+05:30	\N	Bebe Rexha - I Got You Lyric Video.mp3	audio/mpeg	4606256	C:\\CALLERTUNE\\Songs\\English_songs\\Bebe Rexha - I Got You Lyric Video.mp3	English
0b9b468f-0474-4187-a2ea-32b972c1e5a3	2025-08-30 18:06:27.984799+05:30	\N	Calvin Harris - This Is What You Came For (Official Video) ft. Rihanna (320.mp3	audio/mpeg	9560000	C:\\CALLERTUNE\\Songs\\English_songs\\Calvin Harris - This Is What You Came For (Official Video) ft. Rihanna (320.mp3	English
ed3404a3-a522-4622-9153-add6793dabf2	2025-08-30 18:06:27.989801+05:30	\N	Camila Cabello - Crying in the Club.mp3	audio/mpeg	12831484	C:\\CALLERTUNE\\Songs\\English_songs\\Camila Cabello - Crying in the Club.mp3	English
7e261b35-27bb-43b7-9792-e4411e3b0a8e	2025-08-30 18:06:27.997802+05:30	\N	Camila Cabello - Havana (Audio) ft. Young Thug.mp3	audio/mpeg	8745933	C:\\CALLERTUNE\\Songs\\English_songs\\Camila Cabello - Havana (Audio) ft. Young Thug.mp3	English
2c3fe9aa-2338-4741-861c-fa9304791163	2025-08-30 18:06:28.002802+05:30	\N	Cheat_Codes_x_Kris_Kross_Amsterdam-Sex_Original_Mix_.mp3	audio/mpeg	9191744	C:\\CALLERTUNE\\Songs\\English_songs\\Cheat_Codes_x_Kris_Kross_Amsterdam-Sex_Original_Mix_.mp3	English
5e847cb2-f27d-45dd-a5fc-5ca275496570	2025-08-30 18:06:28.0088+05:30	\N	Clean Bandit - Rockabye ft. Sean Paul.mp3	audio/mpeg	10159680	C:\\CALLERTUNE\\Songs\\English_songs\\Clean Bandit - Rockabye ft. Sean Paul.mp3	English
cdfdd51e-fae5-490f-8acd-a5841cbf666f	2025-08-30 18:06:28.0148+05:30	\N	David Guetta Hey Mama Feat Nicki Minaj Afrojack David Guetta Hey Mama Feat N.mp3	audio/mpeg	4088985	C:\\CALLERTUNE\\Songs\\English_songs\\David Guetta Hey Mama Feat Nicki Minaj Afrojack David Guetta Hey Mama Feat N.mp3	English
e00e681f-e0ae-448c-a866-5a636ed7f9de	2025-08-30 18:06:28.020802+05:30	\N	David-Guetta-Showtek-Bad-feat-Vassy-Original-Mix-.mp3	audio/mpeg	10975729	C:\\CALLERTUNE\\Songs\\English_songs\\David-Guetta-Showtek-Bad-feat-Vassy-Original-Mix-.mp3	English
b9dc4d82-4423-4d98-96b3-5f127ce3690e	2025-08-30 18:06:28.026807+05:30	\N	David_Guetta-This_Ones_for_You_feat_Zara_Larsson_Official_Song_UEFA_EURO_201.mp3	audio/mpeg	8542969	C:\\CALLERTUNE\\Songs\\English_songs\\David_Guetta-This_Ones_for_You_feat_Zara_Larsson_Official_Song_UEFA_EURO_201.mp3	English
ca02e879-2203-4d6c-9baf-a52ba13faad4	2025-08-30 18:06:28.035808+05:30	\N	Delicate - Taylor Swift 320Kbps(Onmirchi.in).mp3	audio/mpeg	9491465	C:\\CALLERTUNE\\Songs\\English_songs\\Delicate - Taylor Swift 320Kbps(Onmirchi.in).mp3	English
22ab1e66-23fb-424b-9631-d1cf5c94a7c0	2025-08-30 18:06:28.046809+05:30	\N	Demi Lovato - Sorry Not Sorry.mp3	audio/mpeg	9208822	C:\\CALLERTUNE\\Songs\\English_songs\\Demi Lovato - Sorry Not Sorry.mp3	English
1ed1fccb-4e67-4f7c-9fa9-ccafd6aff782	2025-08-30 18:06:28.053806+05:30	\N	DJ Snake - Magenta Riddim(320Kbps.In).mp3	audio/mpeg	4793706	C:\\CALLERTUNE\\Songs\\English_songs\\DJ Snake - Magenta Riddim(320Kbps.In).mp3	English
55264caf-8112-4008-89ee-3119a18edb1f	2025-08-30 18:06:28.059798+05:30	\N	DJ_Snake_-_Taki_Taki_ft._Selena_Gomez,_Ozuna,_Cardi_B.mp3	audio/mpeg	3706182	C:\\CALLERTUNE\\Songs\\English_songs\\DJ_Snake_-_Taki_Taki_ft._Selena_Gomez,_Ozuna,_Cardi_B.mp3	English
7f6ce5e5-f88c-487f-aab3-bec3ab9cf44f	2025-08-30 18:06:28.065807+05:30	\N	Dua Lipa - New Rules.mp3	audio/mpeg	8989394	C:\\CALLERTUNE\\Songs\\English_songs\\Dua Lipa - New Rules.mp3	English
07178d99-af7f-4f53-8f19-d9ded1101cf6	2025-08-30 18:06:28.072802+05:30	\N	Dusk Till Dawn-320Kbps(MixMusic.in).mp3	audio/mpeg	10949572	C:\\CALLERTUNE\\Songs\\English_songs\\Dusk Till Dawn-320Kbps(MixMusic.in).mp3	English
71c70340-9be2-41d7-a79e-e7c4756c92a1	2025-08-30 18:06:28.0828+05:30	\N	Ellie_Goulding_-_Love_Me_Like_You_Do_(Official_Video).mp3	audio/mpeg	3988722	C:\\CALLERTUNE\\Songs\\English_songs\\Ellie_Goulding_-_Love_Me_Like_You_Do_(Official_Video).mp3	English
307a3923-b703-4b7b-93e7-fbd4858d8da1	2025-08-30 18:06:28.090808+05:30	\N	Fast_And_Furious_7_Get_Low_Mp3_Song_-_Dillon_Francis_Ft-1.mp3	audio/mpeg	3526143	C:\\CALLERTUNE\\Songs\\English_songs\\Fast_And_Furious_7_Get_Low_Mp3_Song_-_Dillon_Francis_Ft-1.mp3	English
60855bc6-cc82-4dca-a514-31ecad8969d2	2025-08-30 18:06:28.104804+05:30	\N	Faydee Ft Lazy J - Laugh Till You Cry (Official Video).mp3	audio/mpeg	9615288	C:\\CALLERTUNE\\Songs\\English_songs\\Faydee Ft Lazy J - Laugh Till You Cry (Official Video).mp3	English
5c25e066-2206-4cfa-affb-48b1986d5f61	2025-08-30 18:06:28.109359+05:30	\N	INNA - Bad Boys  Exclusive Online Video.mp3	audio/mpeg	7595500	C:\\CALLERTUNE\\Songs\\English_songs\\INNA - Bad Boys  Exclusive Online Video.mp3	English
c5eea717-131b-42e1-a564-eaecf59c39b9	2025-08-30 18:06:28.11536+05:30	\N	Kygo  Selena Gomez - It Ain t Me (with Selena Gomez) (Audio).mp3	audio/mpeg	8862961	C:\\CALLERTUNE\\Songs\\English_songs\\Kygo  Selena Gomez - It Ain t Me (with Selena Gomez) (Audio).mp3	English
d7df7457-23ea-4515-b22d-60601846ae97	2025-08-30 18:06:28.121357+05:30	\N	Rain_Man_&_Krysta_Youngs_-_Habit_(T-Mass_Remix).mp3	audio/mpeg	3750067	C:\\CALLERTUNE\\Songs\\English_songs\\Rain_Man_&_Krysta_Youngs_-_Habit_(T-Mass_Remix).mp3	English
88ca5e57-48ea-4f5b-bc3d-25bda83f1772	2025-08-30 18:06:28.125362+05:30	\N	Rihanna - Rude Boy.mp3	audio/mpeg	5406857	C:\\CALLERTUNE\\Songs\\English_songs\\Rihanna - Rude Boy.mp3	English
0494ba96-63ff-4f62-ba4f-09c4c979f866	2025-08-30 18:06:28.140908+05:30	\N	San Holo - Still Looking (CESQEAUX Remix).mp3	audio/mpeg	7581916	C:\\CALLERTUNE\\Songs\\English_songs\\San Holo - Still Looking (CESQEAUX Remix).mp3	English
bced1b40-4baa-417a-b377-523955ea1300	2025-08-30 18:06:28.148921+05:30	\N	Shape of you.mp3	audio/mpeg	10533753	C:\\CALLERTUNE\\Songs\\English_songs\\Shape of you.mp3	English
82e5d680-0c05-4bc3-851d-841806dae92c	2025-08-30 18:06:28.153907+05:30	\N	Shawn_Mendes,_Camila_Cabello_-_Señorita(256k).mp3	audio/mpeg	3286701	C:\\CALLERTUNE\\Songs\\English_songs\\Shawn_Mendes,_Camila_Cabello_-_Señorita(256k).mp3	English
44c8a9a8-0cda-478e-957d-3e41e9186eec	2025-08-30 18:06:28.158906+05:30	\N	Shawn_Mendes-Treat_You_Better.mp3	audio/mpeg	4334792	C:\\CALLERTUNE\\Songs\\English_songs\\Shawn_Mendes-Treat_You_Better.mp3	English
8af24416-bea8-43ab-945a-30c47a788c39	2025-08-30 18:06:28.167906+05:30	\N	Ship Wrek - Pain (feat. Mia Vaile)  NCS Release .mp3	audio/mpeg	8443957	C:\\CALLERTUNE\\Songs\\English_songs\\Ship Wrek - Pain (feat. Mia Vaile)  NCS Release .mp3	English
8794f29e-bdc5-46f8-9c88-0a43615018db	2025-08-30 18:06:28.172914+05:30	\N	Sia - Never Give Up.mp3	audio/mpeg	8891173	C:\\CALLERTUNE\\Songs\\English_songs\\Sia - Never Give Up.mp3	English
c0494798-a455-4f7c-aa5d-858d1e64706a	2025-08-30 18:06:28.178908+05:30	\N	Sia-Cheap_Thrills_Original_.mp3	audio/mpeg	8511382	C:\\CALLERTUNE\\Songs\\English_songs\\Sia-Cheap_Thrills_Original_.mp3	English
e2a14d9c-500d-45c2-92e6-2530d0b6ffb3	2025-08-30 18:06:28.183907+05:30	\N	Talking To Myself (Official Video) - Linkin Park.mp3	audio/mpeg	8952822	C:\\CALLERTUNE\\Songs\\English_songs\\Talking To Myself (Official Video) - Linkin Park.mp3	English
6d188469-f020-442b-8f20-5e2fd3b41c75	2025-08-30 18:06:28.188908+05:30	\N	The Americanos - In My Foreign ft. Ty Dolla $ign  Lil Yachty  Nicky Jam.mp3	audio/mpeg	9205688	C:\\CALLERTUNE\\Songs\\English_songs\\The Americanos - In My Foreign ft. Ty Dolla $ign  Lil Yachty  Nicky Jam.mp3	English
e66f379e-38ca-4a61-9028-a24f5bf0c640	2025-08-30 18:06:28.195908+05:30	\N	The Chainsmokers - Closer ft. Halsey.mp3	audio/mpeg	9881737	C:\\CALLERTUNE\\Songs\\English_songs\\The Chainsmokers - Closer ft. Halsey.mp3	English
014ccaed-30be-4544-910d-bd85636d9c74	2025-08-30 18:06:28.201909+05:30	\N	The Chainsmokers - Setting Fires ft. XYLØ.mp3	audio/mpeg	9854569	C:\\CALLERTUNE\\Songs\\English_songs\\The Chainsmokers - Setting Fires ft. XYLØ.mp3	English
b78f0ac1-7cc3-4d45-878c-06430181696c	2025-08-30 18:06:28.206908+05:30	\N	The Chainsmokers.mp3	audio/mpeg	7920463	C:\\CALLERTUNE\\Songs\\English_songs\\The Chainsmokers.mp3	English
be74f737-29ad-404f-a3da-314cdddd9f71	2025-08-30 18:06:28.211906+05:30	\N	The Greatest - 320Kbps - (www.songspksongspk.cc).mp3	audio/mpeg	8499404	C:\\CALLERTUNE\\Songs\\English_songs\\The Greatest - 320Kbps - (www.songspksongspk.cc).mp3	English
79233580-7473-4876-9047-2968b668c20f	2025-08-30 18:06:28.216906+05:30	\N	The_Chainsmokers_feat_Daya-Dont_let_me_down_W_W_Remix_.mp3	audio/mpeg	7933048	C:\\CALLERTUNE\\Songs\\English_songs\\The_Chainsmokers_feat_Daya-Dont_let_me_down_W_W_Remix_.mp3	English
aff3ae2a-ad20-4edc-9947-228a2174c0d2	2025-08-30 18:06:28.221907+05:30	\N	TroyBoi - Afterhours (feat. Diplo & Nina Sky).mp3	audio/mpeg	4428676	C:\\CALLERTUNE\\Songs\\English_songs\\TroyBoi - Afterhours (feat. Diplo & Nina Sky).mp3	English
d48a7b62-90d9-476e-a346-7a8108a6996a	2025-08-30 18:06:28.226907+05:30	\N	Turn Down For What - DJ Snake And Lil Jon(MyMp3Song.Com).mp3	audio/mpeg	3523327	C:\\CALLERTUNE\\Songs\\English_songs\\Turn Down For What - DJ Snake And Lil Jon(MyMp3Song.Com).mp3	English
661382ce-1914-40de-9169-71cf8bab4660	2025-08-30 18:06:28.232908+05:30	\N	twenty one pilots - Heathens (DISTO Remix).mp3	audio/mpeg	8752202	C:\\CALLERTUNE\\Songs\\English_songs\\twenty one pilots - Heathens (DISTO Remix).mp3	English
ad5422df-f7f8-4417-b0cd-e651cc696faf	2025-08-30 18:06:28.237908+05:30	\N	Zara Larsson - Aint My Fault - www.MP3sharelagu.mp3	audio/mpeg	9000840	C:\\CALLERTUNE\\Songs\\English_songs\\Zara Larsson - Aint My Fault - www.MP3sharelagu.mp3	English
cd90972f-c4c7-47f3-9bc2-4a2f91ac6d92	2025-08-30 18:06:28.24191+05:30	\N	Zara Larsson - Lush Life.mp3	audio/mpeg	4839477	C:\\CALLERTUNE\\Songs\\English_songs\\Zara Larsson - Lush Life.mp3	English
d11cf61c-6870-4d9f-80c7-d15e66407792	2025-08-30 18:06:29.36475+05:30	\N	Andaala Rakshasive [NaaSongsMp33.Com].mp3	audio/mpeg	6192381	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Andaala Rakshasive [NaaSongsMp33.Com].mp3	Telugu
189c298e-d4cd-48d0-a2c4-94f554107d95	2025-08-30 18:06:29.368755+05:30	\N	Andaalane Andistaa ([NaaSongsMp33.Com]).mp3	audio/mpeg	9685427	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Andaalane Andistaa ([NaaSongsMp33.Com]).mp3	Telugu
30fee61b-26e5-4e73-a77a-3f50754030cf	2025-08-30 18:06:29.372752+05:30	\N	Antha Ramamayam [NaaSongsMp33.Com].mp3	audio/mpeg	3576823	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Antha Ramamayam [NaaSongsMp33.Com].mp3	Telugu
4c0761db-f33f-4265-9ba8-d83479a2cfa1	2025-08-30 18:06:29.376753+05:30	\N	Appudo Ippudo [NaaSongsMp33.Com].mp3	audio/mpeg	4177790	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Appudo Ippudo [NaaSongsMp33.Com].mp3	Telugu
19debf56-dd96-4587-a4a4-0e6044819df7	2025-08-30 18:06:29.380756+05:30	\N	Arere Aakasham - [NaaSongs.World].mp3	audio/mpeg	3406673	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Arere Aakasham - [NaaSongs.World].mp3	Telugu
ef8a3185-2113-4a11-82b7-8b01187172b7	2025-08-30 18:06:29.385754+05:30	\N	Attantode [NaaSongsMp33.Com].mp3	audio/mpeg	5106969	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Attantode [NaaSongsMp33.Com].mp3	Telugu
30682f13-5188-43c0-9c4e-a3bd689bcd23	2025-08-30 18:06:29.391303+05:30	\N	Atto Attamma Koothuro ([NaaSongs.World]).mp3	audio/mpeg	4494661	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Atto Attamma Koothuro ([NaaSongs.World]).mp3	Telugu
2d63773c-af94-47bc-9fd0-b2b59c97477d	2025-08-30 18:06:29.395307+05:30	\N	Auditorium Music Bit [NaaSongsMp33.Com].mp3	audio/mpeg	2587017	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Auditorium Music Bit [NaaSongsMp33.Com].mp3	Telugu
0c5876e7-fa54-447c-b514-17571516c030	2025-08-30 18:06:29.399307+05:30	\N	Aunty Koothuraa [NaaSongsMp33.Com].mp3	audio/mpeg	5981340	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Aunty Koothuraa [NaaSongsMp33.Com].mp3	Telugu
8253a2ce-00cd-4add-82d5-250e8f04d379	2025-08-30 18:06:29.403305+05:30	\N	Ay Pilla - SenSongsMp3.Co_29.mp3	audio/mpeg	10403520	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ay Pilla - SenSongsMp3.Co_29.mp3	Telugu
9374037c-aca5-461c-9d18-6d4b6ab03c8e	2025-08-30 18:06:29.407312+05:30	\N	Ay Pilla - [NaaSongs.World].mp3	audio/mpeg	4143340	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ay Pilla - [NaaSongs.World].mp3	Telugu
ba35ecf6-73cb-4c77-937d-293efe7a9d59	2025-08-30 18:06:29.411307+05:30	\N	Ayomayam - SenSongsmp3.Co.mp3	audio/mpeg	4829047	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ayomayam - SenSongsmp3.Co.mp3	Telugu
39628d5f-86e8-428a-9854-de998b8069d6	2025-08-30 18:06:29.415301+05:30	\N	Ayyayayyo - SenSongsMp3.Com.mp3	audio/mpeg	4231552	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ayyayayyo - SenSongsMp3.Com.mp3	Telugu
2585446e-27ff-4123-bda8-b490914cabfa	2025-08-30 18:06:29.420305+05:30	\N	Balega Tagilavey Bangaram [NaaSongs.World].mp3	audio/mpeg	3756608	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Balega Tagilavey Bangaram [NaaSongs.World].mp3	Telugu
0c92e6ad-e6ff-4d2c-a59b-d5f28207a6d0	2025-08-30 18:06:29.424308+05:30	\N	Bangalakhathamlo [NaaSongsMp33.Com].mp3	audio/mpeg	4646784	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Bangalakhathamlo [NaaSongsMp33.Com].mp3	Telugu
ec7a0b35-1aaa-42b1-a432-01f7d686e414	2025-08-30 18:06:29.428304+05:30	\N	Bhadra Sheela [NaaSongsMp33.Com].mp3	audio/mpeg	5042578	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Bhadra Sheela [NaaSongsMp33.Com].mp3	Telugu
c4f7f1c7-d27c-488f-82ce-58e71d68829f	2025-08-30 18:06:29.437303+05:30	\N	Bhalegundi Baalaa - SenSongsMp3.Com.mp3	audio/mpeg	11308352	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Bhalegundi Baalaa - SenSongsMp3.Com.mp3	Telugu
d663da6a-4b41-436c-a653-a99e0bd2632f	2025-08-30 18:06:29.441308+05:30	\N	Bhalegundi Baalaa - [NaaSongs.World].mp3	audio/mpeg	11073319	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Bhalegundi Baalaa - [NaaSongs.World].mp3	Telugu
20e44469-c305-4491-974e-c38344ebeb83	2025-08-30 18:06:29.445301+05:30	\N	Bharatha Vedamuga [www.Tollymp3z.com].mp3	audio/mpeg	5850685	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Bharatha Vedamuga [www.Tollymp3z.com].mp3	Telugu
27ce641e-9b5c-463e-bc43-c8a0cda80261	2025-08-30 18:06:29.449301+05:30	\N	Bommani Geesthe [NaaSongsMp33.Com].mp3	audio/mpeg	4043725	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Bommani Geesthe [NaaSongsMp33.Com].mp3	Telugu
aeb19f33-1436-440d-bd72-2fc4057441b9	2025-08-30 18:06:29.454303+05:30	\N	Bus Stande - SenSongsMp3.Com.mp3	audio/mpeg	8617792	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Bus Stande - SenSongsMp3.Com.mp3	Telugu
e101d2b2-2d3e-4854-85d6-d8432fa8a79f	2025-08-30 18:06:29.459302+05:30	\N	Chaila Chaila-[NaaSongsMp33.Com].mp3	audio/mpeg	6119495	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chaila Chaila-[NaaSongsMp33.Com].mp3	Telugu
a7cf6797-85c2-49b5-952a-85c9c04d2c3f	2025-08-30 18:06:29.463302+05:30	\N	Chanchalguda Jail Lo - SenSongsMp3.Com.mp3	audio/mpeg	2963828	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chanchalguda Jail Lo - SenSongsMp3.Com.mp3	Telugu
a8bb2f85-bdf9-44c7-a208-d82dbae1cb5f	2025-08-30 18:06:29.467303+05:30	\N	Chandrullo Unde Kundelu [NaaSongsMp33.Com].mp3	audio/mpeg	3612074	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chandrullo Unde Kundelu [NaaSongsMp33.Com].mp3	Telugu
68e9b30b-630b-476f-aa0e-53cde63fd42e	2025-08-30 18:06:29.47231+05:30	\N	Charitraney Likhinchara - SenSongsMp3.Com.mp3	audio/mpeg	4426890	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Charitraney Likhinchara - SenSongsMp3.Com.mp3	Telugu
958683a3-18bb-4b84-bcd2-8958b4e89658	2025-08-30 18:06:29.476305+05:30	\N	Cheli - SenSongsMp3.Com.mp3	audio/mpeg	3661477	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Cheli - SenSongsMp3.Com.mp3	Telugu
c0c9bd2e-6184-4f8a-8ae8-209b3c707c37	2025-08-30 18:06:29.480304+05:30	\N	Cheli - [NaaSongs.World]m.mp3	audio/mpeg	3585870	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Cheli - [NaaSongs.World]m.mp3	Telugu
32371453-bb3b-4ea4-8286-44c3f77ba56d	2025-08-30 18:06:29.484302+05:30	\N	Cheli Na Edane.mp3	audio/mpeg	11043842	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Cheli Na Edane.mp3	Telugu
2db2c8f7-85fd-4e20-932e-d53d41504d74	2025-08-30 18:06:29.488301+05:30	\N	Cheliya [NaaSongsMp33.Com].mp3	audio/mpeg	5690406	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Cheliya [NaaSongsMp33.Com].mp3	Telugu
e2df92ec-1d5a-42dd-9f6f-8c1eedadca2f	2025-08-30 18:06:29.492312+05:30	\N	Chilaka-Pacha-Koka--From-Narasimha-Naidu--Mano-Radhika.mp3	audio/mpeg	5444447	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chilaka-Pacha-Koka--From-Narasimha-Naidu--Mano-Radhika.mp3	Telugu
4ad13809-31ba-4d65-b4f2-e58d167b6e8c	2025-08-30 18:06:29.496306+05:30	\N	Chinnaga Chinnaga [NaaSongsMp33.Com].mp3	audio/mpeg	5435453	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chinnaga Chinnaga [NaaSongsMp33.Com].mp3	Telugu
5d58d840-8ae9-4c7e-8769-dd57ed0321e6	2025-08-30 18:06:29.500306+05:30	\N	Chiru Chiru Chiru-[NaaSongsMp33.Com].mp3	audio/mpeg	4802372	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chiru Chiru Chiru-[NaaSongsMp33.Com].mp3	Telugu
39b9cd1a-b532-4d7d-a42c-7fb5fb599d17	2025-08-30 18:06:29.504302+05:30	\N	Chirugaali Aagipove Full Video Song __ Oka Manasu Movie Full Video Songs __ madhura Audio (128  kbps) (YtSaver.xyz).mp3	audio/mpeg	2761773	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chirugaali Aagipove Full Video Song __ Oka Manasu Movie Full Video Songs __ madhura Audio (128  kbps) (YtSaver.xyz).mp3	Telugu
fbbfbaec-5a1b-4489-b9e0-6864ff3a7678	2025-08-30 18:06:29.508308+05:30	\N	Chirunavvule  Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	audio/mpeg	3701421	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chirunavvule  Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	Telugu
5ee6e578-5c55-405c-8188-651bc9d16674	2025-08-30 18:06:29.512303+05:30	\N	Chitti - SenSongsMp3.Com.mp3	audio/mpeg	4178737	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chitti - SenSongsMp3.Com.mp3	Telugu
20a432b7-7812-4d85-b774-96def3ba4993	2025-08-30 18:06:29.517312+05:30	\N	Chitti - [NaaSongs.World].mp3	audio/mpeg	3937428	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chitti - [NaaSongs.World].mp3	Telugu
11c524b9-d25f-41f4-91ff-abfd22aaa445	2025-08-30 18:06:29.521306+05:30	\N	Choosale Kallaraa - SenSongsMp3.Com.mp3	audio/mpeg	3876039	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Choosale Kallaraa - SenSongsMp3.Com.mp3	Telugu
3a1c9392-4fa9-4d6d-bd8f-e8b5db0c2e80	2025-08-30 18:06:29.525306+05:30	\N	Choosale Kallaraa - [NaaSongs.World].mp3	audio/mpeg	3658585	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Choosale Kallaraa - [NaaSongs.World].mp3	Telugu
f77e9b33-468e-4ea4-a2c3-a4cc4f341264	2025-08-30 18:06:29.530303+05:30	\N	Choosi Nerchukoku - SenSongsMp3.Com.mp3	audio/mpeg	7941312	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Choosi Nerchukoku - SenSongsMp3.Com.mp3	Telugu
edf6ffa7-e884-4c44-a258-a9df35d37333	2025-08-30 18:06:29.534302+05:30	\N	Choti Si Chiraiya (Mimi).mp3	audio/mpeg	6175042	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Choti Si Chiraiya (Mimi).mp3	Telugu
df0c0669-609b-436b-a602-a2394ab567b3	2025-08-30 18:06:29.53831+05:30	\N	Chukkala Chunni - SenSongsmp3.Co.mp3	audio/mpeg	3572465	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chukkala Chunni - SenSongsmp3.Co.mp3	Telugu
c8148081-fe8b-4eca-96a8-3e514666b105	2025-08-30 18:06:29.543304+05:30	\N	Chukkala Chunni - [NaaSongs.World].mp3	audio/mpeg	3618284	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chukkala Chunni - [NaaSongs.World].mp3	Telugu
a924e119-358b-4890-95f6-e48afda08185	2025-08-30 18:06:29.547307+05:30	\N	Chukkalanni Muggulai [NaaSongs.World].mp3	audio/mpeg	4795648	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chukkalanni Muggulai [NaaSongs.World].mp3	Telugu
a258898a-d306-4a40-9351-da65ef7ed5c6	2025-08-30 18:06:29.552303+05:30	\N	Chusanae Chusanae - [NaaSongs.World].mp3	audio/mpeg	3806250	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Chusanae Chusanae - [NaaSongs.World].mp3	Telugu
5fba47f8-3df0-4b4f-b771-3484be3cae3e	2025-08-30 18:06:29.555302+05:30	\N	College Song - [NaaSongs.World].mp3	audio/mpeg	4085711	C:\\CALLERTUNE\\Songs\\Telugu_songs\\College Song - [NaaSongs.World].mp3	Telugu
1231c883-7c86-4b17-912b-d13cf2805f7c	2025-08-30 18:06:29.559308+05:30	\N	Dabbe Manadi Kummesko - SenSongsM3.Com.mp3	audio/mpeg	3647628	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Dabbe Manadi Kummesko - SenSongsM3.Com.mp3	Telugu
e9f7a4cf-c62f-4992-bc00-0e06ef8a6f00	2025-08-30 18:06:29.56431+05:30	\N	Dabbulu Sampaadinchalante - SenSongsM3.Com.mp3	audio/mpeg	1765986	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Dabbulu Sampaadinchalante - SenSongsM3.Com.mp3	Telugu
6b72d0f8-a0b7-4afd-bfdf-c2987c00374f	2025-08-30 18:06:29.567303+05:30	\N	Dakko Dakko Meka.mp3	audio/mpeg	5161600	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Dakko Dakko Meka.mp3	Telugu
b59e107a-6930-4ff6-853a-5c5f2da87267	2025-08-30 18:06:29.572304+05:30	\N	Desh Mere (Bhuj).mp3	audio/mpeg	4448612	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Desh Mere (Bhuj).mp3	Telugu
55442d54-5b39-4523-91c7-c48306041e9c	2025-08-30 18:06:29.576306+05:30	\N	Devata Neevena.mp3	audio/mpeg	9813410	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Devata Neevena.mp3	Telugu
126d6638-6014-4737-99be-3bcef5117a8e	2025-08-30 18:06:29.580302+05:30	\N	Devathalantha - SenSongsMp3.Com.mp3	audio/mpeg	3969149	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Devathalantha - SenSongsMp3.Com.mp3	Telugu
b40a9c7d-b88d-47f3-a20b-e6b5d8365c6f	2025-08-30 18:06:29.584304+05:30	\N	Dhandiya [NaaSongsMp33.Com].mp3	audio/mpeg	7757363	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Dhandiya [NaaSongsMp33.Com].mp3	Telugu
50db9dff-bd9b-44c2-a864-9326f2d605b1	2025-08-30 18:06:29.588307+05:30	\N	Dheemthana Dheemthana - SenSongsMp3.Com.mp3	audio/mpeg	11002048	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Dheemthana Dheemthana - SenSongsMp3.Com.mp3	Telugu
c06e8446-a630-4d89-8e9c-531cca284dae	2025-08-30 18:06:29.593303+05:30	\N	Dheemthana Dheemthana - [NaaSongs.World].mp3	audio/mpeg	4313741	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Dheemthana Dheemthana - [NaaSongs.World].mp3	Telugu
88bbf224-e7db-4926-857e-4a41f3308d73	2025-08-30 18:06:29.597303+05:30	\N	Dhim Dhinaktari-[NaaSongsMp33.Com].mp3	audio/mpeg	4458094	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Dhim Dhinaktari-[NaaSongsMp33.Com].mp3	Telugu
b5bae2f6-3a8e-4a62-8630-d355158b2268	2025-08-30 18:06:29.601312+05:30	\N	Diri Diri-[NaaSongsMp33.Com].mp3	audio/mpeg	4436360	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Diri Diri-[NaaSongsMp33.Com].mp3	Telugu
e1a3ea3e-d765-40bf-969f-9b238a452c38	2025-08-30 18:06:29.606308+05:30	\N	Dole Dole.mp3	audio/mpeg	4785093	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Dole Dole.mp3	Telugu
e073d12c-a8d9-4664-8efe-ddb500ac6930	2025-08-30 18:06:29.610305+05:30	\N	Dosti.mp3	audio/mpeg	12493248	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Dosti.mp3	Telugu
8779c74a-7644-4f85-9d3f-3c09286b28a6	2025-08-30 18:06:29.614303+05:30	\N	Duvvina Talane [NaaSongsMp33.Com].mp3	audio/mpeg	3274226	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Duvvina Talane [NaaSongsMp33.Com].mp3	Telugu
53bc9b04-7e6f-4ba7-ac25-10a6b5a44895	2025-08-30 18:06:29.618308+05:30	\N	Ecstacy Privacy [NaaSongsMp33.Com].mp3	audio/mpeg	5930813	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ecstacy Privacy [NaaSongsMp33.Com].mp3	Telugu
22eb9693-4925-4a06-bea7-3ee7ad218c78	2025-08-30 18:06:29.622303+05:30	\N	Ede Naa Palletooru [NaaSongsMp33.Com].mp3	audio/mpeg	5035160	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ede Naa Palletooru [NaaSongsMp33.Com].mp3	Telugu
ed876cd7-f473-40a4-9722-296b43738470	2025-08-30 18:06:29.626303+05:30	\N	Ekaantham - [NaaSongs.World].mp3	audio/mpeg	3308881	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ekaantham - [NaaSongs.World].mp3	Telugu
65106722-e1e9-4120-9d18-d86ed4498d3e	2025-08-30 18:06:29.630308+05:30	\N	Emainadho Emo-[NaaSongsMp33.Com].mp3	audio/mpeg	2135908	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Emainadho Emo-[NaaSongsMp33.Com].mp3	Telugu
0878c9da-fe72-409c-85a2-72a121a26f52	2025-08-30 18:06:29.634307+05:30	\N	Emito Idhi - SenSongsmp3.Com.mp3	audio/mpeg	11615699	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Emito Idhi - SenSongsmp3.Com.mp3	Telugu
2cc7bbde-150d-451a-b921-c9e277ca215d	2025-08-30 18:06:29.639318+05:30	\N	Emito Idhi - [NaaSongs.World].mp3	audio/mpeg	11414431	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Emito Idhi - [NaaSongs.World].mp3	Telugu
2ef2fc67-1c2f-48e6-938f-e7645f7042c8	2025-08-30 18:06:29.644304+05:30	\N	Enadaina Anukunnana.mp3	audio/mpeg	5278117	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Enadaina Anukunnana.mp3	Telugu
14fc7efe-8bde-4d2b-b83c-14ae179254dc	2025-08-30 18:06:29.648303+05:30	\N	Enduki Prayamu-[NaaSongsMp33.Com].mp3	audio/mpeg	6336934	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Enduki Prayamu-[NaaSongsMp33.Com].mp3	Telugu
5f210aa3-1e30-4baa-a7d5-fc6b65b0a800	2025-08-30 18:06:29.652304+05:30	\N	Entho Funn -- Naasongs.xyz.mp3	audio/mpeg	4406511	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Entho Funn -- Naasongs.xyz.mp3	Telugu
0c39b6f5-f72a-496e-9bfd-abd94323aa98	2025-08-30 18:06:29.657301+05:30	\N	Eswara - [NaaSongs.World].mp3	audio/mpeg	3413705	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Eswara - [NaaSongs.World].mp3	Telugu
84c21dc8-ae6a-490b-b744-22ffade8a5e7	2025-08-30 18:06:29.661308+05:30	\N	Evaru Neevu Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	audio/mpeg	3560493	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Evaru Neevu Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	Telugu
075b432e-40d3-427b-a72d-e7482f288842	2025-08-30 18:06:29.666303+05:30	\N	Fififee Fifeefee - SenSongsMp3.Com.mp3	audio/mpeg	3503232	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Fififee Fifeefee - SenSongsMp3.Com.mp3	Telugu
81bb2860-13f2-412c-b5b0-ef1d6d72770a	2025-08-30 18:06:29.670306+05:30	\N	Fix Ayipo - SenSongsMp3.Com.mp3	audio/mpeg	6405568	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Fix Ayipo - SenSongsMp3.Com.mp3	Telugu
2b0ba598-ef89-460b-81ab-83fed9cf9781	2025-08-30 18:06:29.675319+05:30	\N	Flute Music [www.Tollymp3z.com].mp3	audio/mpeg	2323926	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Flute Music [www.Tollymp3z.com].mp3	Telugu
aa2ea0bb-566f-4fa1-925d-79c67feb2ea9	2025-08-30 18:06:29.679304+05:30	\N	Gaama Gaama [NaaSongsMp33.Com].mp3	audio/mpeg	786432	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Gaama Gaama [NaaSongsMp33.Com].mp3	Telugu
78ef87bb-9ffa-42bd-bc82-6d119a5732d5	2025-08-30 18:06:29.683309+05:30	\N	Gaganamu Daati - [NaaSongs.World].mp3	audio/mpeg	3602053	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Gaganamu Daati - [NaaSongs.World].mp3	Telugu
b2a79e1e-d569-4d36-934f-89ec834fa64d	2025-08-30 18:06:29.688301+05:30	\N	Game Of Life-[NaaSongsMp33.Com].mp3	audio/mpeg	3174387	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Game Of Life-[NaaSongsMp33.Com].mp3	Telugu
382ea05c-d61d-445e-b0d6-3db32ddcbc04	2025-08-30 18:06:29.693306+05:30	\N	Gappu Chippu [NaaSongsMp33.Com].mp3	audio/mpeg	4273079	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Gappu Chippu [NaaSongsMp33.Com].mp3	Telugu
4febb3f9-64bd-43c7-8b79-2095662306cf	2025-08-30 18:06:29.699305+05:30	\N	Ghal Ghal Ghal Ghal [NaaSongsMp33.Com].mp3	audio/mpeg	2209902	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ghal Ghal Ghal Ghal [NaaSongsMp33.Com].mp3	Telugu
426e2c54-bb32-4d83-b0db-ed1b494dd694	2025-08-30 18:06:29.705303+05:30	\N	Gitchi Gitchi [NaaSongsMp33.Com].mp3	audio/mpeg	4802272	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Gitchi Gitchi [NaaSongsMp33.Com].mp3	Telugu
748163c8-f393-4bca-a648-9cc3a73f672f	2025-08-30 18:06:29.717304+05:30	\N	Go Corona-[NaaSongsMp33].mp3	audio/mpeg	2942496	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Go Corona-[NaaSongsMp33].mp3	Telugu
736d5c69-939f-46ee-8af1-c2fb72d8e11b	2025-08-30 18:06:29.726311+05:30	\N	Godari Gattupaina-[NaaSongsMp33.Com].mp3	audio/mpeg	6371422	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Godari Gattupaina-[NaaSongsMp33.Com].mp3	Telugu
92b245f7-0b79-4e2a-9e18-e9a442e50f7a	2025-08-30 18:06:29.731311+05:30	\N	Govinda Govinda [NaaSongsMp33.Com].mp3	audio/mpeg	4652148	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Govinda Govinda [NaaSongsMp33.Com].mp3	Telugu
503c88a9-6e4a-42e9-9d21-0885b03a4c85	2025-08-30 18:06:29.735303+05:30	\N	Guche Gulabi - [NaaSongs.World]m.mp3	audio/mpeg	4609148	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Guche Gulabi - [NaaSongs.World]m.mp3	Telugu
5bda1044-9b55-42a9-9a24-ea57fd41bc35	2025-08-30 18:06:29.740304+05:30	\N	Gunde Sadilaga.mp3	audio/mpeg	4095360	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Gunde Sadilaga.mp3	Telugu
8d08c9b7-b8a0-4e22-b325-6ca526729957	2025-08-30 18:06:29.74431+05:30	\N	Gurtukostunnayi [NaaSongsMp33.Com].mp3	audio/mpeg	4826027	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Gurtukostunnayi [NaaSongsMp33.Com].mp3	Telugu
a5cd80de-10ac-4d1e-bb0c-9f22b9a89da5	2025-08-30 18:06:29.74831+05:30	\N	Hai-Hai--From-Chennakesava-Reddy--S.-P.-Balasubrahmanyam-Sunitha-Upadrashta.mp3	audio/mpeg	5791421	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Hai-Hai--From-Chennakesava-Reddy--S.-P.-Balasubrahmanyam-Sunitha-Upadrashta.mp3	Telugu
6c853920-da7e-48a0-ad96-123166a0063b	2025-08-30 18:06:29.753303+05:30	\N	Hey Manasendukila - [NaaSongs.World].mp3	audio/mpeg	4217184	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Hey Manasendukila - [NaaSongs.World].mp3	Telugu
c5efd07e-90d8-459f-9be4-28098ae02c1f	2025-08-30 18:06:29.757302+05:30	\N	Holi Holi [NaaSongsMp33.Com].mp3	audio/mpeg	5242756	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Holi Holi [NaaSongsMp33.Com].mp3	Telugu
bb788a31-3d6a-4d73-91fb-239b7b98392a	2025-08-30 18:06:29.762301+05:30	\N	Hylessa [NaaSongsMp33.Com].mp3	audio/mpeg	4380606	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Hylessa [NaaSongsMp33.Com].mp3	Telugu
e7dc3428-34f3-4465-b138-9e4e9007648c	2025-08-30 18:06:29.766308+05:30	\N	I Am Very Sorry [NaaSongsMp33.Com].mp3	audio/mpeg	5771048	C:\\CALLERTUNE\\Songs\\Telugu_songs\\I Am Very Sorry [NaaSongsMp33.Com].mp3	Telugu
17fa3369-ec3e-49bc-8bed-5ec3d7d748b3	2025-08-30 18:06:29.770302+05:30	\N	Idhe Naandhi - SenSongsMp3.Com.mp3	audio/mpeg	3304704	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Idhe Naandhi - SenSongsMp3.Com.mp3	Telugu
c8f6e5bb-4000-4072-b399-eda509132e0f	2025-08-30 18:06:29.774532+05:30	\N	Idhe Naandhi - [NaaSongs.World]m.mp3	audio/mpeg	3357267	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Idhe Naandhi - [NaaSongs.World]m.mp3	Telugu
cfc27373-a523-42bd-8111-c1b954afd927	2025-08-30 18:06:29.779306+05:30	\N	Intha Duramochaka-[NaaSongsMp33.Com].mp3	audio/mpeg	4667115	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Intha Duramochaka-[NaaSongsMp33.Com].mp3	Telugu
74c672f2-d520-40ed-a3c4-3c7782cfec25	2025-08-30 18:06:29.7843+05:30	\N	Ippudippudu-[NaaSongsMp33.Com].mp3	audio/mpeg	6055851	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ippudippudu-[NaaSongsMp33.Com].mp3	Telugu
f5ff152a-0565-48a8-a92b-2569b9a158e0	2025-08-30 18:06:29.7883+05:30	\N	Ishq Mera (Bhuj).mp3	audio/mpeg	2526452	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ishq Mera (Bhuj).mp3	Telugu
1cde879c-b20e-417f-a59b-fddb7192a5ac	2025-08-30 18:06:29.795865+05:30	\N	Isvakulaku [NaaSongsMp33.Com].mp3	audio/mpeg	2331274	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Isvakulaku [NaaSongsMp33.Com].mp3	Telugu
e32f1152-598d-458e-ab79-7f9f8e35b3da	2025-08-30 18:06:29.799856+05:30	\N	Jagadekaveerudiki [NaaSongsMp33.Com].mp3	audio/mpeg	5930757	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Jagadekaveerudiki [NaaSongsMp33.Com].mp3	Telugu
a3bfcb7e-b2a9-478e-b174-cd174e2bf6ac	2025-08-30 18:06:29.80386+05:30	\N	Jaihind Ki Senaa (Shershaah).mp3	audio/mpeg	3399780	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Jaihind Ki Senaa (Shershaah).mp3	Telugu
e677248b-70bb-4568-ab70-51465a7f7566	2025-08-30 18:06:30.016973+05:30	\N	Muvvala Navvakala [www.Tollymp3z.com].mp3	audio/mpeg	5197428	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Muvvala Navvakala [www.Tollymp3z.com].mp3	Telugu
c418b6ac-0f2d-46cc-a800-2f394d1fe4be	2025-08-30 18:06:29.807859+05:30	\N	Jala Jala Jalapaatham Nuvvu - [NaaSongs.World]m.mp3	audio/mpeg	4124941	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Jala Jala Jalapaatham Nuvvu - [NaaSongs.World]m.mp3	Telugu
242fad09-1d84-4c97-9007-569f8b242f84	2025-08-30 18:06:29.81286+05:30	\N	Jwala Reddy - SenSongsMp3.Com.mp3	audio/mpeg	6352832	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Jwala Reddy - SenSongsMp3.Com.mp3	Telugu
b147d220-7fb3-43d7-acc3-c4c393aa557c	2025-08-30 18:06:29.816864+05:30	\N	Kaani Ippudu [NaaSongsMp33.Com].mp3	audio/mpeg	5307974	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kaani Ippudu [NaaSongsMp33.Com].mp3	Telugu
7ffb70a5-cbf6-4d4a-8b18-84abc4b7bd04	2025-08-30 18:06:29.820871+05:30	\N	Kabhi Tumhe (Shershaah).mp3	audio/mpeg	4859090	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kabhi Tumhe (Shershaah).mp3	Telugu
0f1a77bf-734d-433b-a264-c548274a9de8	2025-08-30 18:06:29.824857+05:30	\N	Kabhi Tumhe Female (Shershaah).mp3	audio/mpeg	4520202	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kabhi Tumhe Female (Shershaah).mp3	Telugu
03a1b80d-2bf5-4f19-93b0-e875dbbc6ebb	2025-08-30 18:06:29.829408+05:30	\N	Kadhile Kaalannadiga.mp3	audio/mpeg	5188864	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kadhile Kaalannadiga.mp3	Telugu
ed704b33-3732-43ad-ad5e-09fe09cbc74f	2025-08-30 18:06:29.833433+05:30	\N	Kailove Chedugudu [NaaSongsMp33.Com].mp3	audio/mpeg	4662223	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kailove Chedugudu [NaaSongsMp33.Com].mp3	Telugu
c7ab53b7-64a5-43d6-9052-167d374ba6b3	2025-08-30 18:06:29.837409+05:30	\N	Kakulu Durani-[NaaSongsMp33.Com].mp3	audio/mpeg	1986717	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kakulu Durani-[NaaSongsMp33.Com].mp3	Telugu
8848af9d-f4e5-495d-a153-8880733f4f8b	2025-08-30 18:06:29.84241+05:30	\N	Kalalai Poyenu [NaaSongsMp33.Com].mp3	audio/mpeg	5832474	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kalalai Poyenu [NaaSongsMp33.Com].mp3	Telugu
1edd62e1-9f65-4dbd-ad3e-e36d8757109c	2025-08-30 18:06:29.847421+05:30	\N	Kalalonaina-[NaaSongsMp33.Com].mp3	audio/mpeg	5153586	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kalalonaina-[NaaSongsMp33.Com].mp3	Telugu
9f63fb9b-7b17-4630-8079-4766f0e0b0cd	2025-08-30 18:06:29.851413+05:30	\N	Kalisunte Kaladu [NaaSongsMp33.Com].mp3	audio/mpeg	4730788	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kalisunte Kaladu [NaaSongsMp33.Com].mp3	Telugu
474f1aed-432d-4135-a379-ba1065f806e8	2025-08-30 18:06:29.856412+05:30	\N	Kallaloki Kallu Petti [NaaSongsMp33.Com].mp3	audio/mpeg	4597861	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kallaloki Kallu Petti [NaaSongsMp33.Com].mp3	Telugu
022cc1be-0147-4ec1-b4a1-23e6ee988d6a	2025-08-30 18:06:29.861413+05:30	\N	Kanapadaledha-[NaaSongsMp33.Com].mp3	audio/mpeg	3658962	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kanapadaledha-[NaaSongsMp33.Com].mp3	Telugu
94562ecb-42ff-43fc-a101-d6019bdff7f2	2025-08-30 18:06:29.866413+05:30	\N	Kannulatho [NaaSongsMp33.Com].mp3	audio/mpeg	5259070	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kannulatho [NaaSongsMp33.Com].mp3	Telugu
d74a54a9-03cf-427f-aed0-3549d98c41db	2025-08-30 18:06:29.871416+05:30	\N	Kasta Ninnu Nannu [NaaSongsMp33.Com].mp3	audio/mpeg	4739571	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kasta Ninnu Nannu [NaaSongsMp33.Com].mp3	Telugu
74f97e4f-1558-4e09-9660-7505c167717c	2025-08-30 18:06:29.875419+05:30	\N	Kiston_320(PaglaSongs).mp3	audio/mpeg	4993017	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kiston_320(PaglaSongs).mp3	Telugu
c2e95376-52a4-41cc-bc5b-9ca051f2a8e6	2025-08-30 18:06:29.879415+05:30	\N	Kola Kalle Ilaa - [NaaSongs.World].mp3	audio/mpeg	3676828	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kola Kalle Ilaa - [NaaSongs.World].mp3	Telugu
ddb16dc6-bb06-4a06-8ac0-d3a6c40c9547	2025-08-30 18:06:29.884409+05:30	\N	Kollu Kollu - SenSongsMp3.Com.mp3	audio/mpeg	10008128	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kollu Kollu - SenSongsMp3.Com.mp3	Telugu
23c72268-4345-4820-bd74-aab489b96059	2025-08-30 18:06:29.888412+05:30	\N	Kolo Kolanna Kolo - SenSongsMp3.Com.mp3	audio/mpeg	12543680	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kolo Kolanna Kolo - SenSongsMp3.Com.mp3	Telugu
0cf56437-54a7-4520-8a8a-07133d94b6f3	2025-08-30 18:06:29.894416+05:30	\N	Koochipoodi Kaina [NaaSongsMp33.Com].mp3	audio/mpeg	4278546	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Koochipoodi Kaina [NaaSongsMp33.Com].mp3	Telugu
c5e5b02e-6d98-4e6b-a279-23781c32db95	2025-08-30 18:06:29.899411+05:30	\N	Krishnamurariki-[NaaSongsMp33.Com].mp3	audio/mpeg	5303211	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Krishnamurariki-[NaaSongsMp33.Com].mp3	Telugu
8a4f7e80-b27f-4c56-b3f7-e03468219efb	2025-08-30 18:06:29.90341+05:30	\N	Kutti Story_320(PaglaSongs).mp3	audio/mpeg	12075435	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Kutti Story_320(PaglaSongs).mp3	Telugu
834508d5-c61e-4057-871c-af3d34bfc9c7	2025-08-30 18:06:29.90741+05:30	\N	Laloo Darvaja [NaaSongsMp33.Com].mp3	audio/mpeg	4938138	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Laloo Darvaja [NaaSongsMp33.Com].mp3	Telugu
d8c5af22-7c64-4bc4-a6a2-dae7d72d5df6	2025-08-30 18:06:29.912415+05:30	\N	Loojammayee [Tollymp3z.com].mp3	audio/mpeg	6814825	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Loojammayee [Tollymp3z.com].mp3	Telugu
bbc42c3f-60d7-447f-8985-2c246343bfc4	2025-08-30 18:06:29.917036+05:30	\N	Lut Gaye_320(PaglaSongs).mp3	audio/mpeg	12017151	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Lut Gaye_320(PaglaSongs).mp3	Telugu
806492ea-e9d0-49e6-a212-4c8bb8287303	2025-08-30 18:06:29.922976+05:30	\N	Maayeraa [NaaSongsMp33.Com].mp3	audio/mpeg	5851049	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Maayeraa [NaaSongsMp33.Com].mp3	Telugu
753b5dbd-5d00-4bc9-acd6-813fd8839094	2025-08-30 18:06:29.926973+05:30	\N	Maguva Maguva [NaaSongsMp33.Com].mp3	audio/mpeg	4112538	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Maguva Maguva [NaaSongsMp33.Com].mp3	Telugu
ced13ac2-e0a6-44de-b9f1-36531d5073fe	2025-08-30 18:06:29.931973+05:30	\N	Malli Kuyave [NaaSongsMp33.Com].mp3	audio/mpeg	6187006	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Malli Kuyave [NaaSongsMp33.Com].mp3	Telugu
dfeaba5b-b668-4aaa-ae03-1a4bafe4d365	2025-08-30 18:06:29.936971+05:30	\N	Mana JathiRatnalu.mp3	audio/mpeg	3999232	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Mana JathiRatnalu.mp3	Telugu
1b60d55b-1406-41b6-addb-b64fb5b66339	2025-08-30 18:06:29.940978+05:30	\N	Manasa Manasa - [NaaSongs.World].mp3	audio/mpeg	4162168	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Manasa Manasa - [NaaSongs.World].mp3	Telugu
0607b84e-e68e-4193-86ad-14504c83d90f	2025-08-30 18:06:29.945969+05:30	\N	Manasantha Meghamai Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	audio/mpeg	3598893	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Manasantha Meghamai Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	Telugu
ff217773-8483-4ec9-9004-b0f0e2693e74	2025-08-30 18:06:29.949968+05:30	\N	Manasu Manasu [NaaSongsMp33.Com].mp3	audio/mpeg	4683183	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Manasu Manasu [NaaSongsMp33.Com].mp3	Telugu
280329bc-41a1-410d-91c1-055485f80fd8	2025-08-30 18:06:29.955999+05:30	\N	Manasu Padi [NaaSongsMp33.Com].mp3	audio/mpeg	7717563	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Manasu Padi [NaaSongsMp33.Com].mp3	Telugu
760760e9-4887-46dc-af27-1d3df894316f	2025-08-30 18:06:29.960968+05:30	\N	Mangamma_320(PaglaSongs).mp3	audio/mpeg	11024327	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Mangamma_320(PaglaSongs).mp3	Telugu
b04d1a66-ea8e-4500-bcda-ce013214ae89	2025-08-30 18:06:29.965968+05:30	\N	Manmadhude [NaaSongsMp33.Com].mp3	audio/mpeg	4664820	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Manmadhude [NaaSongsMp33.Com].mp3	Telugu
966e0515-84fe-4c25-9f42-085c22286c11	2025-08-30 18:06:29.96997+05:30	\N	Mann Bharryaa 2 (Shershaah).mp3	audio/mpeg	5413661	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Mann Bharryaa 2 (Shershaah).mp3	Telugu
177add7e-c576-48a1-86ac-a4d30424315d	2025-08-30 18:06:29.974968+05:30	\N	Meenamma - [NaaSongs.World].mp3	audio/mpeg	4337760	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Meenamma - [NaaSongs.World].mp3	Telugu
ebfc341c-632b-47a2-8028-cea5b24ceab4	2025-08-30 18:06:29.979969+05:30	\N	Meghamai-[NaaSongsMp33.Com].mp3	audio/mpeg	4492786	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Meghamai-[NaaSongsMp33.Com].mp3	Telugu
55f64d7b-2e70-41d1-bbe3-b34fd0be0792	2025-08-30 18:06:29.984968+05:30	\N	Meme Indians [NaaSongsMp33.Com].mp3	audio/mpeg	7059595	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Meme Indians [NaaSongsMp33.Com].mp3	Telugu
8573c7ec-9dd6-4ab9-8ab0-69436e54b1ec	2025-08-30 18:06:29.989969+05:30	\N	Mere Naam Tu (Zero).mp3	audio/mpeg	13605955	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Mere Naam Tu (Zero).mp3	Telugu
57e2ffc2-2535-4690-a34b-29ac154cf522	2025-08-30 18:06:29.995972+05:30	\N	Merise Merise.mp3	audio/mpeg	4555392	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Merise Merise.mp3	Telugu
6a542d1f-4938-4bde-80b2-86856de5923f	2025-08-30 18:06:30.000971+05:30	\N	Mounanga Unna - [NaaSongsMp33.Com].mp3	audio/mpeg	4363802	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Mounanga Unna - [NaaSongsMp33.Com].mp3	Telugu
8093e72f-e154-4440-8ff9-e117ec85e7a6	2025-08-30 18:06:30.005981+05:30	\N	Music Bit [NaaSongsMp33.Com].mp3	audio/mpeg	1028877	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Music Bit [NaaSongsMp33.Com].mp3	Telugu
e13c2219-f59d-4fc2-a50d-5a8f4145798c	2025-08-30 18:06:30.010982+05:30	\N	Musugu Veyyoddu [NaaSongsMp33.Com].mp3	audio/mpeg	5203452	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Musugu Veyyoddu [NaaSongsMp33.Com].mp3	Telugu
d78f8223-ca41-4ba7-9758-a08278e4b8da	2025-08-30 18:06:30.022977+05:30	\N	Naa Chinni Lokame - [NaaSongs.World].mp3	audio/mpeg	3760004	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Naa Chinni Lokame - [NaaSongs.World].mp3	Telugu
a1321b50-5837-445d-95b0-8c01c44be2c1	2025-08-30 18:06:30.034976+05:30	\N	Naa Chupe Ninu [NaaSongsMp33.Com].mp3	audio/mpeg	420980	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Naa Chupe Ninu [NaaSongsMp33.Com].mp3	Telugu
b6074ff3-8dff-4f44-bce2-c639151fb285	2025-08-30 18:06:30.040976+05:30	\N	Naa Kanulu Yepudu __ SenSongsMp3.Com.mp3	audio/mpeg	10517952	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Naa Kanulu Yepudu __ SenSongsMp3.Com.mp3	Telugu
3da9917e-d0ab-4cec-ade6-6779a11d1b71	2025-08-30 18:06:30.045971+05:30	\N	Naa Manasukemayindi [NaaSongsMp33.Com].mp3	audio/mpeg	4859177	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Naa Manasukemayindi [NaaSongsMp33.Com].mp3	Telugu
e787fedf-f116-4207-b7b8-0430aa090b98	2025-08-30 18:06:30.05097+05:30	\N	Naa Pere Kanchanamaala-[NaaSongsMp33.Com].mp3	audio/mpeg	5375980	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Naa Pere Kanchanamaala-[NaaSongsMp33.Com].mp3	Telugu
43cee5f2-020e-4da2-b9b6-5e64e039c19a	2025-08-30 18:06:30.055976+05:30	\N	Naa Pranama Suswagatam [NaaSongsMp33.Com].mp3	audio/mpeg	2064384	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Naa Pranama Suswagatam [NaaSongsMp33.Com].mp3	Telugu
a9e40004-ba77-414c-a4ed-b7c4d844137c	2025-08-30 18:06:30.060973+05:30	\N	Naalo Unna Prema [NaaSongsMp33.Com].mp3	audio/mpeg	4808532	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Naalo Unna Prema [NaaSongsMp33.Com].mp3	Telugu
064b6d40-546d-4bd4-9c3b-3d41c001919e	2025-08-30 18:06:30.065978+05:30	\N	Nadiyon Paar_320(PaglaSongs).mp3	audio/mpeg	5998710	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nadiyon Paar_320(PaglaSongs).mp3	Telugu
9a9b000b-b54c-4168-bf07-8dfd77074bde	2025-08-30 18:06:30.070989+05:30	\N	Nadumunu Chooste.mp3	audio/mpeg	5040710	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nadumunu Chooste.mp3	Telugu
55e80028-a9d7-479c-b7fe-8a554041e458	2025-08-30 18:06:30.07597+05:30	\N	Nairey Nairey [NaaSongsMp33.Com].mp3	audio/mpeg	4816483	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nairey Nairey [NaaSongsMp33.Com].mp3	Telugu
2f2cd1ab-652f-4ca4-9a7c-c36186ce93e2	2025-08-30 18:06:30.081968+05:30	\N	Naizam Babulu [NaaSongsMp33.Com].mp3	audio/mpeg	4644718	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Naizam Babulu [NaaSongsMp33.Com].mp3	Telugu
1fb3e5fe-8f6f-4738-98cf-71ca79d267a8	2025-08-30 18:06:30.086968+05:30	\N	Nalla Nallani [NaaSongsMp33.Com].mp3	audio/mpeg	4299072	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nalla Nallani [NaaSongsMp33.Com].mp3	Telugu
2549df9a-784c-4781-9909-c6a9f15d5879	2025-08-30 18:06:30.090973+05:30	\N	Nalo Nenu Lene Lenu [NaaSongsMp33.Com].mp3	audio/mpeg	4818588	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nalo Nenu Lene Lenu [NaaSongsMp33.Com].mp3	Telugu
f09d1d74-8dc4-4857-b366-18c66cad8255	2025-08-30 18:06:30.095973+05:30	\N	Nalupaina Kannaiah [NaaSongsMp33.Com].mp3	audio/mpeg	3570991	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nalupaina Kannaiah [NaaSongsMp33.Com].mp3	Telugu
a411040c-90c8-4323-8546-eeae056b2f6e	2025-08-30 18:06:30.100969+05:30	\N	Nammaka Thappani [NaaSongsMp33.Com].mp3	audio/mpeg	4651790	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nammaka Thappani [NaaSongsMp33.Com].mp3	Telugu
3751aabd-8987-49bd-8380-45b17bf8f3d1	2025-08-30 18:06:30.105976+05:30	\N	Nandamoori-Nayaka--From-Samarasimha-Reddy--S.-P.-Balasubrahmanyam-K.-S.-Chithra.mp3	audio/mpeg	5507626	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nandamoori-Nayaka--From-Samarasimha-Reddy--S.-P.-Balasubrahmanyam-K.-S.-Chithra.mp3	Telugu
72172dfc-0ac0-46d7-8e34-369da4137b19	2025-08-30 18:06:30.110973+05:30	\N	Natukodi-[NaaSongsMp33.Com].mp3	audio/mpeg	1622040	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Natukodi-[NaaSongsMp33.Com].mp3	Telugu
a517aee8-2fdd-4c1b-8a3e-3d1cb790210a	2025-08-30 18:06:30.11697+05:30	\N	Nee Chitram Choosi - SenSongsM3.Com.mp3	audio/mpeg	10742400	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nee Chitram Choosi - SenSongsM3.Com.mp3	Telugu
0b2137ce-86bc-4101-822c-1cda8a0b3981	2025-08-30 18:06:30.12197+05:30	\N	Nee Chitram Choosi - [NaaSongs.World].mp3	audio/mpeg	4278924	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nee Chitram Choosi - [NaaSongs.World].mp3	Telugu
36e512d1-5979-4d9c-839f-51dd640ba10a	2025-08-30 18:06:30.126971+05:30	\N	Nee Navvula [NaaSongsMp33.Com].mp3	audio/mpeg	4826939	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nee Navvula [NaaSongsMp33.Com].mp3	Telugu
190c2213-1537-4ebd-9ff5-1d9e8019ec1a	2025-08-30 18:06:30.131973+05:30	\N	Nee Yadalo Naaku-[NaaSongsMp33.Com].mp3	audio/mpeg	4955970	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nee Yadalo Naaku-[NaaSongsMp33.Com].mp3	Telugu
413917f1-c4c1-47b8-a6ee-d8ecbcd0adbb	2025-08-30 18:06:30.135972+05:30	\N	Neekai Bratikestuna Ninne Kalagantunna [NaaSongs.World].mp3	audio/mpeg	10399511	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Neekai Bratikestuna Ninne Kalagantunna [NaaSongs.World].mp3	Telugu
86ac4aed-0827-4f6a-8725-aebb15fef3fc	2025-08-30 18:06:30.142974+05:30	\N	Neeli Ningi [NaaSongsMp33.Com].mp3	audio/mpeg	3962991	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Neeli Ningi [NaaSongsMp33.Com].mp3	Telugu
beb56b43-f328-4b82-a0cf-2067fa431565	2025-08-30 18:06:30.14797+05:30	\N	Nelluri Nerajana [NaaSongsMp33.Com].mp3	audio/mpeg	6673054	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nelluri Nerajana [NaaSongsMp33.Com].mp3	Telugu
d404109a-c7e1-4831-b540-56ab16d25242	2025-08-30 18:06:30.152968+05:30	\N	Nenusaitham Agni Nethram [NaaSongsMp33.Com].mp3	audio/mpeg	4189081	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nenusaitham Agni Nethram [NaaSongsMp33.Com].mp3	Telugu
f733c824-19de-458f-9cf1-470a233a691b	2025-08-30 18:06:30.15897+05:30	\N	Niddura Pothunna [NaaSongsMp33.Com].mp3	audio/mpeg	4618793	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Niddura Pothunna [NaaSongsMp33.Com].mp3	Telugu
212ffff7-ac6a-4bef-8635-2eb2a665a505	2025-08-30 18:06:30.16397+05:30	\N	Niluvadhamu Ninu Epudaina [NaaSongsMp33.Com].mp3	audio/mpeg	1833050	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Niluvadhamu Ninu Epudaina [NaaSongsMp33.Com].mp3	Telugu
539786e5-5ef3-4b3e-95a6-8e452edf447b	2025-08-30 18:06:30.167982+05:30	\N	Nindu Godari-SenSongsMp3.Co.mp3	audio/mpeg	3893467	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nindu Godari-SenSongsMp3.Co.mp3	Telugu
df2032c1-21d3-43c7-b04a-4899ea5ef702	2025-08-30 18:06:30.173529+05:30	\N	Ninna-Kuttesi--From-Narasimha-Naidu--Hariharan-Kavita-Krishnamurthy.mp3	audio/mpeg	5617100	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ninna-Kuttesi--From-Narasimha-Naidu--Hariharan-Kavita-Krishnamurthy.mp3	Telugu
dcbee98c-18dc-4952-8ebd-f5cf6a3c6c49	2025-08-30 18:06:30.178524+05:30	\N	Ninne Naa Ninne - [NaaSongs.World]m.mp3	audio/mpeg	1533643	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ninne Naa Ninne - [NaaSongs.World]m.mp3	Telugu
feadd138-4ba1-4651-a73a-0177ea94bd6d	2025-08-30 18:06:30.183525+05:30	\N	Ninnu Chudakunda Undalenu - [NaaSongs.World].mp3	audio/mpeg	3583692	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ninnu Chudakunda Undalenu - [NaaSongs.World].mp3	Telugu
40e46137-0133-4322-9ad8-caf9a49ffd06	2025-08-30 18:06:30.188525+05:30	\N	Nuvvante Pranamani [NaaSongsMp33.Com].mp3	audio/mpeg	4046997	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nuvvante Pranamani [NaaSongsMp33.Com].mp3	Telugu
28ea5ba5-275a-49d6-bdef-c54c1ca58492	2025-08-30 18:06:30.194525+05:30	\N	Nuvvu Naku Manasisthe [NaaSongsMp33.Com].mp3	audio/mpeg	5062670	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Nuvvu Naku Manasisthe [NaaSongsMp33.Com].mp3	Telugu
3566b6e9-0e5a-48c3-ba89-c196db363adb	2025-08-30 18:06:30.199525+05:30	\N	O Manasa O Manasa [NaaSongsMp33.Com].mp3	audio/mpeg	4154384	C:\\CALLERTUNE\\Songs\\Telugu_songs\\O Manasa O Manasa [NaaSongsMp33.Com].mp3	Telugu
1f976a29-9fa8-4d91-92a6-1d6f470973f3	2025-08-30 18:06:30.204095+05:30	\N	O Navvu Chalu [NaaSongsMp33.Com].mp3	audio/mpeg	345732	C:\\CALLERTUNE\\Songs\\Telugu_songs\\O Navvu Chalu [NaaSongsMp33.Com].mp3	Telugu
8eb5d229-45c9-4670-8b4d-44efa2bda876	2025-08-30 18:06:30.209094+05:30	\N	Oh Kshnam Navvuve Visuru [NaaSongs.World] (1).mp3	audio/mpeg	8172159	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Oh Kshnam Navvuve Visuru [NaaSongs.World] (1).mp3	Telugu
50b49794-7276-4431-a9f5-6aa74f5268eb	2025-08-30 18:06:30.21409+05:30	\N	Oh Kshnam Navvuve Visuru [NaaSongs.World].mp3	audio/mpeg	8172159	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Oh Kshnam Navvuve Visuru [NaaSongs.World].mp3	Telugu
e987d0f9-97ba-4800-bd79-3f7d899065ae	2025-08-30 18:06:30.22209+05:30	\N	Oh Mariya [NaaSongsMp33.Com].mp3	audio/mpeg	6439448	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Oh Mariya [NaaSongsMp33.Com].mp3	Telugu
ff1e21b8-1882-46f4-9fbf-3b5e8c1274b7	2025-08-30 18:06:30.2271+05:30	\N	Oh Saaiyaan (The Power).mp3	audio/mpeg	3828694	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Oh Saaiyaan (The Power).mp3	Telugu
b84851e1-2582-4de4-aeb4-413b4cc1d465	2025-08-30 18:06:30.233091+05:30	\N	Oka Manasu Movie songs _  Ninna Lenantha Full Video Song HD _ Naga Shaurya _ Niharika Konidela (128  kbps) (YtSaver.xyz).mp3	audio/mpeg	3321645	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Oka Manasu Movie songs _  Ninna Lenantha Full Video Song HD _ Naga Shaurya _ Niharika Konidela (128  kbps) (YtSaver.xyz).mp3	Telugu
0ac330ac-8fce-479d-8a26-cc46e80446ba	2025-08-30 18:06:30.238102+05:30	\N	Oka Vaipu Thalupu - SenSongsmp3.Co.mp3	audio/mpeg	5460129	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Oka Vaipu Thalupu - SenSongsmp3.Co.mp3	Telugu
4c5d3636-8faf-420b-8c32-ca643b813a95	2025-08-30 18:06:30.243089+05:30	\N	Okarikokarai - SenSongsmp3.Co.mp3	audio/mpeg	5570491	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Okarikokarai - SenSongsmp3.Co.mp3	Telugu
7c12a6b7-0caf-428d-a488-5aea90eca4ac	2025-08-30 18:06:30.24809+05:30	\N	Okate Jananam [NaaSongsMp33.Com].mp3	audio/mpeg	4954894	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Okate Jananam [NaaSongsMp33.Com].mp3	Telugu
cb107eea-4e12-4232-bd8b-9f75f07e0a64	2025-08-30 18:06:30.253089+05:30	\N	Oke Oka Lokam Nuvve_320(PaglaSongs).mp3	audio/mpeg	8481913	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Oke Oka Lokam Nuvve_320(PaglaSongs).mp3	Telugu
0c86f012-6327-4bec-aa64-537d02ef5203	2025-08-30 18:06:30.258092+05:30	\N	Okey Oka Lokam - SenSongsMp3.Com.mp3	audio/mpeg	8619328	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Okey Oka Lokam - SenSongsMp3.Com.mp3	Telugu
8b82b1af-b54f-44d0-a34e-9426f2ca878a	2025-08-30 18:06:30.26309+05:30	\N	Okey Oka Lokam Nuvve Song English Lyrics _ Sid Sriram Latest Songs_ Sashi Movie_ Oke Oka Lokam 2k-4k (128  kbps) (YtSaver.xyz).mp3	audio/mpeg	3344301	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Okey Oka Lokam Nuvve Song English Lyrics _ Sid Sriram Latest Songs_ Sashi Movie_ Oke Oka Lokam 2k-4k (128  kbps) (YtSaver.xyz).mp3	Telugu
8dd9717d-83f9-4221-84dd-42e46dd931ae	2025-08-30 18:06:30.268662+05:30	\N	Okkachinni [NaaSongsMp33.Com].mp3	audio/mpeg	5259420	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Okkachinni [NaaSongsMp33.Com].mp3	Telugu
7dcc1f90-a728-4907-b2c7-38b9758f00d1	2025-08-30 18:06:30.273662+05:30	\N	Okkasari Cheppaleva [NaaSongsMp33.Com].mp3	audio/mpeg	554164	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Okkasari Cheppaleva [NaaSongsMp33.Com].mp3	Telugu
ce22fc73-f8d1-4a89-a6e2-c45effd54c83	2025-08-30 18:06:30.278663+05:30	\N	Ooruko Hrudayama [NaaSongsMp33.Com].mp3	audio/mpeg	3659117	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ooruko Hrudayama [NaaSongsMp33.Com].mp3	Telugu
22503d86-0ac7-44ab-9829-788b6a5dd659	2025-08-30 18:06:30.283663+05:30	\N	Orugalluke Pilla [NaaSongsMp33.Com].mp3	audio/mpeg	5723121	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Orugalluke Pilla [NaaSongsMp33.Com].mp3	Telugu
305c716b-a53a-4d6c-9777-5da21beb71be	2025-08-30 18:06:30.288662+05:30	\N	Paagal - SenSongsMp3.Com.mp3	audio/mpeg	3212672	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Paagal - SenSongsMp3.Com.mp3	Telugu
705644b0-1197-4aeb-a7be-1e0c75008e7d	2025-08-30 18:06:30.293662+05:30	\N	Pachchadanamey [NaaSongsMp33.Com].mp3	audio/mpeg	5987147	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Pachchadanamey [NaaSongsMp33.Com].mp3	Telugu
8b86e44d-1e37-461c-8873-c81f177c1561	2025-08-30 18:06:30.298664+05:30	\N	Paddamandi Premalo [NaaSongsMp33.Com].mp3	audio/mpeg	4703223	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Paddamandi Premalo [NaaSongsMp33.Com].mp3	Telugu
a445b5b1-b7c8-4612-abf0-e22cd5453c49	2025-08-30 18:06:30.303667+05:30	\N	Paina Pataaram.mp3	audio/mpeg	4951936	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Paina Pataaram.mp3	Telugu
525ef09e-ed8e-4c62-aef3-9a5f41661575	2025-08-30 18:06:30.308664+05:30	\N	Pantham Pantham [NaaSongsMp33.Com].mp3	audio/mpeg	3515185	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Pantham Pantham [NaaSongsMp33.Com].mp3	Telugu
753752d9-c2a5-415c-9a4d-2712a5b59c56	2025-08-30 18:06:30.313674+05:30	\N	Papa O Papa - SenSongsMp3.Com.mp3	audio/mpeg	4230528	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Papa O Papa - SenSongsMp3.Com.mp3	Telugu
4c1cd3dd-d2c9-4df6-8ca8-b2b7e0e236a5	2025-08-30 18:06:30.318665+05:30	\N	Param Sundari (Mimi).mp3	audio/mpeg	4541823	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Param Sundari (Mimi).mp3	Telugu
56d31b84-2e1d-4405-92ef-5053a38c1f16	2025-08-30 18:06:30.323676+05:30	\N	Paripoke Pitta [NaaSongsMp33.Com].mp3	audio/mpeg	2396356	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Paripoke Pitta [NaaSongsMp33.Com].mp3	Telugu
00fbee95-444c-4970-b093-96df202ad4fe	2025-08-30 18:06:30.328669+05:30	\N	Patala Pallakivai (Female)-[NaaSongsMp33.Com].mp3	audio/mpeg	5035317	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Patala Pallakivai (Female)-[NaaSongsMp33.Com].mp3	Telugu
9e63cd86-1567-4cdb-b9a1-59b7ecd2a032	2025-08-30 18:06:30.333665+05:30	\N	Patala Pallakivai (Male)-[NaaSongsMp33.Com].mp3	audio/mpeg	4990598	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Patala Pallakivai (Male)-[NaaSongsMp33.Com].mp3	Telugu
69165b15-60b2-4666-ac96-4cee91ce8043	2025-08-30 18:06:30.338664+05:30	\N	Pattu Pattu-[NaaSongsMp33.Com].mp3	audio/mpeg	5220905	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Pattu Pattu-[NaaSongsMp33.Com].mp3	Telugu
c57c8d7c-ccf2-4c7b-ae86-809e0041d4bc	2025-08-30 18:06:30.343665+05:30	\N	Pelli Pata (Version 1) [NaaSongsMp33.Com].mp3	audio/mpeg	1642971	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Pelli Pata (Version 1) [NaaSongsMp33.Com].mp3	Telugu
a00c391b-9b68-4172-bb09-70df6068c98b	2025-08-30 18:06:30.350662+05:30	\N	Pelli Pelli Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	audio/mpeg	4042797	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Pelli Pelli Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	Telugu
81f213f5-20f1-439f-a954-096b9e2d6a17	2025-08-30 18:06:30.356673+05:30	\N	Phuljhadiyon (Mimi).mp3	audio/mpeg	4057935	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Phuljhadiyon (Mimi).mp3	Telugu
a0ce4851-3fee-4364-83f2-f688bdff637b	2025-08-30 18:06:30.363665+05:30	\N	Poratamey - SenSongsMp3.Com.mp3	audio/mpeg	3850916	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Poratamey - SenSongsMp3.Com.mp3	Telugu
5d5cbac4-8eb7-47c3-80fd-577edab0bbc7	2025-08-30 18:06:30.373668+05:30	\N	Prema Ane [NaaSongsMp33.Com].mp3	audio/mpeg	6691939	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Prema Ane [NaaSongsMp33.Com].mp3	Telugu
fc6e81a2-22a7-476e-ad03-fabc02494e58	2025-08-30 18:06:30.379667+05:30	\N	Prema Idi Prema.mp3	audio/mpeg	9790016	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Prema Idi Prema.mp3	Telugu
57428496-6e13-4876-bda0-7c7f517cb31c	2025-08-30 18:06:30.385666+05:30	\N	Prema Prema [NaaSongsMp33.Com].mp3	audio/mpeg	2123159	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Prema Prema [NaaSongsMp33.Com].mp3	Telugu
93358fd4-03cf-4d33-bd8f-b2659de6ebc6	2025-08-30 18:06:30.390672+05:30	\N	Priya Priya - SenSongsMp3.Com.mp3	audio/mpeg	4495488	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Priya Priya - SenSongsMp3.Com.mp3	Telugu
c10746e6-7636-49d0-9c3c-164bfbccd5fb	2025-08-30 18:06:30.395669+05:30	\N	Punnamila [NaaSongsMp33.Com].mp3	audio/mpeg	4676869	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Punnamila [NaaSongsMp33.Com].mp3	Telugu
f3c7d79d-0752-4aa3-9f2b-1626731450a7	2025-08-30 18:06:30.400664+05:30	\N	Puttibhoomi - SenSongsMp3.Com.mp3	audio/mpeg	3258672	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Puttibhoomi - SenSongsMp3.Com.mp3	Telugu
b0b03887-6729-4d45-bedf-d7d6bdb4a71b	2025-08-30 18:06:30.405668+05:30	\N	Raa Raa [NaaSongsMp33.Com].mp3	audio/mpeg	5354801	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Raa Raa [NaaSongsMp33.Com].mp3	Telugu
ffb97142-9617-436a-bc50-efcff2166da0	2025-08-30 18:06:30.411223+05:30	\N	Raataan Lambiyan (Shershaah).mp3	audio/mpeg	5074568	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Raataan Lambiyan (Shershaah).mp3	Telugu
220c7ed6-0292-46fe-a131-305f221eceae	2025-08-30 18:06:30.415224+05:30	\N	Railu Bandini-[NaaSongsMp33.Com].mp3	audio/mpeg	4859338	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Railu Bandini-[NaaSongsMp33.Com].mp3	Telugu
fb814efc-7d62-459e-8f55-0b519e3c9b36	2025-08-30 18:06:30.421225+05:30	\N	Ramasakkanodamma-[NaaSongsMp33.Com].mp3	audio/mpeg	7078816	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ramasakkanodamma-[NaaSongsMp33.Com].mp3	Telugu
8dd3e1ca-83bc-4f8f-b62e-37bfbba99899	2025-08-30 18:06:30.426223+05:30	\N	Ranguladdhukunna - [NaaSongs.World]m.mp3	audio/mpeg	4297321	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ranguladdhukunna - [NaaSongs.World]m.mp3	Telugu
a0bd3c9a-9667-404b-bd78-703c43c29fdc	2025-08-30 18:06:30.430231+05:30	\N	Ranjha (Shershaah).mp3	audio/mpeg	9200743	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ranjha (Shershaah).mp3	Telugu
3416b4ec-60f2-4e76-83cb-4d0c28270400	2025-08-30 18:06:30.435223+05:30	\N	Rathalu Rathalu-[NaaSongsMp33.Com].mp3	audio/mpeg	4334398	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Rathalu Rathalu-[NaaSongsMp33.Com].mp3	Telugu
2915d829-72cb-43e9-a6a3-3ec3914d3416	2025-08-30 18:06:30.440225+05:30	\N	Rathraina [NaaSongsMp33.Com].mp3	audio/mpeg	4876206	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Rathraina [NaaSongsMp33.Com].mp3	Telugu
45bc03ba-0b54-4fcf-8e2d-aa73e5b842e7	2025-08-30 18:06:30.445222+05:30	\N	Ravaya-Muddula-Mama--From-Samarasimha-Reddy--S.-P.-Balasubrahmanyam-K.-S.-Chithra.mp3	audio/mpeg	2227772	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ravaya-Muddula-Mama--From-Samarasimha-Reddy--S.-P.-Balasubrahmanyam-K.-S.-Chithra.mp3	Telugu
1ec3a430-5b15-414d-8337-4f3b75d39ff0	2025-08-30 18:06:30.450224+05:30	\N	Rave Na Cheliya [NaaSongsMp33.Com].mp3	audio/mpeg	5866921	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Rave Na Cheliya [NaaSongsMp33.Com].mp3	Telugu
5737e01f-f8b2-4676-827f-2bfe44ddba5e	2025-08-30 18:06:30.454776+05:30	\N	Rechhipodham Brother -- Naasongs.xyz.mp3	audio/mpeg	3611106	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Rechhipodham Brother -- Naasongs.xyz.mp3	Telugu
eb41caba-db37-4538-ad83-a4e80b7794af	2025-08-30 18:06:30.459779+05:30	\N	Rihaayi De (Mimi).mp3	audio/mpeg	7574576	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Rihaayi De (Mimi).mp3	Telugu
aa42e318-b139-4da5-a08a-718ebc612d6a	2025-08-30 18:06:30.464775+05:30	\N	Roja Roja [NaaSongsMp33.Com].mp3	audio/mpeg	5842980	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Roja Roja [NaaSongsMp33.Com].mp3	Telugu
7fd004d3-d280-456f-91f6-b94a64bb1498	2025-08-30 18:06:30.468782+05:30	\N	Sandram Lona Neerantha - [NaaSongs.World]m.mp3	audio/mpeg	3931361	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Sandram Lona Neerantha - [NaaSongs.World]m.mp3	Telugu
377fd211-7927-48d2-acdd-46c3c785b0c2	2025-08-30 18:06:30.473777+05:30	\N	Sankranthi Sandhalle - SenSongsMp3.Com.mp3	audio/mpeg	9141286	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Sankranthi Sandhalle - SenSongsMp3.Com.mp3	Telugu
ce573907-f9f8-4524-a35c-bd1394f898c8	2025-08-30 18:06:30.477782+05:30	\N	Sankranthi Sandhalle - [NaaSongs.World].mp3	audio/mpeg	3750468	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Sankranthi Sandhalle - [NaaSongs.World].mp3	Telugu
5162023f-f9f0-4343-ac5b-00e7d62f7166	2025-08-30 18:06:30.481779+05:30	\N	Saranga Dariya - SenSongsMp3.Com.mp3	audio/mpeg	9498240	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Saranga Dariya - SenSongsMp3.Com.mp3	Telugu
f309d316-d093-4b14-bdf9-fb6be00e26dd	2025-08-30 18:06:30.487777+05:30	\N	Scam 1992 Ringtone_320(PaglaSongs).mp3	audio/mpeg	3491522	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Scam 1992 Ringtone_320(PaglaSongs).mp3	Telugu
67bc037e-566e-46f4-a309-582e0a2b8685	2025-08-30 18:06:30.492777+05:30	\N	Seatu Siragadha - SenSongsMp3.Com.mp3	audio/mpeg	3787033	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Seatu Siragadha - SenSongsMp3.Com.mp3	Telugu
de7731fd-e198-4fb9-b36e-627783c68684	2025-08-30 18:06:30.496777+05:30	\N	Seetimaarr - SenSongsMp3.Com.mp3	audio/mpeg	4137344	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Seetimaarr - SenSongsMp3.Com.mp3	Telugu
fd233f4d-00bb-4515-bc25-cfd4324e28a2	2025-08-30 18:06:30.501779+05:30	\N	September Maasam [NaaSongsMp33.Com].mp3	audio/mpeg	5190143	C:\\CALLERTUNE\\Songs\\Telugu_songs\\September Maasam [NaaSongsMp33.Com].mp3	Telugu
7133225f-2e5c-458f-be31-18f0bc6cba46	2025-08-30 18:06:30.506352+05:30	\N	Shakalaka Baby [NaaSongsMp33.Com].mp3	audio/mpeg	3817472	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Shakalaka Baby [NaaSongsMp33.Com].mp3	Telugu
7b181241-540f-4f61-9fc5-258be5eba654	2025-08-30 18:06:30.510352+05:30	\N	Shor Machega_320(PaglaSongs).mp3	audio/mpeg	8858408	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Shor Machega_320(PaglaSongs).mp3	Telugu
7a2341e9-683d-4c70-8c59-da0a4f22e56c	2025-08-30 18:06:30.515358+05:30	\N	Shuddha Brahma [NaaSongsMp33.Com].mp3	audio/mpeg	2499680	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Shuddha Brahma [NaaSongsMp33.Com].mp3	Telugu
ff48ed6c-92bb-4b1e-8182-1e9070a9a794	2025-08-30 18:06:30.520354+05:30	\N	Siggendhukura Mama.mp3	audio/mpeg	3449472	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Siggendhukura Mama.mp3	Telugu
e6ff56ff-c8ea-4acb-a01f-8c3b2fee8b69	2025-08-30 18:06:30.525352+05:30	\N	Siggesthondi [NaaSongsMp33.Com].mp3	audio/mpeg	5566723	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Siggesthondi [NaaSongsMp33.Com].mp3	Telugu
f2b4cbc6-996a-4325-9fe8-0e6bcc05c27a	2025-08-30 18:06:30.530352+05:30	\N	Silaka Silaka - [NaaSongs.World]m.mp3	audio/mpeg	2757841	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Silaka Silaka - [NaaSongs.World]m.mp3	Telugu
d6636e6d-cfed-4b8f-943e-af4cf3bfc4fa	2025-08-30 18:06:30.534356+05:30	\N	Silakaa - SenSongsMp3.Com.mp3	audio/mpeg	4040832	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Silakaa - SenSongsMp3.Com.mp3	Telugu
0963b4d5-73cc-497c-9b47-34f5bfa00aef	2025-08-30 18:06:30.539356+05:30	\N	Single Kingulam - SenSongsMp3.Com.mp3	audio/mpeg	3931727	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Single Kingulam - SenSongsMp3.Com.mp3	Telugu
ff0f85ef-2509-4d9f-b38f-29006441a6fe	2025-08-30 18:06:30.544358+05:30	\N	Single Kingulam - [NaaSongs.World].mp3	audio/mpeg	3678018	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Single Kingulam - [NaaSongs.World].mp3	Telugu
78fbf9ad-2dd1-4af0-abbd-2146e2c446fd	2025-08-30 18:06:30.550354+05:30	\N	Snehithudaa [NaaSongsMp33.Com].mp3	audio/mpeg	6107120	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Snehithudaa [NaaSongsMp33.Com].mp3	Telugu
5f819d28-430f-42a8-a50f-244286e7c4d4	2025-08-30 18:06:30.554356+05:30	\N	So Much To-[NaaSongsMp33.Com].mp3	audio/mpeg	1458391	C:\\CALLERTUNE\\Songs\\Telugu_songs\\So Much To-[NaaSongsMp33.Com].mp3	Telugu
68497e9d-e9d0-47c3-aa16-fcdac399533b	2025-08-30 18:06:30.561356+05:30	\N	Sogasuchuda [NaaSongsMp33.Com].mp3	audio/mpeg	4987005	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Sogasuchuda [NaaSongsMp33.Com].mp3	Telugu
3de373e5-2d00-47da-8412-5833c9adff29	2025-08-30 18:06:30.566356+05:30	\N	Solo Brathuke So Better [NaaSongsMp33.Com].mp3	audio/mpeg	2943765	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Solo Brathuke So Better [NaaSongsMp33.Com].mp3	Telugu
e9435741-03db-4a5c-84c8-0ec9383a5238	2025-08-30 18:06:30.570355+05:30	\N	Something Something [NaaSongsMp33.Com].mp3	audio/mpeg	851062	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Something Something [NaaSongsMp33.Com].mp3	Telugu
630b7912-23ea-4ef0-8c62-eff0f71e3ea9	2025-08-30 18:06:30.575352+05:30	\N	Sreekaram - SenSongsMp3.Com.mp3	audio/mpeg	10991552	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Sreekaram - SenSongsMp3.Com.mp3	Telugu
f4f68d8d-d150-4e20-b034-5891fba3b27f	2025-08-30 18:06:30.580353+05:30	\N	Sreevaru Doragaaru [NaaSongsMp33.Com].mp3	audio/mpeg	6219191	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Sreevaru Doragaaru [NaaSongsMp33.Com].mp3	Telugu
1aafb829-7535-4d34-8028-e294515b7885	2025-08-30 18:06:30.585357+05:30	\N	Sruthi-Neevu--From-Swathi-Kiranam--Vani-Jayaram-K.-S.-Chithra.mp3	audio/mpeg	4502982	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Sruthi-Neevu--From-Swathi-Kiranam--Vani-Jayaram-K.-S.-Chithra.mp3	Telugu
51fdb458-a5fc-4097-9961-f626db706a69	2025-08-30 18:06:30.590352+05:30	\N	Talinka Endukulemma [NaaSongsMp33.Com].mp3	audio/mpeg	4842879	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Talinka Endukulemma [NaaSongsMp33.Com].mp3	Telugu
607d8a5d-1dae-422a-b88d-0a7cc122b13c	2025-08-30 18:06:30.595353+05:30	\N	Telavaarutunte - SenSongsMp3.Com.mp3	audio/mpeg	3471445	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Telavaarutunte - SenSongsMp3.Com.mp3	Telugu
4cc21ab3-6cc8-47d8-bf84-6c742bc597f3	2025-08-30 18:06:30.603353+05:30	\N	Teliyade Teliyade - [NaaSongs.World].mp3	audio/mpeg	6079270	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Teliyade Teliyade - [NaaSongs.World].mp3	Telugu
c5a23c83-31cd-4ef4-9951-37480e548c26	2025-08-30 18:06:30.610362+05:30	\N	Tharagathi Gadhi - [NaaSongs.World].mp3	audio/mpeg	3522836	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Tharagathi Gadhi - [NaaSongs.World].mp3	Telugu
0633251a-de6d-44a3-ac47-e47369d65f5b	2025-08-30 18:06:30.614356+05:30	\N	The Theme Of Katari [NaaSongs.World].mp3	audio/mpeg	2901822	C:\\CALLERTUNE\\Songs\\Telugu_songs\\The Theme Of Katari [NaaSongs.World].mp3	Telugu
1148de91-3e48-4ff0-91a1-de4c85ce1506	2025-08-30 18:06:30.619352+05:30	\N	Toli Pilupe [NaaSongsMp33.Com].mp3	audio/mpeg	4378874	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Toli Pilupe [NaaSongsMp33.Com].mp3	Telugu
1ce81fab-080c-4333-931a-83699915e1ac	2025-08-30 18:06:30.624355+05:30	\N	Tujhe-Bhula-Diya-Phir-Shekhar-Ravjiani-Mohit-Chauhan-Shruti-Pathak.mp3	audio/mpeg	5130294	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Tujhe-Bhula-Diya-Phir-Shekhar-Ravjiani-Mohit-Chauhan-Shruti-Pathak.mp3	Telugu
a5516666-d387-4de1-b59a-a99bb186536e	2025-08-30 18:06:30.629354+05:30	\N	Undiporaadhey-Naasongs.me.mp3	audio/mpeg	4901653	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Undiporaadhey-Naasongs.me.mp3	Telugu
78fa05ee-9029-481c-93b4-1e8b5b5bbae8	2025-08-30 18:06:30.634352+05:30	\N	Unnamata Cheppanivu [NaaSongsMp33.Com].mp3	audio/mpeg	4760861	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Unnamata Cheppanivu [NaaSongsMp33.Com].mp3	Telugu
bc3bdd98-6990-47ee-8549-e7795f8e9f4a	2025-08-30 18:06:30.639355+05:30	\N	Uttimeeda Koodu [NaaSongsMp33.Com].mp3	audio/mpeg	5687573	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Uttimeeda Koodu [NaaSongsMp33.Com].mp3	Telugu
ad2bfdf7-ab6c-4ab4-b5e7-85e919d885c6	2025-08-30 18:06:30.644353+05:30	\N	Vaalu Kanula Daana [NaaSongsMp33.Com].mp3	audio/mpeg	5887288	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Vaalu Kanula Daana [NaaSongsMp33.Com].mp3	Telugu
fb863583-4df9-48fb-86a2-dc8c36d08985	2025-08-30 18:06:30.649355+05:30	\N	Vacchindi Palapitta [NaaSongsMp33.Com].mp3	audio/mpeg	4299110	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Vacchindi Palapitta [NaaSongsMp33.Com].mp3	Telugu
1a00f0e4-5e40-4ad0-bdda-2d68449d57d5	2025-08-30 18:06:30.654358+05:30	\N	Valla Valla [NaaSongsMp33.Com].mp3	audio/mpeg	4401018	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Valla Valla [NaaSongsMp33.Com].mp3	Telugu
6b98cef2-9a30-4654-a01b-ca5a4370f4d0	2025-08-30 18:06:30.659354+05:30	\N	Vedanalona [NaaSongsMp33.Com].mp3	audio/mpeg	5290861	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Vedanalona [NaaSongsMp33.Com].mp3	Telugu
9f96be90-f53e-40cc-8353-a5becabb19dc	2025-08-30 18:06:30.664359+05:30	\N	Veedhikoka Jaathi - SenSongsMp3.Com.mp3	audio/mpeg	2862592	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Veedhikoka Jaathi - SenSongsMp3.Com.mp3	Telugu
28b34016-ed7c-492e-94fc-9e205e2bc721	2025-08-30 18:06:30.668356+05:30	\N	Veyi Kannulatho [NaaSongsMp33.Com].mp3	audio/mpeg	2490923	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Veyi Kannulatho [NaaSongsMp33.Com].mp3	Telugu
65803cfb-5ece-4051-a7f8-a1550bdcb521	2025-08-30 18:06:30.674352+05:30	\N	We Have A Romeo [NaaSongsMp33.Com].mp3	audio/mpeg	5208505	C:\\CALLERTUNE\\Songs\\Telugu_songs\\We Have A Romeo [NaaSongsMp33.Com].mp3	Telugu
cc7a43b7-dad8-49f9-a5ed-11c70fea5555	2025-08-30 18:06:30.679352+05:30	\N	Ye Kannulu Choodani - SenSongsMp3.Com.mp3	audio/mpeg	9350272	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ye Kannulu Choodani - SenSongsMp3.Com.mp3	Telugu
0d0b841b-cb87-4d92-9970-44fb8f7af4c9	2025-08-30 18:06:30.683355+05:30	\N	Ye Kannulu Choodani - [NaaSongs.World].mp3	audio/mpeg	9383631	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ye Kannulu Choodani - [NaaSongs.World].mp3	Telugu
7af1704e-01b4-4813-b70b-80b9c0fac06e	2025-08-30 18:06:30.688354+05:30	\N	Ye Swasalo-[NaaSongsMp33.Com].mp3	audio/mpeg	5227986	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Ye Swasalo-[NaaSongsMp33.Com].mp3	Telugu
b915a434-1a6b-4b37-92c4-70abe31d81f6	2025-08-30 18:06:30.693354+05:30	\N	Yede Yedeydey [NaaSongsMp33.Com].mp3	audio/mpeg	5791620	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Yede Yedeydey [NaaSongsMp33.Com].mp3	Telugu
ab50b2d9-1560-4343-9c1d-00aa58b2583c	2025-08-30 18:06:30.698371+05:30	\N	Yeh Oore Chinadaana [NaaSongsMp33.Com].mp3	audio/mpeg	5162526	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Yeh Oore Chinadaana [NaaSongsMp33.Com].mp3	Telugu
3c04b445-df72-4da4-bd37-afa2d1aa054e	2025-08-30 18:06:30.703374+05:30	\N	Yekantanga [NaaSongsMp33.Com].mp3	audio/mpeg	4420174	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Yekantanga [NaaSongsMp33.Com].mp3	Telugu
3aa37223-0a94-4ce3-9ae0-78451aac5035	2025-08-30 18:06:30.708392+05:30	\N	Yekkada Vundhoganee [NaaSongsMp33.Com].mp3	audio/mpeg	4266873	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Yekkada Vundhoganee [NaaSongsMp33.Com].mp3	Telugu
201ed187-2921-43d2-8701-9f5ebe0f2205	2025-08-30 18:06:30.714352+05:30	\N	Yekkada Vunna [NaaSongsMp33.Com].mp3	audio/mpeg	6114645	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Yekkada Vunna [NaaSongsMp33.Com].mp3	Telugu
701e2bb3-8b88-4a45-8242-d263cc1a4905	2025-08-30 18:06:30.719352+05:30	\N	Yekkado Putti [NaaSongsMp33.Com].mp3	audio/mpeg	5320944	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Yekkado Putti [NaaSongsMp33.Com].mp3	Telugu
3486402c-9585-4160-a007-88de9f310e4e	2025-08-30 18:06:30.724352+05:30	\N	Yemo Avunemo [NaaSongsMp33.Com].mp3	audio/mpeg	4938936	C:\\CALLERTUNE\\Songs\\Telugu_songs\\Yemo Avunemo [NaaSongsMp33.Com].mp3	Telugu
\.


--
-- Name: media_file media_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media_file
    ADD CONSTRAINT media_file_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

