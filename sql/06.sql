/*
 * This question and the next one are inspired by the Bacon Number:
 * https://en.wikipedia.org/wiki/Six_Degrees_of_Kevin_Bacon#Bacon_numbers
 *
 * List all actors with Bacall Number 1;
 * That is, list all actors that have appeared in a film with 'RUSSEL BACALL'.
 * Do not list 'RUSSEL BACALL', since he has a Bacall Number of 0.
 */

select distinct actor2.first_name || ' ' || actor2.last_name as "Actor Name"
from actor as actor1
join film_actor as fa1 on actor1.actor_id = fa1.actor_id
join film_actor as fa2 on fa1.film_id = fa2.film_id
join actor as actor2 on fa2.actor_id = actor2.actor_id
where actor1.actor_id = 112 and actor2.actor_id != 112
order by "Actor Name";
