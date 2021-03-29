drop VIEW if exists [VIEW3]
go
create VIEW [VIEW3]
as
(
    select distinct name ,sum(rating_change) as rat_change, shahmatist.rating, year(start_date) as year from participation
join shahmatist
on(participation.shahmatist_id=shahmatist.shahmatist_id)
join tournament
on(tournament.tourn_id=participation.tourn_id)
group by shahmatist.shahmatist_id,name,year(start_date),shahmatist.rating


)