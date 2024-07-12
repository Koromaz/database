CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);


CREATE TABLE IF NOT EXISTS Genre_performer (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	performer_id INTEGER NOT NULL REFERENCES Performer(id)
);

create table if not exists Album (
	id SERIAL PRIMARY KEY,
	"year of release" YEAR NOT NULL CHECK ("year of release" > 1990)
);

create table if not exists Performer_Album (
	id SERIAL PRIMARY KEY,
	performer_id INTEGER NOT NULL REFERENCES Performer(id),
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

create table if not exists Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	"year of release" YEAR NOT NULL CHECK ("year of release" > 1990)
);

create table if not exists Track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) not null,
	duration INTEGER NOT NULL CHECK (duration > 60),
    album_id INTEGER NOT NULL REFERENCES Album(id)
);


create table if not exists Collections_track (
	id SERIAL PRIMARY KEY,
	collections_id INTEGER NOT NULL REFERENCES Collections(id),
	track_id INTEGER NOT NULL REFERENCES Track(id)
);

