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

--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tune; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tune (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    title character varying(255) NOT NULL,
    code character varying(64) NOT NULL,
    duration_sec integer,
    media_id character varying(64) NOT NULL,
    language character varying(32) NOT NULL
);


ALTER TABLE public.tune OWNER TO postgres;

--
-- Data for Name: tune; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tune (id, title, code, duration_sec, media_id, language) FROM stdin;
a1315992-c654-49a2-8c84-0e2f5c2d2af8	Aaruyire.mp3	cf0b9c5e	\N	189d56ab-2534-47d6-843f-03ec2d0c3765	Tamil
7663d824-1b81-466d-9cfb-827da82f2c7d	Aathi.mp3	0375e7cf	\N	20c482c8-3b62-438d-b64c-6a21fbd90f62	Tamil
7a3bb53f-a1f5-4689-9c7d-cefc677f1d04	Adiye Kollade.mp3	38b52dec	\N	fb6fed5c-3892-4c5f-a973-d479f33da79c	Tamil
2f99df81-4af6-42fb-a31d-ebb3bc825525	Adiye.mp3	fafbf15d	\N	d1905cec-194a-4d7d-a36c-7405390b2f23	Tamil
8617f36a-7eb0-4e03-bdb0-fc53ed10406a	Anbil Avan.mp3	08b699a2	\N	ca5ec8a5-91b7-42de-82da-2c7f9a9250b1	Tamil
b14272b2-3b3b-4bff-979f-351d2f76e7b8	Anbin Vasale.mp3	3e8dbf84	\N	d603c1cc-3ab7-4a7f-84d5-e84b7b4907d1	Tamil
84f40320-64a0-442e-8ea8-ebf76ec01063	Angnyaade.mp3	09abe70a	\N	c4e8e16a-df76-4f9c-84e5-a52d866b2671	Tamil
99b9bf2c-8ffd-4a74-9686-92980ed2799a	Anicham Poovazhagi.mp3	2b0f41e1	\N	9c652e5b-01a7-4100-a74f-f531f636e72f	Tamil
bc015118-ffe6-4c60-bc44-9d31c3af5e30	Arabu Nade.mp3	62ee42d8	\N	d085f401-987d-42ca-8951-422cb575b200	Tamil
4f091301-d82d-4726-a22b-b2ed2056081a	Askku Laska.mp3	9376621b	\N	7b88ecaa-6e96-4721-ab5d-b8f447feb7be	Tamil
a3224207-058e-4d3a-8a3c-aa739710a7d2	Chillena.mp3	3f196777	\N	2500e572-22e8-400e-a02f-781486d5e4d4	Tamil
114542a7-ce2e-46f8-b9cd-8f4f7e314fd4	Edho Onru.mp3	67aae574	\N	be1c46c2-1c63-4efd-b6a4-78852edaeb4d	Tamil
f1e9c0d4-f825-4033-91a0-92cfa97934d3	Elay Keechan.mp3	7627fff3	\N	f2f47184-c087-485c-b0ed-52c1882a0013	Tamil
a729060d-95f3-4280-910b-c450984692ec	En Kadhal Solla.mp3	61f6c227	\N	8617f1ff-012e-4166-a4c3-9a9175c94262	Tamil
a22b8c52-e5b8-456c-b20e-c1f0e6d207c0	Endrendrum Punagai.mp3	d5c84f80	\N	ce6a0f6a-84f9-4d79-bf99-8021c6974bbf	Tamil
02187809-7900-462b-91f1-5accb027c356	Engeyo Partha Mayakam.mp3	d471c64e	\N	f2e036e1-2560-47bd-a64b-f7beefd535ee	Tamil
94adb642-4591-40a0-94b9-8c8e3ae19c9a	Imaye Imaye.mp3	234600b6	\N	af59728c-cbb5-40d0-a3ba-e2a549de5b3b	Tamil
8d56b18b-c725-471f-b398-17e0efde308f	Innum Konjam Neram.mp3	9df49962	\N	212629a1-3a8a-4620-a1ae-3b67374f7ddf	Tamil
6b8d3827-5086-4a90-9878-94ec1a839738	Ival Dhaana.mp3	df1ca882	\N	2e17b14b-0b61-47fa-9c04-eb04b22e0a4b	Tamil
3f701167-dd85-4951-b732-4c2fdf360afc	June Pona.mp3	a2381b78	\N	1aaefc1b-9f38-4cce-83e3-574413c5612e	Tamil
83ca2f64-3d66-45d8-9c3e-9aae8a02f8bb	Kadhal Sadugidu.mp3	43229f4e	\N	bcbbe075-d474-4fd8-81db-b76964b98584	Tamil
c0453f44-29a0-42d0-a928-02d999bce3a0	Kadhal Vaithu.mp3	06f9eec3	\N	79fdb04e-a569-41e0-872c-f2a43e141a5c	Tamil
a66828eb-7e1f-42ea-9605-6201629c4364	Kandangi Kandangi.mp3	8b2bb14e	\N	41e3885a-12dc-4d11-887b-acfeabc5a61d	Tamil
8493a277-072f-457c-ab1a-c3ce8540c57b	Kangal Irandal.mp3	28dcf2e1	\N	19932015-54b5-483c-a972-f0a7c3877a10	Tamil
98ba699c-63b7-45d8-b67a-dcd191ddcde4	Kanimozhiye.mp3	b36287b8	\N	2a5ff3c9-b5c5-4c47-a312-3dbeda9f9084	Tamil
779800e2-9f4d-4247-9185-e7eef6f8aff8	Kannaalam.mp3	4057a44b	\N	4f4a6d0b-bef2-4444-821b-194be3b2b1f1	Tamil
e4544630-05cf-42cd-bb87-a92f7954f058	Kannum Kannumthan.mp3	eaf7e919	\N	8abf6a20-7bc6-4206-b742-18c818762583	Tamil
1d25209e-0d7d-49b4-9065-2063df984b45	Koodamela Koodavechi.mp3	435c7fb0	\N	792fedad-2421-4d91-88ff-a9d39b484ed5	Tamil
ccc63597-4670-447d-a766-fcae331edd98	Machaan Machaan.mp3	f9645651	\N	7474e144-3edd-4f30-8cf1-4805ede789d7	Tamil
12115742-51f4-449f-952b-f31d2e352092	Magudi Magudi.mp3	6795570b	\N	db925a90-bb46-4144-9258-cc5ce0094281	Tamil
515aa984-6881-48d7-b06e-3c28c18cd308	Malai Kaatru Vanthu.mp3	782a11be	\N	4781ade5-5d5f-4ab8-bf17-ac8347e77d89	Tamil
a77ffa1e-2eb5-4508-9695-bd7b8b983b38	Oru Paathi Kadhavu.mp3	f98810d7	\N	76737a75-fe2f-4d00-bd27-f97d21f6a353	Tamil
c55bcd11-f313-460a-879c-ad28cad7bf77	Paartha Mudal Nale.mp3	9daa8bf1	\N	f425336c-174b-4f57-bdb4-79ecd654e3d6	Tamil
c4fee993-1236-4a99-9589-6c984be9e48b	Pala Palakkira.mp3	0515f609	\N	dfb3dc93-a1da-4ce0-8af8-e7decd99a008	Tamil
37424f21-2259-46de-ac2a-67e6f9770de7	Pani Thuli.mp3	137b9fb0	\N	7955fcd4-41f7-4c06-bab1-5fe7db39f1eb	Tamil
2f781730-c0f0-4072-a92d-050fcc87d4de	Pookal Pookum.mp3	73bfe346	\N	060cf819-390f-469c-a3c4-aefaf58e2fbb	Tamil
af387b73-bc07-4f3e-bb87-d89b3107ff2a	Pookkale Satru Oivedungal.mp3	dc580e23	\N	72101152-500d-45ac-a74e-70b1f07bb16f	Tamil
b91bd9c8-7b24-4fbc-9d11-0c6e0dede0c1	Pooppol Poopol.mp3	45b1f6a5	\N	a28678a4-fd0e-4c02-9b74-4ef9f90afd40	Tamil
1bc2281d-77c3-4073-bdbc-b58ba1504529	Rangola.mp3	f2552766	\N	0f30b998-1ca6-458f-b355-2b9501e51514	Tamil
8753aad8-9554-4101-b18d-700706afb93b	Sayndhu Sayndhu.mp3	dc097c80	\N	3f0bbcb2-47a1-44a6-96ff-0fb0420e52d6	Tamil
ca9c1498-65e3-4714-baf1-7ce8b30b5768	Sonapareeya.mp3	8b1bf34e	\N	3fddda5e-f087-45e7-add1-1122ddec41cb	Tamil
d4829b61-51a3-4df3-ba88-adf30ac562e6	Suttum Vizhi.mp3	de11665f	\N	b3634adf-4c72-48bd-a9df-8d20daa7fd82	Tamil
01bbfaa8-9791-4a49-b4fd-bce5661e3366	Thaen Thaen Thaen.mp3	7aa10a17	\N	45ab96c4-2c3f-40a7-a37d-025d91e86fca	Tamil
87134489-4037-4f94-9789-2a4fd89f7728	Thuli Thuli.mp3	18644184	\N	1754653d-315e-4830-a731-1c76e32cc42e	Tamil
cbed7c0f-89e9-442e-bd32-05a3abb815f5	Un Perai Sonnale.mp3	92ce1a5a	\N	646a73a7-a84b-46cd-8964-5542cdca9ec4	Tamil
da0375ad-500d-4376-a4a6-c607da5b66b1	Uyirini Uyire.mp3	4f806f1a	\N	fa3812bd-23bf-4f47-ab59-7955a71c40c1	Tamil
ed88e512-0dcc-4420-804b-fd5591bd5779	Va Va Nilava Pudichi.mp3	eb9b43c0	\N	ba071dc3-7b83-4f11-8f7d-225a46c1e42e	Tamil
f6d600a9-a2ee-4bf0-b025-0d20a00b45e2	Vaaji Vaaji.mp3	42e95210	\N	a94fdd5c-ba8c-41a8-8771-1c4bc5d8258f	Tamil
36c91d0b-11d0-4a84-ae66-f3fc69765cc0	Vaarayo Vaarayo.mp3	e0d74a4c	\N	96774912-6c4c-4937-b39e-c8816401f992	Tamil
a87a08b0-52ba-4428-a7f6-9c201e778739	Velicha Poove.mp3	60c1808c	\N	418d0868-1463-4c41-8b43-8741bf9b789d	Tamil
0420a472-bc0c-499b-b890-768c091fe07d	Venmegam.mp3	e3746157	\N	8ad4bd2e-40f8-4edc-8ab9-58c94e789b3d	Tamil
54e308a3-faee-4849-adb0-bf5ac6e4fe4b	Vennilave.mp3	9bea756f	\N	b7c90d99-bf1d-4361-858c-e2158252367a	Tamil
75fd881e-c3e9-4cde-9ffe-ca145e5ee586	Vizhi Moodi.mp3	b64b9038	\N	6c382535-e29d-43f4-94a7-91160a22cf2e	Tamil
932bcacc-0732-43d1-a203-b70a11822135	Yaar Intha Penthan.mp3	6def3940	\N	d33173dd-7afa-41f0-86de-84268d7eb7a5	Tamil
045edee4-31f3-4993-9f31-275f7ae85632	01 - Bol Do Na Zara [Songspk.LINK].mp3	a0f03800	\N	3ee9efbf-d449-4bcc-8b04-b253704ad4c7	Hindi
d906df0a-840f-41b5-bf2e-e0b790757928	01 - Chitta Ve - Udta Punjab [Songspk.LIVE].mp3	7dec21cf	\N	fd9e7d89-46b5-473b-b81b-c8877477fed5	Hindi
a07371a4-d385-49b0-b944-b6da0ddb26dc	01 - Kar Gayi Chull [Songspk.LINK].mp3	9ffa2a40	\N	18d46b53-9edb-4f71-b89f-e629556e95d0	Hindi
5dc0d98e-b639-4d83-91d5-daa1744e614f	01 - Kuch To Hai - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	ef3101f9	\N	c22879b9-b4de-43b8-a377-6d71708c5439	Hindi
d58c267d-9cdb-4206-afeb-800d99ab4ccb	01 - Pyaar Ki [Songspk.LIVE].mp3	f7097b4d	\N	04401531-8d6d-4a08-8380-66ef390ac44f	Hindi
4540da17-3c08-4633-9605-a60db240e8ec	01 - Sab Tera [Songspk.LINK].mp3	d886251c	\N	dc997f16-ba8d-4d62-93bd-d137b8fcfe91	Hindi
28775d62-1800-41bd-adad-ca1dc74b1b2b	01-Bannosongspk.link.mp3	9f11d6ce	\N	2f63cda0-6451-4de9-a6c9-6c73f0c2aef0	Hindi
7ac54027-8b5e-441c-91e9-4d27f9a6640c	songs.pkSaheligurdeepMehndiFt.Bohemia-320kbps.mp3	cfb79095	\N	cf95bd6b-aeee-400f-b59e-f94174c82cb5	Hindi
8cbf83ae-1163-4b22-a638-019037adae4e	songs.pkSoorajDoobaHainYaaron-Roy-128kbps.mp3	2bba73ff	\N	86cef610-9ba8-4eab-bf38-57c145ae98fc	Hindi
1c928067-d48e-43bf-a217-13b642c45a9c	songs.pkTanuWedsManu-01-SadiGali.mp3	47590807	\N	233b12a2-d92f-4186-ad5b-0c22a81854e2	Hindi
501daa0e-5f18-491c-9aef-0b9bfb41f90f	songs.pkTanuWedsManu-02-YunHi.mp3	84d59f78	\N	ad51b2c3-7953-4a41-ae4c-e129ca29235f	Hindi
26c029df-1b6c-4a99-8b79-28cf24cd3fca	stolenm1www.songs.pk.mp3	78223b22	\N	738e5b76-487f-4335-9c75-d8c634e8a43e	Hindi
8d95f2fb-b8fe-4784-9e58-a9d9609db1ef	TereDarParSanamRemakebeMyLove-320kbpssonghspk.link.mp3	79747480	\N	9e26db39-dbf5-44cd-bcf4-752ed8c3f1dd	Hindi
a70280a0-6eeb-402a-b502-96a3c993e89f	TeriDeewaniapniisp.com.mp3	3ba825af	\N	670ff8ad-5036-4230-8d02-61dc0bf6a773	Hindi
370de087-274f-423f-89c8-0002ef9d4a02	TeriMeriKahaanigabbarIsBack-320kbpssongspk.name.mp3	52646737	\N	87aa9bbb-d378-4170-b817-8ac97cab3171	Hindi
b8edd5b5-198f-4f76-aad2-bb6022717f76	ValentineMashup-DjKiranKamath128Kbps.mp3	ef9ed6dc	\N	8d925863-3670-432f-af95-216eb618b76b	Hindi
ff3873f5-eda4-49de-b5e4-4fce8e026c76	WadaRahan-khaki.mp3	aec7332e	\N	7eb23da1-5663-4adf-8ccd-15c89710392f	Hindi
56f08139-f384-4c51-be36-21a3aac3c16d	_songs.pk_EkThiDaayan-01-Yaaram.mp3	c2e40718	\N	25f9a393-861b-4543-a54e-913a56da1fec	Hindi
aa71a0f4-4108-44cb-bf52-80be58de7e24	_songs.pk_GoGoaGone-02-KhoonChoosLe.mp3	34120b1b	\N	c1576d8d-c6db-4f6b-b8c7-b79a8ffb31d3	Hindi
ac0822ee-7fbb-46f4-8c8b-eb48b57f8e65	_songs.pk_Makkhi-01-AreAreAre.mp3	62168e78	\N	bf7083a0-50d0-4dcf-a6be-92a6bf1b6ded	Hindi
4d83e80f-e32d-4702-a894-612f4694ac70	_songs.pk_StudentOfTheYear-02-Radha.mp3	66b53f1b	\N	e2101d52-38bf-410b-aec7-209729b26d8e	Hindi
b5d7862d-7b61-4176-9413-4c525e891411	_songs.pk_StudentOfTheYear-03-IshqWalaLove.mp3	88c1c35f	\N	f99782d5-ce4b-4dde-bba2-519fed5d2594	Hindi
71c8a91d-4a2f-4db0-9f10-732793998559	_songs.pk_StudentOfTheYear-04-TheDiscoSong.mp3	b0d52b4a	\N	7cb80c11-c5a2-475a-af56-660030a6cdb2	Hindi
87c07a5f-bf9d-4215-af3f-ca8d1b1f426a	_songs.pk_StudentOfTheYear-05-Kukkad.mp3	91b61c0b	\N	d03feb46-164f-4824-b2bd-71cf0daa349a	Hindi
6b987cd9-0191-4748-8d21-b6fa4eec2d96	_songs.pk_StudentOfTheYear-06-Vele.mp3	b80a9310	\N	d3374a60-8e3e-48af-9a19-9aca07c1d080	Hindi
75ba0928-5782-44d1-8696-2d047ac3159c	_songs.pk_VickyDonor-04-PaniDaRangmale.mp3	af2d6145	\N	4ef39292-9c5a-4563-839f-42cd3ba6207b	Hindi
cadec45f-54bc-400a-b917-b34d12f5679f	Manjal Veiyil.mp3	4159a142	\N	822b6146-af1a-4ca8-a8da-a8f577859035	Tamil
4dba1bb4-4096-4e0a-8d77-396763a0aa83	Mayiliragae.mp3	56168671	\N	adf56e61-9fbd-4cde-a13c-6e443924e5be	Tamil
fb365301-fe6c-4d34-8a3a-1bdca4befe95	Mazhai Varum (Male).mp3	d1e5167c	\N	bc189670-38bc-4fa7-9ac5-f29700cff7a7	Tamil
a5b8a80a-9dd5-4c4e-9404-700425eba993	Mella Mella Kalavu.mp3	c3a65133	\N	4a0f6363-a99c-4fba-bf0f-b425a9ac7dde	Tamil
cc7c1920-ffb2-4750-b35d-976674fb0cb1	Merke Merke.mp3	67cb020d	\N	f3f48ba8-cdac-4806-b27d-79df4b0c1bed	Tamil
3663d433-846d-47f6-99c3-07b4a8bdebdd	Molachu Moonu.mp3	f7ec51bb	\N	c29848ff-024a-4f7d-85ce-2b0e8e35a094	Tamil
e27089d1-c5ad-4a68-bde4-4c04668647c4	Moongil Thottam.mp3	474c18ac	\N	b7c2cb21-dd28-456a-90cd-bdf949671afa	Tamil
474f8909-803e-41d5-a926-1301e95dce99	Mootu Ondru Malarnthida.mp3	188f57e8	\N	d1e7b37a-aa17-4f51-8953-b0f98265e651	Tamil
87762b9a-ae0f-477c-a798-0c1f2c496d18	Mudhal Mazhai.mp3	6fbef8fe	\N	8a7c4fc7-022c-4770-9004-bbec6cd44492	Tamil
e3bef1ff-9979-4104-a318-ac245b91d173	Munbe Vaa.mp3	258c9618	\N	9dfd03e7-b301-46a0-84b9-bd56495471d1	Tamil
34b51ebf-7255-480a-b1ed-eba169941e4d	Nee Partha.mp3	000b6a7f	\N	a98bb478-447b-4981-a043-e9f93caa20e6	Tamil
5a9f03a9-6c32-4cb3-a84e-8dba687b9d9e	Nenjukkule.mp3	e06e9124	\N	adffa023-0740-4400-8c01-c6b66edf8b7e	Tamil
3e382306-78f9-473e-9443-30fda42ce3dd	Oday Oday.mp3	4cce9d1a	\N	c752c461-7334-4e94-b44e-60f2338acd55	Tamil
99fc48c3-9764-4506-bb65-cf433537a440	Omana Penne.mp3	831b8f02	\N	a3755d53-14ce-4ac9-a863-4ae3cd7c5301	Tamil
e08fe5e7-0e93-4304-8442-cd2a4175e043	Onnum Puriyala.mp3	6f4fa2aa	\N	0e232015-b752-4cbe-947d-784734443405	Tamil
bce175d3-d813-4941-91d7-8a109c66b316	Oru Kal.mp3	fca1d9f6	\N	5c469742-9218-4e16-a5c8-2a4d10075a0b	Tamil
4fdd0771-bf87-4495-a360-030cdb9edb4f	01-DeewaniMastanisongspk.link.mp3	d3052e37	\N	80fcd913-2866-430e-8657-9ac23cd0cd15	Hindi
aaa76b16-c216-46b6-9244-6fc0e0e63a5f	01-DilDhadakneDosongspk.link.mp3	675d6e2f	\N	53e64531-1876-4f44-acde-074c15c51e6c	Hindi
496c80ca-1123-4332-98f8-6690c39b390e	01-Fitoor-Pashminasongspk.link.mp3	a936040f	\N	45df4cd7-ff10-4ec3-954e-5300c814cef1	Hindi
c625a5d2-c680-4a83-8744-d833ef332774	01-JabraFanhindisongspk.link.mp3	75bfe846	\N	4498b66c-705e-4e56-bff2-bef099dbaf91	Hindi
e6b2163c-347e-4dce-97b8-fd1007ed5019	01-Piku-JourneySongsongspk.link.mp3	83126834	\N	0ff1c0eb-154c-4f9f-bfb8-c592c0f76435	Hindi
0a75ee79-d860-47cc-b0f6-beb17e46c4be	01-Saiyyan-Www.downloadming.com.mp3	27b55917	\N	fb3c4b3b-4827-433f-94b7-f172d07c08eb	Hindi
8d439aa6-ed73-4020-bec1-8d5aeb89181e	01-SochNaSake-Airliftsongspk.link.mp3	7ad6f337	\N	67742252-925e-4a3d-877a-2e4c224d01dc	Hindi
9049d91e-5c9b-4a0e-b63e-381b7bf360a1	01-Tamasha-Matargashtisongspk.link.mp3	e0235d00	\N	de1af540-1a33-4c62-9171-2302d8551a5b	Hindi
a84a3b89-4e06-479b-8920-a390624eb663	01-TumheApnaBananeKasongspk.link.mp3	2d2ad34c	\N	527bc0a3-0165-458a-9450-b0f501fc671c	Hindi
17850fa2-5481-4b39-9284-8370030932e2	01-Wazir-TereBinsongspk.link.mp3	650415bd	\N	4484210a-6477-4a76-96e3-29a86f189ddc	Hindi
f843cf00-c791-4d9b-b56c-fe6c5789ca6a	02 - Bolna [Songspk.LINK].mp3	b8c61fad	\N	4fb277ae-de09-46cc-beb4-fdfd1dc4dd72	Hindi
d485e95c-7f6c-475a-bd64-115529a63040	02 - Ikk Kudi (Reprised) [Songspk.LIVE].mp3	7c13c373	\N	4c035059-4025-4f8a-b39d-746ed21b3225	Hindi
c1a1de6a-6067-46a7-86c7-11ad50dc08f8	02 - Itni Si Baat Hain [Songspk.LINK].mp3	6f6e44fc	\N	d160ab22-a006-4835-8450-22ac4d381381	Hindi
6332df4e-7453-4d83-bc1d-53c69b007223	02 - Jeena Marna - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	a27b35ba	\N	1b091f7c-bd02-4e11-9288-987e2813f3ad	Hindi
fba3559f-c09b-4b02-a115-890369fbb904	02 - Let's Talk About Love [Songspk.LINK].mp3	cc871f3b	\N	9f8ffd11-4320-4091-a3f8-a53d0c67f6d4	Hindi
07042c05-8f94-46f4-bc95-ebc69fe44283	02 - Taang Uthake [Songspk.LIVE].mp3	77840aaf	\N	62200b08-9de8-4233-aacd-0dc5b30d9b4f	Hindi
91ec2a74-5edf-4536-9fc4-00aa7efa0f2b	02 Rehnuma [Songspk.LINK].mp3	420d83b1	\N	6e6a83b9-3a7c-4797-9603-2d27f9485eeb	Hindi
82a6fb5a-10c7-4a40-8157-1a562d842445	02-Aayatsongspk.link.mp3	d04686bf	\N	b4fecbbe-0147-4dfd-a62c-8a4feddea0a2	Hindi
ec8c22bb-eaf5-47fd-9635-48e27914e437	02-DilCheezTujheDedi-Airliftsongspk.link.mp3	2566a7c7	\N	4067df7e-6ab0-45a6-a5d1-a873de701ea3	Hindi
dd5b4ae3-a00b-46d7-a13e-e77272e5318a	02-Fitoor-YehFitoorMerasongspk.link.mp3	9b722434	\N	7a37f162-83b6-459c-8a61-3cd68f0cf685	Hindi
82d7f687-711c-4322-96c9-1f60dea0824d	02-MoveOnsongspk.link.mp3	2929364c	\N	dc2e6fa0-fc3f-4693-b242-34a9ff8d1ff3	Hindi
9536d88e-6df1-4bc5-8eca-5f29740badc9	02-PehliBaarsongspk.link.mp3	c756f6d5	\N	bcc1a70d-d4a1-4a4a-a180-cd359d760a01	Hindi
c0978bdc-e2c2-44b1-80e4-02f1bf24bd0d	02-Piku-Bezubaansongspk.link.mp3	ea7fc6b0	\N	4d187e72-abb3-445d-add4-ebfb90e64959	Hindi
87fce219-f897-40ec-bc11-eb1a3528e6cc	02-Tamasha-HeerTohBadiSadHaisongspk.link.mp3	e18a09c4	\N	2d10f8de-6595-4813-b227-c0a9b1b0813d	Hindi
b8968e0c-2b42-44cf-8df5-0e1de38f8356	02-TuIsaqMerasongspk.link.mp3	9ea3289d	\N	adb3b517-fa66-4f21-ac28-d39bd9404e36	Hindi
870896af-cec7-4ff9-b05b-b520c921a96b	02-Wazir-TuMerePaassongspk.link.mp3	2b0a54c9	\N	f51401ba-c186-4550-be7f-0a06f1c1fd57	Hindi
55912175-0842-4d91-90e7-0d5b2b0ad97f	03 - Ankhiyaan - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	d7a8e267	\N	f490ab3b-283a-46dd-8911-f40a5e10123d	Hindi
4a655719-1f80-4b23-a39e-95ed4ab58e98	03 - Buddhu Sa Mann [Songspk.LINK].mp3	24183677	\N	1c4dae5a-d6dc-44e4-831a-5cb1460b222d	Hindi
cd4ff7db-80a2-47fe-a5b3-e526f892007b	03 - Cham Cham [Songspk.LINK].mp3	7cdd517b	\N	6b9017e1-6dbd-4881-ba7b-27e5587793b8	Hindi
7f896321-0103-484b-8e9a-4363e3a3df4e	03 - Da Da Dasse - [Songspk.LIVE].mp3	9c0b67c7	\N	bd600f03-47bc-4650-bc7d-a539d478a1f0	Hindi
46a16ff1-282c-498c-a9d0-0e88e7518e92	03 - Malamaal [Songspk.LIVE].mp3	d0b80a4a	\N	421d25b3-e45a-45cd-973f-7a41ceb1f0f2	Hindi
bee6340c-2128-4f1f-811f-000b7f1680b9	03 - Oye Oye [Songspk.LINK].mp3	6a9ba729	\N	b3ec9aa1-0e01-4e4b-8bbb-e491cb193f63	Hindi
9f978768-60d6-4ccf-9396-dc4c87677b7b	03 Alfazon Ki Tarah [Songspk.LINK].mp3	c1afc726	\N	78a88dbe-71d9-47bb-8f43-67724b740fb6	Hindi
2b6c4196-1f8a-4c71-bbfa-fa69d1ab9ee4	03-Fitoor-Haminastusongspk.link.mp3	279ad865	\N	32b70965-2eff-4a1b-a982-3133c97d26d0	Hindi
27f2dacf-674b-447b-9164-3457a6c70743	03-GallanGoodiyaansongspk.link.mp3	212ffb08	\N	473daddd-3f15-4d87-a1e4-c5606790219b	Hindi
c007395f-919b-4987-81da-8d3ebcb8e2f7	03-Malharisongspk.link.mp3	e7feab99	\N	a840d337-b530-4085-add1-7baa32c4f3e7	Hindi
cff6d7d0-c72f-4d12-8bc1-4c948718356a	03-MatJaResongspk.link.mp3	aa90d6a3	\N	c4394e6c-faa7-4bba-991e-de784d569d6b	Hindi
50821724-9217-4cfe-803a-7dd4ded5dabc	03-MeraNachanNu-Airliftsongspk.link.mp3	7ae7a80b	\N	5c7702a4-e4a5-424d-a1b4-c092874554b4	Hindi
d50cb224-da60-4b37-b314-618e722e0868	03-Piku-LamheGuzarGayesongspk.link.mp3	7a9b79b5	\N	60ba8148-591b-4cd3-9550-11a2a3ad5ec3	Hindi
8a5bcd53-0b6a-4eec-a2ea-154174d0574c	03-Tamasha-TumSaathHosongspk.link.mp3	d4abb792	\N	7d06ae04-94d1-4f95-a2f7-3146ff818aad	Hindi
ea127697-d190-4cf9-9d26-4656233a8b3c	03-WajahTumHosongspk.link.mp3	1212b68d	\N	048e50f7-e6c8-4681-bd35-f10f7a2e04b9	Hindi
34ff60f8-fff3-4adc-87cd-5953ece19f65	03-Wazir-Maulasongspk.link.mp3	7c937049	\N	c3e2b984-34c3-4379-b267-2c0769764ec4	Hindi
83390bfc-288b-41e5-8af2-efdb52d6d81d	04 - Agar Tu Hota [Songspk.LINK].mp3	461c73c0	\N	65af70fc-186e-4a98-992d-76cecd7bd600	Hindi
20a9b50a-7699-40bb-83dc-898281841e9e	04 - Fake Ishq [Songspk.LIVE].mp3	46113b11	\N	8268090f-2d5c-46a2-9578-37de670a1ef3	Hindi
236364ac-630b-4125-a98c-1c4ff20c6b56	04 - Ikk Kudi - [Songspk.LIVE].mp3	0af1f197	\N	6ebe2ac9-0b1a-4aa1-b695-05125cc7ca11	Hindi
b9929ef0-e9d6-4898-b50d-214f68a64ea5	04 - Jeena Marna (Female) - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	aa543f7b	\N	32d72f64-e612-4a3a-a4ff-b07075b9c7be	Hindi
52aa9af6-897b-4312-ae19-5603e28feafb	04 - Tu Hi Na Jaane [Songspk.LINK].mp3	276421bd	\N	ff1eaeaa-238c-4021-9726-cb0631b2f7dd	Hindi
26619a7d-5c48-4e2e-885e-7df5047e367f	04 Aye Khuda [Songspk.LINK].mp3	ca853d2c	\N	714d1ee6-e772-49bd-ab94-85032de928e1	Hindi
47bcdcfd-3267-4d95-9742-fa3272b666ca	04-Fitoor-HonedoBatiyasongspk.link.mp3	18fe97a9	\N	2ede5170-86d7-467b-9007-bdd9e218c1ee	Hindi
14cfe6d6-c985-42a9-89c7-6605d2af309c	04-GhaniBawrisongspk.link.mp3	f9c49172	\N	b829596c-6c2b-4890-8768-a6f9c8c561d4	Hindi
ef70a52e-ab3f-40c5-b735-ba6bda87601b	04-GirlsLikeToSwingsongspk.link.mp3	b5b3c03f	\N	888fad09-df7c-4215-b3f9-724e1204b714	Hindi
b92f585a-68bd-4ebc-8312-813e53076ef3	04-MoheRangDoLaalsongspk.link.mp3	a2d9eacb	\N	0eb019b4-b71a-422c-8ea4-4457b51bed71	Hindi
3e2d61ba-3a0c-4278-a90b-e13ded560189	04-NeendeinKhulJaatiHainsongspk.link.mp3	32b80d5f	\N	2fff81ad-e199-4a34-845d-0c7b07480c47	Hindi
dd9735a2-0cdb-4779-80b4-a353f058cf93	04-Piku-Pikusongspk.link.mp3	35101ec4	\N	fca24251-1841-4c0a-b79c-ddeb4a7204b4	Hindi
2e8e843f-509d-422e-870d-0ed0c4b59d14	04-Tamasha-WatWatWatsongspk.link.mp3	6a6b0eb6	\N	3f655b7d-1a2d-4f82-9dd3-340673260aa2	Hindi
167de2cc-c1aa-40ff-ad97-70a85d718437	04-TuBhoolaJise-Airliftsongspk.link.mp3	0d966d41	\N	573ccc75-8909-4fbc-8126-7685f150e8aa	Hindi
c289b2d2-9e4a-48f3-b784-495bf2a2b5d7	04-Wazir-KhelKhelMeinsongspk.link.mp3	692eb894	\N	3c9aaca4-86a7-4d57-96b0-76722fc295dc	Hindi
c5237f60-6bb5-4645-bfbe-c5a36cc5b830	05 - Girl I Need You  [Songspk.LINK].mp3	0445b693	\N	15e516d1-ef74-4f94-ae78-c037e7624dde	Hindi
227ce17f-f9ab-4cf2-963d-6c01dc7314bc	05 - Jeetne Ke Liye [Songspk.LINK].mp3	2842847c	\N	108e9d63-8985-4740-842f-89785e397c52	Hindi
cc505dd6-5172-4b3b-b7f1-2a55398d74bd	05 - Lets Nacho [Songspk.LINK].mp3	c39aaafd	\N	6c48c2e7-3609-483b-b7fe-f9748a6a721e	Hindi
31f12153-f2b8-4646-824d-18868e6db75f	05 - Sehra - Do Lafzon Ki Kahani [Songspk.LIVE].mp3	a952c730	\N	ac838a26-867c-4319-aed6-2a03e8e957e3	Hindi
e7edfb09-16da-405a-9f90-d010ef4b5b85	05 - Ud-Daa Punjab - [Songspk.LIVE].mp3	84d739ee	\N	0949cc6d-4f6c-4069-9296-801e9db408a4	Hindi
75f7bce0-c946-4cd8-8903-32cd73e05699	05 Titliyan [Songspk.LINK].mp3	3be20059	\N	80ce3e2f-d102-48cb-bb08-d86a3501aa33	Hindi
991b8e57-995d-48a2-ae8e-5a68ff92cd28	05-AlbelaSajansongspk.link.mp3	66b2d1c0	\N	2e5b46d5-bcbb-4999-888d-155cc5b79646	Hindi
79a64f84-605e-4d32-ae54-47565d2ba92c	05-Fitoor-TereLiyesongspk.link.mp3	56eaf8d7	\N	50ea1528-a5e6-431e-9eae-29037b33ac83	Hindi
e22263c4-8271-48dc-aa5d-47139cd00166	05-OldSchoolGirlsongspk.link.mp3	7a4c9978	\N	294aa449-8e93-4885-90f3-e05f18e12137	Hindi
4f2bb6cd-aae2-41f6-9b45-c95342bd7667	05-PhirBhiYehZindagisongspk.link.mp3	bb72896d	\N	b9074442-c005-48e6-b060-a9101b4a4a13	Hindi
31e7bc20-e0cc-4895-84be-a22cfb4e5920	05-Piku-TeriMeriBaateinsongspk.link.mp3	0528c92e	\N	4c8f6d04-b707-4cb0-bed8-5e88eca50d50	Hindi
8b923173-53fd-4e63-a454-064ae7bac2bb	05-SochNaSakeversion2-Airliftsongspk.link.mp3	01823153	\N	a714b610-d054-4f3b-85f1-299e67038101	Hindi
4a5051dd-05fb-4714-9d7f-670bd75bf093	05-Tamasha-ChaliKahanisongspk.link.mp3	45a25d72	\N	8a187a37-d525-47ff-8469-410a7104b0fd	Hindi
0fd129a1-6554-45d6-aa84-a97fddf572fd	05-Wazir-TereLiyeMereKareemsongspk.link.mp3	61205142	\N	285dbf2f-6e58-42fb-8aa8-7594a13eb75e	Hindi
f416c046-8816-478c-9d2a-179199e1afc2	05_Nenjukkule_-_Shakthishree_Gopalan.mp3	cc789f2d	\N	320662d2-f1a5-49d6-9157-6c061f5d447f	Hindi
f8b0e688-1dd2-43ce-81d4-7deb587bdc8d	06 - Hass Nache Le - [Songspk.LIVE].mp3	93611d32	\N	64e423db-1728-4f53-9d73-f1ef8b921776	Hindi
94f59b42-bafa-447b-aeb7-a64bd9104f48	06 Aye Khuda (Duet Version) [Songspk.LINK].mp3	94cd7f28	\N	84f3d5f6-b059-42d2-b0ea-1b196828a523	Hindi
b897a858-c97d-4f9e-a39e-b1d2e8410664	06-AbToheJaneNaDoongisongspk.link.mp3	697a2623	\N	37460b4d-97b7-4e06-b3c9-ad9ab958ab35	Hindi
095606d6-3206-465a-ba6c-44356b9a7bb5	06-Fitoor-RangaaRehindiVersionsongspk.link.mp3	067f1d27	\N	65c156fd-d929-4f46-8b71-7ac454d608a9	Hindi
37f29a49-de8a-44fc-a157-8c9fce0b1ea6	06-OldSchoolGirlharyanvisongspk.link.mp3	ef900523	\N	25d066da-f465-496b-9965-08e12aa79c2e	Hindi
17e3cb9b-606d-46f4-853e-6f7bbf8bb067	06-Tamasha-Safarnamasongspk.link.mp3	364e0dae	\N	f7095351-9f0e-4d63-8694-41bcd5a284b1	Hindi
f159a66f-89a1-41d8-8c46-0045903ee019	06-Wazir-WazirThemesongspk.link.mp3	cfca2662	\N	621482b7-fa45-42ea-8d29-b980884b35f6	Hindi
52b2799b-f0d5-4c53-96cb-f53c05437571	07 - Vadiya - [Songspk.LIVE].mp3	95fe82e6	\N	1135f4c5-7ab4-4e03-a0ec-13b347a081a1	Hindi
c9538bf1-dd2d-40dd-aaa5-aa240faf34e6	07-Fitoor-RangaaReenglishVersionsongspk.link.mp3	d884427b	\N	9b26454f-7f81-4d34-862c-6c8cd54b19e9	Hindi
9a8067db-ff63-49a7-bd94-dfb763524506	07-HoGayaHaiPyarsongspk.link.mp3	d10147c8	\N	157e7e4d-026f-47b2-a5fa-3276e0c49a60	Hindi
db280b9e-e475-4860-b49e-f6fd0b9a6795	07-Pingasongspk.link.mp3	a6b6f1b6	\N	3985c2ff-713d-4de7-8d76-09eb88b52dcc	Hindi
10c6eae6-f008-47f7-9f13-9bce1d788941	07-Tamasha-ParadeDeLaBastillesongspk.link.mp3	ea4bcaaf	\N	283ae935-ce2e-483e-8153-5b0add7b17a4	Hindi
b17210a6-6118-4270-9bee-27886dea2097	08-AajIbaadatsongspk.link.mp3	54571a9d	\N	97f632c3-6438-408f-99e6-3de10309100f	Hindi
2f685a5b-4f90-4916-a5a7-b19acd93c242	08-OSathiMeresongspk.link.mp3	ce693956	\N	2c34a458-1004-4e6c-a8c2-fbd91690d226	Hindi
fd568930-b3f4-481c-aa3a-00ffcfc27f4c	08-RoNeDothePainOfLovemymp3song.com.mp3	96125be7	\N	25909c8c-084c-49cc-9539-ec32d76fcae8	Hindi
fabfcd78-298a-4e6f-b8fd-085f79c6b76b	08-Tamasha-WatWatvengeanceMixsongspk.link.mp3	1c8380ef	\N	ed606662-5ea1-4ad2-997d-383dd50761ef	Hindi
74de15ac-dbbe-47ff-9208-d530bb844c93	09-Fitoorisongspk.link.mp3	3c7d6305	\N	d27e87fe-3a51-43ed-9521-70377cd11586	Hindi
928b85fc-12f5-431a-aa2c-f69bdc32da7e	09-GhaniBawriremixsongspk.link.mp3	9c43abdd	\N	8f38c228-e34f-4046-a07e-e404778f394b	Hindi
11d6e14d-3e4a-4c00-b068-3adc75655306	09-Tamasha-TuKoiAurHaisongspk.link.mp3	14cdf853	\N	acbb98e2-e730-4df3-bb4d-b6a7afb01a12	Hindi
875516dc-79c3-4537-9f6d-2f57e04fcf20	AaBhiJaaTuKahinSe-SonuNigam.mp3	e36466e6	\N	c3252287-757b-4870-8956-57bb6f4bfa1c	Hindi
a8a15056-b8cc-4902-a3f6-5071ee498c28	aahatein.mp3	4b2690ec	\N	cc6fc8c1-7774-431b-a17c-757c7d395478	Hindi
92844599-d14e-4cc0-b745-761f6e1eee31	aisha03www.songs.pk.mp3	778b1f60	\N	88d3a197-64d9-4da9-985e-87fee8403efe	Hindi
3f41a049-242b-4bbf-a724-7529913741ac	DheereDheereyoYoHoneySingh-320kbpssongspk.link.mp3	a1357fb1	\N	13b3d027-5c73-436f-a955-dcd92f99b6d2	Hindi
15b1b431-2b03-4fa2-9d2a-972adee53240	DilDooba-khaki.mp3	d6d6b03e	\N	0f0bef2f-b1f7-4c23-bc46-5c87f1d8c91b	Hindi
3235a477-1814-4e6c-90be-f3a1218d34f5	DilKarehoMannJahaan-AtifAslam.mp3	56573514	\N	6aaa15e2-b07d-400c-b2a7-1868bbd5a07c	Hindi
b3f91d06-57bb-46f0-8eea-3762772713f0	DjWaleyBabuft.AasthaGill-Badshah-320kbpssongspk.link.mp3	3b48394b	\N	9d4ef1a7-f8a0-40ce-9842-1261eb82288c	Hindi
e5cc0caf-6d54-404c-9efd-17031174058c	Freak-RishiRichProject.mp3	22c35350	\N	6e4482a0-9995-47fa-beab-0c3793fce782	Hindi
607c60ae-e9b9-4d13-a58c-85a38261f8e7	Friends.mp3	b22f9365	\N	af3edd5c-5d4a-466d-95c2-a56498b9ebae	Hindi
d1d94604-a12c-44c3-affb-782f28af9fda	Get Ready To Fight (Baaghi) - 320Kbps [Songspk.LINK].mp3	363ac314	\N	06f4b736-2cc3-46a8-aefc-6949b39b0113	Hindi
fbf45e6d-4cf7-43a8-b666-b6d83052dd6c	ghar3www.songs.pk.mp3	82db1faf	\N	36304950-df05-44e9-8a50-2d97b0e11485	Hindi
8510b8bf-8036-4cbd-be95-f525feb798ae	IshqflintJ.mp3	71b16a0b	\N	71e74c6d-0570-4577-8cd6-e4f46f073574	Hindi
36e7a2e7-3c99-4060-acc0-9320e32fe4ff	KuchTohLogKahengetitleTrack-SonyTvpakheaven.com.mp3	113d81db	\N	fac5ad6c-7cbb-4b41-8a55-fa6b5f9e59f8	Hindi
7ace6fc8-34df-46dd-95e3-d061b1a1e106	MainuIshqDaLagyaRog.mp3	c8013f0e	\N	67e1e567-f3f0-4db6-ae9f-ae8f77a9dd66	Hindi
d16bb7fb-c1e0-4e43-a17f-60a3992a99c5	MarJaayenloveshhuda-AtifAslam.mp3	b1df31dc	\N	0f916834-79ac-4a63-b3ef-bd72b361c5df	Hindi
37eee452-fd58-4deb-9d89-aeba3a11e914	MOMMA.mp3	912ff3bc	\N	14c87b19-809b-4c72-b8ef-d63ad6099f46	Hindi
6cacee01-55d2-4617-9d04-dc586ae1fd1f	OneBottleDownyoYoHoneySingh-320kbpssongspk.name.mp3	a0f5192e	\N	2479abba-3429-479d-b678-1637abcedd54	Hindi
96121cfc-a9ae-4ef1-962d-1d28538f4ddf	PAPA.mp3	d02f6038	\N	43e1f5ea-2ff4-4cd9-ace2-172fa0a575c3	Hindi
b4e672ba-50ad-4278-ac1e-21d18754a7fe	players05www.songs.pk.mp3	26f55af2	\N	dd9ac97d-496e-4700-9625-bffab92d6545	Hindi
206e9a58-5cf3-4fa9-b277-c041df6e6645	rdb05www.songs.pk.mp3	c42e2db1	\N	6ef8dc16-b9d9-43bc-a713-a1380c4c3658	Hindi
eb49e03d-5080-4883-9fd9-f40ddd669102	Rock Tha Party.mp3	63c30db4	\N	2f5eaf02-3983-4d30-ac85-6c9436864f06	Hindi
b3a08d34-e751-4b25-b68f-9fc54f08abd1	Saathi Rey.mp3	a6e8cad5	\N	9068826d-2326-43c3-91cb-9c62da8752aa	Hindi
c3be432a-7648-4a98-8a69-99edd7650899	Shree420-pyarHuaIqrarHua.mp3	23973d30	\N	189b1691-4972-431a-8dd2-f6a45debc1f0	Hindi
e5f55a43-4e92-40a4-ae9e-d3963a75d6f6	songs.pk01-2States-Offo.mp3	05fd3c4b	\N	41e39b56-e35e-460c-8391-700e616d1e12	Hindi
b945409b-3d21-46cf-a90b-4ca585e53938	songs.pk01-BadtameezDil-YehJawaaniHaiDeewani.mp3	915cd56b	\N	799f5bc1-ac0c-4f38-9427-df093cffb2d1	Hindi
e4a68405-b9c5-476c-9644-825255c6c2d4	songs.pk01-Entertainment-VeereyDiWedding.mp3	7323675e	\N	eb7e359e-9c4e-44fc-a136-742a913ab732	Hindi
514936fc-bd48-4344-84f1-2302f7841641	songs.pk01-SaturdaySaturday.mp3	8d0300e0	\N	f3412d4c-4282-4c3f-8da5-c5fc27127ed7	Hindi
f0b91d1a-37c2-480b-aca6-a91fc059e35c	songs.pk01-YoYoHits-LungiDance.mp3	ba50e0be	\N	f41a3515-1a5f-4497-99c9-8fce5701e9ed	Hindi
9264c63c-bc81-44e1-b251-a5a3e9d5cb26	songs.pk02-2States-Locha-e-ulfat.mp3	2bed1860	\N	5475aa51-452e-4f73-acb7-16454b8d62e8	Hindi
c26b5fd7-531d-4ba2-b774-07008db1a9c8	songs.pk02-BalamPichkari-YehJawaaniHaiDeewani.mp3	64d1c2bf	\N	4faa7124-6c03-4d77-ac8b-c7808820f537	Hindi
e85830cb-06a4-454d-93b8-2702db618ea6	songs.pk02-Entertainment-TeraNaamDoon.mp3	a7485a02	\N	96fd4747-3c6d-4043-997f-b9316b0b6977	Hindi
3cef7c19-5924-4e90-866e-a2ca63f6cfaf	songs.pk02-Samjhawan.mp3	98ed0d70	\N	f5279a87-0d7a-43f5-b511-37c6efddad32	Hindi
d10ea191-3710-4421-a47a-f53556f98a95	songs.pk02-YoYoHits-BringMeBack.mp3	12d5813f	\N	1e7440a3-52fe-44f2-a4dc-8a79fa1857b6	Hindi
dd3062f5-4c53-418b-8e14-3d54ddc7d47f	songs.pk03-2States-MastMagan.mp3	f64dd4f0	\N	5b215271-3a91-4961-b132-180aa60fab54	Hindi
cf6b0489-3986-4337-b71e-8336f4e20d1b	songs.pk03-DaingadDaingad.mp3	b0b9cb73	\N	12ddcd86-cfc0-4882-ad9a-87cba574c6d7	Hindi
783efdf0-f2e4-4a68-bdb8-78583e2c386d	songs.pk03-Entertainment-JohnnyJohnny.mp3	c581432a	\N	466af239-5454-46c3-9e94-4a1ba6a2f987	Hindi
8ca31eb6-fcd4-465c-b17c-789ec7f3dfbb	songs.pk03-Ilahi-YehJawaaniHaiDeewani.mp3	00cb0b70	\N	967084c5-645c-430c-b910-06dc0697679d	Hindi
87997adf-020a-43a5-b0d1-2480434e104c	songs.pk03-YoYoHits-BrownRang.mp3	250b1460	\N	9720541e-fffa-4b6f-a733-ea5677143953	Hindi
a68239f9-9130-4d54-b04b-fa9f6067d4d3	songs.pk04-2States-IskiUski.mp3	922f8d48	\N	dd510f59-8563-42d3-b9cc-1b6c15cdb91c	Hindi
14b0584a-a119-4c6e-ade3-b8297f2c0e92	songs.pk04-Entertainment-TeriMahimaAprampaar.mp3	8cf1882e	\N	23455a24-00d8-4757-8f1d-fd6c153fd0fd	Hindi
71ef9a73-d889-4074-87c7-ad2b6054eab1	songs.pk04-Kabira-YehJawaaniHaiDeewani.mp3	dc640993	\N	c2bbe41b-78ea-4f42-a70a-ac3bef4cd3c4	Hindi
0ac21259-984f-40cd-8782-554c8cd036df	songs.pk04-LuckyTuLuckyMe.mp3	8f056bb7	\N	14595619-0d45-4a02-8f0f-8c1cc71c2418	Hindi
cf063eb4-d22b-48e7-b6f5-959af3efbbff	songs.pk04-YoYoHits-BreakupParty.mp3	de9b244b	\N	973e51f5-f472-455c-b892-5edc9d4371cc	Hindi
5355538a-ae20-4b75-9f3c-6d127d058362	songs.pk05-DilliwaaliGirlfriend-YehJawaaniHaiDeewani.mp3	bfcf1377	\N	2aa13043-ac8b-48e0-8110-83574d9c2090	Hindi
262d2cdd-18a3-4ebb-94d2-0bd09748c093	songs.pk05-EmotionalFool.mp3	a3132862	\N	5c637d45-c633-4ddf-8c4a-ddb82d20e489	Hindi
dde119b2-36fb-4c50-8fbf-0548c18431cc	songs.pk05-Entertainment-NahinWohSaamne.mp3	eab7d623	\N	d71b463f-3054-46b5-acb6-95dcdc37cd01	Hindi
69d0b568-804f-4171-a2d5-ee6dfed51b0c	songs.pk05-YoYoHits-Lonely.mp3	9277c031	\N	84c12e35-c145-4c4c-ab88-17cfc8a85724	Hindi
88843c48-64d2-4e88-94a0-df4e176a0f29	songs.pk06-2States-HullaRe.mp3	e14b2ffb	\N	9fda97cb-82c6-4c8e-aaca-1b186d312722	Hindi
88c729db-1cca-48c5-8154-70f334612fac	songs.pk06-DSeDance.mp3	63b42493	\N	5ddd012d-b23f-4c3a-b469-71bee9c70d98	Hindi
99721b72-08eb-46bb-9313-e7793c981f8a	songs.pk06-Entertainment-VeereyDiWeddingremix.mp3	fa646a59	\N	cc603253-2ec3-4e68-871f-b189da21593b	Hindi
f718563d-7ed7-4967-a9a7-bb47e6ed0aeb	songs.pk06-Subhanallah-YehJawaaniHaiDeewani.mp3	4beb73a2	\N	d46292cd-cc24-44bc-affc-ed030722d662	Hindi
9e4397cc-5c37-4641-a18b-f75e936d9710	songs.pk07-Ghagra-YehJawaaniHaiDeewani.mp3	a845427f	\N	2488003b-13ab-477a-86e7-1702d1339596	Hindi
1189ecd7-4ea2-4471-82a9-c2b7674c0b86	songs.pk07-YoYoHits-AngrejiBeat.mp3	c25b1fbd	\N	4491ea3c-924e-4f53-a1d2-378eb4160862	Hindi
ce3375d7-dc87-4ab0-872b-082c30d7b3e1	songs.pk08-Kabira-YehJawaaniHaiDeewani.mp3	8dea0439	\N	19e7b538-5308-49bf-b7b3-b5e14a6933f2	Hindi
5347417d-f4ce-4a94-9f3d-626764580279	songs.pk08-YoYoHits-Bebo.mp3	25be2dba	\N	79eb1d1b-d17e-420d-afbf-3e0c0ec0c3f5	Hindi
827c7426-2dab-45a8-9810-26ed6d063235	songs.pk09-YoYoHits-HighHeels.mp3	6abf25b5	\N	38a637c8-828a-4cd3-98e6-918592c5a6c2	Hindi
fa311b27-0374-4268-a989-c5a880fa2886	songs.pk10-YoYoHits-MainSharabi.mp3	5797e039	\N	62ac4660-0142-4fe1-8c10-81cdcec9e97f	Hindi
549c1b0b-8678-4b86-b354-f590b0d749c5	songs.pk11-YoYoHits-SatanweedPilaDe.mp3	b34d96dd	\N	7c66290a-c5f9-4a14-a99c-e7d0add9779c	Hindi
05532a94-d12d-4203-bc7a-6174b1e4e3b5	songs.pk13-YoYoHits-PunjabiyaanDiBattery.mp3	57582e02	\N	a6d54f0a-9b66-4aca-8060-bcf641d6ed7c	Hindi
85ae2e30-4bcf-4a4e-8d15-4db662371085	songs.pk14-YoYoHits-PartyOnMyMind.mp3	db4cbb80	\N	4c16fd91-18d8-4b17-8ce5-b08da2cf54b1	Hindi
a4cbf2b7-f25d-4b03-a197-2c8b639484c6	songs.pk15-YoYoHits-RaniTuMeinRaja.mp3	e056a151	\N	85010af1-954b-4dd7-be31-313d8f30920f	Hindi
a5943c85-0fca-47ec-8da2-2c9ec73f25b7	songs.pkAbcdyaariyan-128kbps.mp3	9bc52d3c	\N	b37f3b47-f8af-4601-96bc-b70a83b263b8	Hindi
5a4d9208-e87d-48dc-aa7d-12db6ad8f0b4	songs.pkBaarishyaariyan-128kbps.mp3	c0edea65	\N	9df07bfc-9137-4717-b177-159d3f1d9824	Hindi
a8ebee82-7707-474b-b865-92159d26817c	songs.pkBlueEyesyoYoHoneySingh-128kbps.mp3	20a0e0e0	\N	ba9cdf53-ecda-44ff-9968-1f5a04fe3b90	Hindi
1900749d-4c08-4e42-8785-4065873cc64e	songs.pkDanceBasantiungli-320kbps.mp3	fa9efbc6	\N	692ebe69-4de8-427a-b3f3-572a9c7c5f98	Hindi
f3129e8d-00f0-45e0-befd-c73180c227db	songs.pkHoshwalonKoKhabarKya-Sarfarosh1999.mp3	c1450ef6	\N	682e5425-103e-4330-a582-81f5a48cfd0d	Hindi
ccb629d4-bae2-4879-ae5b-d8a736da50f8	songs.pkJeeKardabadlapur-320kbps.mp3	d6c9abbb	\N	d871f6a6-965e-4b3c-a8ff-993e4dc0c7ee	Hindi
9405bacd-7f36-4c96-88c8-f591533c6eda	songs.pkLetsCelebratetevar-ImranKhan-320kbps.mp3	5e630b1a	\N	e160558f-527d-4bd9-b8de-e3748067f42b	Hindi
c6fc05f4-9d76-4d3e-a251-f4864053792e	songs.pkManaliTrancetheShaukeens-HoneySingh-320kbps.mp3	8df8267e	\N	2588d7b1-59a5-4411-9f6e-f94e134f4ecd	Hindi
507fa006-64b5-4caa-aebe-0dd379e1606a	songs.pkPartyToBantiHaibhoothnathReturns-128kbps.mp3	907fe982	\N	ebf15e4e-9938-47da-b949-a2d574fa18e8	Hindi
c1ee80eb-fbc5-4918-b6bb-04934027d8b0	03 Hymn for the Weekend.mp3	b67bd574	\N	ef54f28b-16a8-42cd-900d-a6b1087687d3	English
e5400298-0963-415e-a39a-1a9476d50724	05 Seasons.mp3	c8cf7e6b	\N	01c98096-0b31-45ca-b358-b11c8e925fb3	English
d62a1e1b-2493-44ea-8ad4-f6f6317bb0d9	1 million.mp3	31dec152	\N	3e1619b2-4c34-4fe3-ba9c-ef6870735a75	English
5fb3af60-6738-438b-b24d-f2339cf65d2d	50 cent Candy Shop Lyrics.mp3	130e7327	\N	f6de7d84-6446-4b5e-bf9d-ce4409b3e80c	English
c96964e9-0103-4751-9edb-fd64eed6cc66	Afrojack   Martin Garrix - Turn Up The Speakers (Official Music Video) (256.mp3	166b3ad2	\N	244e322f-d61e-4408-8540-553fba03087f	English
0ee964a6-27be-4bc5-aabf-931a74889e18	Bebe 20Rexha 20feat. 20Ty 20Dolla 20$ign 20- 20Bad 20Bitch 20(Mp3goo.com).mp3	2ecc41e1	\N	66d73366-5962-4130-b6c4-8a3abfddea35	English
3048b78c-e7c4-4153-96f3-b100feead061	Bebe Rexha - I Got You Lyric Video.mp3	7447e5df	\N	b056477f-3945-4e55-9796-0703f4bc5e0d	English
f60b2f96-1180-41ac-b529-a02fc28dee23	Calvin Harris - This Is What You Came For (Official Video) ft. Rihanna (320.mp3	20abf48c	\N	0b9b468f-0474-4187-a2ea-32b972c1e5a3	English
cb9c1292-cb97-40a8-bde0-6d50c23a61af	Camila Cabello - Crying in the Club.mp3	75ad72c9	\N	ed3404a3-a522-4622-9153-add6793dabf2	English
2100a0e2-e9a1-4726-9f0e-360961d4f00e	Camila Cabello - Havana (Audio) ft. Young Thug.mp3	405cef17	\N	7e261b35-27bb-43b7-9792-e4411e3b0a8e	English
bd2dd39e-9043-40cf-8077-d6f7e15166dd	Cheat_Codes_x_Kris_Kross_Amsterdam-Sex_Original_Mix_.mp3	87ec559f	\N	2c3fe9aa-2338-4741-861c-fa9304791163	English
88d28058-708e-442a-85a9-c60c70afcbf2	Clean Bandit - Rockabye ft. Sean Paul.mp3	3543602c	\N	5e847cb2-f27d-45dd-a5fc-5ca275496570	English
0767bbc6-8f5d-4f06-802d-f118323d445b	David Guetta Hey Mama Feat Nicki Minaj Afrojack David Guetta Hey Mama Feat N.mp3	32d87fdc	\N	cdfdd51e-fae5-490f-8acd-a5841cbf666f	English
a2c3772c-392b-4d04-9315-db84defdbfc9	David-Guetta-Showtek-Bad-feat-Vassy-Original-Mix-.mp3	366e4a69	\N	e00e681f-e0ae-448c-a866-5a636ed7f9de	English
151b419c-27dd-4b0d-b1ae-ef45401985bc	David_Guetta-This_Ones_for_You_feat_Zara_Larsson_Official_Song_UEFA_EURO_201.mp3	cc2c144d	\N	b9dc4d82-4423-4d98-96b3-5f127ce3690e	English
deffc489-30f7-42df-a680-ff9544a3a629	Delicate - Taylor Swift 320Kbps(Onmirchi.in).mp3	8acbb6ed	\N	ca02e879-2203-4d6c-9baf-a52ba13faad4	English
367ef596-7e63-4269-8949-b03bbef4daab	Demi Lovato - Sorry Not Sorry.mp3	6097f736	\N	22ab1e66-23fb-424b-9631-d1cf5c94a7c0	English
e3dca022-eda2-44c2-8c8c-b8eec3dd3805	DJ Snake - Magenta Riddim(320Kbps.In).mp3	dfca65a8	\N	1ed1fccb-4e67-4f7c-9fa9-ccafd6aff782	English
c07efc37-60e7-4222-ba2f-b834743dcf7d	DJ_Snake_-_Taki_Taki_ft._Selena_Gomez,_Ozuna,_Cardi_B.mp3	8cd056b7	\N	55264caf-8112-4008-89ee-3119a18edb1f	English
cf5e3f20-cb5b-411a-91cb-0e27eaab2236	Dua Lipa - New Rules.mp3	05cd2311	\N	7f6ce5e5-f88c-487f-aab3-bec3ab9cf44f	English
4c2eabdb-f9d1-49a5-8188-d7c6f1fcc45b	Dusk Till Dawn-320Kbps(MixMusic.in).mp3	b8f158a7	\N	07178d99-af7f-4f53-8f19-d9ded1101cf6	English
3137d4ee-68ec-44eb-8183-e29acc4b81da	Ellie_Goulding_-_Love_Me_Like_You_Do_(Official_Video).mp3	0ffb7b0b	\N	71c70340-9be2-41d7-a79e-e7c4756c92a1	English
8f251479-4635-4a42-8f48-040cf745bd3e	Fast_And_Furious_7_Get_Low_Mp3_Song_-_Dillon_Francis_Ft-1.mp3	70bfe79b	\N	307a3923-b703-4b7b-93e7-fbd4858d8da1	English
3f7570fd-8969-40e5-b01c-45eb2a1cb890	Faydee Ft Lazy J - Laugh Till You Cry (Official Video).mp3	266c7d7a	\N	60855bc6-cc82-4dca-a514-31ecad8969d2	English
b6fefb5b-b3e6-48df-81aa-655223d2cb14	INNA - Bad Boys  Exclusive Online Video.mp3	135b373c	\N	5c25e066-2206-4cfa-affb-48b1986d5f61	English
ae05990f-a0dc-4f08-bec8-65affbb225e1	Kygo  Selena Gomez - It Ain t Me (with Selena Gomez) (Audio).mp3	8cf0c097	\N	c5eea717-131b-42e1-a564-eaecf59c39b9	English
07bfdeb0-971b-4d2b-99ba-6aafb1f91739	Rain_Man_&_Krysta_Youngs_-_Habit_(T-Mass_Remix).mp3	4bc229f6	\N	d7df7457-23ea-4515-b22d-60601846ae97	English
4331df29-ee3d-4d7e-800f-381192186ca2	Rihanna - Rude Boy.mp3	cbf6f03e	\N	88ca5e57-48ea-4f5b-bc3d-25bda83f1772	English
6c479b66-f96a-493e-92ac-5bc7a6500aff	San Holo - Still Looking (CESQEAUX Remix).mp3	a5207b66	\N	0494ba96-63ff-4f62-ba4f-09c4c979f866	English
0ff3b735-0d29-4c70-b613-b7a578fa7785	Shape of you.mp3	06caec93	\N	bced1b40-4baa-417a-b377-523955ea1300	English
cb993e7c-2997-4122-8807-45ae8be88268	Shawn_Mendes,_Camila_Cabello_-_Señorita(256k).mp3	2ea4e917	\N	82e5d680-0c05-4bc3-851d-841806dae92c	English
33ed2ddb-e814-4ce7-b045-95a90b247f14	Shawn_Mendes-Treat_You_Better.mp3	b5fe21ee	\N	44c8a9a8-0cda-478e-957d-3e41e9186eec	English
333c97f0-25ae-43d2-b040-0e9e652a8210	Ship Wrek - Pain (feat. Mia Vaile)  NCS Release .mp3	08f2040d	\N	8af24416-bea8-43ab-945a-30c47a788c39	English
dd25caf1-afe9-4b3e-94b1-37dada4a968b	Sia - Never Give Up.mp3	9d009d53	\N	8794f29e-bdc5-46f8-9c88-0a43615018db	English
8c049af7-b489-4490-b69c-97550f7bf71f	Sia-Cheap_Thrills_Original_.mp3	14447486	\N	c0494798-a455-4f7c-aa5d-858d1e64706a	English
b9a1424d-0586-4877-ba18-65777a769f9a	Talking To Myself (Official Video) - Linkin Park.mp3	70f1c4c9	\N	e2a14d9c-500d-45c2-92e6-2530d0b6ffb3	English
42b9d79f-3767-4e75-b6df-d6ca8d946acd	The Americanos - In My Foreign ft. Ty Dolla $ign  Lil Yachty  Nicky Jam.mp3	da7dba01	\N	6d188469-f020-442b-8f20-5e2fd3b41c75	English
1a6d3816-a350-433f-8daf-c33410deb10f	The Chainsmokers - Closer ft. Halsey.mp3	bdbc5898	\N	e66f379e-38ca-4a61-9028-a24f5bf0c640	English
94bd9c77-3e84-4518-81ff-118d14516611	The Chainsmokers - Setting Fires ft. XYLØ.mp3	7d80d53e	\N	014ccaed-30be-4544-910d-bd85636d9c74	English
c6b643d0-3858-471e-875a-f9c3b060cd0a	The Chainsmokers.mp3	83fb1fc8	\N	b78f0ac1-7cc3-4d45-878c-06430181696c	English
3171cdd8-35c4-4e1d-bc24-0bbe9aea41f6	The Greatest - 320Kbps - (www.songspksongspk.cc).mp3	322ce538	\N	be74f737-29ad-404f-a3da-314cdddd9f71	English
86d80dd5-c899-4742-bdf6-686127166e3e	The_Chainsmokers_feat_Daya-Dont_let_me_down_W_W_Remix_.mp3	efee53f8	\N	79233580-7473-4876-9047-2968b668c20f	English
283d0938-03c4-4c57-a4ba-1f3ef92a0c1b	TroyBoi - Afterhours (feat. Diplo & Nina Sky).mp3	9ef691b5	\N	aff3ae2a-ad20-4edc-9947-228a2174c0d2	English
e34e7b41-0981-48cc-b7cf-c9ba05f0c3ca	Turn Down For What - DJ Snake And Lil Jon(MyMp3Song.Com).mp3	83ca9410	\N	d48a7b62-90d9-476e-a346-7a8108a6996a	English
d8279a5a-b051-4e6d-85a7-7b62990f94ec	twenty one pilots - Heathens (DISTO Remix).mp3	65975bbd	\N	661382ce-1914-40de-9169-71cf8bab4660	English
0d8b986b-6f5f-4f06-a2b4-c1d4017c5dbc	Zara Larsson - Aint My Fault - www.MP3sharelagu.mp3	14543b74	\N	ad5422df-f7f8-4417-b0cd-e651cc696faf	English
67ebd44b-0b86-485e-9696-e637a747e381	Zara Larsson - Lush Life.mp3	a2b1bf27	\N	cd90972f-c4c7-47f3-9bc2-4a2f91ac6d92	English
4126a6a6-a9af-487c-aa88-2fb3e13a163c	Andaala Rakshasive [NaaSongsMp33.Com].mp3	0a1d4c15	\N	d11cf61c-6870-4d9f-80c7-d15e66407792	Telugu
6166b76a-e6c9-4581-8ad7-8f2718f9dfd2	Andaalane Andistaa ([NaaSongsMp33.Com]).mp3	3ba4c9b3	\N	189c298e-d4cd-48d0-a2c4-94f554107d95	Telugu
a3030695-64da-4d0e-af7b-08861dd8760b	Antha Ramamayam [NaaSongsMp33.Com].mp3	4b6ee01d	\N	30fee61b-26e5-4e73-a77a-3f50754030cf	Telugu
e7d80178-6161-4e17-89fd-01586800b31f	Appudo Ippudo [NaaSongsMp33.Com].mp3	095615ab	\N	4c0761db-f33f-4265-9ba8-d83479a2cfa1	Telugu
072c9610-aa39-4e6b-b898-1fe1cdc628df	Arere Aakasham - [NaaSongs.World].mp3	6ccfaf70	\N	19debf56-dd96-4587-a4a4-0e6044819df7	Telugu
b5da672c-de1a-45e5-b467-2ba116b59563	Attantode [NaaSongsMp33.Com].mp3	c1bf6796	\N	ef8a3185-2113-4a11-82b7-8b01187172b7	Telugu
4a9a9cdb-5964-44d4-ac7a-a1a843fa68dc	Atto Attamma Koothuro ([NaaSongs.World]).mp3	0b1f3e1e	\N	30682f13-5188-43c0-9c4e-a3bd689bcd23	Telugu
36b2a3b2-18a7-4945-899a-2e89e01dcfd0	Auditorium Music Bit [NaaSongsMp33.Com].mp3	6c18efc0	\N	2d63773c-af94-47bc-9fd0-b2b59c97477d	Telugu
fec99942-3dde-4e91-adf4-7752f04e5978	Aunty Koothuraa [NaaSongsMp33.Com].mp3	071e203b	\N	0c5876e7-fa54-447c-b514-17571516c030	Telugu
e0d4341c-712c-4855-ae23-5fd9a567f19d	Ay Pilla - SenSongsMp3.Co_29.mp3	7f4e58b9	\N	8253a2ce-00cd-4add-82d5-250e8f04d379	Telugu
f5d2a6bf-f550-4d00-b3ce-cdc3f5d4b819	Ay Pilla - [NaaSongs.World].mp3	bdb13b70	\N	9374037c-aca5-461c-9d18-6d4b6ab03c8e	Telugu
51f541e4-19e8-496f-9e8b-3b6cd6f20578	Ayomayam - SenSongsmp3.Co.mp3	9809b3ef	\N	ba35ecf6-73cb-4c77-937d-293efe7a9d59	Telugu
7275318f-62ff-4950-8721-cb08badf5f2e	Ayyayayyo - SenSongsMp3.Com.mp3	644881f0	\N	39628d5f-86e8-428a-9854-de998b8069d6	Telugu
d0dd3cb7-56cc-4af9-830b-b832e35bfef8	Balega Tagilavey Bangaram [NaaSongs.World].mp3	b0fc74dc	\N	2585446e-27ff-4123-bda8-b490914cabfa	Telugu
d69278bd-4b71-4355-ac64-e350306133d0	Bangalakhathamlo [NaaSongsMp33.Com].mp3	586ef3b2	\N	0c92e6ad-e6ff-4d2c-a59b-d5f28207a6d0	Telugu
74bdcb2f-9b9e-4f89-bd63-bd6bb09913fa	Bhadra Sheela [NaaSongsMp33.Com].mp3	416bfd95	\N	ec7a0b35-1aaa-42b1-a432-01f7d686e414	Telugu
95b44878-3a57-4ca4-8969-3d58f1c0640c	Bhalegundi Baalaa - SenSongsMp3.Com.mp3	81d6f238	\N	c4f7f1c7-d27c-488f-82ce-58e71d68829f	Telugu
ab0a9df1-1f18-4d87-aded-7e4fcbf88d10	Bhalegundi Baalaa - [NaaSongs.World].mp3	629ecc68	\N	d663da6a-4b41-436c-a653-a99e0bd2632f	Telugu
ab8f543c-867f-4ed6-ab53-0bc97b926aac	Bharatha Vedamuga [www.Tollymp3z.com].mp3	975b7120	\N	20e44469-c305-4491-974e-c38344ebeb83	Telugu
bd808c04-44a4-4f74-b0b9-5bfe3bf9b91c	Bommani Geesthe [NaaSongsMp33.Com].mp3	0ce00d59	\N	27ce641e-9b5c-463e-bc43-c8a0cda80261	Telugu
2508a1be-7bec-42f4-93ba-c4d0cee0f44b	Bus Stande - SenSongsMp3.Com.mp3	12f79811	\N	aeb19f33-1436-440d-bd72-2fc4057441b9	Telugu
303f8c3a-5045-497b-913e-e51ccb29d81f	Chaila Chaila-[NaaSongsMp33.Com].mp3	a83e95b5	\N	e101d2b2-2d3e-4854-85d6-d8432fa8a79f	Telugu
d42ef0cb-db33-41d8-b569-4b29ebad9340	Chanchalguda Jail Lo - SenSongsMp3.Com.mp3	761d53e8	\N	a7cf6797-85c2-49b5-952a-85c9c04d2c3f	Telugu
f695962a-4e6f-4f09-9923-231caf10e190	Chandrullo Unde Kundelu [NaaSongsMp33.Com].mp3	ae96db73	\N	a8bb2f85-bdf9-44c7-a208-d82dbae1cb5f	Telugu
60592de7-9905-42df-8417-81d39b5c2b1d	Charitraney Likhinchara - SenSongsMp3.Com.mp3	a75d9cd3	\N	68e9b30b-630b-476f-aa0e-53cde63fd42e	Telugu
22ff98fb-f34a-41a7-bc56-2945f1119283	Cheli - SenSongsMp3.Com.mp3	a942653d	\N	958683a3-18bb-4b84-bcd2-8958b4e89658	Telugu
3fe13178-20b7-477b-86d1-d760be8fdef3	Cheli - [NaaSongs.World]m.mp3	b45b4bd9	\N	c0c9bd2e-6184-4f8a-8ae8-209b3c707c37	Telugu
9b728c97-e21b-4b97-b8a0-af7ab0bd0ed8	Cheli Na Edane.mp3	35aada15	\N	32371453-bb3b-4ea4-8286-44c3f77ba56d	Telugu
d22eab1f-a6c2-4184-b499-93b6d5782f58	Cheliya [NaaSongsMp33.Com].mp3	3e5e44d9	\N	2db2c8f7-85fd-4e20-932e-d53d41504d74	Telugu
a2df2031-c17d-491f-bddc-88018f288e67	Chilaka-Pacha-Koka--From-Narasimha-Naidu--Mano-Radhika.mp3	495834fc	\N	e2df92ec-1d5a-42dd-9f6f-8c1eedadca2f	Telugu
c92ce037-7abc-4a8c-83ef-9a5901027486	Chinnaga Chinnaga [NaaSongsMp33.Com].mp3	7854d664	\N	4ad13809-31ba-4d65-b4f2-e58d167b6e8c	Telugu
2ad3656e-d26b-46a3-8841-1f2159ef45f8	Chiru Chiru Chiru-[NaaSongsMp33.Com].mp3	6aee7767	\N	5d58d840-8ae9-4c7e-8769-dd57ed0321e6	Telugu
8f58050b-f407-4e28-8e1c-22c18d75cf95	Chirugaali Aagipove Full Video Song __ Oka Manasu Movie Full Video Songs __ madhura Audio (128  kbps) (YtSaver.xyz).mp3	81baf3c0	\N	39b9cd1a-b532-4d7d-a42c-7fb5fb599d17	Telugu
47593ea5-0f64-4dbd-9c91-390b127ffd0c	Chirunavvule  Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	d262ef43	\N	fbbfbaec-5a1b-4489-b9e0-6864ff3a7678	Telugu
5f20a8bc-f257-4976-9bc1-171815177740	Chitti - SenSongsMp3.Com.mp3	9d232666	\N	5ee6e578-5c55-405c-8188-651bc9d16674	Telugu
5d7c914c-afba-462d-b848-2a4c8a6799be	Chitti - [NaaSongs.World].mp3	d34886fe	\N	20a432b7-7812-4d85-b774-96def3ba4993	Telugu
657e543b-9146-4cac-b571-c2219db819ba	Choosale Kallaraa - SenSongsMp3.Com.mp3	6e6cc443	\N	11c524b9-d25f-41f4-91ff-abfd22aaa445	Telugu
405d3da4-eca0-4e55-873b-ef77f8c07581	Choosale Kallaraa - [NaaSongs.World].mp3	6ee5940c	\N	3a1c9392-4fa9-4d6d-bd8f-e8b5db0c2e80	Telugu
2b66e5d8-0c20-4cc8-b360-39e7d6aa2f38	Choosi Nerchukoku - SenSongsMp3.Com.mp3	e2728f43	\N	f77e9b33-468e-4ea4-a2c3-a4cc4f341264	Telugu
c42fb665-78d7-44a2-ba6f-588d7d437be1	Choti Si Chiraiya (Mimi).mp3	6c9d10c4	\N	edf6ffa7-e884-4c44-a258-a9df35d37333	Telugu
5f05b19b-dec6-4dff-86c7-674ca7f7df1f	Chukkala Chunni - SenSongsmp3.Co.mp3	074bca32	\N	df0c0669-609b-436b-a602-a2394ab567b3	Telugu
569957f0-5654-419a-8be6-087216c40321	Chukkala Chunni - [NaaSongs.World].mp3	aa391e0b	\N	c8148081-fe8b-4eca-96a8-3e514666b105	Telugu
784ea89c-c9e9-4018-8cb7-380cddcfbe93	Chukkalanni Muggulai [NaaSongs.World].mp3	10d56430	\N	a924e119-358b-4890-95f6-e48afda08185	Telugu
59559b54-9678-4831-aabe-f91f4c697db8	Chusanae Chusanae - [NaaSongs.World].mp3	d2f766a1	\N	a258898a-d306-4a40-9351-da65ef7ed5c6	Telugu
f784abe6-ee39-4e38-84f4-b0c4a36091a6	College Song - [NaaSongs.World].mp3	37b9fbce	\N	5fba47f8-3df0-4b4f-b771-3484be3cae3e	Telugu
92b6b88e-9eb4-4bba-a1bf-0ee495749999	Dabbe Manadi Kummesko - SenSongsM3.Com.mp3	14919c3a	\N	1231c883-7c86-4b17-912b-d13cf2805f7c	Telugu
fa657974-f6cf-4752-bf1f-ca717d11f43f	Dabbulu Sampaadinchalante - SenSongsM3.Com.mp3	ee1315fc	\N	e9f7a4cf-c62f-4992-bc00-0e06ef8a6f00	Telugu
a38d78bf-4831-4c00-9ef5-6e42c9c68d3f	Dakko Dakko Meka.mp3	fd28d310	\N	6b72d0f8-a0b7-4afd-bfdf-c2987c00374f	Telugu
4a5948e6-beb3-4941-9e51-d854e5c88ef9	Desh Mere (Bhuj).mp3	fca4eefc	\N	b59e107a-6930-4ff6-853a-5c5f2da87267	Telugu
23e41890-a61c-4e5d-a063-c7adf378ef63	Devata Neevena.mp3	ed576654	\N	55442d54-5b39-4523-91c7-c48306041e9c	Telugu
5ea1536e-fecd-4a17-b7df-7406aa70d390	Devathalantha - SenSongsMp3.Com.mp3	a9263e0b	\N	126d6638-6014-4737-99be-3bcef5117a8e	Telugu
d817d2f4-f3fc-43e4-9397-a2b005c1e6a0	Dhandiya [NaaSongsMp33.Com].mp3	4499c5a0	\N	b40a9c7d-b88d-47f3-a20b-e6b5d8365c6f	Telugu
4476e856-d42b-41c5-9b02-e09515098d35	Dheemthana Dheemthana - SenSongsMp3.Com.mp3	6852e226	\N	50db9dff-bd9b-44c2-a864-9326f2d605b1	Telugu
81418ba4-1361-4273-8e07-5e85479ae90f	Dheemthana Dheemthana - [NaaSongs.World].mp3	59964ba9	\N	c06e8446-a630-4d89-8e9c-531cca284dae	Telugu
3b41f27e-b890-4be3-a62b-a18a844d8dec	Dhim Dhinaktari-[NaaSongsMp33.Com].mp3	784eb7e6	\N	88bbf224-e7db-4926-857e-4a41f3308d73	Telugu
12e08c88-6c83-490e-8c84-84a900ed047d	Diri Diri-[NaaSongsMp33.Com].mp3	ae814d80	\N	b5bae2f6-3a8e-4a62-8630-d355158b2268	Telugu
de487003-aa04-4a9a-b31c-915c4e79261d	Dole Dole.mp3	e1bedd69	\N	e1a3ea3e-d765-40bf-969f-9b238a452c38	Telugu
9a032c51-b04b-484a-b1a5-3bdbb13c5584	Dosti.mp3	9e264d56	\N	e073d12c-a8d9-4664-8efe-ddb500ac6930	Telugu
846cb10f-21dd-4ab9-9928-5e8573eb6de4	Duvvina Talane [NaaSongsMp33.Com].mp3	823bf6fd	\N	8779c74a-7644-4f85-9d3f-3c09286b28a6	Telugu
d6bdea5e-af59-402e-af88-e97856cf899d	Ecstacy Privacy [NaaSongsMp33.Com].mp3	7607b62c	\N	53bc9b04-7e6f-4ba7-ac25-10a6b5a44895	Telugu
8beda0dd-d363-41e7-8912-0aa7880c8bc5	Ede Naa Palletooru [NaaSongsMp33.Com].mp3	b1301cfd	\N	22eb9693-4925-4a06-bea7-3ee7ad218c78	Telugu
49994cb5-f31c-4d19-ac82-10b7af6f4c26	Ekaantham - [NaaSongs.World].mp3	a1fb4cd3	\N	ed876cd7-f473-40a4-9722-296b43738470	Telugu
ef523c15-2ab2-4c32-8942-609c78657f79	Emainadho Emo-[NaaSongsMp33.Com].mp3	80b3b8fd	\N	65106722-e1e9-4120-9d18-d86ed4498d3e	Telugu
c51bbc88-6d56-4868-b323-de1b8a146bf5	Emito Idhi - SenSongsmp3.Com.mp3	83fa2f3a	\N	0878c9da-fe72-409c-85a2-72a121a26f52	Telugu
13a9685b-d603-465d-9e84-0c3a7f2c6b99	Emito Idhi - [NaaSongs.World].mp3	0b0f49f5	\N	2cc7bbde-150d-451a-b921-c9e277ca215d	Telugu
bc3857e9-7bc0-481b-80e7-ab0110646216	Enadaina Anukunnana.mp3	0b2aa92c	\N	2ef2fc67-1c2f-48e6-938f-e7645f7042c8	Telugu
48199e84-1139-433f-8cb9-82f09de2db01	Enduki Prayamu-[NaaSongsMp33.Com].mp3	82295e61	\N	14fc7efe-8bde-4d2b-b83c-14ae179254dc	Telugu
100c234a-0925-457b-95f0-187cc2f25bf9	Entho Funn -- Naasongs.xyz.mp3	e79387c9	\N	5f210aa3-1e30-4baa-a7d5-fc6b65b0a800	Telugu
99a2c5cc-4d03-424b-8836-0358d2c616d5	Eswara - [NaaSongs.World].mp3	1a895d7a	\N	0c39b6f5-f72a-496e-9bfd-abd94323aa98	Telugu
7b9d2820-97a2-453e-97bc-d3ca5f65b12d	Evaru Neevu Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	eaf961ee	\N	84c21dc8-ae6a-490b-b744-22ffade8a5e7	Telugu
cead18c5-eefe-4270-9396-152fb2e5b0ea	Fififee Fifeefee - SenSongsMp3.Com.mp3	78d4a1a0	\N	075b432e-40d3-427b-a72d-e7482f288842	Telugu
b1f92b3a-2448-4457-af68-7b183c0acdc6	Fix Ayipo - SenSongsMp3.Com.mp3	4d0d1d38	\N	81bb2860-13f2-412c-b5b0-ef1d6d72770a	Telugu
651a5ae6-1207-4060-8a94-c159f9cca517	Flute Music [www.Tollymp3z.com].mp3	bdd01be1	\N	2b0ba598-ef89-460b-81ab-83fed9cf9781	Telugu
389ad32e-9e48-4002-b454-f4746ab58283	Gaama Gaama [NaaSongsMp33.Com].mp3	1f4c53a6	\N	aa2ea0bb-566f-4fa1-925d-79c67feb2ea9	Telugu
eea4f80a-4ebf-40ce-8152-39c9d2a18209	Gaganamu Daati - [NaaSongs.World].mp3	258e9921	\N	78ef87bb-9ffa-42bd-bc82-6d119a5732d5	Telugu
05e56bdc-9bf5-4cdd-b0ce-7254ee22e87c	Game Of Life-[NaaSongsMp33.Com].mp3	188804ab	\N	b2a79e1e-d569-4d36-934f-89ec834fa64d	Telugu
57eb8549-553c-4985-9b1e-c9eaf1fa1c78	Gappu Chippu [NaaSongsMp33.Com].mp3	ca9edba7	\N	382ea05c-d61d-445e-b0d6-3db32ddcbc04	Telugu
375d2006-4ab6-4436-a62f-28d17e81327b	Ghal Ghal Ghal Ghal [NaaSongsMp33.Com].mp3	b45071bb	\N	4febb3f9-64bd-43c7-8b79-2095662306cf	Telugu
4ffa9d0e-8100-4ebf-9d6c-afa839fa4517	Gitchi Gitchi [NaaSongsMp33.Com].mp3	92a7bffd	\N	426e2c54-bb32-4d83-b0db-ed1b494dd694	Telugu
3bbbc1fe-fd53-4f23-95db-5aee709a1385	Go Corona-[NaaSongsMp33].mp3	2a4798f7	\N	748163c8-f393-4bca-a648-9cc3a73f672f	Telugu
705fc1e6-6811-4354-93d4-79cd0b9d3f9d	Godari Gattupaina-[NaaSongsMp33.Com].mp3	61a41586	\N	736d5c69-939f-46ee-8af1-c2fb72d8e11b	Telugu
7e214b89-f41e-45de-95a3-5eb1f573ee8f	Govinda Govinda [NaaSongsMp33.Com].mp3	28ede6cd	\N	92b245f7-0b79-4e2a-9e18-e9a442e50f7a	Telugu
5b87246a-5133-4861-b16a-5fc92f011d4e	Guche Gulabi - [NaaSongs.World]m.mp3	73509b05	\N	503c88a9-6e4a-42e9-9d21-0885b03a4c85	Telugu
4e09e4d4-3723-4dd1-811b-180f77f626d7	Gunde Sadilaga.mp3	43a6209a	\N	5bda1044-9b55-42a9-9a24-ea57fd41bc35	Telugu
5840f84d-f4cb-4a15-81ac-b7be3d91af48	Gurtukostunnayi [NaaSongsMp33.Com].mp3	79ad20ed	\N	8d08c9b7-b8a0-4e22-b325-6ca526729957	Telugu
4028e88b-ed77-46a2-bc52-de159844a4ea	Hai-Hai--From-Chennakesava-Reddy--S.-P.-Balasubrahmanyam-Sunitha-Upadrashta.mp3	6b5dba2a	\N	a5cd80de-10ac-4d1e-bb0c-9f22b9a89da5	Telugu
fc278de2-c695-4aa5-8a91-c6df861b58e1	Hey Manasendukila - [NaaSongs.World].mp3	1a25fd2f	\N	6c853920-da7e-48a0-ad96-123166a0063b	Telugu
f96fe8b4-7b1b-4328-9acb-648f25e33cf2	Holi Holi [NaaSongsMp33.Com].mp3	4181966e	\N	c5efd07e-90d8-459f-9be4-28098ae02c1f	Telugu
89182d2b-9be4-4a8f-9d3e-0aa93dcb53b1	Hylessa [NaaSongsMp33.Com].mp3	9787bb84	\N	bb788a31-3d6a-4d73-91fb-239b7b98392a	Telugu
c377b887-32ba-4be4-bf2f-85a6465af676	I Am Very Sorry [NaaSongsMp33.Com].mp3	8b4ad209	\N	e7dc3428-34f3-4465-b138-9e4e9007648c	Telugu
ac62aceb-50de-43d0-94b6-bfad4de21eb5	Idhe Naandhi - SenSongsMp3.Com.mp3	49c16f44	\N	17fa3369-ec3e-49bc-8bed-5ec3d7d748b3	Telugu
7d0c66d4-8415-46dc-9e27-e0a3b773b7f8	Idhe Naandhi - [NaaSongs.World]m.mp3	1e2a1efa	\N	c8f6e5bb-4000-4072-b399-eda509132e0f	Telugu
ef85cd23-4078-4b8b-9a26-cc39e9eafd81	Intha Duramochaka-[NaaSongsMp33.Com].mp3	5d431544	\N	cfc27373-a523-42bd-8111-c1b954afd927	Telugu
266cb14d-2d08-40a4-a630-954574fd9369	Ippudippudu-[NaaSongsMp33.Com].mp3	d595f4a1	\N	74c672f2-d520-40ed-a3c4-3c7782cfec25	Telugu
2632ac6f-e9b9-496f-8bbd-b1023ae2cc56	Ishq Mera (Bhuj).mp3	1474d6db	\N	f5ff152a-0565-48a8-a92b-2569b9a158e0	Telugu
66f34fb2-9c08-467e-baa7-0be08ff864f8	Isvakulaku [NaaSongsMp33.Com].mp3	43b2fdf2	\N	1cde879c-b20e-417f-a59b-fddb7192a5ac	Telugu
df0d99a4-d0b3-446d-bb7b-f70e79fb935d	Jagadekaveerudiki [NaaSongsMp33.Com].mp3	a2814d41	\N	e32f1152-598d-458e-ab79-7f9f8e35b3da	Telugu
79df5561-049b-461e-9833-11fb538d4801	Jaihind Ki Senaa (Shershaah).mp3	b9a08c18	\N	a3bfcb7e-b2a9-478e-b174-cd174e2bf6ac	Telugu
f163e04f-0568-4ee8-a26a-7b0931497724	Muvvala Navvakala [www.Tollymp3z.com].mp3	8600a6ad	\N	e677248b-70bb-4568-ab70-51465a7f7566	Telugu
344ed161-1bf6-45db-8ed5-8ab53e03c073	Jala Jala Jalapaatham Nuvvu - [NaaSongs.World]m.mp3	435a2b85	\N	c418b6ac-0f2d-46cc-a800-2f394d1fe4be	Telugu
0c125344-2856-4f79-ab67-128f65f5f8b8	Jwala Reddy - SenSongsMp3.Com.mp3	646dde0f	\N	242fad09-1d84-4c97-9007-569f8b242f84	Telugu
acc50cd1-69fb-4b8e-ac76-9c7ed879275a	Kaani Ippudu [NaaSongsMp33.Com].mp3	2b38398d	\N	b147d220-7fb3-43d7-acc3-c4c393aa557c	Telugu
91428f8a-2a49-4f16-ae12-4bb62ae2864c	Kabhi Tumhe (Shershaah).mp3	dd8e83e0	\N	7ffb70a5-cbf6-4d4a-8b18-84abc4b7bd04	Telugu
b45fa3d1-dc7f-4b9b-b424-7e217bf3f892	Kabhi Tumhe Female (Shershaah).mp3	aa8d7811	\N	0f1a77bf-734d-433b-a264-c548274a9de8	Telugu
4831a0f8-f908-40fa-901d-269950d0c8bd	Kadhile Kaalannadiga.mp3	e7acfa27	\N	03a1b80d-2bf5-4f19-93b0-e875dbbc6ebb	Telugu
3a95e472-c814-4133-b827-0f78510891a3	Kailove Chedugudu [NaaSongsMp33.Com].mp3	43a58019	\N	ed704b33-3732-43ad-ad5e-09fe09cbc74f	Telugu
865a7fd2-f77b-466e-8446-f587ff0f75aa	Kakulu Durani-[NaaSongsMp33.Com].mp3	fdd3287f	\N	c7ab53b7-64a5-43d6-9052-167d374ba6b3	Telugu
250902bf-5ad3-4743-93f6-16d8df9965be	Kalalai Poyenu [NaaSongsMp33.Com].mp3	d587b5ee	\N	8848af9d-f4e5-495d-a153-8880733f4f8b	Telugu
bd0f5fd4-b548-4206-b18b-a7fed9de2a5c	Kalalonaina-[NaaSongsMp33.Com].mp3	f80d1214	\N	1edd62e1-9f65-4dbd-ad3e-e36d8757109c	Telugu
b02d702c-bc48-4c44-947c-667dff0767a4	Kalisunte Kaladu [NaaSongsMp33.Com].mp3	d7c1a07d	\N	9f63fb9b-7b17-4630-8079-4766f0e0b0cd	Telugu
83385b40-f93d-48a4-98d8-f527dafe351f	Kallaloki Kallu Petti [NaaSongsMp33.Com].mp3	d0fa13df	\N	474f1aed-432d-4135-a379-ba1065f806e8	Telugu
160c69cc-3bf6-45d4-96ae-388a4d382aea	Kanapadaledha-[NaaSongsMp33.Com].mp3	e7b184ef	\N	022cc1be-0147-4ec1-b4a1-23e6ee988d6a	Telugu
26509ee9-ae1b-45df-ab3e-f0e54cde72d1	Kannulatho [NaaSongsMp33.Com].mp3	f3f88da5	\N	94562ecb-42ff-43fc-a101-d6019bdff7f2	Telugu
eb53d3ef-af2f-4f6b-9367-1303466d058c	Kasta Ninnu Nannu [NaaSongsMp33.Com].mp3	c1ee4b4c	\N	d74a54a9-03cf-427f-aed0-3549d98c41db	Telugu
58cba55d-2c51-4b96-97c7-634b6bf51690	Kiston_320(PaglaSongs).mp3	f4e7404b	\N	74f97e4f-1558-4e09-9660-7505c167717c	Telugu
0dae47c0-5687-4da8-880e-fd222ceb73d9	Kola Kalle Ilaa - [NaaSongs.World].mp3	3676720d	\N	c2e95376-52a4-41cc-bc5b-9ca051f2a8e6	Telugu
230ba4ff-4227-4191-ad27-c45998392c78	Kollu Kollu - SenSongsMp3.Com.mp3	6a23fc71	\N	ddb16dc6-bb06-4a06-8ac0-d3a6c40c9547	Telugu
2f9632cc-aa0e-4c31-9286-e6c2205c3515	Kolo Kolanna Kolo - SenSongsMp3.Com.mp3	80efd33a	\N	23c72268-4345-4820-bd74-aab489b96059	Telugu
8c3cb7b3-e637-4836-b726-663174750789	Koochipoodi Kaina [NaaSongsMp33.Com].mp3	32e33b2d	\N	0cf56437-54a7-4520-8a8a-07133d94b6f3	Telugu
beada2ce-68ae-4bff-be4c-67c42c75deaa	Krishnamurariki-[NaaSongsMp33.Com].mp3	d3255ab1	\N	c5e5b02e-6d98-4e6b-a279-23781c32db95	Telugu
3f6aa1d3-bcee-4097-a39a-df2ef6314de8	Kutti Story_320(PaglaSongs).mp3	b735c611	\N	8a4f7e80-b27f-4c56-b3f7-e03468219efb	Telugu
920d17aa-7821-4384-ae56-704fd3b2c386	Laloo Darvaja [NaaSongsMp33.Com].mp3	457626ce	\N	834508d5-c61e-4057-871c-af3d34bfc9c7	Telugu
4821b6d0-a624-44e9-bbf0-5ef65257f99a	Loojammayee [Tollymp3z.com].mp3	42bbfcef	\N	d8c5af22-7c64-4bc4-a6a2-dae7d72d5df6	Telugu
2d352ed7-a7b8-4dc9-b696-77ec0cd2752c	Lut Gaye_320(PaglaSongs).mp3	42b806f9	\N	bbc42c3f-60d7-447f-8985-2c246343bfc4	Telugu
1c6abeaf-f056-4577-bf02-80df4b5d5fc6	Maayeraa [NaaSongsMp33.Com].mp3	896f61f8	\N	806492ea-e9d0-49e6-a212-4c8bb8287303	Telugu
c37f70ac-9ba8-4892-bcd9-c62051bbec92	Maguva Maguva [NaaSongsMp33.Com].mp3	3bae37f7	\N	753b5dbd-5d00-4bc9-acd6-813fd8839094	Telugu
a60d50a6-af77-405f-bc20-8e19b542f531	Malli Kuyave [NaaSongsMp33.Com].mp3	4ebeffe6	\N	ced13ac2-e0a6-44de-b9f1-36531d5073fe	Telugu
3d4f0476-86e3-4f46-bd1f-f1bc1cd5b131	Mana JathiRatnalu.mp3	7f89e0ed	\N	dfeaba5b-b668-4aaa-ae03-1a4bafe4d365	Telugu
2f008a02-21c1-437f-8a3f-a174e74a41af	Manasa Manasa - [NaaSongs.World].mp3	41d94933	\N	1b60d55b-1406-41b6-addb-b64fb5b66339	Telugu
95b4b52a-168b-4789-91f7-78309c05f335	Manasantha Meghamai Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	fd027636	\N	0607b84e-e68e-4193-86ad-14504c83d90f	Telugu
76752148-1e82-4912-a253-d69489f96978	Manasu Manasu [NaaSongsMp33.Com].mp3	3bcf7042	\N	ff217773-8483-4ec9-9004-b0f0e2693e74	Telugu
9a2d4da7-5aec-4edd-b730-ae0fe89bba84	Manasu Padi [NaaSongsMp33.Com].mp3	0e7fc00c	\N	280329bc-41a1-410d-91c1-055485f80fd8	Telugu
32e5c827-f3c8-413e-8eb6-03496c17ba82	Mangamma_320(PaglaSongs).mp3	b14089b8	\N	760760e9-4887-46dc-af27-1d3df894316f	Telugu
0282ff7a-3c1a-48f2-8a10-556330702933	Manmadhude [NaaSongsMp33.Com].mp3	fd852df3	\N	b04d1a66-ea8e-4500-bcda-ce013214ae89	Telugu
f7510957-7c4f-49a3-96b3-5617456acf5a	Mann Bharryaa 2 (Shershaah).mp3	cbd0a2ae	\N	966e0515-84fe-4c25-9f42-085c22286c11	Telugu
67c14762-aacd-43d7-8848-1a8634b2524c	Meenamma - [NaaSongs.World].mp3	b06f3f78	\N	177add7e-c576-48a1-86ac-a4d30424315d	Telugu
6f65d3e1-bc16-4eb2-bc68-4bf08a41803f	Meghamai-[NaaSongsMp33.Com].mp3	c8d57e86	\N	ebfc341c-632b-47a2-8028-cea5b24ceab4	Telugu
2d7aa6db-f9b8-454d-b499-5563cc5c8e93	Meme Indians [NaaSongsMp33.Com].mp3	690a01ea	\N	55f64d7b-2e70-41d1-bbe3-b34fd0be0792	Telugu
2095e3bb-214e-4d6d-b86c-1f063cff1f7b	Mere Naam Tu (Zero).mp3	f4bfcc53	\N	8573c7ec-9dd6-4ab9-8ab0-69436e54b1ec	Telugu
1ced0d9f-d6cd-4b0f-8d8e-2480e926c6f9	Merise Merise.mp3	65e0d605	\N	57e2ffc2-2535-4690-a34b-29ac154cf522	Telugu
87ea6742-7dae-4e04-bf5c-471b38271c80	Mounanga Unna - [NaaSongsMp33.Com].mp3	4eb58d7f	\N	6a542d1f-4938-4bde-80b2-86856de5923f	Telugu
801bb0b9-4833-429d-a3fd-c1897856f045	Music Bit [NaaSongsMp33.Com].mp3	3f9f8fae	\N	8093e72f-e154-4440-8ff9-e117ec85e7a6	Telugu
4b3e4cfc-04fe-401d-a681-1ae1401b3e1e	Musugu Veyyoddu [NaaSongsMp33.Com].mp3	395546d9	\N	e13c2219-f59d-4fc2-a50d-5a8f4145798c	Telugu
ff28784b-5d10-4d1e-be2f-823c9c827629	Naa Chinni Lokame - [NaaSongs.World].mp3	90bdff35	\N	d78f8223-ca41-4ba7-9758-a08278e4b8da	Telugu
838a796a-8da3-4132-8f35-4bfd5457440d	Naa Chupe Ninu [NaaSongsMp33.Com].mp3	ff5e4974	\N	a1321b50-5837-445d-95b0-8c01c44be2c1	Telugu
defcd73f-7afd-4689-8b0a-010c10c0ac1f	Naa Kanulu Yepudu __ SenSongsMp3.Com.mp3	702e4a2d	\N	b6074ff3-8dff-4f44-bce2-c639151fb285	Telugu
7605e859-29bb-49ac-ad78-4e1e1ed98350	Naa Manasukemayindi [NaaSongsMp33.Com].mp3	7f40ea7d	\N	3da9917e-d0ab-4cec-ade6-6779a11d1b71	Telugu
e5f4da10-85d4-47d7-84e2-8624509a691f	Naa Pere Kanchanamaala-[NaaSongsMp33.Com].mp3	baaeab29	\N	e787fedf-f116-4207-b7b8-0430aa090b98	Telugu
c9e3638c-2738-4546-b9a0-f8e50d6f70e8	Naa Pranama Suswagatam [NaaSongsMp33.Com].mp3	e9a68285	\N	43cee5f2-020e-4da2-b9b6-5e64e039c19a	Telugu
ac2ffb60-63b2-4f7e-8e0b-c422abb62475	Naalo Unna Prema [NaaSongsMp33.Com].mp3	2806d738	\N	a9e40004-ba77-414c-a4ed-b7c4d844137c	Telugu
e7c9d1ba-ab13-42a9-8715-f30e99df4552	Nadiyon Paar_320(PaglaSongs).mp3	84d90982	\N	064b6d40-546d-4bd4-9c3b-3d41c001919e	Telugu
c51b4625-4e07-4e43-afee-3c556a750c24	Nadumunu Chooste.mp3	6aef02c4	\N	9a9b000b-b54c-4168-bf07-8dfd77074bde	Telugu
c86e1316-a78d-43fe-a6a3-259b151e1ae6	Nairey Nairey [NaaSongsMp33.Com].mp3	591d0bc6	\N	55e80028-a9d7-479c-b7fe-8a554041e458	Telugu
cb8c697b-4eea-44b4-a752-dc708b231c57	Naizam Babulu [NaaSongsMp33.Com].mp3	3ccd0668	\N	2f2cd1ab-652f-4ca4-9a7c-c36186ce93e2	Telugu
dea27bfb-3999-4867-accf-98785ab539b8	Nalla Nallani [NaaSongsMp33.Com].mp3	ac0c731b	\N	1fb3e5fe-8f6f-4738-98cf-71ca79d267a8	Telugu
d9c72620-d508-4fd1-a215-00ac6f9604ea	Nalo Nenu Lene Lenu [NaaSongsMp33.Com].mp3	ceba501e	\N	2549df9a-784c-4781-9909-c6a9f15d5879	Telugu
32e5e70d-7976-47de-9c67-88b562433392	Nalupaina Kannaiah [NaaSongsMp33.Com].mp3	1a374e43	\N	f09d1d74-8dc4-4857-b366-18c66cad8255	Telugu
23166feb-4cfe-47a8-9530-1348b61d72e6	Nammaka Thappani [NaaSongsMp33.Com].mp3	d73b92f0	\N	a411040c-90c8-4323-8546-eeae056b2f6e	Telugu
89d0658b-1aa2-46e6-9a38-ab7583f98d46	Nandamoori-Nayaka--From-Samarasimha-Reddy--S.-P.-Balasubrahmanyam-K.-S.-Chithra.mp3	7d262327	\N	3751aabd-8987-49bd-8380-45b17bf8f3d1	Telugu
72ed2f0f-50e6-4f16-a450-bda1aacdfb67	Natukodi-[NaaSongsMp33.Com].mp3	8e15132c	\N	72172dfc-0ac0-46d7-8e34-369da4137b19	Telugu
c5fa640c-6706-4c96-b678-c77c135b7277	Nee Chitram Choosi - SenSongsM3.Com.mp3	8fed694b	\N	a517aee8-2fdd-4c1b-8a3e-3d1cb790210a	Telugu
833040e3-783d-45b7-a273-00ed15007dd4	Nee Chitram Choosi - [NaaSongs.World].mp3	a4e0f2cc	\N	0b2137ce-86bc-4101-822c-1cda8a0b3981	Telugu
4e2804ad-2f09-403f-b16c-7953f8bc2694	Nee Navvula [NaaSongsMp33.Com].mp3	b6f83dad	\N	36e512d1-5979-4d9c-839f-51dd640ba10a	Telugu
e916fd8f-5bdb-468d-bad7-931217a80f3a	Nee Yadalo Naaku-[NaaSongsMp33.Com].mp3	1f601d66	\N	190c2213-1537-4ebd-9ff5-1d9e8019ec1a	Telugu
3dd089ab-fdfc-4eee-a8d2-5f530ed371cb	Neekai Bratikestuna Ninne Kalagantunna [NaaSongs.World].mp3	d98b5f18	\N	413917f1-c4c1-47b8-a6ee-d8ecbcd0adbb	Telugu
f6e6cfc5-cebd-4e17-a495-2a0dc5386fb5	Neeli Ningi [NaaSongsMp33.Com].mp3	f460ad22	\N	86ac4aed-0827-4f6a-8725-aebb15fef3fc	Telugu
ee7b0e46-2114-485a-b55b-e98e12d83f2d	Nelluri Nerajana [NaaSongsMp33.Com].mp3	7279cda4	\N	beb56b43-f328-4b82-a0cf-2067fa431565	Telugu
8da21624-e2d3-4746-b26b-612c0035dbed	Nenusaitham Agni Nethram [NaaSongsMp33.Com].mp3	bf7f47af	\N	d404109a-c7e1-4831-b540-56ab16d25242	Telugu
a69792fa-92eb-405f-bb74-28591655d2c9	Niddura Pothunna [NaaSongsMp33.Com].mp3	9418652b	\N	f733c824-19de-458f-9cf1-470a233a691b	Telugu
a20a4594-56c6-448c-a2c6-7ff58814b7c1	Niluvadhamu Ninu Epudaina [NaaSongsMp33.Com].mp3	8bdd9e48	\N	212ffff7-ac6a-4bef-8635-2eb2a665a505	Telugu
acf72031-9cce-4c98-be24-5a9972b11985	Nindu Godari-SenSongsMp3.Co.mp3	551f473d	\N	539786e5-5ef3-4b3e-95a6-8e452edf447b	Telugu
06544bb7-b59f-4a93-adf2-a22019f98b0b	Ninna-Kuttesi--From-Narasimha-Naidu--Hariharan-Kavita-Krishnamurthy.mp3	6d3cf300	\N	df2032c1-21d3-43c7-b04a-4899ea5ef702	Telugu
a6a3d001-923e-426b-b7cb-396ee9eaf004	Ninne Naa Ninne - [NaaSongs.World]m.mp3	743dc2fa	\N	dcbee98c-18dc-4952-8ebd-f5cf6a3c6c49	Telugu
2ec72df9-3e76-469e-9b96-0dfe2f3e4fe9	Ninnu Chudakunda Undalenu - [NaaSongs.World].mp3	78a72438	\N	feadd138-4ba1-4651-a73a-0177ea94bd6d	Telugu
3d2c1c7b-dc65-40e2-8cbd-8fef1fd180ba	Nuvvante Pranamani [NaaSongsMp33.Com].mp3	f3193624	\N	40e46137-0133-4322-9ad8-caf9a49ffd06	Telugu
4e187c9d-d3b0-4048-819f-8737c07fff4b	Nuvvu Naku Manasisthe [NaaSongsMp33.Com].mp3	32743e0c	\N	28ea5ba5-275a-49d6-bdef-c54c1ca58492	Telugu
6e3ed65c-1276-49fb-a2b0-685a3bcd5d09	O Manasa O Manasa [NaaSongsMp33.Com].mp3	588da6dd	\N	3566b6e9-0e5a-48c3-ba89-c196db363adb	Telugu
62ee97f1-5e50-4a81-ba78-5a87167d24ef	O Navvu Chalu [NaaSongsMp33.Com].mp3	e1b98c17	\N	1f976a29-9fa8-4d91-92a6-1d6f470973f3	Telugu
7f75a60e-d728-4d03-8ef2-b0c9b10a8deb	Oh Kshnam Navvuve Visuru [NaaSongs.World] (1).mp3	6bb434b1	\N	8eb5d229-45c9-4670-8b4d-44efa2bda876	Telugu
3381411a-6b3e-442d-aa94-d51cfd007b81	Oh Kshnam Navvuve Visuru [NaaSongs.World].mp3	319940b0	\N	50b49794-7276-4431-a9f5-6aa74f5268eb	Telugu
16415a76-d264-49b6-8e6c-d5485da194d6	Oh Mariya [NaaSongsMp33.Com].mp3	2412fed8	\N	e987d0f9-97ba-4800-bd79-3f7d899065ae	Telugu
4a63ee37-98b1-423d-a634-b4b85a9503eb	Oh Saaiyaan (The Power).mp3	5d3abc78	\N	ff1e21b8-1882-46f4-9fbf-3b5e8c1274b7	Telugu
51d8af28-29be-46d5-bcfe-8b2a4a2aca23	Oka Manasu Movie songs _  Ninna Lenantha Full Video Song HD _ Naga Shaurya _ Niharika Konidela (128  kbps) (YtSaver.xyz).mp3	5ae200e4	\N	b84851e1-2582-4de4-aeb4-413b4cc1d465	Telugu
b5a520ff-7777-4696-a01f-ad5f5f998204	Oka Vaipu Thalupu - SenSongsmp3.Co.mp3	b649de7a	\N	0ac330ac-8fce-479d-8a26-cc46e80446ba	Telugu
d208df95-bc6c-493b-8936-4341cf558d72	Okarikokarai - SenSongsmp3.Co.mp3	f973b178	\N	4c5d3636-8faf-420b-8c32-ca643b813a95	Telugu
5680237c-7bb9-45a4-81f7-99e2b0c39d3b	Okate Jananam [NaaSongsMp33.Com].mp3	583f19ef	\N	7c12a6b7-0caf-428d-a488-5aea90eca4ac	Telugu
9e5bf6dc-5eb0-4bcd-ad92-c8d20a427051	Oke Oka Lokam Nuvve_320(PaglaSongs).mp3	e684177c	\N	cb107eea-4e12-4232-bd8b-9f75f07e0a64	Telugu
df1039a0-4593-4566-8fcb-68035bbf7927	Okey Oka Lokam - SenSongsMp3.Com.mp3	b2a88a08	\N	0c86f012-6327-4bec-aa64-537d02ef5203	Telugu
3e525653-9e26-46dd-945e-4fcd21893621	Okey Oka Lokam Nuvve Song English Lyrics _ Sid Sriram Latest Songs_ Sashi Movie_ Oke Oka Lokam 2k-4k (128  kbps) (YtSaver.xyz).mp3	7b4292a3	\N	8b82b1af-b54f-44d0-a34e-9426f2ca878a	Telugu
4ab970cc-605e-4041-9766-9d9574559b22	Okkachinni [NaaSongsMp33.Com].mp3	f7b57157	\N	8dd9717d-83f9-4221-84dd-42e46dd931ae	Telugu
b9f797ad-65bf-4880-aff4-fc174b25cf75	Okkasari Cheppaleva [NaaSongsMp33.Com].mp3	52cd0d14	\N	7dcc1f90-a728-4907-b2c7-38b9758f00d1	Telugu
679c50b6-ddc6-4749-8784-1c007a4e0cfe	Ooruko Hrudayama [NaaSongsMp33.Com].mp3	a64c0bcd	\N	ce22fc73-f8d1-4a89-a6e2-c45effd54c83	Telugu
43696335-b900-49f5-a42b-96ddb9f80409	Orugalluke Pilla [NaaSongsMp33.Com].mp3	613c9495	\N	22503d86-0ac7-44ab-9829-788b6a5dd659	Telugu
788bfa9f-fa5b-44ec-944c-84d7033276dc	Paagal - SenSongsMp3.Com.mp3	bb6e3ec6	\N	305c716b-a53a-4d6c-9777-5da21beb71be	Telugu
0d9d11b0-78ea-42e1-afca-639ed752ce0d	Pachchadanamey [NaaSongsMp33.Com].mp3	ba247504	\N	705644b0-1197-4aeb-a7be-1e0c75008e7d	Telugu
0399c17d-27fc-4187-8780-67bd79771088	Paddamandi Premalo [NaaSongsMp33.Com].mp3	58439935	\N	8b86e44d-1e37-461c-8873-c81f177c1561	Telugu
a149548c-8880-4c54-9755-e635f72fcf5d	Paina Pataaram.mp3	9687e3bd	\N	a445b5b1-b7c8-4612-abf0-e22cd5453c49	Telugu
fb887bdf-cc51-4b2c-a8e4-96135f618f5b	Pantham Pantham [NaaSongsMp33.Com].mp3	54a28b29	\N	525ef09e-ed8e-4c62-aef3-9a5f41661575	Telugu
61299269-58a0-478b-a7da-911664a99a78	Papa O Papa - SenSongsMp3.Com.mp3	d9b13a07	\N	753752d9-c2a5-415c-9a4d-2712a5b59c56	Telugu
1c58a378-939e-44f8-863b-52a10a074c1b	Param Sundari (Mimi).mp3	eafb8ae3	\N	4c1cd3dd-d2c9-4df6-8ca8-b2b7e0e236a5	Telugu
7917fa6d-6c04-47a3-8fe9-7a04a83d6a56	Paripoke Pitta [NaaSongsMp33.Com].mp3	91f05d0c	\N	56d31b84-2e1d-4405-92ef-5053a38c1f16	Telugu
b582e66e-b66d-45c6-a86a-1e532ab3a31e	Patala Pallakivai (Female)-[NaaSongsMp33.Com].mp3	52a83e19	\N	00fbee95-444c-4970-b093-96df202ad4fe	Telugu
ea8c6032-dfa7-4019-ac9b-8aef403ef6ff	Patala Pallakivai (Male)-[NaaSongsMp33.Com].mp3	16ad5fc4	\N	9e63cd86-1567-4cdb-b9a1-59b7ecd2a032	Telugu
16760d93-7971-4ff5-b980-586705dbeca3	Pattu Pattu-[NaaSongsMp33.Com].mp3	7c78437e	\N	69165b15-60b2-4666-ac96-4cee91ce8043	Telugu
e33507e7-ea42-437f-a4ce-357e93c2ab73	Pelli Pata (Version 1) [NaaSongsMp33.Com].mp3	f06d568a	\N	c57c8d7c-ccf2-4c7b-ae86-809e0041d4bc	Telugu
2bdff70a-ad25-4411-af58-c69edfab8afb	Pelli Pelli Full Video Song _ Kalyana Vaibhogame Telugu Movie _ Naga Shaurya _ Malavika Nair (128  kbps) (YtSaver.xyz).mp3	e0092f07	\N	a00c391b-9b68-4172-bb09-70df6068c98b	Telugu
7e8293e9-6d78-4942-91f9-1701c373152f	Phuljhadiyon (Mimi).mp3	51a20d0b	\N	81f213f5-20f1-439f-a954-096b9e2d6a17	Telugu
6fa2d081-03ea-463b-b204-f387d027ccc4	Poratamey - SenSongsMp3.Com.mp3	5c6ddd64	\N	a0ce4851-3fee-4364-83f2-f688bdff637b	Telugu
f28b301b-f27a-4d52-a5f7-d7f17d80c8c7	Prema Ane [NaaSongsMp33.Com].mp3	eb1291ff	\N	5d5cbac4-8eb7-47c3-80fd-577edab0bbc7	Telugu
14f421b5-e65d-4433-8e9e-f78d2b672b9d	Prema Idi Prema.mp3	92d2a3f8	\N	fc6e81a2-22a7-476e-ad03-fabc02494e58	Telugu
0b8a5bd6-42f7-417c-bc36-550370616a09	Prema Prema [NaaSongsMp33.Com].mp3	ad3062fb	\N	57428496-6e13-4876-bda0-7c7f517cb31c	Telugu
a9bfbb30-d896-4501-80d9-17dcf188e4eb	Priya Priya - SenSongsMp3.Com.mp3	39f531b7	\N	93358fd4-03cf-4d33-bd8f-b2659de6ebc6	Telugu
9867e4b1-3192-43ee-975c-589cb4beaff5	Punnamila [NaaSongsMp33.Com].mp3	0e253f2a	\N	c10746e6-7636-49d0-9c3c-164bfbccd5fb	Telugu
2e0abf16-04ac-4cc2-8407-5fbaef5052d2	Puttibhoomi - SenSongsMp3.Com.mp3	19853233	\N	f3c7d79d-0752-4aa3-9f2b-1626731450a7	Telugu
009a43a9-2f71-4dad-a75e-aa9e6c39a7d9	Raa Raa [NaaSongsMp33.Com].mp3	4eca7ff1	\N	b0b03887-6729-4d45-bedf-d7d6bdb4a71b	Telugu
ce8f3013-6322-495a-94e9-1819c1f0b06d	Raataan Lambiyan (Shershaah).mp3	9c79fcb9	\N	ffb97142-9617-436a-bc50-efcff2166da0	Telugu
5c863a01-ed61-4bad-a5a0-ce709910ca85	Railu Bandini-[NaaSongsMp33.Com].mp3	6e42b83f	\N	220c7ed6-0292-46fe-a131-305f221eceae	Telugu
8e5f358c-428a-4c80-b4e5-c6b175f79576	Ramasakkanodamma-[NaaSongsMp33.Com].mp3	ca8dce2a	\N	fb814efc-7d62-459e-8f55-0b519e3c9b36	Telugu
adfd4737-4805-4878-9ec8-f866c2d47d2d	Ranguladdhukunna - [NaaSongs.World]m.mp3	bfb45365	\N	8dd3e1ca-83bc-4f8f-b62e-37bfbba99899	Telugu
ea5c1217-310b-49c8-b0be-9a701cf5bc6f	Ranjha (Shershaah).mp3	ec339615	\N	a0bd3c9a-9667-404b-bd78-703c43c29fdc	Telugu
1fdde13f-0c49-4f69-93fb-22772603353e	Rathalu Rathalu-[NaaSongsMp33.Com].mp3	06c2775d	\N	3416b4ec-60f2-4e76-83cb-4d0c28270400	Telugu
ea83fa62-f999-4d7e-850a-0fab964a3264	Rathraina [NaaSongsMp33.Com].mp3	f4d7f53e	\N	2915d829-72cb-43e9-a6a3-3ec3914d3416	Telugu
c447861b-b732-40c0-ac38-0acaa80bc7ff	Ravaya-Muddula-Mama--From-Samarasimha-Reddy--S.-P.-Balasubrahmanyam-K.-S.-Chithra.mp3	1990dd6a	\N	45bc03ba-0b54-4fcf-8e2d-aa73e5b842e7	Telugu
591cd0d4-229c-4bf1-ba71-7dba790a0bc0	Rave Na Cheliya [NaaSongsMp33.Com].mp3	3e8e735f	\N	1ec3a430-5b15-414d-8337-4f3b75d39ff0	Telugu
01829b96-a0e9-4ad9-9963-b972dcf06f35	Rechhipodham Brother -- Naasongs.xyz.mp3	f62fbd0b	\N	5737e01f-f8b2-4676-827f-2bfe44ddba5e	Telugu
d9b4f971-cfea-4fb5-82dd-86c07feec001	Rihaayi De (Mimi).mp3	71f28cd4	\N	eb41caba-db37-4538-ad83-a4e80b7794af	Telugu
ac733c83-0382-49f8-9ce5-b194b928ffe3	Roja Roja [NaaSongsMp33.Com].mp3	7c08aa68	\N	aa42e318-b139-4da5-a08a-718ebc612d6a	Telugu
7ba4f110-bddb-498c-abbf-d015ebd98d39	Sandram Lona Neerantha - [NaaSongs.World]m.mp3	9d8c6780	\N	7fd004d3-d280-456f-91f6-b94a64bb1498	Telugu
7b273fbf-561a-4e9b-b2bf-b6adc94d34a9	Sankranthi Sandhalle - SenSongsMp3.Com.mp3	b6e235e0	\N	377fd211-7927-48d2-acdd-46c3c785b0c2	Telugu
ef8b1f72-a3bf-4623-86f3-10fe611ba54a	Sankranthi Sandhalle - [NaaSongs.World].mp3	0c5aebdd	\N	ce573907-f9f8-4524-a35c-bd1394f898c8	Telugu
a8ed295b-b75c-4e5b-a666-6e66f5d5f94c	Saranga Dariya - SenSongsMp3.Com.mp3	19725999	\N	5162023f-f9f0-4343-ac5b-00e7d62f7166	Telugu
07764132-c5b7-471d-a723-bdc10799c113	Scam 1992 Ringtone_320(PaglaSongs).mp3	40372ba6	\N	f309d316-d093-4b14-bdf9-fb6be00e26dd	Telugu
fdab2bda-fdbb-4230-b99d-23badd59fbb4	Seatu Siragadha - SenSongsMp3.Com.mp3	e0a92968	\N	67bc037e-566e-46f4-a309-582e0a2b8685	Telugu
8ec1dcc4-fb14-4a3e-abb9-e98cc6ffe241	Seetimaarr - SenSongsMp3.Com.mp3	a399d8f4	\N	de7731fd-e198-4fb9-b36e-627783c68684	Telugu
894bf526-ffab-483c-b4ab-e82a8e41504d	September Maasam [NaaSongsMp33.Com].mp3	af14d060	\N	fd233f4d-00bb-4515-bc25-cfd4324e28a2	Telugu
a0e42dd7-f55e-4fb9-88c2-8a89e929600b	Shakalaka Baby [NaaSongsMp33.Com].mp3	e20f0762	\N	7133225f-2e5c-458f-be31-18f0bc6cba46	Telugu
35941bb4-5661-44ac-bdfe-7e88cf3dbc11	Shor Machega_320(PaglaSongs).mp3	968e191c	\N	7b181241-540f-4f61-9fc5-258be5eba654	Telugu
f39c36d3-3858-4039-94f5-6a26c801c5ab	Shuddha Brahma [NaaSongsMp33.Com].mp3	cf3b3b96	\N	7a2341e9-683d-4c70-8c59-da0a4f22e56c	Telugu
12274a95-15dd-42b3-b7a8-25adafc416cb	Siggendhukura Mama.mp3	e19f6189	\N	ff48ed6c-92bb-4b1e-8182-1e9070a9a794	Telugu
c6be0129-32f6-4aeb-8402-3d0aef64e8aa	Siggesthondi [NaaSongsMp33.Com].mp3	3b319af2	\N	e6ff56ff-c8ea-4acb-a01f-8c3b2fee8b69	Telugu
84381437-424a-4589-a965-b8d8ade53723	Silaka Silaka - [NaaSongs.World]m.mp3	a0883795	\N	f2b4cbc6-996a-4325-9fe8-0e6bcc05c27a	Telugu
16069ee1-4b0b-473a-b4ec-f3e20ce2f8c0	Silakaa - SenSongsMp3.Com.mp3	1b86152b	\N	d6636e6d-cfed-4b8f-943e-af4cf3bfc4fa	Telugu
d40794d0-18e7-450a-abfb-fc4c4536abf0	Single Kingulam - SenSongsMp3.Com.mp3	d60cd9ef	\N	0963b4d5-73cc-497c-9b47-34f5bfa00aef	Telugu
9d529553-c2ce-407d-a843-0064516f0460	Single Kingulam - [NaaSongs.World].mp3	31e5e958	\N	ff0f85ef-2509-4d9f-b38f-29006441a6fe	Telugu
829b1b09-f198-4e00-8cd0-ad448e25acb5	Snehithudaa [NaaSongsMp33.Com].mp3	d0079a88	\N	78fbf9ad-2dd1-4af0-abbd-2146e2c446fd	Telugu
666b163c-a280-4dde-9b1a-481b8046ea76	So Much To-[NaaSongsMp33.Com].mp3	1765ea5f	\N	5f819d28-430f-42a8-a50f-244286e7c4d4	Telugu
44320bc4-56fe-41d2-9556-4f7a5a75e79a	Sogasuchuda [NaaSongsMp33.Com].mp3	7ea85faf	\N	68497e9d-e9d0-47c3-aa16-fcdac399533b	Telugu
1d620f97-91da-4975-a0ba-559ad8d92c54	Solo Brathuke So Better [NaaSongsMp33.Com].mp3	37733a3a	\N	3de373e5-2d00-47da-8412-5833c9adff29	Telugu
f6deacfc-c0ad-41f4-b2ed-722f32eba783	Something Something [NaaSongsMp33.Com].mp3	14ae0ab4	\N	e9435741-03db-4a5c-84c8-0ec9383a5238	Telugu
55e7490c-ca71-48fa-9535-6ff4200e806e	Sreekaram - SenSongsMp3.Com.mp3	f440585c	\N	630b7912-23ea-4ef0-8c62-eff0f71e3ea9	Telugu
3479d602-2fa0-4043-90ef-614af9a4f733	Sreevaru Doragaaru [NaaSongsMp33.Com].mp3	68c91ebf	\N	f4f68d8d-d150-4e20-b034-5891fba3b27f	Telugu
8cd08557-2613-4589-b9d4-9eb1f2f29493	Sruthi-Neevu--From-Swathi-Kiranam--Vani-Jayaram-K.-S.-Chithra.mp3	5f96f305	\N	1aafb829-7535-4d34-8028-e294515b7885	Telugu
a391702c-dd87-434c-a629-1dffb4273749	Talinka Endukulemma [NaaSongsMp33.Com].mp3	c2d2caae	\N	51fdb458-a5fc-4097-9961-f626db706a69	Telugu
45beb2ef-fb7f-44c6-997c-99ccaef4dbb8	Telavaarutunte - SenSongsMp3.Com.mp3	69b7e4c8	\N	607d8a5d-1dae-422a-b88d-0a7cc122b13c	Telugu
f2c66f15-56a5-42f9-b3a1-5c24f8bbed22	Teliyade Teliyade - [NaaSongs.World].mp3	5def7e37	\N	4cc21ab3-6cc8-47d8-bf84-6c742bc597f3	Telugu
db7e3fba-6f2f-4491-8883-0675a3a7480d	Tharagathi Gadhi - [NaaSongs.World].mp3	0c8eb126	\N	c5a23c83-31cd-4ef4-9951-37480e548c26	Telugu
5f0c12bf-257f-4278-9feb-adc01226085a	The Theme Of Katari [NaaSongs.World].mp3	39b6344e	\N	0633251a-de6d-44a3-ac47-e47369d65f5b	Telugu
39429810-9c40-45fb-a682-93ca33e36563	Toli Pilupe [NaaSongsMp33.Com].mp3	f40133e4	\N	1148de91-3e48-4ff0-91a1-de4c85ce1506	Telugu
2ef50ebd-09a4-4b91-8c72-a47af312f580	Tujhe-Bhula-Diya-Phir-Shekhar-Ravjiani-Mohit-Chauhan-Shruti-Pathak.mp3	3ef47aae	\N	1ce81fab-080c-4333-931a-83699915e1ac	Telugu
9f141111-ad8b-4e15-b27e-508347ef95de	Undiporaadhey-Naasongs.me.mp3	8d66491d	\N	a5516666-d387-4de1-b59a-a99bb186536e	Telugu
5b31d224-6fe2-4930-947e-b8dc7974abb4	Unnamata Cheppanivu [NaaSongsMp33.Com].mp3	64c91f32	\N	78fa05ee-9029-481c-93b4-1e8b5b5bbae8	Telugu
d7a2c302-d9bb-4a05-84fa-9d09429c31f2	Uttimeeda Koodu [NaaSongsMp33.Com].mp3	b39b4659	\N	bc3bdd98-6990-47ee-8549-e7795f8e9f4a	Telugu
c541192c-354c-4a75-bff1-587f3f7666e9	Vaalu Kanula Daana [NaaSongsMp33.Com].mp3	479e4ac0	\N	ad2bfdf7-ab6c-4ab4-b5e7-85e919d885c6	Telugu
9f2535cf-36b3-4b56-ba6b-997dbdd3d067	Vacchindi Palapitta [NaaSongsMp33.Com].mp3	1fb38588	\N	fb863583-4df9-48fb-86a2-dc8c36d08985	Telugu
d963ec32-105e-460b-b481-df63e34c6161	Valla Valla [NaaSongsMp33.Com].mp3	27b04013	\N	1a00f0e4-5e40-4ad0-bdda-2d68449d57d5	Telugu
c1d73136-ed87-454f-bbe0-3265661842f7	Vedanalona [NaaSongsMp33.Com].mp3	1f68dd44	\N	6b98cef2-9a30-4654-a01b-ca5a4370f4d0	Telugu
1b600c39-fc35-4dda-8105-f5095b3bad23	Veedhikoka Jaathi - SenSongsMp3.Com.mp3	c5f160bc	\N	9f96be90-f53e-40cc-8353-a5becabb19dc	Telugu
281b7a4a-d935-40fe-b5a9-7d4a00f0460f	Veyi Kannulatho [NaaSongsMp33.Com].mp3	c7af3a87	\N	28b34016-ed7c-492e-94fc-9e205e2bc721	Telugu
4dcc038d-8ea8-48cc-ac78-7dfcec4fc221	We Have A Romeo [NaaSongsMp33.Com].mp3	bf8148ba	\N	65803cfb-5ece-4051-a7f8-a1550bdcb521	Telugu
4a7d866d-5300-4a1f-8b03-0a2475c258cf	Ye Kannulu Choodani - SenSongsMp3.Com.mp3	9465d700	\N	cc7a43b7-dad8-49f9-a5ed-11c70fea5555	Telugu
6ad5f73d-d5ea-49b4-8b8c-599cf90d9c65	Ye Kannulu Choodani - [NaaSongs.World].mp3	f0143861	\N	0d0b841b-cb87-4d92-9970-44fb8f7af4c9	Telugu
e73b0530-8253-4388-b353-e4a41220479b	Ye Swasalo-[NaaSongsMp33.Com].mp3	fd0da61d	\N	7af1704e-01b4-4813-b70b-80b9c0fac06e	Telugu
3d318bb3-3711-4f29-9a88-7571feac39a3	Yede Yedeydey [NaaSongsMp33.Com].mp3	52829ef7	\N	b915a434-1a6b-4b37-92c4-70abe31d81f6	Telugu
a7b775b1-e48e-4b87-b154-46cf51ae295a	Yeh Oore Chinadaana [NaaSongsMp33.Com].mp3	e073ac9a	\N	ab50b2d9-1560-4343-9c1d-00aa58b2583c	Telugu
897ef71b-8615-49f3-add8-33fc0ad13bd3	Yekantanga [NaaSongsMp33.Com].mp3	8065614f	\N	3c04b445-df72-4da4-bd37-afa2d1aa054e	Telugu
45cfa7cc-fc40-4645-a221-d4ccebff6601	Yekkada Vundhoganee [NaaSongsMp33.Com].mp3	ad7306cc	\N	3aa37223-0a94-4ce3-9ae0-78451aac5035	Telugu
c223a52e-e02b-45f6-8b9f-88bd8f0363ca	Yekkada Vunna [NaaSongsMp33.Com].mp3	c1b4ec59	\N	201ed187-2921-43d2-8701-9f5ebe0f2205	Telugu
c62b6b7c-6699-4d88-8173-4976c903a827	Yekkado Putti [NaaSongsMp33.Com].mp3	e2c581d1	\N	701e2bb3-8b88-4a45-8242-d263cc1a4905	Telugu
57939471-5cc3-4040-84dd-6d6028dda779	Yemo Avunemo [NaaSongsMp33.Com].mp3	2862ae65	\N	3486402c-9585-4160-a007-88de9f310e4e	Telugu
\.


--
-- Name: tune tune_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tune
    ADD CONSTRAINT tune_code_key UNIQUE (code);


--
-- Name: tune tune_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tune
    ADD CONSTRAINT tune_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

