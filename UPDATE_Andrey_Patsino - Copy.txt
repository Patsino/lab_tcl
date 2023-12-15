update film set rental_duration = 2,  rental_rate = 4.9
where film_id in (1003, 1004, 1005);


with customer_update as (
  select c.customer_id
  from customer c
    join rental r on c.customer_id = r.customer_id
    join payment p on c.customer_id = p.customer_id
  group by c.customer_id having
    count(distinct r.rental_id) >= 10
    and count(distinct p.payment_id) >= 10
  limit 1
);


update customer
set
  first_name = 'Andrey',
  last_name = 'Patsino',
  email = 'patsino.andrey@student.ehu.lt',
  address_id = (select address_id from address order by random() limit 1)
where customer_id in (select customer_id from customer_update);


with customer_update as (
  select c.customer_id
  from customer c
    join rental r on c.customer_id = r.customer_id
    join payment p on c.customer_id = p.customer_id
  group by c.customer_id
  having count(distinct r.rental_id) >= 10 and 
  count(distinct p.payment_id) >= 10
  limit 1
);


update customer
set create_date = current_date
where customer_id in (select customer_id from customer_update);