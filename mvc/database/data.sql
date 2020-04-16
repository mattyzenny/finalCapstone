-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

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



INSERT INTO course (name, description, duration, category_id)
VALUES('1st Grade Math', 'Students will develop an understanding of addition, subtraction, and strategies for addition and subtraction with in the range of 1 - 20, develop an understanding of whole number relationships and place value, including grouping in tens and ones, develop understanding of linear measurement and measuring lengths as iterating length units, and learn reasoning about attributes of, and composing and decomposing geometric shapes.', '9', null);

INSERT INTO course (name, description, duration, category_id)
VALUES('1st Grade English', '1st Grade English provides ample learning curriculum to teach the student basic phonetics, beginning grammar, basic sentence structure, and use of basic descriptors.', '9', null);

INSERT INTO course (name, description, duration, category_id)
VALUES('1st Grade Social Studies', '1st Grade Social Studies explores the relationships in students’ lives with their families, friends, teachers, and neighbors. Students learn that people live differently in different places and that they can help care for the world.', '9', null);

INSERT INTO course (name, description, duration, category_id)
VALUES('1st Grade Science', '1st Grade Science invites students to discover relationships between plant and animal parts and their functions. They investigate how light and sound travel and make predictions based patterns in the apparent movement of the sun, moon, and stars.', '9', null);

INSERT INTO curriculum (name, course_id)--1stMath1
VALUES ('Unit 1: Operations and Algebraic Thinking', 1);
INSERT INTO curriculum (name, course_id)--1stMath2
VALUES ('Unit 2: Numbers and Operations in Base 10 Place Value', 1);
INSERT INTO curriculum (name, course_id)--1stMath3
VALUES ('Unit 3: Number and Operations in Base 10 Addition and Subtraction', 1);
INSERT INTO curriculum(name, course_id)--1stMath4
VALUES ('Unit 4: Elementary Geometry', 1);
INSERT INTO curriculum(name, course_id)--1stMath5
VALUES ('Unit 5: Measurements', 1);

INSERT INTO curriculum (name, course_id)--1stEnglish6
VALUES ('Unit 1: Consonants and Vowels, Syllables, Rhyming, Blending and Segmenting, Consonant Sounds and Letters', 2);
INSERT INTO curriculum (name, course_id)--1stEnglish7
VALUES ('Unit 2: Consonant blends and digraphs & Short and Long Vowels ', 2);
INSERT INTO curriculum (name, course_id)--1stEnglish8
VALUES ('Unit 3: Silent e, Vowel teams, R-controlled Vowels', 2);
INSERT INTO curriculum(name, course_id)--1stEnglish9
VALUES ('Unit 4: Two-syllable words', 2);

INSERT INTO curriculum (name, course_id)--1stSS10
VALUES ('Unit 1: Social Studies Alive! Me and My World', 3);
INSERT INTO curriculum (name, course_id)--1stSS11
VALUES ('Unit 2: Social Studies Alive! My School and Family', 3);
INSERT INTO curriculum (name, course_id)--1stSS12
VALUES ('Unit 3: Social Studies Alive! My Community', 3);
INSERT INTO curriculum(name, course_id)--SS13
VALUES ('Unit 4: Social Studies Alive! Our Community and Beyond', 3);

INSERT INTO curriculum (name, course_id)--1stScience14
VALUES ('Unit 1: Plant and Animal Parts', 4);
INSERT INTO curriculum (name, course_id)--1stScience15
VALUES ('Unit 2: Light and Sound', 4);
INSERT INTO curriculum (name, course_id)--1stScience16
VALUES ('Unit 3: Sky Patterns', 4);




INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use addition and subtraction within 20 to solve word problems involving situations of adding to, taking from, putting together, taking apart, and comparing, with unknowns in all positions, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem.', 1, '2020-04-17', false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Solve word problems that call for addition of three whole numbers whose sum is less than or equal to 20, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem.', 1, '2020-04-17', false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Organize, represent, and interpret data with up to three categories; ask and answer questions about the total number of data points, how many in each category, and how many more or less are in one category than in another.', 1, '2020-04-17', false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Apply properties of operations as strategies to add and subtract.2 Examples: If 8 + 3 = 11 is known, then 3 + 8 = 11 is also known. (Commutative property of addition.) To add 2 + 6 + 4, the second two numbers can be added to make a ten, so 2 + 6 + 4 = 2 + 10 = 12. (Associative property of addition.)', 1, '2020-04-17', false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Understand subtraction as an unknown-addend problem. For example, subtract 10 – 8 by finding the number that makes 10 when added to 8. Add and subtract within 20.', 1, '2020-04-17', false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Determine the unknown whole number in an addition or subtraction equation relating three whole numbers. For example, determine the unknown number that makes the equation true in each of the equations 8 + ? = 11, 5 = _ – 3, 6 + 6 = _.', 1, '2020-04-17', false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Relate counting to addition and subtraction (e.g., by counting on 2 to add 2).', 1, '2020-04-17', false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Add and subtract within 20, demonstrating fluency for addition and subtraction within 10. Use strategies such as counting on; making ten (e.g., 8 + 6 = 8 + 2 + 4 = 10 + 4 = 14); decomposing a number leading to a ten (e.g., 13 – 4 = 13 – 3 – 1 = 10 – 1 = 9); using the relationship between addition and subtraction (e.g., knowing that 8 + 4 = 12, one knows 12 – 8 = 4); and creating equivalent but easier or known sums (e.g., adding 6 + 7 by creating the known equivalent 6 + 6 + 1 = 12 + 1 = 13).', 1, '2020-04-17', false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Understand the meaning of the equal sign, and determine if equations involving addition and subtraction are true or false. For example, which of the following equations are true and which are false? 6 = 6, 7 = 8 –1, 5 + 2 = 2 + 5, 4 + 1 = 5 + 2.', 1, '2020-04-17', false, 1);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Count to 120, starting at any number less than 120. In this range, read and write numerals and represent a number of objects with a written numeral.', 1, '2020-04-17', false, 2);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Understand that the two digits of a two-digit number represent amounts of tens and ones. Understand the following as special cases:', 1, '2020-04-17', false, 2);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('10 can be thought of as a bundle of ten ones – called a "ten".', 1, '2020-04-17', false, 2);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('The numbers from 11 to 19 are composed of a ten and one, two, three, four, five six, seven, eight, or nine ones.', 1, '2020-04-17', false, 2);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('The numbers 10, 20, 30, 40, 50, 60, 70, 80, 90 refer to one, two , three, four, five, six, seven, eight, and nine tens (and 0 ones)', 1, '2020-04-17', false, 2);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Compare two two-digit numbers based on meanings of tens and ones digits, recording the results of comparisons with the symbols >, =, <.', 1, '2020-04-17', false, 2);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Given a two-digit number, mentally find 10 more or 10 less than the number, without having to count; explain the reasoning used.', 1, '2020-04-17', false, 2);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Add and subtract within 20, demonstrating fluency for addition and subtraction within 10. Use strategies such as counting on; making ten (e.g., 8 + 6 = 8 + 2 + 4 = 10 + 4 = 14); decomposing a number leading to a ten (e.g., 13 – 4 = 13 – 3 – 1 = 10 – 1 = 9); using the relationship between addition and subtraction (e.g., knowing that 8 + 4 = 12, one knows 12 – 8 = 4); and creating equivalent but easier or known sums (e.g., adding 6 + 7 by creating the known equivalent 6 + 6 + 1 = 12 + 1 = 13). (continued from Unit 1)', 1, '2020-04-17', false, 2);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use addition and subtraction within 20 to solve word problems involving situations of adding to, taking from, putting together, taking apart, and comparing, with unknowns in all positions, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem. (continued from Unit 1)', 1, '2020-04-17', false, 2);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Solve word problems that call for addition of three whole numbers whose sum is less than or equal to 20, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem. (continued from Unit 1)', 1, '2020-04-17', false, 2);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Organize, represent, and interpret data with up to three categories; ask and answer questions about the total number of data points, how many in each category, and how many more or less are in one category than in another. (continued from Unit 1)', 1, '2020-04-17', false, 2);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use addition and subtraction within 20 to solve word problems involving situations of adding to, taking from, putting together, taking apart, and comparing, with unknowns in all positions, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem.', 1, '2020-04-17', false, 3);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Solve word problems that call for addition of three whole numbers whose sum is less than or equal to 20, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem.', 1, '2020-04-17', false, 3);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Organize, represent, and interpret data with up to three categories; ask and answer questions about the total number of data points, how many in each category, and how many more or less are in one category than in another.', 1, '2020-04-17', false, 3);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Given a two-digit number, mentally find 10 more or 10 less than the number, without having to count; explain the reasoning used.', 1, '2020-04-17', false, 3);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Add within 100, including adding a two-digit number and a one-digit number, and adding a two-digit number and a multiple of 10, using concrete models or drawings and strategies based on place value, properties of operations, and or the relationship between addition an subtraction; relate the strategy to a written method and explain the reasoning used.  Understand that in adding two-digit numbers, one adds tens and tens, ones and ones; and sometimes it is necessary to compose a ten.', 1, '2020-04-17', false, 3);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Subtract multiples of 10 in the range 10-90 from multiples of 10 in the range 10-90 (positive or zero differences), using concrete models or drawings and strategies based on place value, properties of operations, and/or the relationship between addition and subtraction; relate the strategy to a written method and explain the reasoning used.', 1, '2020-04-17', false, 3);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Add and subtract within 20, demonstrating fluency for addition and subtraction within 10. Use strategies such as counting on; making ten (e.g., 8 + 6 = 8 + 2 + 4 = 10 + 4 = 14); decomposing a number leading to a ten (e.g., 13 – 4 = 13 – 3 – 1 = 10 – 1 = 9); using the relationship between addition and subtraction (e.g., knowing that 8 + 4 = 12, one knows 12 – 8 = 4); and creating equivalent but easier or known sums (e.g., adding 6 + 7 by creating the known equivalent 6 + 6 + 1 = 12 + 1 = 13).', 1, '2020-04-17', false, 3);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Identify, name and compare plane geometric figures (triangles, circles, squares, rectangles and rhombi) by sorting and describing their attributes (by shape, number of sides, size or number of angles)', 1, '2020-04-17', false, 4);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use concrete materials to build shapes (rectangles, squares, trapezoids, triangles, half-circles and quarter-circles) that have the defining attributes (attributes that make a shape that specific shape)', 1, '2020-04-17', false, 4);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Identify and explain the similarities and differences between two shapes.', 1, '2020-04-17', false, 4);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use concrete materials to create composite shapes from two or three-dimensional shapes (cubes, right rectangular prisms, right circular cones and right circular cylinders).', 1, '2020-04-17', false, 4);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use concrete materials to create a new shape from a composite shape.', 1, '2020-04-17', false, 4);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Identify equal parts of a partitioned shape with concrete materials and describe the shares using the words halves, fourths, and quarters as well as the phrases half of, fourth of and quarter of.', 1, '2020-04-17', false, 4);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Gather and collect data to answer questions', 1, '2020-04-17', false, 4);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Interpret data contained in picture graphs using a variety of categories with 1:1 intervals', 1, '2020-04-17', false, 4);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Measure length with nonstandard units (paper clips, toothpicks, unifix cubes, eraser length…) to understand that the length measurement of an object is the number of same-size length units that span it with no gaps or overlaps.', 1, '2020-04-17', false, 5);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Order three objects by length.', 1, '2020-04-17', false, 5);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Compare the lengths of two objects indirectly by using a third object (concept of transitivity – a is shorter than b and b is shorter than c, so a is shorter than c).', 1, '2020-04-17', false, 5);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use tools to measure time to the hour and half hour intervals', 1, '2020-04-17', false, 5);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Apply knowledge of fractional wholes and halves to telling time.', 1, '2020-04-17', false, 5);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Compare the same time on analog and digital clocks to measure time to the hour and half hour.', 1, '2020-04-17', false, 5);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Gather and collect data  to answer questions', 1, '2020-04-17', false, 5);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Interpret data contained in picture graphs using a variety of categories with 1:1 intervals', 1, '2020-04-17', false, 5);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Collect, organize, display and interpret data using tally charts, picture graphs, bar graphs and tables.', 1, '2020-04-17', false, 5);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Sort consonants and vowel, Find the vowels in a word, How many syllables does the word have', 1, '2020-04-17', false, 6);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Sort by the number of syllables, Choose the picture that rhymes with the word, Which word does not rhyme, Complete the rhyme, Complete the poem with a word that rhymes', 1, '2020-04-17', false, 6);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Blend the sounds together to make a word, Identify each sound in a word', 1, '2020-04-17', false, 6);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Put the sounds in order', 1, '2020-04-17', false, 6);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Which two words start with the same sound?, Which two words end with the same sound?', 1, '2020-04-17', false, 6);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Which letter does the word start with?, Which letter does the word end with?', 1, '2020-04-17', false, 6);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Complete the word with the right initial consonant blend, Does the word start with a consonant blend?, Complete the word with the right final consonant blend', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Does the word end with a consonant blend?, Fill in the missing consonant blend, Complete the word to match the picture: -ss, -ll, -ff, -zz, -ck', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the correct digraph, Complete the word with the right digraph', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Spell the digraph word, Sort by initial consonant blend or digraph', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the short a word that matches the picture, Complete the short a word, Choose the short a sentence that matches the picture', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the picture that matches the short e word, Complete the short e word, Choose the short e sentence that matches the picture', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the short i word that matches the picture, Complete the short i words, Choose the short i sentence that matches the picture', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the short o word that matches the picture, Complete the short o word, Choose the short o sentence that matches the picture', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the picture that matches the short u word, Complete the short u word, Choose the short u sentence that matches the picture', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Identify the short vowel sound in a word, Complete the word with the right short vowel, Spell the short vowel word, Complete the sentence with the correct short vowel word', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Sort short and long vowel words, Match the short a and long a words to pictures, Match the short e and long e words to pictures', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the short i or long i word that matches the picture, Choose the short o or long o word that matches the picture', 1, '2020-04-17', false, 7);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the short u or long u word that matches the picture, Use spelling patterns to sort long and short vowel words', 1, '2020-04-17', false, 7);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the silent e word that matches the picture, Complete the silent e words', 1, '2020-04-17', false, 8);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Spell the silent e word, Choose the silent e sentence that matches the picture', 1, '2020-04-17', false, 8);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the picture that matches the vowel team word, Complete the vowel team words', 1, '2020-04-17', false, 8);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Complete the word with the right vowel team, Choose the vowel team sentence that matches the picture', 1, '2020-04-17', false, 8);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Choose the r-control word that matches the picture, Complete the word with the right r-controlled vowel: ar, er, ir, or, ur', 1, '2020-04-17', false, 8);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Put two syllables together to create a word, Complete the two-syllable words, Complete the sentence with a two-syllable word', 1, '2020-04-17', false, 9);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Who Am I? Reading Further: The Story of Our Flag', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What is a Family? Reading Further: Our Country’s Birthday', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do I Get Along with Others? Reading Further: Rules Help Us', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do I Make Friends? Reading Further: The First Thanksgiving', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do I Solve Problems with Others? Reading Further: Who Can Help?', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Can I Be a Good Helper at School? Reading Further: Who Works at My School?', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Is in My Neighborhood? Reading Further: How Can We Improve Our Neighborhood?', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Where Am I in the World? Reading Further: Symbols of Our Country', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do People Live Around the World? Reading Further: Birthdays Then and Now', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Do People Need and Want? Reading Further: I Make Choices When I Shop', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Can I Help Take Care of the World? Reading Further: Saving Money', 1, '2020-04-17', false, 10);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do We Get Along in School? Reading Further: A Place to Share', 1, '2020-04-17', false, 11);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Why Is It Important to Learn from Each Other? Reading Further: The Grasshopper’s Choice', 1, '2020-04-17', false, 11);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Why Do Schools Have Rules? Reading Further: Who Makes the Rules??', 1, '2020-04-17', false, 11);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Who Works at Your School? Reading Further: Ms. Johnson Has Many Jobs', 1, '2020-04-17', false, 11);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Are We Good Helpers at School? Reading Further: Clara Barton Helped Others', 1, '2020-04-17', false, 12);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Is a Map? Reading Further: The Right Kind of Map', 1, '2020-04-17', false, 12);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Was School Like Long Ago? Reading Further: From Buggies to Blastoff!', 1, '2020-04-17', false, 12);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Groups Do We Belong To? Reading Further: My Groups', 1, '2020-04-17', false, 12);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Are Families Special? Reading Further: Families Live in Different Places', 1, '2020-04-17', false, 12);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Do Families Need and Want? Reading Further: From Farm to Table', 1, '2020-04-17', false, 12);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do Family Members Care for Each Other? Reading Further: Taking Care of Earth', 1, '2020-04-17', false, 12);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do Families Change over Time? Reading Further: Old Family Pictures', 1, '2020-04-17', false, 12);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Where Do Families Live? Reading Further: Learning About the Dust Bowl', 1, '2020-04-17', false, 12);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Are Family Traditions? Reading Further: U.S. Symbols and Traditions', 1, '2020-04-17', false, 12);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Do Good Neighbors Do? Reading Further: Trading for Apples', 1, '2020-04-17', false, 12);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Is a Community? Reading Further: One Community’s History', 1, '2020-04-17', false, 13);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Are Communities Different? Reading Further: Instant Suburbs', 1, '2020-04-17', false, 13);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Is a Map? Reading Further: Mapping a Trip', 1, '2020-04-17', false, 13);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Is Geography? Reading Further: Riding for Climate', 1, '2020-04-17', false, 13);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do People Use Our Environment? Reading Further: Using Plants in New Ways', 1, '2020-04-17', false, 13);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Are Goods Made and Brought to Us? Reading Further: Food from the Desert', 1, '2020-04-17', false, 14);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Who Provides Services in a Community? Reading Further: Working in Central Park', 1, '2020-04-17', false, 14);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Can I Be a Smart Consumer? Reading Further: Shopping for School', 1, '2020-04-17', false, 14);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do Communities Change? Reading Further: Los Angeles Grows', 1, '2020-04-17', false, 14);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Did One Community Change? Reading Further: Family Stories', 1, '2020-04-17', false, 14);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Can One Person Make a Difference in a Community? Reading Further: Homework Help', 1, '2020-04-17', false, 14);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do Leaders Help Their Communities? Reading Further: Leaders Vote for the Community', 1, '2020-04-17', false, 14);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Does a Good Citizen Do? Reading Further: Good Citizen Lincoln', 1, '2020-04-17', false, 14);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Do Communities Share? Reading Further: Happy Birthday, USA!', 1, '2020-04-17', false, 14);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Are Plants and Animals Like Others of the Same Kind? | Patterns | Constructing Explanations and Designing Solutions | Reading Further: Munchy, Crunchy Apples', 1, '2020-04-17', false, 15);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Are Plants and Animals Like Their Parents? | Patterns | Constructing Explanations and Designing Solutions | Reading Further: A Pattern of Spots', 1, '2020-04-17', false, 15);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Different Parts Do Plants Have? | Structure and Function | Constructing Explanations and Designing Solutions | Reading Further: A Plant Trap', 1, '2020-04-17', false, 15);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('What Different Parts Do Animals Have? | Structure and Function | Constructing Explanations and Designing Solutions | Reading Further: The Shape of a Beak', 1, '2020-04-17', false, 15);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do Plants and Animals Sense Things? | Structure and Function | Constructing Explanations and Designing Solutions | Reading Further: Eagle Eyes', 1, '2020-04-17', false, 15);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do Plants and Animals Take in Water, Food, Air, and Light? | Structure and Function | Constructing Explanations and Designing Solutions | Reading Further: Dinnertime for Snakes', 1, '2020-04-17', false, 15);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do Plants and Animals Stay Safe? | Structure and Function | Constructing Explanations and Designing Solutions | Reading Further: The Shark and the Octopus', 1, '2020-04-17', false, 15);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do Young Plants and Animals Stay Safe? | Patterns | Constructing Explanations and Designing Solutions | Reading Further: Penguin Parents', 1, '2020-04-17', false, 15);


INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Does Light Help You See? | Cause and Effect | Constructing Explanations and Designing Solutions | Reading Further: Flashing Lights in the Night', 1, '2020-04-17', false, 16);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Does Light Travel? | Cause and Effect | Planning and Carrying Out Investigations | Reading Further: Fun with Fun House Mirrors', 1, '2020-04-17', false, 16);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Are Shadows Made? | Cause and Effect | Planning and Carrying Out Investigations | Reading Further: Stories Told with Shadows', 1, '2020-04-17', false, 16);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Is Sound Made? | Cause and Effect | Planning and Carrying Out Investigations | Reading Further: The Loudest Sound in Nature', 1, '2020-04-17', false, 16);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Does Sound Travel? | Cause and Effect | Planning and Carrying Out Investigations | Reading Further: Echoes in the Dark', 1, '2020-04-17', false, 16);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('How Do People Use Light and Sound to Send Messages? | Cause and Effect | Constructing Explanations and Designing Solutions | Reading Further: Sending Messages with Light', 1, '2020-04-17', false, 16);


UPDATE course
SET category_id = 1 
WHERE course.name LIKE '%Math%';

UPDATE course
SET category_id = 3 
WHERE course.name LIKE '%English%';

UPDATE course
SET category_id = 2 
WHERE course.name LIKE '%Social Studies%';

UPDATE course
SET category_id = 4
WHERE course.name LIKE '%Science%';

--UPDATE course
--SET category_id = 5 
--WHERE course.name LIKE '%Spanish%' 
--	OR course.name LIKE '%French' 
--	OR course.name LIKE '%German%';

--UPDATE course
--SET category_id = 6 
--WHERE course.name LIKE '%Art%';
--
--UPDATE course
--SET category_id = 7 
--WHERE course.name LIKE '%Music%';

INSERT INTO app_user_course (app_user_id, course_id)
VALUES (1, 1);

INSERT INTO app_user_course (app_user_id, course_id)
VALUES (1, 4);

INSERT INTO app_user_course (app_user_id, course_id)
VALUES (1, 3);

INSERT INTO app_user_course (app_user_id, course_id)
VALUES (1, 2);


COMMIT;