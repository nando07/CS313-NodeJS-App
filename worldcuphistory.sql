
CREATE TABLE team 
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(100) NOT NULL,
    group_name VARCHAR(100) NOT NULL,
    worldcup INTEGER REFERENCES worldcup(id)
);

CREATE TABLE matches 
(
    id SERIAL PRIMARY KEY NOT NULL,
    match_date DATE NOT NULL,
    home_team INTEGER REFERENCES team (id),
    away_team INTEGER REFERENCES team (id),
    home_team_goals INTEGER NOT NULL,
    away_team_goals INTEGER NOT NULL
);

CREATE TABLE worldcup 
(
    id SERIAL PRIMARY KEY NOT NULL,
    country VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL
);

INSERT INTO worldcup(country, year) VALUES ('Uruguay', 1930);
INSERT INTO worldcup(country, year) VALUES ('Italy', 1934);
INSERT INTO worldcup(country, year) VALUES ('France', 1938);
INSERT INTO worldcup(country, year) VALUES ('Brazil', 1950);
INSERT INTO worldcup(country, year) VALUES ('Switzerland', 1954);
INSERT INTO worldcup(country, year) VALUES ('Sweden', 1958);
INSERT INTO worldcup(country, year) VALUES ('Chile', 1962);
INSERT INTO worldcup(country, year) VALUES ('England', 1966);
INSERT INTO worldcup(country, year) VALUES ('Mexico', 1970);
INSERT INTO worldcup(country, year) VALUES ('West Germany', 1974);
INSERT INTO worldcup(country, year) VALUES ('Argentina', 1978);
INSERT INTO worldcup(country, year) VALUES ('Spain', 1982);
INSERT INTO worldcup(country, year) VALUES ('Mexico', 1986);
INSERT INTO worldcup(country, year) VALUES ('Italy', 1990);
INSERT INTO worldcup(country, year) VALUES ('United States', 1994);
INSERT INTO worldcup(country, year) VALUES ('France', 1998);
INSERT INTO worldcup(country, year) VALUES ('South Korea and Japan', 2002);
INSERT INTO worldcup(country, year) VALUES ('Germany', 2006);
INSERT INTO worldcup(country, year) VALUES ('South Africa', 2010);
INSERT INTO worldcup(country, year) VALUES ('Brazil', 2014);
INSERT INTO worldcup(country, year) VALUES ('Russia', 2018);

CREATE USER worldcupuser WITH PASSWORD 'fego';

GRANT ALL PRIVILEGES ON team, matches, worldcup TO worldcupuser;
GRANT USAGE, SELECT ON SEQUENCE worldcup_id_seq, matches_id_seq, team_id_seq TO worldcupuser

INSERT INTO team(name, code, group_name, )
