-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name 
FROM users
ORDER BY last_name


-- Exercise 4

SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26


-- Exercise 5

SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26 or user_id = 12


-- Exercise 6

SELECT COUNT(*)
FROM posts


-- Exercise 7

SELECT user_id, COUNT(*)
FROM comments
GROUP BY user_id
ORDER BY count DESC

-- Exercise 8


SELECT p.id, p.image_url, p.user_id, u.username, u.first_name, u.last_name
FROM posts p
JOIN users u ON u.id = p.user_id
WHERE p.user_id = 26 or p.user_id = 12

-- Exercise 9

SELECT p.pub_date, f.following_id
FROM posts p
JOIN following f ON f.user_id = p.user_id
WHERE p.user_id = 26


-- Exercise 10




-- Exercise 11
INSERT INTO bookmarks (user_id, post_id)
VALUES (26, 219), (26, 220), (26, 221)



-- Exercise 12
DELETE FROM bookmarks where post_id IN (219, 220, 221);



-- Exercise 13
UPDATE users
SET email = 'cyoung2022@gmail.com'
WHERE id = 26



-- Exercise 14
