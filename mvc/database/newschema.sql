DROP TABLE student;
DROP TABLE syllabus;
DROP TABLE homework;


CREATE TABLE homework (
id SERIAL PRIMARY KEY,
title varchar(100),
due_date date,
complete boolean
question_id
answer_id
);

CREATE TABLE homework_submission (
id SERIAL PRIMARY KEY,


CREATE TABLE syllabus (
id SERIAL PRIMARY KEY,
curriculum_id integer,
instruction varchar(10000),
attachments varchar(200),
homework_id integer,


constraint fk_curriculum foreign key (curriculum_id) references curriculum (id),
constraint fk_homework foreign key (homework_id) references homework (id)
)

CREATE TABLE student (
id SERIAL PRIMARY KEY,
appuser_id integer,
first_name varchar(32),
last_name varchar(32),

constraint fk_appuser foreign key (appuser_id) references app_user (id)
);