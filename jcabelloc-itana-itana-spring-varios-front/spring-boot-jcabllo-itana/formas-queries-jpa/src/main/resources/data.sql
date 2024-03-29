DROP TABLE IF EXISTS usuario;

CREATE TABLE usuario (
	id INT,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	email VARCHAR(50),
	genero VARCHAR(50),
	direccion VARCHAR(50)
);

INSERT INTO usuario (id, nombre, apellido, email, genero, direccion) VALUES
(1, 'Sylvan', 'Guerrin', 'sguerrin0@elpais.com', 'Male', '919 Aberg Park'),
(2, 'Konrad', 'Hanmer', 'khanmer1@posterous.com', 'Male', '5140 Golf View Park'),
(3, 'Kristien', 'Maryman', 'kmaryman2@4shared.com', 'Female', '65290 Killdeer Court'),
(4, 'Kellen', 'Glanville', 'kglanville3@google.com', 'Male', '737 Northridge Crossing'),
(5, 'Ernestine', 'Folkerd', 'efolkerd4@army.mil', 'Genderfluid', '6375 Coolidge Drive'),
(6, 'Vincents', 'Attiwill', 'vattiwill5@usgs.gov', 'Male', '2 Linden Street'),
(7, 'Sim', 'Broxap', 'sbroxap6@google.de', 'Male', '73621 Marcy Terrace'),
(8, 'Fleming', 'Skeeles', 'fskeeles7@twitter.com', 'Male', '269 Rockefeller Parkway'),
(9, 'Kristopher', 'McGruar', 'kmcgruar8@illinois.edu', 'Male', '406 Melody Street'),
(10, 'Heida', 'Aggus', 'haggus9@ted.com', 'Female', '3706 New Castle Alley'),
(11, 'Bernardine', 'Lardez', 'blardeza@ucsd.edu', 'Genderfluid', '28628 Almo Terrace'),
(12, 'Lou', 'Pancoast', 'lpancoastb@cbsnews.com', 'Male', '0150 Jackson Street'),
(13, 'Hamlin', 'Spiaggia', 'hspiaggiac@joomla.org', 'Male', '5716 David Street'),
(14, 'Shandie', 'Haveline', 'shavelined@cloudflare.com', 'Female', '9 Warner Crossing'),
(15, 'Jess', 'Osorio', 'josorioe@issuu.com', 'Female', '21 Novick Center'),
(16, 'Durant', 'Cotelard', 'dcotelardf@bloglines.com', 'Male', '8718 Mosinee Circle'),
(17, 'Freddy', 'Arons', 'faronsg@va.gov', 'Male', '42 Namekagon Trail'),
(18, 'Brandie', 'Keatley', 'bkeatleyh@devhub.com', 'Female', '1 Vernon Drive'),
(19, 'Eveline', 'Haly', 'ehalyi@usatoday.com', 'Female', '9094 Burning Wood Avenue'),
(20, 'Harman', 'Hayne', 'hhaynej@eepurl.com', 'Male', '2 Hudson Road'),
(21, 'Pat', 'Girodias', 'pgirodiask@homestead.com', 'Female', '3 Starling Pass'),
(22, 'Nilson', 'Garstan', 'ngarstanl@pinterest.com', 'Male', '68 Monument Street'),
(23, 'Leigh', 'Latimer', 'llatimerm@wikispaces.com', 'Male', '9351 Fairfield Crossing'),
(24, 'Ravi', 'Axelbey', 'raxelbeyn@yahoo.co.jp', 'Male', '8170 8th Lane'),
(25, 'Lorenza', 'O''Caherny', 'locahernyo@free.fr', 'Female', '33362 Evergreen Park'),
(26, 'Lane', 'Cheal', 'lchealp@imgur.com', 'Female', '19796 Mallory Center'),
(27, 'Mable', 'Bollans', 'mbollansq@webnode.com', 'Female', '23057 Anniversary Court'),
(28, 'Bertrand', 'Dell Casa', 'bdellcasar@fotki.com', 'Male', '85678 Dayton Avenue'),
(29, 'Dimitry', 'Dunckley', 'ddunckleys@free.fr', 'Male', '7137 Sheridan Street'),
(30, 'Jeremie', 'Feathersby', 'jfeathersbyt@about.com', 'Male', '649 Reindahl Pass'),
(31, 'Pat', 'Derkes', 'pderkesu@bandcamp.com', 'Male', '3 Delaware Place'),
(32, 'Amanda', 'Tirrell', 'atirrellv@freewebs.com', 'Female', '48 Linden Trail'),
(33, 'Kinnie', 'Towers', 'ktowersw@gnu.org', 'Male', '87338 Debra Pass'),
(34, 'Giselbert', 'Huyche', 'ghuychex@amazon.co.uk', 'Male', '813 Swallow Crossing'),
(35, 'Kerk', 'Hartill', 'khartilly@smugmug.com', 'Male', '0 Briar Crest Plaza'),
(36, 'Catriona', 'Clowton', 'cclowtonz@ucla.edu', 'Female', '18698 Spenser Avenue'),
(37, 'Allix', 'Aps', 'aaps10@smugmug.com', 'Female', '6725 Shasta Center'),
(38, 'Reinhard', 'Fleckney', 'rfleckney11@xinhuanet.com', 'Male', '7 Mesta Road'),
(39, 'Leigh', 'Trase', 'ltrase12@indiatimes.com', 'Male', '6184 Moose Parkway'),
(40, 'Clement', 'Kenway', 'ckenway13@techcrunch.com', 'Male', '6 Mandrake Street'),
(41, 'Ethan', 'Balsdone', 'ebalsdone14@google.es', 'Male', '3 Sunnyside Court'),
(42, 'Gisela', 'Westmoreland', 'gwestmoreland15@kickstarter.com', 'Female', '2 6th Lane'),
(43, 'Monah', 'Drable', 'mdrable16@youtube.com', 'Female', '27920 Autumn Leaf Point'),
(44, 'Cassius', 'Haking', 'chaking17@slate.com', 'Male', '54426 Green Ridge Way'),
(45, 'Caspar', 'Macourek', 'cmacourek18@umich.edu', 'Male', '02 Esch Drive'),
(46, 'Waring', 'MacBrearty', 'wmacbrearty19@chron.com', 'Agender', '497 Westend Terrace'),
(47, 'Jaquenette', 'Corbet', 'jcorbet1a@ebay.com', 'Female', '60 Waxwing Alley'),
(48, 'Chrisse', 'Doche', 'cdoche1b@imgur.com', 'Male', '97 Roxbury Way'),
(49, 'Chiarra', 'Ham', 'cham1c@msn.com', 'Female', '8046 Hansons Avenue'),
(50, 'Corty', 'Eagar', 'ceagar1d@tmall.com', 'Male', '45912 Steensland Place'),
(51, 'Anne-corinne', 'Braven', 'abraven1e@netlog.com', 'Female', '5513 Anthes Trail'),
(52, 'Maryl', 'Dishmon', 'mdishmon1f@wikispaces.com', 'Female', '61 South Street'),
(53, 'Iseabal', 'Dibsdale', 'idibsdale1g@bravesites.com', 'Female', '57 Milwaukee Avenue'),
(54, 'Saxon', 'Stockin', 'sstockin1h@chronoengine.com', 'Genderqueer', '8472 Swallow Trail'),
(55, 'Giffy', 'Larimer', 'glarimer1i@theglobeandmail.com', 'Male', '89820 Duke Circle'),
(56, 'Bee', 'Pippard', 'bpippard1j@dailymotion.com', 'Female', '6925 Bartillon Circle'),
(57, 'Madlen', 'Fluger', 'mfluger1k@wired.com', 'Non-binary', '085 Paget Trail'),
(58, 'Jeanne', 'Bowater', 'jbowater1l@msn.com', 'Female', '4 Artisan Hill'),
(59, 'Auberon', 'Blakelock', 'ablakelock1m@ow.ly', 'Genderqueer', '8394 Eastlawn Alley'),
(60, 'Hadrian', 'Stow', 'hstow1n@netlog.com', 'Male', '340 Hanover Junction'),
(61, 'Ced', 'Kermode', 'ckermode1o@live.com', 'Male', '28045 Arapahoe Circle'),
(62, 'Benjamen', 'Matyashev', 'bmatyashev1p@purevolume.com', 'Male', '0 Ohio Road'),
(63, 'Kristina', 'Reinger', 'kreinger1q@ucoz.ru', 'Female', '80241 Buell Hill'),
(64, 'Corny', 'Hilary', 'chilary1r@themeforest.net', 'Male', '9 Walton Terrace'),
(65, 'Nikola', 'Elegood', 'nelegood1s@psu.edu', 'Male', '7 Sugar Hill'),
(66, 'Kirbee', 'Fishby', 'kfishby1t@exblog.jp', 'Female', '61 Morningstar Pass'),
(67, 'Margy', 'Ghilardi', 'mghilardi1u@usgs.gov', 'Female', '8714 Fordem Lane'),
(68, 'Jerrie', 'Fardon', 'jfardon1v@guardian.co.uk', 'Male', '52 Walton Avenue'),
(69, 'Doria', 'Dalglish', 'ddalglish1w@yelp.com', 'Female', '695 Waubesa Pass'),
(70, 'Vinnie', 'Dedham', 'vdedham1x@ox.ac.uk', 'Male', '843 Rockefeller Trail'),
(71, 'Minne', 'Boyle', 'mboyle1y@cpanel.net', 'Female', '3343 Westridge Avenue'),
(72, 'Sauveur', 'Shoorbrooke', 'sshoorbrooke1z@posterous.com', 'Male', '175 Clove Trail'),
(73, 'Caro', 'Dumphry', 'cdumphry20@moonfruit.com', 'Female', '2402 Hallows Lane'),
(74, 'Culver', 'Plews', 'cplews21@twitter.com', 'Genderqueer', '4 Washington Way'),
(75, 'Weylin', 'Vigus', 'wvigus22@discuz.net', 'Male', '71 Washington Park'),
(76, 'Richart', 'Geekin', 'rgeekin23@wix.com', 'Male', '1 Dwight Way'),
(77, 'Rose', 'Sharpus', 'rsharpus24@mozilla.org', 'Female', '62471 Coolidge Circle'),
(78, 'Buffy', 'Daouze', 'bdaouze25@theguardian.com', 'Female', '0 Shasta Hill'),
(79, 'Thomasine', 'Whitney', 'twhitney26@plala.or.jp', 'Genderqueer', '76175 Kingsford Avenue'),
(80, 'Dayle', 'Culwen', 'dculwen27@exblog.jp', 'Female', '994 Linden Drive'),
(81, 'Alexandros', 'Ruprich', 'aruprich28@npr.org', 'Male', '58 Northland Circle'),
(82, 'Vickie', 'Harman', 'vharman29@wunderground.com', 'Female', '4 Warbler Circle'),
(83, 'Anatol', 'Petegre', 'apetegre2a@jugem.jp', 'Male', '793 Onsgard Way'),
(84, 'Deirdre', 'Stone', 'dstone2b@imdb.com', 'Female', '8 Maple Wood Court'),
(85, 'Fredek', 'Gaffney', 'fgaffney2c@arstechnica.com', 'Male', '05692 Randy Place'),
(86, 'Teressa', 'Heskey', 'theskey2d@apache.org', 'Female', '43 Gulseth Drive'),
(87, 'Barnebas', 'Decreuze', 'bdecreuze2e@purevolume.com', 'Male', '87193 Morningstar Park'),
(88, 'Germain', 'Tribble', 'gtribble2f@phpbb.com', 'Female', '15 Bellgrove Point'),
(89, 'Nollie', 'Schorah', 'nschorah2g@apple.com', 'Female', '0 Sutherland Alley'),
(90, 'Rozina', 'Pales', 'rpales2h@independent.co.uk', 'Female', '49128 Browning Pass'),
(91, 'Sofia', 'Brotherhood', 'sbrotherhood2i@goodreads.com', 'Agender', '88 Harbort Circle'),
(92, 'Porty', 'Ketley', 'pketley2j@usatoday.com', 'Male', '6187 Amoth Park'),
(93, 'Morty', 'Doers', 'mdoers2k@newsvine.com', 'Male', '4296 Stone Corner Terrace'),
(94, 'Bailie', 'Crews', 'bcrews2l@infoseek.co.jp', 'Male', '425 Banding Avenue'),
(95, 'Kermit', 'Hagger', 'khagger2m@desdev.cn', 'Male', '7 Browning Court'),
(96, 'Eugene', 'Shopcott', 'eshopcott2n@sourceforge.net', 'Genderfluid', '531 Di Loreto Road'),
(97, 'Timmie', 'Cowie', 'tcowie2o@sogou.com', 'Male', '67653 Ramsey Crossing'),
(98, 'Trudey', 'McEntagart', 'tmcentagart2p@smugmug.com', 'Bigender', '56976 Algoma Park'),
(99, 'Olga', 'Wride', 'owride2q@homestead.com', 'Female', '73 Boyd Street'),
(100, 'Olly', 'Neumann', 'oneumann2r@weibo.com', 'Female', '73850 Ronald Regan Alley');