USE codeup_test_db;

SELECT * FROM albums;

SELECT album_name FROM albums WHERE release_date < 1980;

SELECT album_name FROM albums WHERE artist_name = 'Michael Jackson';

UPDATE albums SET sales = sales * 10 WHERE album_id > 0;

SELECT sales FROM albums WHERE sales > 1;

UPDATE albums SET release_date = (1800) WHERE release_date < 1980;

SELECT * FROM albums WHERE release_date < 1980;

UPDATE albums SET artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';

SELECT * FROM albums WHERE artist_name = 'Peter Jackson';