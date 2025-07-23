# To Import CSV Files - paste these lines one by one after creating tables. 
Note : change the path to the path where you have stored the csv files
COPY artist FROM '/full/path/artist.csv' DELIMITER ',' CSV HEADER;
COPY album FROM '/full/path/album.csv' DELIMITER ',' CSV HEADER;
COPY customer FROM '/full/path/customer.csv' DELIMITER ',' CSV HEADER;
COPY employee FROM '/full/path/employee.csv' DELIMITER ',' CSV HEADER;
COPY genre FROM '/full/path/genre.csv' DELIMITER ',' CSV HEADER;
COPY invoive FROM '/full/path/invoice.csv' DELIMITER ',' CSV HEADER;
COPY invoice_line FROM '/full/path/invoice_line.csv' DELIMITER ',' CSV HEADER;
COPY media_type FROM '/full/path/media_type.csv' DELIMITER ',' CSV HEADER;
COPY playlist FROM '/full/path/playlist.csv' DELIMITER ',' CSV HEADER;
COPY playlist_track FROM '/full/path/playlist_track.csv' DELIMITER ',' CSV HEADER;
COPY track FROM '/full/path/track.csv' DELIMITER ',' CSV HEADER;
