-- Question 1
select actor_id, first_name, last_name
from actor 
where last_name like 'Wahlberg';

-- Question 2
select * 
from payment
where amount >= 3.99 and amount <= 5.99;

-- Question 3
select distinct film_id, count(film_id) 
from inventory
group by film_id
order by count(film_id) desc;

-- Question 4
select count(last_name)
from customer 
where last_name like 'William';

-- Question 5
select distinct staff_id, count(rental_id)
from rental 
group by staff_id 
order by count(rental_id) desc;

-- Question 6
select count(distinct district) from address;

-- Question 7
select distinct film_id, count(actor_id)
from film_actor
group by film_id 
order by count(actor_id) desc;

-- Question 8
select count(customer_id)
from customer 
where store_id = 1 and last_name like '%es'

-- Question 9
select distinct amount, count(amount) 
from payment 
group by amount
having count(amount) > 250

-- Question 10
select distinct rating, count(rating) 
from film 
group by rating 
order by count(rating) desc;










