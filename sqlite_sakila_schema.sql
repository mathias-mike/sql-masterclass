CREATE TABLE language (
    id SMALLINT NOT NULL ,
    name CHAR(20) NOT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE country (
    id SMALLINT NOT NULL,
    name VARCHAR(50) NOT NULL,
    last_update TIMESTAMP,
    PRIMARY KEY  (id)
);

CREATE TABLE city (
    id int NOT NULL,
    name VARCHAR(50) NOT NULL,
    country_id SMALLINT NOT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY  (id)
);

CREATE TABLE address (
    id int NOT NULL,
    address VARCHAR(50) NOT NULL,
    address2 VARCHAR(50) DEFAULT NULL,
    district VARCHAR(20) NOT NULL,
    city_id INT NOT NULL,
    postal_code VARCHAR(10) DEFAULT NULL,
    phone VARCHAR(20) NOT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY  (id)
);

CREATE TABLE store (
    id INT NOT NULL,
    manager_staff_id SMALLINT NOT NULL,
    address_id INT NOT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY  (id)
);

CREATE TABLE staff (
    id SMALLINT NOT NULL,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    address_id INT NOT NULL,
    picture BLOB DEFAULT NULL,
    email VARCHAR(50) DEFAULT NULL,
    store_id INT NOT NULL,
    active SMALLINT DEFAULT 1 NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(40) DEFAULT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY  (id)
);

CREATE TABLE category (
    id SMALLINT NOT NULL,
    name VARCHAR(25) NOT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY  (id)
);

CREATE TABLE film (
    id int NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT DEFAULT NULL,
    release_year VARCHAR(4) DEFAULT NULL,
    language_id SMALLINT NOT NULL,
    original_language_id SMALLINT DEFAULT NULL,
    rental_duration SMALLINT  DEFAULT 3 NOT NULL,
    rental_rate DECIMAL(4,2) DEFAULT 4.99 NOT NULL,
    length SMALLINT DEFAULT NULL,
    replacement_cost DECIMAL(5,2) DEFAULT 19.99 NOT NULL,
    rating VARCHAR(10) DEFAULT 'G',
    special_features VARCHAR(100) DEFAULT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY  (id)
);

CREATE TABLE inventory (
    id INT NOT NULL,
    film_id INT NOT NULL,
    store_id INT NOT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY  (id)
);

CREATE TABLE film_actor (
    actor_id INT NOT NULL,
    film_id  INT NOT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY  (actor_id,film_id)
);

CREATE TABLE film_category (
    film_id INT NOT NULL,
    category_id SMALLINT  NOT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY (film_id, category_id)
);

CREATE TABLE customer (
    id INT NOT NULL,
    store_id INT NOT NULL,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    email VARCHAR(50) DEFAULT NULL,
    address_id INT NOT NULL,
    active CHAR(1) DEFAULT 'Y' NOT NULL,
    create_date TIMESTAMP NOT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY  (id)
);

CREATE TABLE rental (
  id INT NOT NULL,
  date TIMESTAMP NOT NULL,
  inventory_id INT  NOT NULL,
  customer_id INT  NOT NULL,
  return_date TIMESTAMP DEFAULT NULL,
  staff_id SMALLINT  NOT NULL,
  last_update TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE payment (
  id int NOT NULL,
  customer_id INT  NOT NULL,
  staff_id SMALLINT NOT NULL,
  rental_id INT DEFAULT NULL,
  amount DECIMAL(5,2) NOT NULL,
  payment_date TIMESTAMP NOT NULL,
  last_update TIMESTAMP NOT NULL,
  PRIMARY KEY  (id)
);


CREATE TABLE film_text (
    film_id SMALLINT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    PRIMARY KEY  (film_id)
);

CREATE TABLE actor (
    id int NOT NULL ,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY  (id)
);



