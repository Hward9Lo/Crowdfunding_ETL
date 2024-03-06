
-- Table: public.Categories

DROP TABLE IF EXISTS public."Categories";

CREATE TABLE IF NOT EXISTS public."Categories"
(
    category_id character varying(100) COLLATE pg_catalog."default" NOT NULL,
    category character varying(100) COLLATE pg_catalog."default",
    FOREIGN KEY("category_id") REFERENCES public."Categories" ("category_id")
	
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Categories"
    OWNER to postgres;
	
SELECT * FROM public."Categories";

-- Table: public.Contacts

DROP TABLE IF EXISTS public."Contacts";

CREATE TABLE IF NOT EXISTS public."Contacts"
(
    contact_id integer NOT NULL,
    name character varying(100) COLLATE pg_catalog."default",
    email character varying(100) COLLATE pg_catalog."default",
    first_name character varying(100) COLLATE pg_catalog."default",
    last_name character varying(100) COLLATE pg_catalog."default",
	FOREIGN KEY("contact_id") REFERENCES public."Contacts" ("contact_id")
	
	
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Contacts"
    OWNER to postgres;
	
SELECT * FROM public."Contacts";

-- Table: public.Subcategory

DROP TABLE IF EXISTS public."Subcategory";

CREATE TABLE IF NOT EXISTS public."Subcategory"
(
    subcategory_id character varying(100) COLLATE pg_catalog."default" NOT NULL,
    subcategory character varying(100) COLLATE pg_catalog."default",
	FOREIGN KEY("subcategory_id") REFERENCES public."Subcategory" ("subcategory_id")
    )

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Subcategory"
    OWNER to postgres;
	
SELECT * FROM public."Subcategory";



-- Table: public.Campaign

DROP TABLE IF EXISTS public."Campaign";

CREATE TABLE IF NOT EXISTS public."Campaign"
(
    cdif int COLLATE pg_catalog."default" NOT NULL,
    contact_id int COLLATE pg_catalog."default",
    company_name character varying(100) COLLATE pg_catalog."default",
    description character varying(100) COLLATE pg_catalog."default",
    goal character varying(100) COLLATE pg_catalog."default",
    pledged character varying(100) COLLATE pg_catalog."default",
    outcome character varying(20) COLLATE pg_catalog."default",
    backers_count character varying(100) COLLATE pg_catalog."default",
    country character varying(20) COLLATE pg_catalog."default",
    currency character varying(20) COLLATE pg_catalog."default",
    launched_dated character varying(20) COLLATE pg_catalog."default",
    end_date character varying(20) COLLATE pg_catalog."default",
    category_id character varying(20) COLLATE pg_catalog."default",
    subcategory_id character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT "primary_campaign" PRIMARY KEY ("cfid")
-- 	FOREIGN KEY("contact_id") REFERENCES public."Contacts" ("contact_id"),
-- 	FOREIGN KEY("category_id") REFERENCES public."Categories" ("category_id"),
-- 	FOREIGN KEY("subcategory_id") REFERENCES public."Subcategory" ("subcategory_id")

)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Campaign"
    OWNER to postgres;
	
SELECT * FROM public."Campaign";
	




