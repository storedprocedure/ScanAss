--- Then use the following command to build a myapp.db SQLite database:
--- 
--- sqlite3 wnas_sqlite.db < wnas_sqlitedb.sql
--- 
--- If you need to create the database more than once, you probably want to issue the
--- 'rm myapp.db' command to delete the database before you use the
--- 'sqlite3 myapp.db < myapp01.sql' command.
--- 
--- Database testing:
---
--- $ sqlite3 myapp.db
--- SQLite version 3.7.3
--- Enter ".help" for instructions
--- Enter SQL statements terminated with a ";"
--- sqlite> select * from book;
--- 1|CCSP SNRS Exam Certification Guide|5
--- ...
--- sqlite> .q
--- $
--- 
--- Or:
--- 
--- $ sqlite3 myapp.db "select * from book"
--- 1|CCSP SNRS Exam Certification Guide|5
--- ...
---
--- ########################################################################################
--- ########################################################################################
--- ########################################################################################
---
--- ScanASS Scanner ASSistant database create SQL.
---
--- ########################################################################################
PRAGMA foreign_keys = ON;

--- ########################################################################################
--- TABLES
--- ########################################################################################
--- 'host' holds most current info specific to each host
CREATE TABLE host (
    id    INTEGER PRIMARY KEY,
    
);

--- 'scan' holds info specific to each scan run
CREATE TABLE scan (
    id    INTEGER PRIMARY KEY,
    
);

--- 'network' holds most current info specific to each network
CREATE TABLE network (
    id    INTEGER PRIMARY KEY,
    
);

--- ########################################################################################
--- RELATIONSHIPS
--- ########################################################################################

--- 'book_author' is a many-to-many join table between books & authors
CREATE TABLE book_author (
        book_id     INTEGER REFERENCES book(id) ON DELETE CASCADE ON UPDATE CASCADE,
        author_id   INTEGER REFERENCES author(id) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (book_id, author_id)
);













--- ########################################################################################
--- ########################################################################################
---
--- Load some sample data
---
--- ########################################################################################
--- ########################################################################################
INSERT INTO book VALUES (1, 'CCSP SNRS Exam Certification Guide', 5);
INSERT INTO book VALUES (2, 'TCP/IP Illustrated, Volume 1', 5);
INSERT INTO book VALUES (3, 'Internetworking with TCP/IP Vol.1', 4);
INSERT INTO book VALUES (4, 'Perl Cookbook', 5);
INSERT INTO book VALUES (5, 'Designing with Web Standards', 5);
INSERT INTO author VALUES (1, 'Greg', 'Bastien');
INSERT INTO author VALUES (2, 'Sara', 'Nasseh');
INSERT INTO author VALUES (3, 'Christian', 'Degu');
INSERT INTO author VALUES (4, 'Richard', 'Stevens');
INSERT INTO author VALUES (5, 'Douglas', 'Comer');
INSERT INTO author VALUES (6, 'Tom', 'Christiansen');
INSERT INTO author VALUES (7, 'Nathan', 'Torkington');
INSERT INTO author VALUES (8, 'Jeffrey', 'Zeldman');
INSERT INTO book_author VALUES (1, 1);
INSERT INTO book_author VALUES (1, 2);
INSERT INTO book_author VALUES (1, 3);
INSERT INTO book_author VALUES (2, 4);
INSERT INTO book_author VALUES (3, 5);
INSERT INTO book_author VALUES (4, 6);
INSERT INTO book_author VALUES (4, 7);
INSERT INTO book_author VALUES (5, 8);
--- ########################################################################################
