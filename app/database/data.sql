CREATE DATABASE app;
CREATE USER 'user'@'%' IDENTIFIED BY 'password';
GRANT ALL ON *.* to user@'%';
USE app;
CREATE TABLE jokes (name VARCHAR(2048));

INSERT INTO jokes VALUES("I'm afraid for the calendar. Its days are numbered.");
INSERT INTO jokes VALUES("Singing in the shower is fun until you get soap in your mouth. Then it's a soap opera.");
INSERT INTO jokes VALUES("Dear Math, grow up and solve your own problems.");
INSERT INTO jokes VALUES("What did the ocean say to the beach? Nothing, it just waved.");
INSERT INTO jokes VALUES("How does the moon cut his hair? Eclipse it.");
INSERT INTO jokes VALUES("What did one wall say to the other? I'll meet you at the corner.");
INSERT INTO jokes VALUES("What did Baby Corn say to Mama Corn? Where's Pop Corn?");
INSERT INTO jokes VALUES("I don't trust those trees. They seem kind of shady.");
INSERT INTO jokes VALUES("Why don't eggs tell jokes? They'd crack each other up.");
INSERT INTO jokes VALUES("Did you hear the rumor about butter? Well, I'm not going to spread it!");
INSERT INTO jokes VALUES("Where do dads keep all their jokes? In the database of course!");
