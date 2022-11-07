USE codeup_test_db;

SELECT * FROM albums;

SELECT * FROM albums WHERE artist_name = 'Pink Floyd';

SELECT release_date FROM albums WHERE album_name = 'Sgt. Peppers';

SELECT genre FROM albums WHERE album_name = 'Back in Black';

SELECT album_name, release_date FROM albums WHERE release_date BETWEEN 1990 AND 2000 ORDER BY release_date;

SELECT 'Less than 20 million: ' AS caption, album_name, sales FROM albums WHERE sales < 20 ORDER BY sales DESC;

SELECT album_name FROM albums WHERE genre = 'Rock';
