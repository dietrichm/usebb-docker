INSERT INTO usebb_cats VALUES (1, 'Test Category', 0);

INSERT INTO usebb_forums VALUES (1, 'Test Forum', 1, 'This is a test forum for public testing.', 1, 1, 1, 1, 0, '0011222223', 0, 1, 0);

INSERT INTO usebb_posts VALUES (1, 1, 0, 'UseBB Installer', '127.0.0.1', 'Thanks for choosing UseBB! We wish you a lot of fun with your board!', UNIX_TIMESTAMP(), 0, 0, 1, 1, 1, 0);

INSERT INTO usebb_stats VALUES ('topics', '1');
INSERT INTO usebb_stats VALUES ('posts', '1');
INSERT INTO usebb_stats VALUES ('members', '0');
INSERT INTO usebb_stats VALUES ('started', UNIX_TIMESTAMP());

INSERT INTO usebb_topics VALUES (1, 1, 'Test Topic', 1, 1, 0, 0, 0, 0);
