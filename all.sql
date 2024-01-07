CREATE TABLE IF NOT EXISTS "Top_words"
(
	"id" serial NOT NULL PRIMARY KEY,
	"name" varchar NOT NUll UNIQUE,
	"num" integer
);


INSERT INTO "Top_words"
("name", "num")
VALUES
	('Год', 6),
	('Машина', 15);
	
	
INSERT INTO "Top_words" 
("name", "num")
VALUES
	('Машина', 15) 
ON CONFLICT ("name") 
DO 
   UPDATE SET "num" = EXCLUDED."num" + "Top_words"."num";
