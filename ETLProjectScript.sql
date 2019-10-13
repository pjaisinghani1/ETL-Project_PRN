DROP TABLE "Yelp_Data";

CREATE TABLE "Ny_Inspection" (
   "DBA" VARCHAR   NOT NULL,
   "BUILDING" INT   NOT NULL,
   "STREET" VARCHAR   NOT NULL,
   "ZIPCODE" INT   NOT NULL,
   "BORO" VARCHAR   NOT NULL,
   "GRADE" VARCHAR   NOT NULL,
   CONSTRAINT "pk_Ny_Inspection" PRIMARY KEY (
       "DBA"
    )
);
CREATE TABLE "Yelp_Data" (
   "Restaurant_Name" VARCHAR,
   "City" VARCHAR   NOT NULL,
   "Rating" VARCHAR   NOT NULL,
   CONSTRAINT "pk_Yelp_Data" PRIMARY KEY (
       "Restaurant_Name"
    )
);
ALTER TABLE "Yelp_Data" ADD CONSTRAINT "fk_Yelp_Data_Restaurant_Name" FOREIGN KEY("Restaurant_Name")
REFERENCES "Ny_Inspection" ("DBA");

SELECT * FROM Ny_Inspection;

DROP TABLE ny_inspect_df;