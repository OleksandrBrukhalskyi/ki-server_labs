-- public.owners definition

-- Drop table

-- DROP TABLE public.owners;

CREATE TABLE public.owners (
	id bigserial NOT NULL,
	firstname varchar(255) NULL,
	home_address varchar(255) NULL,
	patronymic varchar(255) NULL,
	phone_number varchar(255) NULL,
	surname varchar(255) NULL,
	CONSTRAINT owners_pkey PRIMARY KEY (id)
);
-- public.pets definition

-- Drop table

-- DROP TABLE public.pets;

CREATE TABLE public.pets (
	id bigserial NOT NULL,
	breed varchar(255) NULL,
	date_of_birth date NULL,
	"name" varchar(255) NULL,
	owner_id int8 NULL,
	CONSTRAINT pets_pkey PRIMARY KEY (id)
);


-- public.pets foreign keys

ALTER TABLE public.pets ADD CONSTRAINT fk6teg4kcjcnjhduguft56wcfoa FOREIGN KEY (owner_id) REFERENCES owners(id) ON DELETE CASCADE;

-- public.specialties definition

-- Drop table

-- DROP TABLE public.specialties;

CREATE TABLE public.specialties (
	id bigserial NOT NULL,
	specialty varchar(255) NULL,
	CONSTRAINT specialties_pkey PRIMARY KEY (id)
);
-- public.veterinarians definition

-- Drop table

-- DROP TABLE public.veterinarians;

CREATE TABLE public.veterinarians (
	id bigserial NOT NULL,
	firstname varchar(255) NULL,
	patronymic varchar(255) NULL,
	surname varchar(255) NULL,
	specialty_id int8 NULL,
	CONSTRAINT veterinarians_pkey PRIMARY KEY (id)
);


-- public.veterinarians foreign keys

ALTER TABLE public.veterinarians ADD CONSTRAINT fkoj8116ewo086kgwe4vc5ghhx1 FOREIGN KEY (specialty_id) REFERENCES specialties(id);

-- public.visits definition

-- Drop table

-- DROP TABLE public.visits;

CREATE TABLE public.visits (
	id bigserial NOT NULL,
	goal_of_visit varchar(255) NULL,
	visit_date timestamp NULL,
	pet_id int8 NULL,
	CONSTRAINT visits_pkey PRIMARY KEY (id)
);


-- public.visits foreign keys

ALTER TABLE public.visits ADD CONSTRAINT fk6jcifhlqqlsfseu67utlouauy FOREIGN KEY (pet_id) REFERENCES pets(id);