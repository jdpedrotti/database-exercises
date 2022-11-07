USE codeup_test_db;


CREATE TABLE albums (
                        album_id INT NOT NULL AUTO_INCREMENT,
                        artist_name VARCHAR(65) NOT NULL,
                        album_name VARCHAR(99) NOT NULL,
                        release_date INT NOT NULL,
                        genre VARCHAR(35) NOT NULL,
                        sales DOUBLE NOT NULL,
                        PRIMARY KEY (album_id)
);