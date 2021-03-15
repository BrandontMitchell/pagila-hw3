/*
 * Count the number of movies that contain each type of special feature.
 */

select ft as special_features, count(*)
from film,
unnest(film.special_features) as ft
group by ft
order by ft asc;
