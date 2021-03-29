drop view if exists [VIEW6]
go
create view [view6]
as
(
select motherland, count(participation.shahmatist_id) as N, cast(case when place = 1 then count(place) else 0 end as int ) as x from participation
join shahmatist
on(participation.shahmatist_id=shahmatist.shahmatist_id)
group by motherland, place
)