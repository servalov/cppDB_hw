SELECT title, track_time 
FROM  tracks
ORDER BY track_time DESC 
LIMIT 1;

SELECT title, track_time 
FROM tracks 
WHERE track_time >='0:3:30';

SELECT title, year 
FROM collections
WHERE year BETWEEN 2018 AND 2020;

SELECT name 
FROM artists
WHERE name NOT LIKE '% %';

SELECT title 
FROM tracks
WHERE LOWER(title) LIKE '%мой%' OR LOWER(title) LIKE '%my%';

SELECT g.name , COUNT(a.id_artist) 
FROM genres g
LEFT JOIN artist_genres a ON g.id =a.id_genre 
GROUP BY (g.name)
ORDER BY COUNT(a.id_artist) desc;

SELECT a.title, COUNT(t.id) 
FROM albums a 
LEFT JOIN tracks t ON a.id =t.id_album 
WHERE a.year BETWEEN 2019 AND 2020
GROUP BY a.title;

SELECT a.title, AVG(t.track_time) 
FROM albums a 
LEFT JOIN tracks t ON a.id =t.id_album 
GROUP BY a.title
ORDER BY AVG(t.track_time) DESC; 

SELECT a.name, a2.year  
FROM artists a
LEFT JOIN album_artists aa ON a.id =aa.id_artist 
LEFT JOIN albums a2 ON aa.id_album =a2.id
WHERE a2.year!=2018;






