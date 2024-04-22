#--------------------------
# Start setup
#--------------------------

# -- DROP database --
DROP SCHEMA IF EXISTS spaceplus;

# -- CREATE & USE database --
CREATE SCHEMA IF NOT EXISTS spaceplus;

#--------------------------
# Creating tables
#--------------------------

# -- TABLE Customer --
CREATE TABLE IF NOT EXISTS spaceplus.customer (
    id          SERIAL, 
    name        VARCHAR(255)    NOT NULL,
    email       VARCHAR(255)    NOT NULL    UNIQUE,
    username    VARCHAR(255)    NOT NULL    UNIQUE,
    password    VARCHAR(255)    NOT NULL,
    created_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Film --
CREATE TABLE IF NOT EXISTS spaceplus.film (
    id                      SERIAL,
    title                   VARCHAR(255)    NOT NULL,
    rating                  DECIMAL(2,1)    NOT NULL, 
    release_date            DATE            NOT NULL,
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
