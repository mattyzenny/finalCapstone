-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

INSERT INTO teacher(first_name, last_name)
VALUES ('Steve', 'Carmichael');

INSERT INTO category (name)
VALUES ('Math');

INSERT INTO teacher(first_name, last_name)
VALUES ('Steve', 'Carmichael');

INSERT INTO category (name)
VALUES ('Math');

INSERT INTO curriculum (name, description, teacher_id, duration, category_id)
VALUES ('1st Grade Math', 'First grade math continues to build math skills through various question formats, multiple exercise techniques, and learning games. Colorful, 
print-based lessons focus on continuing fundamental concepts taught in kindergarten. Fun, hands-on activities include connecting dot-to-dots, drawing colors and shapes, 
and matching items.Topics in this online academy course include addition and subtraction of double digits to 18, counting, word problems, place value, shapes, fractions, 
time, measurement, money, bar graphs, word numbers to 100, greater than and less than, and skip counting. Students in this online academy course use common manipulatives 
like a clock, ruler, or coins to learn concepts.', null, '1', null);

INSERT INTO curriculum (name, description, teacher_id, duration, category_id)
VALUES ('1st Grade Language Arts', 'The {Project Name} curriculum constitutes a solid first grade language arts program 
correlated to state standards, which many homeschool parents use it as their entire curriculum. Non-homeschoolers utilize 
the lessons for extra practice, an online first grade tutorial, or summer enrichment. First grade language arts contains 
Language Arts and Language Arts Extensions. The language arts section contains 13 chapters and hundreds of learning activities 
that are primarily based on phonics. Exercises and lesson activities build phonological awareness, phonics, and reading skills.
Lessons are taught by colorful animated characters that sing, explain, and interact with the students.
First graders learn to identify the sight and sounds and demonstrate knowledge of high frequency words.
Reading exercises at the end of each chapter introduce and develop readiness and comprehension skills.
Interactive “think and respond” stories help build sight word vocabulary, sound-spelling skills and reading comprehension.
The language arts is GREAT for helping with phonics and beginner reading skills. Plus, the lessons are thoroughly entertaining!', null, '1', null);

INSERT INTO curriculum (name, description, teacher_id, duration, category_id)
VALUES ('1st Grade Science', 'The first grade science curriculum is available for students in the first through sixth grades. 
Parents can expect to see subjects covered on the scientific method, physical science, earth science, energy and more. Below we’ve 
provided the lessons plans for first grade science curriculum enhanced by YouTube, as well as additional science material you’ll 
find at the first grade level. Members often use this pages as a resource for more detailed planning, as a guide to help select specific 
activities using the activity finder or to compare our curriculum with state standards and homeschooling laws.', null, '1', null);

INSERT INTO curriculum (name, description, teacher_id, duration, category_id)
VALUES ('2nd Grade Math', 'Second grade math continues to build math skills through various question formats, multiple exercise techniques, and learning games. Colorful, print-based 
lessons in this online academy course focus on continuing concepts taught in 1st grade and include fun activities to enrich learning and build comprehension. Topics in this online academy 
course include number words to 1,000, addition and subtraction to double and triple digits, area and volume, shapes, graphs, money conversion, temperature and thermometers, calendars, 
operation signs, and word problems. Skip counting, recognizing ordinal numbers, and understanding odd and even numbers are all discussed. Course units contain quizzes and tests to evaluate 
progress and student mastery.', null, '1', null);

INSERT INTO curriculum (name, description, teacher_id, duration, category_id)
VALUES ('2nd Grade Language Arts', 'Second grade language arts continues to build phonics, reading, and grammar. Colorful, illustrated lessons in this online academy course focus 
on building essential skills in reading, writing, listening, speaking, spelling, vocabulary, and penmanship. Print-based lessons include word activities, writing practice, syllables 
and consonant blends, and stories for reading comprehension. Topics studied include nouns and verbs, vowel sounds, plurals, prefixes and suffixes, cursive writing, rhyming words, 
simple sentences, punctuation, digraphs, and diphthongs. In both Horizons and LIFEPAC, writing in cursive is introduced, and guidelines to help students learn correct writing formations 
are included. In Horizons, lessons focus specifically on the concepts of penmanship, phonics and reading, and spelling and vocabulary are offered. Course units in this online academy 
course contain quizzes and tests to evaluate progress and student mastery.', null, '1', null);

INSERT INTO curriculum (name, description, teacher_id, duration, category_id)
VALUES ('2nd Grade Science', 'In our second grade curriculum, students will demonstrate an understanding of scientific inquiry, including the skills, processes, and tools necessary to 
conduct a simple scientific investigation. In Life Science, students will show knowledge of the needs and characteristics of animals and the way they interact with their own distinct 
environments. In the Weather unit, students will understand different weather elements and how weather can be observed and measured using tools. From the Magnets unit, students will learn 
about force and motion through the properties of magnetism.', null, '1', null);



COMMIT;