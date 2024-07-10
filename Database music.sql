CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer (
	id SERIAL PRIMARY KEY,
	name varchar(60) NOT NULL
);


CREATE TABLE IF NOT EXISTS Genre_performer (
	id SERIAL PRIMARY KEY,
	genre_id integer NOT NULL REFERENCES Genre(id),
	performer_id integer NOT NULL REFERENCES Performer(id)
);

create table if not exists Album (
	id SERIAL primary key,
	"year of release" date not null
);

create table if not exists Performer_Album (
	id SERIAL primary key,
	performer_id integer NOT NULL REFERENCES Performer(id),
	album_id integer NOT NULL REFERENCES Album(id)
);

create table if not exists Collection (
	id SERIAL primary key,
	name varchar(60) not null,
	"year of release" date not null
);

create table if not exists Track (
	id SERIAL primary key,
	name varchar(60) not null,
	duration time not null
);


create table if not exists Collection_track (
	id SERIAL primary key,
	collection_id integer NOT NULL REFERENCES Collection(id),
	track_id integer NOT NULL REFERENCES Track(id)
);