delete from rental
where inventory_id in 
(select inventory_id from inventory where film_id = 1002);


delete from inventory where film_id = 1002;


delete from payment where customer_id = 1;
delete from rental where customer_id = 1;