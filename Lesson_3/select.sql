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

SELECT COUNT(t.id) 
FROM albums a 
JOIN tracks t ON a.id =t.id_album 
WHERE a.year BETWEEN 2019 AND 2020
GROUP BY a.title;

SELECT a.title, AVG(t.track_time) 
FROM albums a 
LEFT JOIN tracks t ON a.id =t.id_album 
GROUP BY a.title
ORDER BY AVG(t.track_time) DESC; 

SELECT a.name
FROM artists a
WHERE a.id IN (
SELECT aa.id_artist FROM album_artists aa 
JOIN albums a2 ON aa.id_album =a2.id 
WHERE a2.year!=2020
GROUP BY aa.id_artist);

SELECT c.title 
FROM collections c 
JOIN collection_tracks ct ON c.id =ct.id_collection 
JOIN tracks t ON ct.id_track =t.id 
JOIN albums a ON t.id_album =a.id 
JOIN album_artists aa ON a.id =aa.id_artist 
JOIN artists a2 ON aa.id_artist =a2.id 
WHERE a2.name ='Imagine Dragons'
GROUP BY c.title;





