TRUNCATE TABLE movies;

ALTER TABLE Movies DROP CONSTRAINT IF EXISTS FK_Director;
ALTER TABLE Movies DROP CONSTRAINT IF EXISTS FK_Star;
ALTER TABLE Movies DROP CONSTRAINT IF EXISTS FK_Writer;

ALTER TABLE Movies
ADD CONSTRAINT FK_Director FOREIGN KEY (DirectorID) REFERENCES People(person_id),
ADD CONSTRAINT FK_Star FOREIGN KEY (StarID) REFERENCES People(person_id),
ADD CONSTRAINT FK_Writer FOREIGN KEY (WriterID) REFERENCES People(person_id);