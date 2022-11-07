USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist_name, album_name, release_date, genre, sales)
VALUES ('Michael Jackson','Thriller', 1982,'funk', 50.2),
       ('AC/DC','Back In Black', 1980, 'hard rock', 30.1),
       ('Whitney Houston',	'The Bodyguard',1992,	'R&B',28.7),
       ('Pink Floyd','The Dark Side of the Moon',	1973,'progressive rock',24.8),
       ('Eagles','Their Greatest Hits (1971–1975)', 1976,'progressive rock',41.2),
       ('Eagles','Hotel California', 1976, 'soft rock', 31.8),
       ('Shania Twain','Come On Over', 1997, 'country pop', 30.4),
       ('Fleetwood Mac','Rumours',1977,'Soft rock',29.3),
       ('Bee Gees','Saturday Night Fever',1977,	'Disco',22.1),
       ('Led Zeppelin','Led Zeppelin IV', 1971,'hard rock', 30.4),
       ('Michael Jackson',	'Bad',	1987,'Pop',21.1),
       ('Meat Loaf','Bat Out of Hell',	1977,'Hard rock',22),
       ('Alanis Morissette','Jagged Little Pill',1995,'Alternative rock',25.4),
       ('Various artists','Dirty Dancing',1987,'Pop',24.1),
       ('Celine Dion','Falling into You',1996,'Pop',21.1),
       ('Adele','21',2011,'Pop',27.1),
       ('The Beatles','1',2000,'Rock',23.2),
       ('Metallica','Metallica',1991,'Heavy metal',22.7),
       ('Celine Dion','Lets Talk About Love',	1997,'Pop',19.5),
       ('Bob Marley & The Wailers','Legend: The Best of Bob Marley',1984,'Reggae', 22.9),
       ('Guns N Roses','Appetite for Destruction',1987,'Hard rock',22.8),
       ('Bruce Springsteen','Born in the U.S.A.',1984,'Heartland rock',22),
       ('ABBA',	'Gold: Greatest Hits',1992,'Pop',21.6),
       ('Dire Straits',	'Brothers in Arms',	1985,'Roots rock',21.1),
       ('Santana',	'Supernatural',	1999,'Latin rock',20.8),
       ('Madonna','The Immaculate Collection',1990,'Pop',19.8),
       ('Pink Floyd','The Wall',1979,'Progressive rock',18.9),
       ('The Beatles','Sgt. Peppers',1967,'Rock',18.3),
       ('Michael Jackson','Dangerous',1991,'New jack swing',17.0),
       ('The Beatles','Abbey Road',1969,'Rock',16.9);


