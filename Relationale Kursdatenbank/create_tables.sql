CREATE TABLE "Orte" (
	"PLZ"	INTEGER,
	"Ort"	TEXT NOT NULL,
	PRIMARY KEY("PLZ")
);

CREATE TABLE "Standorte" (
	"Standortnummer"	INTEGER,
	"Standortname" TEXT NOT NULL,
	"Straße"	TEXT NOT NULL,
	"Hausnummer"	TEXT NOT NULL,
	"PLZ"	INTEGER NOT NULL,
	PRIMARY KEY("Standortnummer"),
	FOREIGN KEY("PLZ") REFERENCES "Orte"("PLZ")
);

CREATE TABLE "Kurse" (
	"Kursnummer"	TEXT,
	"Kursname"	TEXT NOT NULL,
	"Studiengang"	TEXT NOT NULL,
	"Standortnummer"	INTEGER NOT NULL,
	PRIMARY KEY("Kursnummer"),
	FOREIGN KEY("Standortnummer") REFERENCES "Standorte"("Standortnummer")
);