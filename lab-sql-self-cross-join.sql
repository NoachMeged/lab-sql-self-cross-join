-- Get all pairs of actors that worked together.

select * from sakila.film_actor a1
join sakila.film_actor a2
on a1.actor_id < a2.actor_id
and a1.film_id = a2.film_id  
order by a1.actor_id, a1.film_id, a2.actor_id;

-- Get all pairs of customers that have rented the same film more than 3 times.
SELECT DISTINCT a1.customer_id, a2.customer_id, a1.inventory_id
FROM sakila.rental a1
JOIN sakila.rental a2
ON a1.customer_id < a2.customer_id
AND a1.inventory_id = a2.inventory_id
ORDER BY a1.customer_id, a1.inventory_id, a2.customer_id;

-- Get all possible pairs of actors and films.
SELECT DISTINCT fa1.actor_id AS actor1_id, fa2.actor_id AS actor2_id, film.film_id, film.title
FROM sakila.film
CROSS JOIN sakila.film_actor fa1
CROSS JOIN sakila.film_actor fa2
WHERE fa1.film_id = film.film_id AND fa2.film_id = film.film_id AND fa1.actor_id < fa2.actor_id
ORDER BY film.film_id, actor1_id, actor2_id;







