create table athlete_events_clean as 
select
ae."Name" as Name,
ae.id,
ae.sex,
cast(NULLIF(ae."Age" ,'NA') as float) as Age,
cast(NULLIF(ae.height,'NA') as float) as Height,
cast(NULLIF(ae.weight,'NA') as float) as Weight,
NULLIF(ae.medal,'NA') as Medal,
ae.team,
ae.noc,
ae.games,
ae."Year"  as Year,
ae.season,
ae.city  as city,
ae."Event"  as Event
from athlete_events ae 

select 
count(aec.id )
from athlete_events_clean aec;

select 
count(distinct ae.team )
from athlete_events ae;

select
count(distinct ae.sport )
from athlete_events ae 

select
MIN(aec."year" ),
MAX(aec."year" )
from athlete_events_clean aec 

select
MIN(aec.age ),
max(aec.age ),
AVG(aec.age ),
mode() within group (order by aec.age )	
from athlete_events_clean aec 

select
*
from athlete_events_clean aec 
where aec.age = '10' or aec.age = '97'

select 
aec.id 
from athlete_events_clean aec 
group by aec.id 
having count (aec.id) >1

alter table athlete_events_clean 
add column record_id serial primary key 

alter table athlete_events_clean 
add constraint fk_noc
foreign key ("noc")
references noc_regions ("NOC")

select distinct aec.noc 
from athlete_events_clean aec 
where aec.noc not in (
select nr."NOC" 
from noc_regions nr)

insert into noc_regions ("NOC" ,region )
values('SGP','Singapore')

alter table athlete_events_clean 
add constraint fk_noc
foreign key ("noc")
references noc_regions ("NOC")

select 
count(distinct aec.name)
from athlete_events_clean aec 

select 
count(aec.sex )
from athlete_events_clean aec 
where aec.sex like 'F'

select 
count(aec.medal )
from athlete_events_clean aec 

select 
aec.team ,
AVG(aec.age ) as avg_age,
AVG(aec.height ),
AVG(aec.weight ),
Count(aec.medal )
from athlete_events_clean aec 
group by aec.team 

select
count(aec.medal ) as medal_count,
aec."name" ,
MIN(aec.age ) as min_age
from athlete_events_clean aec 
group by aec."name" 
order by medal_count desc 

select
aec."year" ,
count(*) as total_athletes,
SUM(case when aec.sex = 'F' then 1 else 0 end) as female_count,
SUM(case when aec.sex = 'M' then 1 else 0 end) as male_count
from athlete_events_clean aec 
group by aec."year" 	

select
count(aec.medal ) as medal_count,
MIN(aec.age ) as min_age
from athlete_events_clean aec 
group by aec.age 
order by medal_count desc 

select
round(AVG(aec.weight ::numeric),2) as avg_weight,
aec.height 
from athlete_events_clean aec 
where aec.height is not null
and aec.weight is not null
group by aec.height 

create view medal_per_year as select
aec.sex ,
aec.year,
count(*) as total_medals
from athlete_events_clean aec 
group by aec.year ,aec.sex 

select
Round(AVG(aec.age )::numeric,2) as avg_age,
aec."event" 
from athlete_events_clean aec 
where age is not null
group by aec."event" 

create or replace view  medal_adequacy_ratio as select 
aec.team ,
(count(aec.medal )::numeric/count(distinct aec."name" )::numeric)*100 as Medal_E_Ratio
from athlete_events_clean aec 
where aec.medal is not null
group by aec.team
order by Medal_E_Ratio desc 
limit 10

create view Female_Growth_Rate as select
aec."year" ,
round(sum(case when sex='F' then 1 else 0 end)::numeric/count(*) *100,2) as Female_growth
from athlete_events_clean aec 
group by aec."year" 

