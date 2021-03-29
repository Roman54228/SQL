
drop view if exists [VIEW4]
GO
create view [VIEW4]
as(
 
select qual_name,count( participation.shahmatist_id) as n, avg(place) as avg, cast(case when place = 1 then count(place) else 0 end as int ) as x from participation
join shahmatist
on(participation.shahmatist_id=shahmatist.shahmatist_id)
join qual
on(qual.qual_id=shahmatist.qual_id)
join tournament
on(participation.tourn_id=tournament.tourn_id)

group by qual.qual_name,year(start_date),place
having 
year(start_date)=2018  

)