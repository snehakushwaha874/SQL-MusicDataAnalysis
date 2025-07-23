# artist table
  CREATE TABLE artist (
    artist_id INTEGER PRIMARY KEY,
    name VARCHAR(255)
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# album table
  CREATE TABLE album (
    album_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    artist_id INTEGER NOT NULL
);
 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
# customer table
  CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    company VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    phone VARCHAR(50),
    fax VARCHAR(50),
    email VARCHAR(255),
    support_rep_id INTEGER
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# employee table
  CREATE TABLE employee (
    employee_id INTEGER PRIMARY KEY,
    last_name VARCHAR(100),
    first_name VARCHAR(100),
    title VARCHAR(100),
    reports_to INTEGER,
    levels INTEGER,
    birthdate DATE,
    hire_date DATE,
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    phone VARCHAR(50),
    fax VARCHAR(50),
    email VARCHAR(255)
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# genre table
  CREATE TABLE genre (
    genre_id INTEGER PRIMARY KEY,
    name VARCHAR(100)
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# invoice table
  CREATE TABLE invoice (
    invoice_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    invoice_date TIMESTAMP NOT NULL,
    billing_address TEXT,
    billing_city TEXT,
    billing_state TEXT,
    billing_country TEXT,
    billing_postal_code TEXT,
    total NUMERIC(10, 2) NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# invoice_line table
  CREATE TABLE invoice_line (
    invoice_line_id INTEGER PRIMARY KEY,
    invoice_id INTEGER,
    track_id INTEGER,
    unit_price NUMERIC(10, 2),
    quantity INTEGER
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# media_type table
  CREATE TABLE media_type (
    media_type_id INTEGER PRIMARY KEY,
    name VARCHAR(100)
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# playlist table
  CREATE TABLE playlist (
    playlist_id INTEGER PRIMARY KEY,
    name VARCHAR(100)
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# playlist_track table
  CREATE TABLE playlist_track (
    playlist_id INTEGER NOT NULL,
    track_id INTEGER NOT NULL,
    PRIMARY KEY (playlist_id, track_id)
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# track table
CREATE TABLE track (
    track_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    album_id INTEGER NOT NULL,
    media_type_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    composer TEXT,
    milliseconds INTEGER NOT NULL,
    bytes INTEGER NOT NULL,
    unit_price NUMERIC(5, 2) NOT NULL
);
