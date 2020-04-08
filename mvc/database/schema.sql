-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************



BEGIN Transaction;

-- CREATE statements go here
 DROP TABLE IF EXISTS grades;
 DROP TABLE IF EXISTS syllabus;
 DROP TABLE IF EXISTS homework_submission;
 DROP TABLE IF EXISTS homework;
 DROP TABLE IF EXISTS app_user_course;
 DROP TABLE IF EXISTS curriculum;
 DROP TABLE IF EXISTS course;
 DROP TABLE IF EXISTS student;
 DROP TABLE IF EXISTS teacher;
 DROP TABLE IF EXISTS category;
 DROP TABLE IF EXISTS app_user;


CREATE TABLE app_user (
  id SERIAL PRIMARY KEY,
  user_name varchar(32) NOT NULL UNIQUE,
  password varchar(32) NOT NULL,
  role varchar(32),
  salt varchar(255) NOT NULL
);

CREATE TABLE category (
  id SERIAL PRIMARY KEY,
  name char (32)

);

CREATE TABLE teacher (
  id SERIAL PRIMARY KEY,
  first_name char (32),
  last_name char (32),
  appuser_id integer,
  
  constraint fk_appuser foreign key (appuser_id) references app_user (id)

);

CREATE TABLE student (
id SERIAL PRIMARY KEY,
appuser_id integer,
first_name varchar(32),
last_name varchar(32),

constraint fk_appuser foreign key (appuser_id) references app_user (id)
);

CREATE TABLE course (
  id SERIAL PRIMARY KEY,
  name char (32),
  description char(2000),
  duration integer,
  category_id integer,

  constraint fk_category foreign key (category_id) references category (id)
);

CREATE TABLE curriculum (
  id SERIAL PRIMARY KEY,
  name varchar(32),
  course_id integer,

  constraint fk_course foreign key (course_id) references course (id)
);


CREATE TABLE app_user_course (
  id SERIAL PRIMARY KEY,
  app_user_id integer,
  course_id integer,

constraint fk_app_user foreign key (app_user_id) references app_user (id),
constraint fk_course foreign key (course_id) references course (id)
);

CREATE TABLE homework (
id SERIAL PRIMARY KEY,
title varchar(100),
due_date date,
complete boolean,
question_id integer,
answer_id integer,
course_id integer,

constraint fk_homework foreign key (course_id) references curriculum(id)
);


CREATE TABLE homework_submission (
id SERIAL PRIMARY KEY,
student_id integer,
curriculum_id integer,

constraint fk_student foreign key (student_id) references student (id),
constraint fk_curriculum foreign key (curriculum_id) references curriculum (id)
);




CREATE TABLE syllabus (
id SERIAL PRIMARY KEY,
curriculum_id integer,
instruction varchar(10000),
attachments varchar(200),
homework_id integer,


constraint fk_curriculum foreign key (curriculum_id) references curriculum (id),
constraint fk_homework foreign key (homework_id) references homework (id)
);

CREATE TABLE grades (
id SERIAL PRIMARY KEY,
grade integer,
homework_id integer,
app_user_id integer,

constraint fk_app_user foreign key (app_user_id) references app_user (id),
constraint fk_homework foreign key (homework_id) references homework (id)
);

--ROLLBACK;
COMMIT;