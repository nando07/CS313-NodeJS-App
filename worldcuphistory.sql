
CREATE TABLE worldcup 
(
    id SERIAL PRIMARY KEY NOT NULL,
    country VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL,
    champion VARCHAR(100),
    runner_up VARCHAR(100),
    champion_code VARCHAR(100),
    runner_up_code VARCHAR(100),
    champion_score INTEGER,
    runner_up_score INTEGER,
    champion_penalties INTEGER,
    runner_up_penalties INTEGER
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
    wc_year INTEGER NOT NULL,
    match_date DATE NOT NULL,
    match_type VARCHAR(100) NOT NULL,
    home_team_flag VARCHAR(100) NOT NULL,
    away_team_flag VARCHAR(100) NOT NULL,
    home_team VARCHAR(100) NOT NULL,
    away_team VARCHAR(100) NOT NULL,
    home_team_goals INTEGER NOT NULL,
    away_team_goals INTEGER NOT NULL,
    home_team_penalties INTEGER,
    away_team_penalties INTEGER
);

CREATE TABLE users 
(
    id SERIAL PRIMARY KEY NOT NULL,
    username VARCHAR(100) NOT NULL
);

-- MATCHES 1998

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'June-27-1998', 'round16', 'br', 'cl', 'Brazil', 'Chile', 4, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'June-28-1998', 'round16','ng', 'dk', 'Nigeria', 'Denmark', 1, 4, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'June-29-1998', 'round16', 'nl', 'rs', 'Netherlands', 'Yugoslavia', 2, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'June-30-1998', 'round16', 'ar', 'gb', 'Argentina', 'England', 2, 2, 4, 3);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'June-27-1998', 'round16', 'it', 'no', 'Italy', 'Norway', 1, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'June-28-1998', 'round16', 'fr', 'py', 'France', 'Paraguay', 1, 0, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'June-29-1998', 'round16', 'de', 'mx', 'Germany', 'Mexico', 2, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'June-30-1998', 'round16', 'ro', 'hr', 'Romania', 'Croatia', 0, 1, NULL, NULL);

-- Quarterfinals -1998
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'July-3-1998', 'quarterfinals', 'br', 'dk', 'Brazil', 'Denmark', 3, 2, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'July-4-1998', 'quarterfinals', 'nl', 'ar', 'Netherlands', 'Argentina', 2, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'July-3-1998', 'quarterfinals', 'it', 'fr', 'Italy', 'France', 0, 0, 3, 4);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'July-3-1998', 'quarterfinals', 'de', 'hr', 'Germany', 'Croatia', 0, 3, NULL, NULL);

-- Semifinals - 1998
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'July-7-1998', 'semifinals', 'br', 'nl', 'Brazil', 'Netherlands', 1, 1, 4, 2);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'July-8-1998', 'semifinals', 'fr', 'hr', 'France', 'Croatia', 2, 1, NULL, NULL);

-- Final -1998
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'July-12-1998', 'final', 'br', 'fr', 'Brazil', 'France', 0, 3, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (1998, 'July-11-1998', 'third-place', 'nl', 'hr', 'Netherlands', 'Croatia', 1, 3, NULL, NULL);

-- MATCHES 2002

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-15-2002', 'round16', 'de', 'py', 'Germany', 'Paraguay', 1, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-17-2002', 'round16','mx', 'us', 'Mexico', 'United States', 0, 2, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-16-2002', 'round16', 'es', 'ie', 'Spain', 'Republic of Ireland', 1, 1, 3, 2);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-18-2002', 'round16', 'kr', 'it', 'South Korea', 'Italy', 2, 1, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-15-2002', 'round16', 'dk', 'gb', 'Denmark', 'England', 0, 3, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-17-2002', 'round16', 'br', 'be', 'Brazil', 'Belguim', 2, 0, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-16-2002', 'round16', 'se', 'sn', 'Sweden', 'Senegal', 1, 2, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-18-2002', 'round16', 'jp', 'tr', 'Japan', 'Turkey', 0, 1, NULL, NULL);

-- Quarterfinals -2002
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-21-2002', 'quarterfinals', 'de', 'us', 'Germany', 'United States', 1, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-22-2002', 'quarterfinals', 'es', 'kr', 'Spain', 'South Korea', 0, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-21-2002', 'quarterfinals', 'gb', 'br', 'England', 'Brazil', 1, 2, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-22-2002', 'quarterfinals', 'se', 'tr', 'Senegal', 'Turkey', 0, 1, NULL, NULL);

-- Semifinals - 2002
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-25-2002', 'semifinals', 'de', 'kr', 'Germany', 'South Korea', 1, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-26-2002', 'semifinals', 'br', 'tr', 'Brazil', 'Turkey', 1, 0, NULL, NULL);

-- Final -2002
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-30-2002', 'final', 'de', 'br', 'Germany', 'Brazil', 0, 2, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2002, 'June-29-2002', 'third-place', 'kr', 'tr', 'South Korea', 'Turkey', 2, 3, NULL, NULL);


-- MATCHES 2006

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'June-24-2006', 'round16', 'de', 'se', 'Germany', 'Sweden', 2, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'June-24-2006', 'round16', 'ar', 'mx', 'Argentina', 'Mexico', 2, 1, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'June-26-2006', 'round16', 'it', 'au', 'Italy', 'Australia', 1, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'June-26-2006', 'round16', 'ch', 'ua', 'Switzerland', 'Ukraine', 0, 0, 0, 3);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'June-25-2006', 'round16', 'gb', 'ec', 'England', 'Ecuador', 1, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'June-25-2006', 'round16', 'pt', 'nl', 'Portugal', 'Netherlands', 1, 0, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'June-27-2006', 'round16', 'br', 'gh', 'Brazil', 'Ghana', 3, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'June-27-2006', 'round16', 'es', 'fr', 'Spain', 'France', 1, 3, NULL, NULL);

-- Quarterfinals -2006
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'June-30-2006', 'quarterfinals', 'de', 'ar', 'Germany', 'Argentina', 1, 1, 4, 2);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'June-30-2006', 'quarterfinals', 'it', 'ua', 'Italy', 'Ukraine', 3, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'July-01-2006', 'quarterfinals', 'gb', 'pt', 'England', 'Portugal', 0, 0, 1, 3);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'July-01-2006', 'quarterfinals', 'br', 'fr', 'Brazil', 'France', 0, 1, NULL, NULL);

-- Semifinals - 2006
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'July-05-2006', 'semifinals', 'de', 'it', 'Germany', 'Italy', 0, 2, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'July-05-2006', 'semifinals', 'pt', 'fr', 'Portugal', 'France', 0, 1, NULL, NULL);

-- Final -2006
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'July-09-2006', 'final', 'it', 'fr', 'Italy', 'France', 1, 1, 5, 3);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2006, 'July-08-2006', 'third-place', 'de', 'pt', 'Germany', 'Portugal', 3, 1, NULL, NULL);


-- MATCHES 2010

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'June-26-2010', 'round16', 'uy', 'kr', 'Uruguay', 'South Korea', 2, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'June-26-2010', 'round16', 'ar', 'mx', 'United States', 'Ghana', 1, 2, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'June-28-2010', 'round16', 'nl', 'sk', 'Netherlands', 'Slovakia', 2, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'June-28-2010', 'round16', 'br', 'cl', 'Brazil', 'Chile', 3, 0, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'June-27-2010', 'round16', 'ar', 'mx', 'Argentina', 'Mexico', 3, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'June-27-2010', 'round16', 'de', 'gb', 'Germany', 'England', 4, 1, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'June-29-2010', 'round16', 'py', 'jp', 'Paraguay', 'Japan', 0, 0, 5, 3);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'June-29-2010', 'round16', 'es', 'pt', 'Spain', 'Portugal', 1, 0, NULL, NULL);

-- Quarterfinals -2010
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'July-02-2010', 'quarterfinals', 'de', 'ar', 'Uruguay', 'Ghana', 1, 1, 4, 2);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'July-02-2010', 'quarterfinals', 'nl', 'br', 'Netherlands', 'Brazil', 2, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'July-03-2010', 'quarterfinals', 'ar', 'de', 'Argentina', 'Germany', 0, 4, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'July-03-2010', 'quarterfinals', 'py', 'es', 'Paraguay', 'Spain', 0, 1, NULL, NULL);

-- Semifinals - 2010
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'July-06-2010', 'semifinals', 'uy', 'nl', 'Uruguay', 'Netherlands', 2, 3, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'July-07-2010', 'semifinals', 'de', 'es', 'Germany', 'Spain', 0, 1, NULL, NULL);

-- Final -2010
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'July-10-2010', 'final', 'nl', 'es', 'Netherlands', 'Spain', 0, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2010, 'July-10-2010', 'third-place', 'uy', 'de', 'Uruguay', 'Germany', 2, 3, NULL, NULL);


-- MATCHES 2014

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'June-26-2010', 'round16', 'br', 'cl', 'Brazil', 'Chile', 1, 1, 3, 2);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'June-26-2010', 'round16', 'co', 'uy', 'Colombia', 'Uruguay', 2, 0, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'June-28-2010', 'round16', 'fr', 'ng', 'France', 'Nigeria', 2, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'June-28-2010', 'round16', 'br', 'cl', 'Germany', 'Algeria', 2, 1, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'June-27-2010', 'round16', 'nl', 'mx', 'Netherlands', 'Mexico', 2, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'June-27-2010', 'round16', 'cr', 'gr', 'Costa Rica', 'Greece', 1, 1, 5, 3);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'June-29-2010', 'round16', 'ar', 'ch', 'Argentina', 'Switzerland', 1, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'June-29-2010', 'round16', 'be', 'us', 'Belguim', 'United States', 2, 1, NULL, NULL);

-- Quarterfinals -2014
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'July-04-2010', 'quarterfinals', 'br', 'co', 'Brazil', 'Colombia', 2, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'July-04-2010', 'quarterfinals', 'fr', 'de', 'France', 'Germany', 0, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'July-05-2010', 'quarterfinals', 'nl', 'cr', 'Netherlands', 'Costa Rica', 0, 0, 4, 3);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'July-05-2010', 'quarterfinals', 'ar', 'be', 'Argentina', 'Belguim', 1, 0, NULL, NULL);

-- Semifinals - 2014
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'July-08-2010', 'semifinals', 'br', 'de', 'Brazil', 'Germany', 1, 7, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'July-09-2010', 'semifinals', 'nl', 'ar', 'Netherlands', 'Argentina', 0, 0, 2, 4);

-- Final -2014
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'July-13-2010', 'final', 'de', 'ar', 'Germany', 'Argentina', 1, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2014, 'July-12-2010', 'third-place', 'br', 'nl', 'Brazil', 'Netherlands', 2, 3, NULL, NULL);


-- MATCHES 2018

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'June-30-2018', 'round16', 'uy', 'pt', 'Uruguay', 'Portugal', 2, 1, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'June-30-2018', 'round16', 'fr', 'ar', 'France', 'Argentina', 4, 3, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-02-2018', 'round16', 'br', 'mx', 'Brazil', 'Mexico', 2, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-02-2018', 'round16', 'be', 'jp', 'Belguim', 'Japan', 3, 2, NULL, NULL);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-01-2018', 'round16', 'es', 'ru', 'Spain', 'Russia', 1, 1, 3, 4);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-01-2018', 'round16', 'hr', 'dk', 'Croatia', 'Denmark', 1, 1, 3, 2);

INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-03-2018', 'round16', 'se', 'ch', 'Sweden', 'Switzerland', 1, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-03-2018', 'round16', 'co', 'gb', 'Colombia', 'England', 1, 1, 3, 4);

-- Quarterfinals -2018
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-06-2018', 'quarterfinals', 'uy', 'fr', 'Uruguay', 'France', 0, 2, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-06-2018', 'quarterfinals', 'br', 'be', 'Brazil', 'Belguim', 1, 2, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-07-2018', 'quarterfinals', 'ru', 'hr', 'Russia', 'Croatia', 2, 2, 3, 4);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-07-2018', 'quarterfinals', 'se', 'gb', 'Sweden', 'England', 0, 2, NULL, NULL);

-- Semifinals - 2018
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-10-2018', 'semifinals', 'fr', 'be', 'France', 'Belguim', 1, 0, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-11-2018', 'semifinals', 'hr', 'gb', 'Croatia', 'England', 2, 1, NULL, NULL);

-- Final -2018
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-14-2018', 'final', 'fr', 'hr', 'France', 'Croatia', 4, 2, NULL, NULL);
INSERT INTO matches(wc_year, match_date, match_type, home_team_flag, away_team_flag, home_team, away_team, home_team_goals, away_team_goals, home_team_penalties, away_team_penalties) VALUES (2018, 'July-14-2018', 'third-place', 'be', 'gb', 'Belguim', 'England', 2, 0, NULL, NULL);



-- INSERT INTO matches(match_date, match_type, home_team, away_team, home_team_goals, away_team_goals) VALUES ('07/30/1930', 'final', )

INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Uruguay', 1930, 'Uruguay', 'Argentina', 'URU', 'ARG', 4, 2, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Italy', 1934, 'Italy', 'Czechoslovakia', 'ITA', 'CZE', 2, 1, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('France', 1938, 'Italy', 'Hungary', 'ITA', 'HUN', 4, 2, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Brazil', 1950, 'Uruguay', 'Brazil', 'URU', 'BRA', 2, 1, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Switzerland', 1954, 'West Germany', 'Hungary', 'GER', 'HUN', 3, 2, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Sweden', 1958, 'Brazil', 'Sweden', 'BRA', 'SWE', 5, 2, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Chile', 1962, 'Brazil', 'Czechoslovakia', 'BRA', 'CZE', 3, 1, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('England', 1966, 'England', 'West Germany', 'ENG', 'GER', 4, 2, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Mexico', 1970, 'Brazil', 'Italy', 'BRA', 'ITA', 4, 1, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('West Germany', 1974, 'West Germany', 'Netherlands', 'GER', 'NED', 2, 1, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Argentina', 1978, 'Argentina', 'Netherlands', 'ARG', 'NED', 3, 1, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Spain', 1982, 'Italy', 'West Germany', 'ITA', 'GER', 3, 1, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Mexico', 1986, 'Argentina', 'West Germany', 'ARG', 'GER', 3, 2, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Italy', 1990, 'West Germany', 'Argentina', 'GER', 'ARG', 1, 0, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('United States', 1994, 'Brazil', 'Italy', 'BRA', 'ITA', 0, 0, 3, 2);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('France', 1998, 'France', 'Brazil', 'FRA', 'BRA', 3, 0, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('South Korea and Japan', 2002, 'Brazil', 'Germany', 'BRA', 'GER', 2, 0, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Germany', 2006, 'Italy', 'France', 'ITA', 'FRA', 1, 1, 5, 3);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('South Africa', 2010, 'Spain', 'Netherlands', 'ESP', 'NED', 1, 0, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Brazil', 2014, 'Germany', 'Argentina', 'GER', 'ARG', 1, 0, NULL, NULL);
INSERT INTO worldcup(country, year, champion, runner_up, champion_code, runner_up_code, champion_score, runner_up_score, champion_penalties, runner_up_penalties) VALUES ('Russia', 2018, 'France', 'Croatia', 'FRA','CRO', 4, 2, NULL, NULL);


/* 1930 - URUGUAY */
-- INSERT INTO team(name, code, group_name, worldcup) VALUES ('URUGUAY', 'URU', 'C', 1);

/* 1994 WORLD CUP - USA */

INSERT INTO team(name, code, group_name, worldcup) VALUES ('Romania', 'ROU', 'A', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Switzerland', 'SUI', 'A', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('United States', 'USA', 'A', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Colombia', 'COL', 'A', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Brazil', 'BRA', 'B', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Sweden', 'SWE', 'B', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Russia', 'RUS', 'B', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Cameroon', 'CMR', 'B', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Germany', 'GER', 'C', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Spain', 'ESP', 'C', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('South Korea', 'KOR', 'C', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Bolivia', 'BOL', 'C', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Nigeria', 'NGA', 'D', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Bulgaria', 'BUL', 'D', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Argentina', 'ARG', 'D', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Greece', 'GRE', 'D', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Mexico', 'MEX', 'E', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Republic of Ireland', 'IRL', 'E', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Italy', 'ITA', 'E', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Norway', 'KOR', 'E', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Netherlands', 'NED', 'F', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Saudi Arabia', 'YUG', 'F', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Belgium', 'BEL', 'F', 15);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Morocco', 'MAR', 'F', 15);

/* 1998 WORLD CUP - FRANCE */
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Brazil', 'BRA', 'A', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Norway', 'NOR', 'A', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Morocco', 'MAR', 'A', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Scotland', 'SCO', 'A', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Italy', 'ITA', 'B', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Chile', 'CHI', 'B', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Austria', 'AUT', 'B', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Cameroon', 'CMR', 'B', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('France', 'FRA', 'C', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Denmark', 'DEN', 'C', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('South Africa', 'RSA', 'C', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Saudi Arabia', 'KSA', 'C', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Nigeria', 'NGA', 'D', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Paraguay', 'PAR', 'D', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Spain', 'ESP', 'D', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Bulgaria', 'BUL', 'D', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Netherlands', 'NED', 'E', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Mexico', 'MEX', 'E', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Belgium', 'BEL', 'E', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Korea Republic', 'KOR', 'E', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Germany', 'GER', 'F', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Yugoslavia', 'YUG', 'F', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Iran', 'IRN', 'F', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('United States', 'USA', 'F', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Romania', 'ROU', 'G', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('England', 'ENG', 'G', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Colombia', 'COL', 'G', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Tunisia', 'TUN', 'G', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Argentina', 'ARG', 'H', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Croatia', 'CRO', 'H', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Jamaica', 'JAM', 'H', 16);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Japan', 'JPN', 'H', 16);


/* 2002 WORLD CUP - KOREA/JAPAN */
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Denmark', 'DEN', 'A', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Senegal', 'SEN', 'A', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Uruguay', 'URU', 'A', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('France', 'FRA', 'A', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Spain', 'ESP', 'B', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Paraguay', 'PAR', 'B', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('South Africa', 'RSA', 'B', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Slovenia', 'SVN', 'B', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Brazil', 'BRA', 'C', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Turkey', 'TUR', 'C', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Costa Rica', 'CRC', 'C', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('China', 'CHN', 'C', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('South Korea', 'KOR', 'D', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('United States', 'USA', 'D', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Portugal', 'POR', 'D', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Poland', 'POL', 'D', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Germany', 'GER', 'E', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Republic of Ireland', 'IRL', 'E', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Cameroon', 'CMR', 'E', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Saudi Arabia', 'KOR', 'E', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Sweden', 'SWE', 'F', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('England', 'YUG', 'F', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Argentina', 'ARG', 'F', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Nigeria', 'NGA', 'F', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Mexico', 'MEX', 'G', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Italy', 'ITA', 'G', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Croatia', 'CRO', 'G', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ecuador', 'ECU', 'G', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Japan', 'JPN', 'H', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Belgium', 'BEL', 'H', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Russia', 'RUS', 'H', 17);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Tunisia', 'TUN', 'H', 17);


/* 2006 WORLD CUP - GERMANY */
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Germany', 'GER', 'A', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ecuador', 'ECU', 'A', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Poland', 'POL', 'A', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Costa Rica', 'CRC', 'A', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('England', 'ENG', 'B', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Sweden', 'SWE', 'B', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Paraguay', 'PAR', 'B', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Trinidad and Tobago', 'TRI', 'B', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Argentina', 'ARG', 'C', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Netherlands', 'NED', 'C', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ivory Coast', 'CIV', 'C', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Serbia and Montenegro', 'SRB', 'C', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Portugal', 'POR', 'D', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Mexico', 'MEX', 'D', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Angola', 'ANG', 'D', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Iran', 'IRN', 'D', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Italy', 'ITA', 'E', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ghana', 'GHA', 'E', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Czech Republic', 'CZE', 'E', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('United States', 'USA', 'E', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Brazil', 'BRA', 'F', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Australia', 'AUS', 'F', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Croatia', 'CRO', 'F', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Japan', 'JPN', 'F', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Switzerland', 'SUI', 'G', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('France', 'FRA', 'G', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('South Korea', 'KOR', 'G', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Togo', 'TOG', 'G', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Spain', 'ESP', 'H', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ukraine', 'UKR', 'H', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Tunisia', 'TUN', 'H', 18);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Saudi Arabia', 'KSA', 'H', 18);


/* 2010 WORLD CUP - SOUTH AFRICA */
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Uruguay', 'URU', 'A', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Mexico', 'MEX', 'A', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('South Africa', 'RSA', 'A', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('France', 'FRA', 'A', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Argentina', 'ARG', 'B', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('South Korea', 'KOR', 'B', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Greece', 'GRE', 'B', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Nigeria', 'NGA', 'B', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('United States', 'USA', 'C', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('England', 'ENG', 'C', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Slovenia', 'SVN', 'C', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Algeria', 'ALG', 'C', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Germany', 'GER', 'D', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ghana', 'GHA', 'D', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Australia', 'AUS', 'D', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Serbia', 'SRB', 'D', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Netherlands', 'NED', 'E', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Japan', 'JPN', 'E', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Denmark', 'DEN', 'E', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Cameroon', 'CMR', 'E', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Paraguay', 'PAR', 'F', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Slovakia', 'SVK', 'F', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('New Zealand', 'NZL', 'F', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Italy', 'ITA', 'F', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Brazil', 'BRA', 'G', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Portugal', 'POR', 'G', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ivory Coast', 'CIV', 'G', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('North Korea', 'PRK', 'G', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Spain', 'ESP', 'H', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Chile', 'CHI', 'H', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Switzerland', 'SUI', 'H', 19);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Honduras', 'HON', 'H', 19);

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
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Ivory Coast', 'CIV', 'C', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Japan', 'JPN', 'C', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Greece', 'GRE', 'C', 20);
INSERT INTO team(name, code, group_name, worldcup) VALUES ('Colombia', 'COL', 'C', 20);
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
