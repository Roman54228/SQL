/*Изменить место проведения турниров с 7й локации на 5ю в период с 1 января до мая месяца 2020 года  */
update tournament
set location_id = 5
where location_id IN
(
    select location_id from tournament
    where location_id = 7 and YEAR(start_date) = 2020 and MONTH(start_date) < 05 
)