BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "teachers" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"major_id"	INTEGER NOT NULL,
	"name"	TEXT,
	"phone"	INTEGER,
	FOREIGN KEY("major_id") REFERENCES "majors"("id")
);
CREATE TABLE IF NOT EXISTS "students" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"login_id"	INTEGER NOT NULL,
	"major_id"	INTEGER NOT NULL,
	"name"	TEXT,
	"phone"	INTEGER,
	FOREIGN KEY("major_id") REFERENCES "majors"("id"),
	FOREIGN KEY("login_id") REFERENCES "logins"("id")
);
CREATE TABLE IF NOT EXISTS "majors" (
	"id"	INTEGER NOT NULL,
	"name"	TEXT,
	"credits"	INTEGER,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "logins" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"email"	TEXT NOT NULL,
	"password"	TEXT NOT NULL
);
INSERT INTO "teachers" VALUES (1,1,'James Bond',88881234);
INSERT INTO "teachers" VALUES (2,1,'Moon Bae',98761234);
INSERT INTO "teachers" VALUES (3,1,'J Lee',87661234);
INSERT INTO "students" VALUES (1,1,1,'John Park',99991234);
INSERT INTO "majors" VALUES (1,'CS',120);
INSERT INTO "logins" VALUES (1,'john@gmail.com','abc123');
COMMIT;
