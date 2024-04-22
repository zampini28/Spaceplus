# -- https://en.wikipedia.org/wiki/ISO/IEC_5218https://en.wikipedia.org/wiki/ISO/IEC_5218
#--------------------------
# Start setup
#--------------------------

# -- Configuration for the functions to work correctly --
SET GLOBAL log_bin_trust_function_creators = 1;
SET SQL_SAFE_UPDATES = 0;

# -- DATABASE name --
SET @db_name = app;

# -- DROP database --
DROP SCHEMA IF EXISTS @db_name;

# -- CREATE & USE database --
CREATE SCHEMA IF NOT EXISTS @db_name;

#--------------------------
# Creating tables
#--------------------------

# -- TABLE Customer --
CREATE TABLE IF NOT EXISTS @db_name.Customer (
    id          SERIAL, 
    name        VARCHAR(255)    NOT NULL,
    email       VARCHAR(255)    NOT NULL    UNIQUE,
    username    VARCHAR(255)    NOT NULL    UNIQUE,
    password    VARCHAR(255)    NOT NULL,
    created_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Staff --
CREATE TABLE IF NOT EXISTS @db_name.Staff (
    id          SERIAL, 
    name        VARCHAR(255)    NOT NULL,
    email       VARCHAR(255)    NOT NULL    UNIQUE,
    birth       DATE            NOT NULL,
    sex         TINYINT(1)      UNSIGNED    NOT NULL,
    cpf         VARCHAR(255)    NOT NULL,
    phone       VARCHAR(255)    NULL        DEFAULT NULL,
    username    VARCHAR(255)    NOT NULL    UNIQUE,
    senha       VARCHAR(255)    NOT NULL,
    created_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Film --
CREATE TABLE IF NOT EXISTS @db_name.Film (
    id                      SERIAL,
    title                   VARCHAR(255)    NOT NULL,
    rating                  DECIMAL(2,1)    NOT NULL, 
    release                 DATE            NOT NULL,
    director_id             BIGINT          UNSIGNED    NOT NULL,
    description             TEXT            NOT NULL,
    duration                TIME            NOT NULL, 
    price                   DECIMAL(5,2)    UNSIGNED    NOT NULL, 
    original_language_id    BIGINT          UNSIGNED    NOT NULL,
    thumbnail               VARCHAR(2083)   NOT NULL,
    created_at              DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at              DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Director --
CREATE TABLE IF NOT EXISTS @db_name.Director (
    id          SERIAL, 
    name        VARCHAR(255)    NOT NULL,
    image       VARCHAR(2083)   NOT NULL,
    created_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Category --
CREATE TABLE IF NOT EXISTS @db_name.Category (
    id          SERIAL, 
    name        VARCHAR(255)    NOT NULL,
    created_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Actor --
CREATE TABLE IF NOT EXISTS @db_name.Actor (
    id          SERIAL, 
    name        VARCHAR(255)    NOT NULL,
    image       VARCHAR(2083)   NOT NULL,
    created_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Language --
CREATE TABLE IF NOT EXISTS @db_name.Language (
    id          SERIAL, 
    name        VARCHAR(255)    NOT NULL,
    created_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Film_Actor --
CREATE TABLE IF NOT EXISTS @db_name.Film_Actor (
    film_id     BIGINT          UNSIGNED    NOT NULL,
    ator_id     BIGINT          UNSIGNED    NOT NULL,
    created_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (film_id, ator_id)
);

# -- TABLE Film_Category --
CREATE TABLE IF NOT EXISTS @db_name.Film_Category (
    film_id     BIGINT          UNSIGNED    NOT NULL,
    category_id BIGINT          UNSIGNED    NOT NULL,
    created_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (film_id, category_id)
);

# -- TABLE Film_Language --
CREATE TABLE IF NOT EXISTS @db_name.Film_Language (
    film_id     BIGINT      UNSIGNED    NOT NULL,
    language_id BIGINT      UNSIGNED    NOT NULL,
    created_at  DATETIME    NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME    NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    primary key (film_id, language_id)
);

# -- TABLE Customer_Film --
CREATE TABLE IF NOT EXISTS @db_name.Customer_Film (
    customer_id BIGINT      UNSIGNED    NOT NULL,
    film_id     BIGINT      UNSIGNED    NOT NULL,
    created_at  DATETIME    NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME    NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    primary key (customer_id, film_id)
);
