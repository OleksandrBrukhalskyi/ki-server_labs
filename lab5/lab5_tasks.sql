create table  pets1 
    as select * from pets
        where owner_id = 1 


create table pets2 
    as select * from pets
        where owner_id = 2


select * from pets1
    UNION SELECT * from pets2

select * from pets1
    where id in (SELECT  id from pets2)

select * from pets2
    where id  not in (SELECT  id from pets1)


select * from pets1, pets2

