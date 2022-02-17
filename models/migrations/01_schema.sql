DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS questions CASCADE;
DROP TABLE IF EXISTS quiz CASCADE;

-- 01 USER TABLE
CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  avatar VARCHAR,
  created_at TIMESTAMP, 
  role VARCHAR(255) NOT NULL DEFAULT 'Student'
);

-- 02 QUESTIONS TABLE
CREATE TABLE questions (
  id SERIAL PRIMARY KEY NOT NULL,
  question TEXT NOT NULL,
  answer_a  TEXT NOT NULL,
  answer_b  TEXT NOT NULL,
  answer_c  TEXT NOT NULL,
  answer_d  TEXT NOT NULL,
  correct_answer VARCHAR(255) NOT NULL,
  explanation TEXT,
  language VARCHAR(255) NOT NULL
);

-- 03 QUIZ TABLE
CREATE TABLE quiz (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  score INTEGER NOT NULL,
  total_questions INTEGER NOT NULL
);



