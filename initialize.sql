DROP TABLE IF EXISTS hobbyists, hobbies;

CREATE TABLE hobbyists (
  user_id INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(50),
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  favorites VARCHAR(50),
  PRIMARY KEY (user_id)
  FOREIGN KEY (favorites)
  REFERENCES hobbies (hobby_id)
);

CREATE TABLE hobbies (
  hobby_id INT NOT NULL AUTO_INCREMENT,
  hobby_name VARCHAR(50),
  hobby_description VARCHAR(150),
  tutorial_link VARCHAR(50),
  added_by VARCHAR(50),

  PRIMARY KEY (hobby_id)
  FOREIGN KEY (added_by)
  REFERENCES hobbyists (user_id)
);

INSERT INTO hobbyist
	(email, first_name, last_name, favorites)
VALUES 
  ("oujaoej@gmail.com","James","Butt", "-"),
  ("kuhwekhu@gmail.com","Josephine","Darakjy", "-");
  
INSERT INTO hobbies
	(hobby_name, hobby_description, tutorial_link, added_by)
VALUES 
  ("Knitting","Using giant needles and thread to make blankets","www.knitit.com", "-"), 
  ("Skateboarding","Standing on a board with 4 wheels attached","www.sk8bro.com", "-");