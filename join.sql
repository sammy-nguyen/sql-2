-- 1 Get all invoices where the unit_price on the invoice_line is greater than $0.99.
select *
from invoice
join invoice_line
on invoice.invoice_id = invoice_line.invoice_id
where invoice_line.unit_price > 0.99;


--2 Get the invoice_date, customer first_name and last_name, and total from all invoices.
select invoice_date, customer.first_name, customer.last_name, total
from invoice
join customer
on invoice.customer_id = customer.customer_id;


--3,4
select customer.first_name, customer.last_name, employee.first_name, employee.last_name
from customer
join employee
on employee.employee_id = customer.support_rep_id;


--5 Get the album title and the artist name from all albums.
select album.title, artist.name
from album
join artist
on album.artist_id = artist.artist_id;

-- 6 Get all playlist_track track_ids where the playlist name is Music.
select playlist_track.track_id
from playlist_track
join playlist on playlist.playlist_id = playlist_track.playlist_id
where playlist.name = 'Music';

--7 Get all track name`s for `playlist_id.
select track.name, track.track_id
from track
join playlist_track
on track.track_id = playlist_track.track_id;

--8 Get all track name`s and the playlist `name that they’re on ( 2 joins ).
select track.name AS "track name", playlist.name AS "playlist name"
from playlist_track
join playlist on playlist.playlist_id = playlist_track.playlist_id
join track on track.track_id = playlist_track.track_id;

--9 Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins ).
select track.name AS "track name", album.title AS "album title", genre.name
from track
join genre on track.genre_id = genre.genre_id
join album on album.album_id = track.album_id
where genre.name = 'Alternative & Punk';
