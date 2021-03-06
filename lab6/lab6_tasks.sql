CREATE VIEW pets_breed AS SELECT id, breed 
FROM pets

SELECT * from pets_breed 
WHERE breed LIKE 'Б%'


SELECT o.id, o.home_address as "Ім'я", o.firstname as "Прізвище", p.breed as "Порода", p.name as "Кличка"
from owners as o, pets as p
WHERE o.id = p.owner_id


SELECT o.id, o.home_address as "Ім'я", o.firstname as "Прізвище", p.breed as "Порода", p.name as "Кличка"
from owners as o, pets as p
WHERE o.id = p.owner_id AND p.breed  NOT LIKE 'М%'


