INSERT INTO Orte(PLZ, Ort)
VALUES (88045, "Friedrichshafen");

INSERT INTO Orte(PLZ, Ort)
VALUES (76133, "Karlsruhe");

INSERT INTO Orte(PLZ, Ort)
VALUES (70197, "Stuttgart");

INSERT INTO Standorte(Standortnummer, Standortname, Straße, Hausnummer, PLZ)
VALUES(4, "RV/FN", "Fallenbrunnen", "2", 88045);

INSERT INTO Standorte(Standortnummer, Standortname, Straße, Hausnummer, PLZ)
VALUES(6, "Stuttgart-I", "Erzbergerstraße", "121", 76133);

INSERT INTO Kurse(Kursnummer, Kursname, Studiengang, Standortnummer)
VALUES("T3TLE3004", "Messtechnik und EMV", 15, 4);

INSERT  INTO Kurse(Kursnummer, Kursname, Studiengang, Standortnummer)
VALUES("A1TFA1008", "Informatik I - Grundlagen", 13, 6);