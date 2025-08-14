CREATE TABLE IF NOT EXISTS  genres(
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists(
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL 
);

CREATE TABLE IF NOT EXISTS  artist_genres(
	id_artist INTEGER REFERENCES artists(id),
	id_genre INTEGER REFERENCES genres(id),
	CONSTRAINT pk PRIMARY KEY(id_artist,id_genre)
);

CREATE TABLE IF NOT EXISTS  albums(
	id SERIAL PRIMARY KEY,
	title VARCHAR(80) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS album_artists(
	id_album INTEGER REFERENCES albums(id),
	id_artist INTEGER REFERENCES artists(id),
	CONSTRAINT pk1 PRIMARY KEY(id_album,id_artist)
);

CREATE TABLE IF NOT EXISTS tracks(
	id SERIAL PRIMARY KEY,
	title VARCHAR(80) NOT NULL,
	track_time TIME NOT NULL,
	id_album INTEGER REFERENCES albums(id)
)

CREATE TABLE IF NOT EXISTS collections(
	id SERIAL PRIMARY KEY,
	title VARCHAR(80) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_tracks(
	id_collection INTEGER REFERENCES collections(id),
	id_track INTEGER REFERENCES tracks(id),
	CONSTRAINT pk2 PRIMARY KEY(id_collection,id_track)
);