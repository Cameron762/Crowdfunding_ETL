-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/R9jLRi
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" Integer,
    "contact_id" Integer,
    "company_name" VARCHAR(50),
    "description" VARCHAR(100),
    "goal" Decimal,
    "pledged" Decimal,
    "outcome" VARCHAR,
    "backers_count" Integer,
    "country" VARCHAR,
    "currency" VARCHAR,
    "launch_date" TIMESTAMP,
    "end_date" TIMESTAMP,
    "category_id" VARCHAR,
    "subcategory_id" VARCHAR,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" VARCHAR,
    "category" VARCHAR,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR,
    "subcategory" VARCHAR,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" Integer,
    "first_name" VARCHAR,
    "last_name" VARCHAR,
    "email" VARCHAR,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

SELECT * FROM campaign;

SELECT * FROM category;

SELECT * FROM contacts;

SELECT * FROM subcategory;

