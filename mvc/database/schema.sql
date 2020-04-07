-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
--  DROP TABLE IF EXISTS teacher;
--  DROP TABLE IF EXISTS app_user_curriculum;
--  DROP TABLE IF EXISTS curriculum;
--  DROP TABLE IF EXISTS category;
--  DROP TABLE IF EXISTS app_user;


CREATE TABLE app_user (
  id SERIAL PRIMARY KEY,
  user_name varchar(32) NOT NULL UNIQUE,
  password varchar(32) NOT NULL,
  role varchar(32),
  salt varchar(255) NOT NULL
);

CREATE TABLE teacher (
  id SERIAL PRIMARY KEY,
  first_name char (32),
  last_name char (32)
  --curriculum_id integer,

  --constraint fk_curriculum foreign key (curriculum_id) references curriculum (id)
);

CREATE TABLE category (
  id SERIAL,
  name char (32),

  constraint pk_category primary key (id)
);

CREATE TABLE curriculum (
  id SERIAL PRIMARY KEY,
  curriculumName char (32),
  description char(100),
  teacher_id integer,
  duration integer,
  category_id integer,

  constraint fk_category foreign key (category_id) references category (id),
  constraint fk_teacher foreign key (teacher_id) references teacher (id)
);

CREATE TABLE app_user_curriculum (
  id SERIAL PRIMARY KEY,
  app_user_id integer,
  curriculum_id integer,

constraint fk_app_user foreign key (app_user_id) references app_user (id),
constraint fk_curriculum foreign key (curriculum_id) references curriculum (id)
);


COMMIT;