SELECT o.id, o.home_address as "Ім'я", o.firstname as "Прізвище", p.breed as "Порода", p.name as "Кличка"
from owners as o
join pets as p
ON o.id = p.owner_id


SELECT  COUNT(*) as "К-сть", p.name as "Кличка"
from pets as p
group by p.name


SELECT o.id, o.home_address as "Ім'я", o.firstname as "Прізвище", p.breed as "Порода", p.name as "Кличка",v.goal_of_visit as "Мета візиту" ,v.visit_date as "Дата візиту"
from owners as o
join pets as p ON o.id = p.owner_id
join visits as v ON p.id = v.pet_id


SELECT o.id, o.home_address as "Ім'я", o.firstname as "Прізвище", p.breed as "Порода", p.name as "Кличка",v.goal_of_visit as "Мета візиту" ,v.visit_date as "Дата візиту"
from owners as o
join pets as p ON o.id = p.owner_id
join visits as v ON p.id = v.pet_id
where v.visit_date > '2019-12-31'



SELECT COUNT(*), v.goal_of_visit as "Мета візиту"
from owners as o
join pets as p ON o.id = p.owner_id
join visits as v ON p.id = v.pet_id
group by v.goal_of_visit 


SELECT COUNT(p.name) as "К-сть тварин", o.home_address as "Ім'я", o.firstname as "Прізвище"
from owners as o
join pets as p ON o.id = p.owner_id
group by o.home_address, o.firstname



select o.firstname, o.home_address, p.id, p.name from pets p
join owners o on o.id = p.owner_id
where not exists (select * from visits v where v.id = p.id) 












