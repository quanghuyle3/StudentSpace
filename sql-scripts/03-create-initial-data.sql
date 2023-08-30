--- USERS
INSERT INTO USERS (email, student_id, password, address, date_of_birth, first_name, last_name, role)
VALUES ('quang@gmail.com', 1234567, '$2a$10$6L0pFpYlwT5p017yPC3e3OwZCsS0gOPEkyAbppJT2GPyy1GU9W7au', '2021 Dell Way', '2000-01-13', 'Quang', 'Le', 'ROLE_ADMIN');

INSERT INTO USERS (email, student_id, password, address, date_of_birth, first_name, last_name, role)
VALUES ('jagi@gmail.com', 9876543, '$2a$10$6L0pFpYlwT5p017yPC3e3OwZCsS0gOPEkyAbppJT2GPyy1GU9W7au', '2021 American Way', '2001-09-23', 'Jagi', 'Singh', 'ROLE_STUDENT');

INSERT INTO USERS (email, student_id, password, address, date_of_birth, first_name, last_name, role)
VALUES ('abdu@gmail.com', 5432167, '$2a$10$6L0pFpYlwT5p017yPC3e3OwZCsS0gOPEkyAbppJT2GPyy1GU9W7au', '2021 Broadway', '2000-05-10', 'Abdugafur', 'Dalerzoda', 'ROLE_STUDENT');


-- Insert posts for each user
-- User: quang@gmail.com
INSERT INTO POSTS (email, content) VALUES ('quang@gmail.com', '🔬 Conducted an interesting experiment in the science lab today. Science rocks!');
INSERT INTO POSTS (email, content) VALUES ('quang@gmail.com', '🌍 Attended a thought-provoking guest lecture on climate change. Time to take action!');
INSERT INTO POSTS (email, content) VALUES ('quang@gmail.com', '💻 Proud to have completed my coding project. It\s amazing what you can create with code!');

-- User: abdu@gmail.com
INSERT INTO POSTS (email, content) VALUES ('abdu@gmail.com', '🎓 Excited to start my final year of high school! #Classof2023');
INSERT INTO POSTS (email, content) VALUES ('abdu@gmail.com', '📚 Just finished reading "To Kill a Mockingbird" for English class. What a powerful book!');
INSERT INTO POSTS (email, content) VALUES ('abdu@gmail.com', '🏀 Looking forward to the basketball tryouts next week. Go team!');

-- User: jagi@gmail.com
INSERT INTO POSTS (email, content) VALUES ('jagi@gmail.com', '🎨 Spent the afternoon working on my art project. Can\t wait to see the finished piece!');
INSERT INTO POSTS (email, content) VALUES ('jagi@gmail.com', '📝 Just submitted my college application. Fingers crossed! #FutureGoals');
INSERT INTO POSTS (email, content) VALUES ('jagi@gmail.com', '🌞 Enjoying the beautiful weather with friends at the school picnic. #Memories');


-- Insert comments for each post from different users
-- Post 1 by quang
INSERT INTO POST_COMMENTS (post_id, post_comment_user, post_comment_text) VALUES (1, 'abdu@gmail.com', '🏀 Can\t wait to see you on the court! Go team!');
INSERT INTO POST_COMMENTS (post_id, post_comment_user, post_comment_text) VALUES (1, 'jagi@gmail.com', '🔥 Let\s bring home the championship!');

-- Post 2 by abdu
INSERT INTO POST_COMMENTS (post_id, post_comment_user, post_comment_text) VALUES (2, 'jagi@gmail.com', '👍 Good luck in your final year!');
INSERT INTO POST_COMMENTS (post_id, post_comment_user, post_comment_text) VALUES (2, 'quang@gmail.com', '🙌 You got this! Make the most of your senior year!');


-- Post 3 by jagi
INSERT INTO POST_COMMENTS (post_id, post_comment_user, post_comment_text) VALUES (3, 'abdu@gmail.com', '👏 "To Kill a Mockingbird" is such a powerful book. It really makes you think.');
INSERT INTO POST_COMMENTS (post_id, post_comment_user, post_comment_text) VALUES (3, 'quang@gmail.com', '📚 One of my favorite reads too!');


-- Insert post likes
INSERT INTO POST_LIKES (post_id, post_liked_user) VALUES (1, 'jagi@gmail.com');
INSERT INTO POST_LIKES (post_id, post_liked_user) VALUES (1, 'abdu@gmail.com');
INSERT INTO POST_LIKES (post_id, post_liked_user) VALUES (2, 'quang@gmail.com');
INSERT INTO POST_LIKES (post_id, post_liked_user) VALUES (3, 'abdu@gmail.com');
INSERT INTO POST_LIKES (post_id, post_liked_user) VALUES (3, 'quang@gmail.com');

-- Establish followers
INSERT INTO FOLLOWERS (student_email, follower_email) VALUES ('abdu@gmail.com', 'jagi@gmail.com');
INSERT INTO FOLLOWERS (student_email, follower_email) VALUES ('abdu@gmail.com', 'quang@gmail.com');
INSERT INTO FOLLOWERS (student_email, follower_email) VALUES ('jagi@gmail.com', 'abdu@gmail.com');
INSERT INTO FOLLOWERS (student_email, follower_email) VALUES ('jagi@gmail.com', 'quang@gmail.com');
INSERT INTO FOLLOWERS (student_email, follower_email) VALUES ('quang@gmail.com', 'abdu@gmail.com');
INSERT INTO FOLLOWERS (student_email, follower_email) VALUES ('quang@gmail.com', 'jagi@gmail.com');
