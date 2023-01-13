-- nomer 1
select concat(first_name,' ',last_name)as full_name,email,sum(amount) as total_amount_paid
from customer
inner join payment on payment.customer_id=customer.customer_id
group by 1,2
order by 3 desc
limit 10;


-- -- nomer 2
-- select concat(first_name,' ',last_name)as full_name,email,sum(amount) as total_amount_paid
-- from customer
-- inner join payment on payment.customer_id=customer.customer_id
-- group by 1,2
-- order by 3 asc
-- limit 10;

-- -- nomer 3
-- select category.name as genre,count(customer.customer_id) as total_demand,
-- sum(payment.amount) as total_sales from category
-- inner join film_category on category.category_id=film_category.category_id
-- inner join film on film_category.film_id=film.film_id
-- inner join inventory on film.film_id=inventory.film_id
-- inner join rental on inventory.inventory_id=rental.inventory_id
-- inner join customer on rental.customer_id=customer.customer_id
-- inner join payment on rental.rental_id=payment.rental_id
-- group by 1
-- order by 2 desc

-- -- nomer 4
-- select case 
-- 	when rental_duration > date_part('day',return_date-rental_date) then 'early'
-- 	when rental_duration = date_part('day',return_date-rental_date) then 'on time'
-- 	else 'late'
-- 	end as status_return,
-- 	count(*) as total_no_of_films
-- 	from film
-- 	inner join inventory on film.film_id=inventory.film_id
-- 	inner join rental on inventory.inventory_id = rental.inventory_id
-- 	group by 1 order by 2 desc


-- -- nomer 5
-- select country,count(customer_id)as customer
-- from country
-- inner join city on country.country_id=city.country_id
-- inner join address on city.city_id=address.city_id
-- inner join customer on address.address_id=customer.address_id
-- group by 1
-- order by 2 desc


-- -- nomer 6
-- select country,count(*) as total_no_cust,sum(amount) as total_penjualan
-- from country
-- inner join city on country.country_id=city.country_id
-- inner join address on city.city_id=address.city_id
-- inner join customer on address.address_id=customer.address_id
-- inner join payment on customer.customer_id=payment.customer_id
-- group by 1
-- order by 2 desc

-- -- nomer 7
-- select name as movie_genre,avg(rental_rate) as avg_rental_rate
-- from category
-- join film_category
-- using(category_id)
-- join film
-- using(film_id)
-- group by 1
-- order by 2 descs
