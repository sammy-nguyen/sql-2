-- -- 1 Get all invoices where the unit_price on the invoice_line is greater than $0.99.
select *
from invoice
where invoice_id IN (
  select invoice_id from invoice_line
);


--2 Get all playlist tracks where the playlist name is Music.

select *
from playlist_track
where playlist_id IN (
  select playlist_id from playlist
  where playlist.name ='Music'
);


--3 Get all track names for playlist_id 5.
select track.name AS "track name"
from track
where track_id IN (
  select track_id from playlist
  where playlist_id = 5
 );

--4 Get all tracks where the genre is Comedy.
select *
from track
where genre_id IN (
  select genre_id from genre
  where genre.name = 'Comedy'
 );


--5 Get all tracks where the album is Fireball.
select *
from track
where album_id IN (
  select album_id from album
  where album.title = 'Fireball'
);

--6 Get all tracks for the artist Queen ( 2 nested subqueries ).
select *
from track
where album_id IN (
  select album_id from album
  where artist_id IN (
   select artist_id from artist
    where name = 'Queen'

));
