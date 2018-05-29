#Q1
select event.event_id, numeric_values.value
from event
join  numeric_values on event.event_id = numeric_values.event_id
join type_names on numeric_values.type_id = type_names.type_id
where type_name = 'nkill'
order by numeric_values.value desc
limit 1;

#Q2
select count(event_id)
from event
where event.iyear >=2000 and event.iyear <=2016;

#Q3
select attack_type.attack_type_txt, count(event.attack_type1_id)
from attack_type
join event on attack_type.attack_type_id = event.attack_type1_id
group by event.attack_type1_id
order by count(event.attack_type1_id) desc
limit 5;

#Q4
select count(event.event_id) / count(distinct iyear)
from event
join event_location on event.event_id = event_location.event_id
join country on event_location.country_id = country.country_id
where country.country_txt = 'United States';

#Q5
SELECT iyear
FROM event
join event_location on event.event_id = event_location.event_id
join country on country.country_id = event_location.country_id
where country.country_txt = "Turkey"
group by iyear
order by count(iyear) DESC
limit 1;

#Q6
select count(event.event_id)
from event
join attack_type a on event.attack_type1_id = a.attack_type_id
where attack_type1_id = 6;

#Q7
select count(event_id)
from event
join attack_type a on event.attack_type1_id = a.attack_type_id
group by attack_type1_id;

#Q8
SELECT iyear
FROM event
join event_location on event.event_id = event_location.event_id
join country on country.country_id = event_location.country_id
where country.country_txt = "Turkey"
group by iyear
order by count(iyear) ASC
limit 1;

#Q9
SELECT country_txt
FROM event
join event_location on event.event_id = event_location.event_id
join country on country.country_id = event_location.country_id
group by country_txt
order by count(iyear) ASC
limit 15;

#Q10
select region.region_txt, count(c.region_id)
from region
join country c on region.region_id = c.region_id
join event_location l on c.country_id = l.country_id
join event e on l.event_id = e.event_id
join target_info ti on e.event_id = ti.event_id
where target_type_id = 8
group by c.region_id
order by count(c.region_id) DESC
limit 1;
