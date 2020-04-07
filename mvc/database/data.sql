-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

INSERT INTO curriculum (name, description, teacher_id, duration, category_id)
VALUES ('Algebra I', 'Algebra 1 topics include recognizing and developing patterns using tables, graphs and equations. In addition, students will explore operations on
algebraic expressions, apply mathematical properties to algebraic equations. Students will solve problems using equations, graphs and tables to
investigate linear relationships. Technology will be used to introduce and expand upon the areas of study listed above. Use of computers and
graphing calculators will be incorporated into each module.', null, '2', null);


COMMIT;