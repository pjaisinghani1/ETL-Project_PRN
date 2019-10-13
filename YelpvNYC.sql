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

ALTER TABLE "Yelp_Data" ADD CONSTRAINT "fk_Yelp_Data_Restaurant_Name" FOREIGN KEY("Restaurant_Name")
REFERENCES "Ny_Inspection" ("Restaurant_Name");

SELECT * FROM "Ny_Inspection";
SELECT * FROM "Yelp_Data";