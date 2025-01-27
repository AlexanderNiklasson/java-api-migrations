INSERT INTO people (name, email, birthDate, role, country)
VALUES
    ('Stanley Kubrick', NULL, NULL, 'director', 'USA'),
    ('George Lucas', 'george@email.com', NULL, 'director', 'USA'),
    ('Robert Mulligan', NULL, NULL, 'director', 'USA'),
    ('James Cameron', 'james@cameron.com', NULL, 'director', 'Canada'),
    ('David Lean', NULL, NULL, 'director', 'UK'),
    ('Anthony Mann', NULL, NULL, 'director', 'USA'),
    ('Theodoros Angelopoulos', 'theo@angelopoulos.com', NULL, 'director', 'Greece'),
    ('Paul Verhoeven', NULL, NULL, 'director', 'Netherlands'),
    ('Krzysztof Kieslowski', 'email@email.com', NULL, 'director', 'Poland'),
    ('Jean-Paul Rappeneau', NULL, NULL, 'director', 'France'),
    ('Keir Dullea', NULL, '30/05/1936', 'star', NULL),
    ('Mark Hamill', NULL, '25/09/1951', 'star', NULL),
    ('Gregory Peck', NULL, '05/04/1916', 'star', NULL),
    ('Leonardo DiCaprio', NULL, '11/11/1974', 'star', NULL),
    ('Julie Christie', NULL, '14/04/1940', 'star', NULL),
    ('Charlton Heston', NULL, '04/10/1923', 'star', NULL),
    ('Manos Katrakis', NULL, '14/08/1908', 'star', NULL),
    ('Rutger Hauer', NULL, '23/01/1944', 'star', NULL),
    ('Juliette Binoche', NULL, '09/03/1964', 'star', NULL),
    ('Gerard Depardieu', NULL, '27/12/1948', 'star', NULL),
    ('Arthur C Clarke', 'arthur@clarke.com', NULL, 'writer', NULL),
    ('Harper Lee', 'harper@lee.com', NULL, 'writer', NULL),
    ('Boris Pasternak', 'boris@boris.com', NULL, 'writer', NULL),
    ('Frederick Frank', 'fred@frank.com', NULL, 'writer', NULL),
    ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com', NULL, 'writer', NULL),
    ('Edmond Rostand', 'edmond@rostand.com', NULL, 'writer', NULL)
ON CONFLICT (name) DO UPDATE
    SET email = EXCLUDED.email,
        birthDate = EXCLUDED.birthDate,
        role = EXCLUDED.role,
        country = EXCLUDED.country;