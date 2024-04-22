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
    created_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Film --
CREATE TABLE IF NOT EXISTS spaceplus.film (
    id                      SERIAL,
    title                   VARCHAR(255)    NOT NULL,
    rating                  DECIMAL(2,1)    NOT NULL, 
    release_date            VARCHAR(255)    NOT NULL,
    director                VARCHAR(255)    NOT NULL,
    description             TEXT            NOT NULL,
    duration                VARCHAR(255)    NOT NULL, 
    price                   DECIMAL(5,2)    UNSIGNED    NOT NULL, 
    language                VARCHAR(255)    NOT NULL,
    thumbnail               VARCHAR(2083)   NOT NULL,
    created_at              TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at              TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Director --
CREATE TABLE IF NOT EXISTS spaceplus.director (
    id          SERIAL,
    name        VARCHAR(255)    NOT NULL,
    created_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Language --
CREATE TABLE IF NOT EXISTS spaceplus.language (
    id          SERIAL,
    name        VARCHAR(255)    NOT NULL,
    created_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Actor --
CREATE TABLE IF NOT EXISTS spaceplus.actor (
    id          SERIAL,
    name        VARCHAR(255)    NOT NULL,
    created_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Category --
CREATE TABLE IF NOT EXISTS spaceplus.category (
    id          SERIAL,
    name        VARCHAR(255)    NOT NULL,
    created_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

# -- TABLE Film_Actor --
CREATE TABLE IF NOT EXISTS spaceplus.film_actor (
    film_id     BIGINT          UNSIGNED    NOT NULL,
    actor_id    BIGINT          UNSIGNED    NOT NULL,
    created_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (film_id, actor_id),
    FOREIGN KEY (film_id)  REFERENCES film(id),
    FOREIGN KEY (actor_id) REFERENCES actor(id)
);

# -- TABLE Film_Category --
CREATE TABLE IF NOT EXISTS spaceplus.film_category (
    film_id     BIGINT          UNSIGNED    NOT NULL,
    category_id BIGINT          UNSIGNED    NOT NULL,
    created_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (film_id, category_id),
    FOREIGN KEY (film_id)     REFERENCES film(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);

# -- TABLE Film_Language --
CREATE TABLE IF NOT EXISTS spaceplus.film_language (
    film_id     BIGINT          UNSIGNED    NOT NULL,
    language_id BIGINT          UNSIGNED    NOT NULL,
    created_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (film_id, language_id),
    FOREIGN KEY (film_id)    REFERENCES film(id),
    FOREIGN KEY (language_id) REFERENCES language(id)
);

# -- TABLE Customer_Film --
CREATE TABLE IF NOT EXISTS spaceplus.customer_film (
    customer_id BIGINT          UNSIGNED    NOT NULL,
    film_id     BIGINT          UNSIGNED    NOT NULL,
    created_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP(),
    updated_at  TIMESTAMP       NOT NULL    DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (customer_id, film_id),
    FOREIGN KEY (customer_id) REFERENCES customer(id),
    FOREIGN KEY (film_id)     REFERENCES film(id)
);
