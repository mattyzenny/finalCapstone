INSERT INTO course (name, description, duration, category_id)
VALUES('1st Grade English', '1st Grade English provides ample learning curriculum to teach the student basic phonetics, beginning grammar, basic sentence structure, and use of basic descriptors.', '9 weeks', null);

INSERT INTO curriculum (name, course_id)
VALUES ('Unit 1: Consonants and Vowels, Syllables, Rhyming, Blending and Segmenting, Consonant Sounds and Letters', 2);
INSERT INTO curriculum (name, course_id)
VALUES ('Unit 2: Consonant blends and digraphs & Short and Long Vowels ', 2);
INSERT INTO curriculum (name, course_id)
VALUES ('Silent e, Vowel teams, R-controlled Vowels', 2);
INSERT INTO curriculum(name, course_id)
VALUES ('Two-syllable words', 2);

INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 6, 'Sort consonants and vowel, Find the vowels in a word, How many syllables does the word have');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 6, 'Sort by the number of syllables, Choose the picture that rhymes with the word, Which word does not rhyme, Complete the rhyme, Complete the poem with a word that rhymes');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 6, 'Blend the sounds together to make a word, Identify each sound in a word');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 6, 'Put the sounds in order');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 6, 'Which two words start with the same sound?, Which two words end with the same sound?');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 6, 'Which letter does the word start with?, Which letter does the word end with?');

INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Complete the word with the right initial consonant blend, Does the word start with a consonant blend?, Complete the word with the right final consonant blend');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Does the word end with a consonant blend?, Fill in the missing consonant blend, Complete the word to match the picture: -ss, -ll, -ff, -zz, -ck');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Choose the correct digraph, Complete the word with the right digraph');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Spell the digraph word, Sort by initial consonant blend or digraph');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Choose the short a word that matches the picture, Complete the short a word, Choose the short a sentence that matches the picture');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Choose the picture that matches the short e word, Complete the short e word, Choose the short e sentence that matches the picture');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Choose the short i word that matches the picture, Complete the short i words, Choose the short i sentence that matches the picture');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Choose the short o word that matches the picture, Complete the short o word, Choose the short o sentence that matches the picture');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Choose the picture that matches the short u word, Complete the short u word, Choose the short u sentence that matches the picture');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Identify the short vowel sound in a word, Complete the word with the right short vowel, Spell the short vowel word, Complete the sentence with the correct short vowel word');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Sort short and long vowel words, Match the short a and long a words to pictures, Match the short e and long e words to pictures');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Choose the short i or long i word that matches the picture, Choose the short o or long o word that matches the picture');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 7, 'Choose the short u or long u word that matches the picture, Use spelling patterns to sort long and short vowel words');

INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 8, 'Choose the silent e word that matches the picture, Complete the silent e words');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 8, 'Spell the silent e word, Choose the silent e sentence that matches the picture');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 8, 'Choose the picture that matches the vowel team word, Complete the vowel team words');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 8, 'Complete the word with the right vowel team, Choose the vowel team sentence that matches the picture');
INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 8, 'Choose the r-control word that matches the picture, Complete the word with the right r-controlled vowel: ar, er, ir, or, ur');

INSERT INTO homework (appuser_id, due_date, complete, curriculum_id, name)
VALUES(1, 4/17/2020, false, 9, 'Put two syllables together to create a word, Complete the two-syllable words, Complete the sentence with a two-syllable word');