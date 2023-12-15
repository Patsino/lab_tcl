insert into film (title, rental_rate, rental_duration, language_id) values ('Brother', 4.8, 1, 1);

insert into actor (actor_id, first_name, last_name) values
  (1001, 'Sergei', 'Bodrov'),
  (1002, 'Viktor', 'Sukhorukov'),
  (1003, 'Sergei', 'Makovetsky');

insert into film_actor (actor_id, film_id) values
  (1001, 1002), (1002, 1002), (1003, 1002); 
  
select * from inventory;
insert into film (film_id, title, rental_rate, rental_duration, language_id) values
  (1003, 'Brother 2', 4.85, 1, 1),
  (1004, 'Brother 3: Back To The Future', 4.9, 1, 1),
  (1005, 'Brother 4: Judgment Day', 5.0, 1, 1);
insert into inventory (film_id, store_id) values
  (1003, 1), (1004, 1), (1005, 1);