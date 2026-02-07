select flight_no, flight_id, status from flights where status = 'On Time';

select book_ref, book_date, total_amount from bookings where total_amount > 1000000;

select aircraft_code, model, range from aircrafts_data;

select aircraft_code, model, range from aircrafts_data where aircraft_code = '733';

select ticket_no, book_ref, passenger_id, passenger_name, contact_data from tickets
where passenger_name ILIKE '%irina%';

--para practica

select city, count(airport_name)
from airports_data
group by city
having count(airport_name) > 1;

select model, count(flight_no) as Numero_de_vuelos
from flights f
join aircrafts_data a
on f.aircraft_code = a.aircraft_code
group by a.model;