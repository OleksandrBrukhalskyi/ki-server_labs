-- 1. delete reference between owners and pets
alter table pets 
drop constraint  fk6teg4kcjcnjhduguft56wcfoa;

-- 2. decrease size of phone_number column to 12.
alter table owners 
	alter column phone_number  type varchar(12);
	
-- 3. decrease size of columns in veterinarians table.

alter table veterinarians 
	alter column firstname type varchar(30),
	alter column surname type varchar(30),
	alter column patronymic type varchar(30);
	
-- 4. adding reference and cascade deleting

ALTER TABLE public.pets ADD CONSTRAINT owners_fk FOREIGN KEY (owner_id) REFERENCES owners(id) ON DELETE CASCADE;