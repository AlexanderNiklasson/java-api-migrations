
ALTER TABLE Movies DROP COLUMN Director;
ALTER TABLE Movies DROP COLUMN DirectorCountry;
ALTER TABLE Movies DROP COLUMN Star;
ALTER TABLE Movies DROP COLUMN StarDOB;
ALTER TABLE Movies DROP COLUMN Writer;
ALTER TABLE Movies DROP COLUMN WriterEmail;


ALTER TABLE Movies ADD COLUMN DirectorID INT;
ALTER TABLE Movies ADD COLUMN StarID INT;
ALTER TABLE Movies ADD COLUMN WriterID INT;


ALTER TABLE Movies ADD CONSTRAINT FK_Director FOREIGN KEY (DirectorID) REFERENCES Directors(ID);
ALTER TABLE Movies ADD CONSTRAINT FK_Star FOREIGN KEY (StarID) REFERENCES Stars(ID);
ALTER TABLE Movies ADD CONSTRAINT FK_Writer FOREIGN KEY (WriterID) REFERENCES Writers(ID);