DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    album_id int PRIMARY KEY,
    title text NOT NULL

);

DROP TABLE  IF EXISTS tracks;

CREATE TABLE tracks(
    track_id int PRIMARY KEY,
    album_id int,
    title text NOT NULL,
    length text NOT NULL
);

INSERT INTO albums (album_id, title)
VALUES(1, 'Pink Grapes'),
      (2, 'Blackjack'),
      (3, 'Do and jump'),
      (4, 'Songs of the Night'),
      (5, 'Toxic Miracle'),
      (6, 'Infinite'),
      (7, 'Move'),
      (8, 'Slump'),
      (9, 'HeartBreak'),
      (10, 'Water Bottle');

INSERT INTO tracks (track_id, album_id, title, length)
VALUES(1, 2, 'Card twist', '03:04'),
      (2, 9, 'Holding It Back', '04:01'),
      (14, 5, 'Holding It Back', '04:01'),
      (3, 4, 'Dancing in the Moonlight', '03:45'),
      (4, 8, 'Shower Thoughts', '03:35'),
      (5, 6, 'Shower Thoughts', '03:35'),
      (6, 5, 'Poison Goodness', '04:05'),
      (7, 9, 'Poison Goodness', '04:05'),
      (8, 6, 'Spaceman', '03:59'),
      (9, 7, 'Climb', '03:34'),
      (10, 3, 'Climb', '03:34'),
      (11, 10, 'Ocean Floor', '02:42'),
      (12, 1, 'Colours', '04:00'),
      (13, 3, 'Rise and Shine', '03:20');

/* Query 1 
SELECT albums.title, tracks.title

FROM albums

INNER JOIN tracks

ON albums.album_id = tracks.album_id */

/* Query 2 

SELECT tracks.title, albums.title

FROM tracks

INNER JOIN albums

ON albums.album_id = tracks.album_id */

/* Query 3 
SELECT albums.title,
  COUNT (tracks.title)

FROM albums

INNER JOIN tracks

ON albums.album_id = tracks.album_id

GROUP BY albums.title */

/* Query 4 */
SELECT tracks.title,
  COUNT (albums.title)

FROM tracks

INNER JOIN albums

ON albums.album_id = tracks.album_id

GROUP BY tracks.title