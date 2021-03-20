start TRANSACTION;
    insert into pets (breed,date_of_birth,name,owner_id) values('Ретривер','2015-07-02', 'Барс', 1);
    insert into pets (breed,date_of_birth,name,owner_id) values('Порода','2016-08-15', 'Міша', 3);
    insert into pets (breed,date_of_birth,name,owner_id) values('Німецька вівчарка','2019-08-15','Ларрі',3);
commit;

start TRANSACTION;
    insert into pets (breed,date_of_birth,name,owner_id) values('Ретривер','2015-07-02', 'Барс', 1);
    insert into pets (breed,date_of_birth,name,owner_id) values('Порода','2016-08-15', 'Міша', 13);
    insert into pets (breed,date_of_birth,name,owner_id) values('Німецька вівчарка','2019-08-15','Ларрі',3);
commit;


start TRANSACTION;
    insert into visits (goal_of_visit,visit_date,pet_id) values('Аналіз крові','2015-07-02', 1);
    insert into visits (goal_of_visit,visit_date,pet_id) values('Аналіз крові','2017-02-15', 2);
commit;

start TRANSACTION;
    insert into visits (goal_of_visit,visit_date,pet_id) values('Аналіз крові','2015-07-02', 1);
    insert into visits (goal_of_visit,visit_date,pet_id) values('Аналіз крові','2017-02-15', 97);
commit;

