USE sakila;
select address,city from address a join city c on (a.city_id=c.city_id);
select address,city from address join city using (city_id);

Describe film;
select count(film_id)from film;
select count(film_id) as "Total films" from film;
select rating,count(film_id)as 'Total films' from film group by rating;
select avg(rental_duration) as 'Average rental period' from film;
select rental_duration,avg(rental_rate) as 'Average rental rate' from film group by rental_duration;
select rental_duration,avg(rental_rate) as 'Average rental rate' from film group by rental_duration where rental_duration<7 ;
select rental_duration,avg(rental_rate) as 'Average rental rate' from film group by rental_duration having rental_duration<7 ;

Describe film;
select avg(rental_rate) as 'Average rental rate'from film;
select rating,avg(rental_rate) as 'Average rental rate ' from film group by rating;
select sum(replacement_cost)as 'Total replacement cost' from film;
select rating,sum(replacement_cost)as 'Total replacement cost' from film group by rating;
select max(length) as 'longest movie' from film;
select min(length) as 'shortest movie' from film;
select customer_id,sum(amount)from payment group by customer_id having customer_id<5;
select title,film_id from film where title="Early Home";
select * from inventory where film_id =268;
select i.inventory_id ,i.film_id ,i.store_id from inventory i join film f using(film_id)where f.title="Early Home";
select * from inventory where film_id in (select film_id from film where title="Early Home");
select  city ,city_id from city where city  in ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes');
select district from address where city_id in (select city_id from city where city in ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes'));
select first_name,last_name from customer where address_id in (select address_id from address where city_id in (select city_id from city where city like "Q%"));

create view num_copies_of_titles as select title,(select count(*) from inventory where film.film_id=inventory.film_id) as "Number of copies" from film;
select * from num_copies_of_titles;
select * from film f left outer join film_actor fa on (f.film_id=fa.film_id) where fa.film_id is null;
select first_name,last_name from actor where actor_id in (select actor_id  from film_actor where film_id in (select film_id from film where title='Alter Victory'));
select title from film where film_id in (select film_id from inventory where inventory_id in (select inventory_id from rental where staff_id in (select staff_id from staff where last_name='Stephens' and first_name='Jon')));


select count(*) from city union select count(*) from country;
select customer_id from customer where address_id in (select address_id from address where city




