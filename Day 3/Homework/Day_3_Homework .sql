-- Question 1
select first_name, last_name, district
from customer 
inner join address 
on customer.address_id = address.address_id 
where address.district like 'Texas';

-- Question 2
select amount, first_name, last_name
from payment
inner join customer 
on payment.customer_id = customer.customer_id 
where amount > 6.99;

-- Question 3
select first_name, last_name, amount
from customer
inner join payment
on customer.customer_id = payment.customer_id
where amount in (
	select amount
	from payment 
	where amount > 175);
	
-- Question 4
select first_name, last_name, country
from customer 
inner join address 
on customer.address_id = address.address_id
inner join city 
on address.city_id = city.city_id
inner join country 
on city.country_id = country.country_id 
where country = 'Nepal';

-- Question 5
select first_name, last_name, count(rental.staff_id)
from staff 
inner join rental 
on staff.staff_id = rental.staff_id 
group by first_name, last_name
order by count(rental.staff_id) desc;

-- Question 6
select distinct rating, count(rating)
from film 
group by rating

-- Question 7
select first_name, last_name, amount
from customer 
inner join payment
on customer.customer_id = payment.customer_id 
where amount in (select amount from payment where amount > 6.99)

-- Question 8
select count(amount)
from payment 
where amount <= 0














