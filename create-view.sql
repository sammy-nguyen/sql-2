create view rock AS
select *
from track
where genre_id in (
  select genre_id
  from genre
  where name = 'Rock'
);


create view classical_count as
select count(*)
from track
join playlist_track on track.track_id = playlist_track.track_id
join playlist on playlist_track.playlist_id = playlist.playlist_id
where playlist.name = 'Classical';
