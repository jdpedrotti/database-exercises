USE codeup_test_db;

SELECT album_name FROM albums WHERE artist_name = 'Pink Floyd';

SELECT release_date FROM albums WHERE album_name = 'Sgt. Peppers';

SELECT genre FROM albums WHERE album_name = 'Back in Black';

SELECT album_name FROM albums WHERE release_date > 1989;

SELECT album_name FROM albums WHERE sales < 20;

SELECT album_name FROM albums WHERE genre = 'Rock';