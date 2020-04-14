-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

-- SELECT name FROM course
-- JOIN app_user_course ON course.id = app_user_course.id
-- JOIN app_user ON app_user.id = app_user_course.app_user_id
-- JOIN student ON app_user.id = student.appuser_id;

-- SELECT name FROM course
-- JOIN category ON course.category_id = category.id;


INSERT INTO category (name)
VALUES ('Math');

INSERT INTO category (name)
VALUES ('Science');

INSERT INTO category (name)
VALUES ('English');

INSERT INTO category (name)
VALUES ('Social Studies');

INSERT INTO category (name)
VALUES ('Foreign Languages');

INSERT INTO category (name)
VALUES ('Art');

INSERT INTO category (name)
VALUES ('Music');

INSERT INTO app_user (user_name, password, role, salt)
VALUES ('johnsmith', '123', 'student', '123abc');

INSERT INTO app_user (user_name, password, role, salt)
VALUES ('steveC', 'techgeek', 'teacher', 'techgeekabc');

INSERT INTO student(appuser_id, first_name, last_name)
VALUES (1, 'john', 'smith');

INSERT INTO teacher (first_name, last_name, appuser_id)
VALUES ('steve', 'carmichael', 2);

--INSERT INTO teacher(first_name, last_name)
--VALUES ('Steve', 'Carmichael');
--
--INSERT INTO teacher(first_name, last_name)
--VALUES ('Brian', 'Lauvray');
--
--INSERT INTO teacher(first_name, last_name)
--VALUES ('Andrew', 'Frank');
--
--INSERT INTO teacher(first_name, last_name)
--VALUES ('John', 'Fulton');
--
--INSERT INTO teacher(first_name, last_name)
--VALUES ('Matt', 'Eland');
--
--INSERT INTO student(first_name, last_name)
--VALUES ('Bryan', 'Wright');
--
--INSERT INTO student(first_name, last_name)
--VALUES ('Ahmed', 'Ali');
--
--INSERT INTO student(first_name, last_name)
--VALUES ('Jennifer', 'Linn');
--
--INSERT INTO student(first_name, last_name)
--VALUES ('Matt', 'Zendejas');
--

INSERT INTO course (name, description, duration, category_id)
VALUES ('1st Grade Math', 'First grade math continues to build math skills through various question formats, multiple exercise techniques, and learning games. Colorful, 
print-based lessons focus on continuing fundamental concepts taught in kindergarten. Fun, hands-on activities include connecting dot-to-dots, drawing colors and shapes, 
and matching items.Topics in this online academy course include addition and subtraction of double digits to 18, counting, word problems, place value, shapes, fractions, 
time, measurement, money, bar graphs, word numbers to 100, greater than and less than, and skip counting. Students in this online academy course use common manipulatives 
like a clock, ruler, or coins to learn concepts.', '1', null);

INSERT INTO course (name, description, duration, category_id)
VALUES ('1st Grade English', 'The {Project Name} curriculum constitutes a solid first grade language arts program 
correlated to state standards, which many homeschool parents use it as their entire curriculum. Non-homeschoolers utilize 
the lessons for extra practice, an online first grade tutorial, or summer enrichment. First grade language arts contains 
Language Arts and Language Arts Extensions. The language arts section contains 13 chapters and hundreds of learning activities 
that are primarily based on phonics. Exercises and lesson activities build phonological awareness, phonics, and reading skills.
Lessons are taught by colorful animated characters that sing, explain, and interact with the students.
First graders learn to identify the sight and sounds and demonstrate knowledge of high frequency words.
Reading exercises at the end of each chapter introduce and develop readiness and comprehension skills.
Interactive “think and respond” stories help build sight word vocabulary, sound-spelling skills and reading comprehension.
The language arts is GREAT for helping with phonics and beginner reading skills. Plus, the lessons are thoroughly entertaining!', '1', null);

INSERT INTO course (name, description, duration, category_id)
VALUES ('1st Grade Science', 'The first grade science curriculum is available for students in the first through sixth grades. 
Parents can expect to see subjects covered on the scientific method, physical science, earth science, energy and more. Below we’ve 
provided the lessons plans for first grade science curriculum enhanced by YouTube, as well as additional science material you’ll 
find at the first grade level. Members often use this pages as a resource for more detailed planning, as a guide to help select specific 
activities using the activity finder or to compare our curriculum with state standards and homeschooling laws.', '1', null);

INSERT INTO course (name, description, duration, category_id)
VALUES ('2nd Grade Math', 'Second grade math continues to build math skills through various question formats, multiple exercise techniques, and learning games. Colorful, print-based 
lessons in this online academy course focus on continuing concepts taught in 1st grade and include fun activities to enrich learning and build comprehension. Topics in this online academy 
course include number words to 1,000, addition and subtraction to double and triple digits, area and volume, shapes, graphs, money conversion, temperature and thermometers, calendars, 
operation signs, and word problems. Skip counting, recognizing ordinal numbers, and understanding odd and even numbers are all discussed. Course units contain quizzes and tests to evaluate 
progress and student mastery.', '1', null);

INSERT INTO course (name, description, duration, category_id)
VALUES ('2nd Grade English', 'Second grade language arts continues to build phonics, reading, and grammar. Colorful, illustrated lessons in this online academy course focus 
on building essential skills in reading, writing, listening, speaking, spelling, vocabulary, and penmanship. Print-based lessons include word activities, writing practice, syllables 
and consonant blends, and stories for reading comprehension. Topics studied include nouns and verbs, vowel sounds, plurals, prefixes and suffixes, cursive writing, rhyming words, 
simple sentences, punctuation, digraphs, and diphthongs. In both Horizons and LIFEPAC, writing in cursive is introduced, and guidelines to help students learn correct writing formations 
are included. In Horizons, lessons focus specifically on the concepts of penmanship, phonics and reading, and spelling and vocabulary are offered. Course units in this online academy 
course contain quizzes and tests to evaluate progress and student mastery.', '1', null);

INSERT INTO course (name, description, duration, category_id)
VALUES ('2nd Grade Science', 'In our second grade curriculum, students will demonstrate an understanding of scientific inquiry, including the skills, processes, and tools necessary to 
conduct a simple scientific investigation. In Life Science, students will show knowledge of the needs and characteristics of animals and the way they interact with their own distinct 
environments. In the Weather unit, students will understand different weather elements and how weather can be observed and measured using tools. From the Magnets unit, students will learn 
about force and motion through the properties of magnetism.', '1', null);

INSERT INTO app_user_course (app_user_id, course_id)
VALUES (1, 1);

INSERT INTO app_user_course (app_user_id, course_id)
VALUES (1, 4);

INSERT INTO app_user_course (app_user_id, course_id)
VALUES (1, 3);

INSERT INTO app_user_course (app_user_id, course_id)
VALUES (1, 5);

INSERT INTO curriculum (name, course_id)
VALUES('Week1: Addition', 1);

INSERT INTO curriculum (name, course_id)
VALUES ('Week2: Subtraction', 1);

INSERT INTO curriculum (name, course_id)
VALUES('Week3: Negative Numbers', 1);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES ('MadMath', 1, '10/10/19', true, 1);

INSERT INTO syllabus (curriculum_id, instruction, attachments, homework_id)
VALUES (1, 'This is the first lesson in a series of lesson on addition. It will begin with this lesson teaching addition vocabulary and moving forward with lessons on part-part-whole, counting on, Commutative Property, etc. Students will use these terms while studying and learning addition. There are multiple strategies I want my students to use to add numbers, such as drawing pictures or using their fingers. No matter which strategy is used, our students need the same common vocabulary to know what the different parts of the problem are called and to describe what they are doing to complete a task. Another important concept is for my students to develop an understanding of the equals sign and how and why we use it. This lesson incorporates labeling the different parts of an addition equation and a discussing the meanings of the different parts, including the equals sign','https://www.mathpyramid.com/worksheets/summertime-math.pdf',1);

INSERT INTO instruction (title, content, syllabus_id)
VALUES ('ADDITION CAN BE FUN!!!', 'https://www.mathpyramid.com/worksheets/summertime-math.pdf' , 1);

INSERT INTO grades (grade, homework_id, app_user_id)
VALUES (100, 1, 1);

INSERT INTO attachments (link, attachments_description, syllabus_id)
VALUES ('https://www.mathpyramid.com/worksheets/summertime-math.pdf', 'week 1 math addition homework', 1);

UPDATE course
SET category_id = 1 
WHERE course.name LIKE '%Math%';

UPDATE course
SET category_id = 3 
WHERE course.name LIKE '%English%';

UPDATE course
SET category_id = 2 
WHERE course.name LIKE '%Science%';

UPDATE course
SET category_id = 4
WHERE course.name LIKE '%Social Studies%';

UPDATE course
SET category_id = 5 
WHERE course.name LIKE '%Spanish%' 
	OR course.name LIKE '%French' 
	OR course.name LIKE '%German%';

UPDATE course
SET category_id = 6 
WHERE course.name LIKE '%Art%';

UPDATE course
SET category_id = 7 
WHERE course.name LIKE '%Music%';

COMMIT;