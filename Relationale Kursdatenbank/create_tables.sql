{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab560
\pard\pardeftab560\slleading20\partightenfactor0

\f0\fs26 \cf0 CREATE TABLE "Orte" (\
	"PLZ"	INTEGER,\
	"Stadt"	INTEGER NOT NULL,\
	PRIMARY KEY("PLZ")\
);\
\
CREATE TABLE "Standorte" (\
	"Standortnummer"	INTEGER,\
	"Stra\'dfe"	TEXT NOT NULL,\
	"Hausnummer"	INTEGER NOT NULL,\
	"PLZ"	INTEGER,\
	PRIMARY KEY("Standortnummer"),\
	FOREIGN KEY("PLZ") REFERENCES "Orte"("PLZ")\
);\
\
CREATE TABLE "Studiengaenge" (\
	"Studiengangsnummer"	INTEGER,\
	"Studiengangsname"	TEXT NOT NULL,\
	PRIMARY KEY("Studiengangsnummer")\
);\
\
CREATE TABLE "Kurse" (\
	"Kursnummer"	TEXT,\
	"Kursname"	TEXT NOT NULL,\
	"Studiengangsnummer"	INTEGER NOT NULL,\
	"Standortnummer"	INTEGER NOT NULL,\
	PRIMARY KEY("Kursnummer"),\
	FOREIGN KEY("Studiengangsnummer") REFERENCES "Studiengaenge"("Studiengangsnummer"),\
	FOREIGN KEY("Standortnummer") REFERENCES "Standorte"("Standortnummer")\
);}