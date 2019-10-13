DROP TABLE "Yelp_Data";
DROP TABLE "Ny_Inspection";

CREATE TABLE "Ny_Inspection" (
   "Restaurant_Name" VARCHAR,
   "Building" VARCHAR   NOT NULL,
   "Street" VARCHAR   NOT NULL,
   "Zip_Code" INT   NOT NULL,
   "Boro" VARCHAR   NOT NULL,
   "Grade" VARCHAR   NOT NULL,
   CONSTRAINT "pk_Ny_Inspection" PRIMARY KEY (
       "Restaurant_Name"
    )
);

CREATE TABLE "Yelp_Data" (
   "Restaurant_Name" VARCHAR,
   "City" VARCHAR   NOT NULL,
   "Rating" INT   NOT NULL,
   CONSTRAINT "pk_Yelp_Data" PRIMARY KEY (
       "Restaurant_Name"
    )
);

--ALTER TABLE "Yelp_Data" ADD CONSTRAINT "fk_Yelp_Data_Restaurant_Name" FOREIGN KEY("Restaurant_Name")
--REFERENCES "Ny_Inspection" ("Restaurant_Name");

SELECT * FROM "Ny_Inspection";
SELECT * FROM "Yelp_Data";

SELECT "Yelp_Data"."Restaurant_Name", "Ny_Inspection"."Grade", "Ny_Inspection"."Boro", "Yelp_Data"."Rating"
INTO "Final_Table"
FROM "Yelp_Data"
INNER JOIN "Ny_Inspection" ON
"Ny_Inspection"."Restaurant_Name"="Yelp_Data"."Restaurant_Name";

SELECT * FROM "Final_Table";