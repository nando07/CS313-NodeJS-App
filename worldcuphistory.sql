
CREATE TABLE worldcup 
(
    id SERIAL PRIMARY KEY NOT NULL,
    country VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL,
    champion VARCHAR(100),
    runner_up VARCHAR(100) 
);

CREATE TABLE team 
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(100) NOT NULL,
    group_name VARCHAR(100) NOT NULL,
    worldcup INTEGER REFERENCES worldcup(id)
);

-- ADD match type (group stage, round of 16 etc...)
CREATE TABLE matches 
(
    id SERIAL PRIMARY KEY NOT NULL,
    match_date DATE NOT NULL,
    home_team INTEGER REFERENCES team (id),
    away_team INTEGER REFERENCES team (id),
    home_team_goals INTEGER NOT NULL,
    away_team_goals INTEGER NOT NULL
);



INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Uruguay', 1930, 'Uruguay', 'Argentina');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Italy', 1934, 'Italy', 'Czechoslovakia');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('France', 1938, 'Italy', 'Hungary');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Brazil', 1950, 'Uruguay', 'Brazil');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Switzerland', 1954, 'West Germany', 'Hungary');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Sweden', 1958, 'Brazil', 'Sweden');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Chile', 1962, 'Brazil', 'Czechoslovakia');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('England', 1966, 'England', 'West Germany');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Mexico', 1970, 'Brazil', 'Italy');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('West Germany', 1974, 'West Germany', 'Netherlands');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Argentina', 1978, 'Argentina', 'Netherlands');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Spain', 1982, 'Italy', 'West Germany');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Mexico', 1986, 'Argentina', 'West Germany');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Italy', 1990, 'West Germany', 'Argentina');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('United States', 1994, 'Brazil', 'Italy');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('France', 1998, 'France', 'Brazil');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('South Korea and Japan', 2002, 'Brazil', 'Germany');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Germany', 2006, 'Italy', 'France');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('South Africa', 2010, 'Spain', 'Netherlands');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Brazil', 2014, 'Germany', 'Argentina');
INSERT INTO worldcup(country, year, champion, runner_up) VALUES ('Russia', 2018, 'N/A', 'N/A');


/* 2014 WORLD CUP - BRAZIL */
-- Group A
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Cameroon', 'CMR', 'A', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Croatia', 'CRO', 'A', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Mexico', 'MEX', 'A', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Brazil', 'BRA', 'A', 20);
-- Group B
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Spain', 'ESP', 'B', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Netherlands', 'NED', 'B', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Australia', 'AUS', 'B', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Chile', 'CHI', 'B', 20);
-- Group C
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ivory Coast', 'CIV', 'B', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Japan', 'JPN', 'B', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Greece', 'GRE', 'B', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Colombia', 'COL', 'B', 20);
-- Group D
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Costa Rica', 'CRC', 'D', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Italy', 'ITA', 'D', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('England', 'ENG', 'D', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Uruguay', 'URU', 'D', 20);
-- Group E
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Honduras', 'HON', 'E', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('France', 'FRA', 'E', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Switzerland', 'SUI', 'E', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ecuador', 'ECU', 'E', 20);
-- Group F
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Nigeria', 'NGA', 'F', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Bosnia-Herzegovina', 'BIH', 'F', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Iran', 'IRN', 'F', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Argentina', 'ARG', 'F', 20);
-- Group G
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ghana', 'GHA', 'G', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Germany', 'GER', 'G', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Portugal', 'POR', 'G', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('United States', 'USA', 'G', 20);
-- Group H
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Algeria', 'ALG', 'H', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('South Korea', 'KOR', 'H', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Belguim', 'BEL', 'H', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Russia', 'RUS', 'H', 20);

/* 2018 WORLD CUP - RUSSIA */
-- Group A
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Egypt', 'EGY', 'A', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Russia', 'RUS', 'A', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Saudi Arabia', 'KSA', 'A', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Uruguay', 'URU', 'A', 21);
-- Group B
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Moroco', 'MAR', 'B', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Spain', 'ESP', 'B', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Portugal', 'POR', 'B', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Iran', 'IRN', 'B', 21);
-- Group C
INSERT INTO team(name, code, group_name, worldcup) VALUES ('France', 'FRA', 'C', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Denmark', 'DEN', 'C', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Australia', 'AUS', 'C', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Peru', 'PER', 'C', 21);
-- Group D
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Nigeria', 'NGA', 'D', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Croatia', 'CRO', 'D', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Iceland', 'ISL', 'D', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Argentina', 'ARG', 'D', 21);
-- Group E
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Costa Rica', 'CRC', 'E', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Switzerland', 'SUI', 'E', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Serbia', 'SRB', 'E', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Brazil', 'BRA', 'E', 21);
-- Group F
INSERT INTO team(name, code, group_name, worldcup) VALUES ('South Korea', 'KOR', 'F', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Germany', 'GER', 'F', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Sweden', 'SWE', 'F', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Mexico', 'MEX', 'F', 21);
-- Group G
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Tunisia', 'TUN', 'G', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Panama', 'PAN', 'G', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Belguim', 'BEL', 'G', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('England', 'ENG', 'G', 21);
-- Group H
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Senegal', 'SEN', 'H', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Japan', 'JPN', 'H', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Poland', 'POL', 'H', 21);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Colombia', 'COL', 'H', 21);

ALTER TABLE worldcup ADD COLUMN champion VARCHAR(100);

CREATE USER worldcupuser WITH PASSWORD 'fego';

GRANT ALL PRIVILEGES ON team, matches, worldcup TO worldcupuser;
GRANT USAGE, SELECT ON SEQUENCE worldcup_id_seq, matches_id_seq, team_id_seq TO worldcupuser

INSERT INTO team(name, code, group_name, )
