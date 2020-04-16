BEGIN TRANSACTION;
-----------------------
---INSERT CATEGORIES---
-----------------------
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


-----------------------
----INSERT APPUSERS----
-----------------------
INSERT INTO app_user (user_name, password, role, salt)
VALUES ('johnsmith', '123', 'student', '123abc');

INSERT INTO app_user (user_name, password, role, salt)
VALUES ('steveC', 'techgeek', 'teacher', 'techgeekabc');

--------2 additional users during registration(3 & 4)-------
-----------------------
-----INSERT MATH----
-----------------------

INSERT INTO course (name, description, duration, category_id)
VALUES('1st Grade Math', 'Students will develop an understanding of addition, subtraction, and strategies for addition and subtraction with in the range of 1 - 20, develop an understanding of whole number relationships and place value, including grouping in tens and ones, develop understanding of linear measurement and measuring lengths as iterating length units, and learn reasoning about attributes of, and composing and decomposing geometric shapes.', '9 weeks', null);

INSERT INTO curriculum (name, course_id)
VALUES ('Unit 1: Operations and Algebraic Thinking', null);

INSERT INTO curriculum (name, course_id)
VALUES ('Unit 2: Numbers and Operations in Base 10 Place Value', null);
INSERT INTO curriculum (name, course_id)
VALUES ('Unit 2: Numbers and Operations in Base 10 Place Value', null);
INSERT INTO curriculum (name, course_id)
VALUES ('Unit 3: Number and Operations in Base 10 Addition and Subtraction', null);
INSERT INTO curriculum(name, course_id)
VALUES ('Unit 4: Elementary Geometry, null');
INSERT INTO curriculum(name, course_id)
VALUES ('Unit 5: Measurements, null');


INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use addition and subtraction within 20 to solve word problems involving situations of adding to, taking from, putting together, taking apart, and comparing, with unknowns in all positions, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem.', 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Solve word problems that call for addition of three whole numbers whose sum is less than or equal to 20, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem.', 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Organize, represent, and interpret data with up to three categories; ask and answer questions about the total number of data points, how many in each category, and how many more or less are in one category than in another.', 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Apply properties of operations as strategies to add and subtract.2 Examples: If 8 + 3 = 11 is known, then 3 + 8 = 11 is also known. (Commutative property of addition.) To add 2 + 6 + 4, the second two numbers can be added to make a ten, so 2 + 6 + 4 = 2 + 10 = 12. (Associative property of addition.)', 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Understand subtraction as an unknown-addend problem. For example, subtract 10 – 8 by finding the number that makes 10 when added to 8. Add and subtract within 20.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Determine the unknown whole number in an addition or subtraction equation relating three whole numbers. For example, determine the unknown number that makes the equation true in each of the equations 8 + ? = 11, 5 = _ – 3, 6 + 6 = _.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Relate counting to addition and subtraction (e.g., by counting on 2 to add 2).'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Add and subtract within 20, demonstrating fluency for addition and subtraction within 10. Use strategies such as counting on; making ten (e.g., 8 + 6 = 8 + 2 + 4 = 10 + 4 = 14); decomposing a number leading to a ten (e.g., 13 – 4 = 13 – 3 – 1 = 10 – 1 = 9); using the relationship between addition and subtraction (e.g., knowing that 8 + 4 = 12, one knows 12 – 8 = 4); and creating equivalent but easier or known sums (e.g., adding 6 + 7 by creating the known equivalent 6 + 6 + 1 = 12 + 1 = 13).'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Understand the meaning of the equal sign, and determine if equations involving addition and subtraction are true or false. For example, which of the following equations are true and which are false? 6 = 6, 7 = 8 –1, 5 + 2 = 2 + 5, 4 + 1 = 5 + 2.'), 1, 1, 4/17/2020, false, 1);

INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Count to 120, starting at any number less than 120. In this range, read and write numerals and represent a number of objects with a written numeral.', 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Understand that the two digits of a two-digit number represent amounts of tens and ones. Understand the following as special cases:', 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('10 can be thought of as a bundle of ten ones – called a "ten".', 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('The numbers from 11 to 19 are composed of a ten and one, two, three, four, five six, seven, eight, or nine ones.', 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('The numbers 10, 20, 30, 40, 50, 60, 70, 80, 90 refer to one, two , three, four, five, six, seven, eight, and nine tens (and 0 ones)'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Compare two two-digit numbers based on meanings of tens and ones digits, recording the results of comparisons with the symbols >, =, <.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Given a two-digit number, mentally find 10 more or 10 less than the number, without having to count; explain the reasoning used.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Add and subtract within 20, demonstrating fluency for addition and subtraction within 10. Use strategies such as counting on; making ten (e.g., 8 + 6 = 8 + 2 + 4 = 10 + 4 = 14); decomposing a number leading to a ten (e.g., 13 – 4 = 13 – 3 – 1 = 10 – 1 = 9); using the relationship between addition and subtraction (e.g., knowing that 8 + 4 = 12, one knows 12 – 8 = 4); and creating equivalent but easier or known sums (e.g., adding 6 + 7 by creating the known equivalent 6 + 6 + 1 = 12 + 1 = 13). (continued from Unit 1)'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use addition and subtraction within 20 to solve word problems involving situations of adding to, taking from, putting together, taking apart, and comparing, with unknowns in all positions, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem. (continued from Unit 1)'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Solve word problems that call for addition of three whole numbers whose sum is less than or equal to 20, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem. (continued from Unit 1)'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Organize, represent, and interpret data with up to three categories; ask and answer questions about the total number of data points, how many in each category, and how many more or less are in one category than in another. (continued from Unit 1)'), 1, 1, 4/17/2020, false, 1);

VALUES('Use addition and subtraction within 20 to solve word problems involving situations of adding to, taking from, putting together, taking apart, and comparing, with unknowns in all positions, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Solve word problems that call for addition of three whole numbers whose sum is less than or equal to 20, e.g., by using objects, drawings, and equations with a symbol for the unknown number to represent the problem.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Organize, represent, and interpret data with up to three categories; ask and answer questions about the total number of data points, how many in each category, and how many more or less are in one category than in another.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Given a two-digit number, mentally find 10 more or 10 less than the number, without having to count; explain the reasoning used.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Add within 100, including adding a two-digit number and a one-digit number, and adding a two-digit number and a multiple of 10, using concrete models or drawings and strategies based on place value, properties of operations, and or the relationship between addition an subtraction; relate the strategy to a written method and explain the reasoning used.  Understand that in adding two-digit numbers, one adds tens and tens, ones and ones; and sometimes it is necessary to compose a ten.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Subtract multiples of 10 in the range 10-90 from multiples of 10 in the range 10-90 (positive or zero differences), using concrete models or drawings and strategies based on place value, properties of operations, and/or the relationship between addition and subtraction; relate the strategy to a written method and explain the reasoning used.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Add and subtract within 20, demonstrating fluency for addition and subtraction within 10. Use strategies such as counting on; making ten (e.g., 8 + 6 = 8 + 2 + 4 = 10 + 4 = 14); decomposing a number leading to a ten (e.g., 13 – 4 = 13 – 3 – 1 = 10 – 1 = 9); using the relationship between addition and subtraction (e.g., knowing that 8 + 4 = 12, one knows 12 – 8 = 4); and creating equivalent but easier or known sums (e.g., adding 6 + 7 by creating the known equivalent 6 + 6 + 1 = 12 + 1 = 13).'), 1, 1, 4/17/2020, false, 1);

VALUES('Identify, name and compare plane geometric figures (triangles, circles, squares, rectangles and rhombi) by sorting and describing their attributes (by shape, number of sides, size or number of angles)'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use concrete materials to build shapes (rectangles, squares, trapezoids, triangles, half-circles and quarter-circles) that have the defining attributes (attributes that make a shape that specific shape)'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Identify and explain the similarities and differences between two shapes.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use concrete materials to create composite shapes from two or three-dimensional shapes (cubes, right rectangular prisms, right circular cones and right circular cylinders).'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use concrete materials to create a new shape from a composite shape.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Identify equal parts of a partitioned shape with concrete materials and describe the shares using the words halves, fourths, and quarters as well as the phrases half of, fourth of and quarter of.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Gather and collect data to answer questions'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Interpret data contained in picture graphs using a variety of categories with 1:1 intervals'), 1, 1, 4/17/2020, false, 1);


VALUES('Measure length with nonstandard units (paper clips, toothpicks, unifix cubes, eraser length…) to understand that the length measurement of an object is the number of same-size length units that span it with no gaps or overlaps.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Order three objects by length.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Compare the lengths of two objects indirectly by using a third object (concept of transitivity – a is shorter than b and b is shorter than c, so a is shorter than c).'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Use tools to measure time to the hour and half hour intervals'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Apply knowledge of fractional wholes and halves to telling time.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Compare the same time on analog and digital clocks to measure time to the hour and half hour.'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Gather and collect data  to answer questions'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Interpret data contained in picture graphs using a variety of categories with 1:1 intervals'), 1, 1, 4/17/2020, false, 1);
INSERT INTO homework (name, appuser_id, due_date, complete, curriculum_id)
VALUES('Collect, organize, display and interpret data using tally charts, picture graphs, bar graphs and tables.'), 1, 1, 4/17/2020, false, 1);




-----------------------
---INSERT SCIENCE---
-----------------------





-----------------------
----INSERT HOMEWORK----
-----------------------
