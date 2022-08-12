use sakila;
# last names appear more than once?
select last_name, count(customer_id) from sakila.customer group by last_name
having count(customer_id)>=1;
# find out how many rentals were processed by each employee.
select customer_id, count(rental_id) from sakila.rental group by customer_id;
#Using the film table, find out how many films were released each year.
select release_year, count(film_id) from sakila.film group by release_year;
#find out for each rating how many films were there.
select rating, count(film_id) from sakila.film group by rating;
#What is the mean length of the film for each rating type
select rating, round(avg(length)) from sakila.film group by rating;
#Which kind of movies (rating) have a mean duration of more than two hours?
select rating, round(avg(length)) from sakila.film group by rating having round(avg(length))>=120;
