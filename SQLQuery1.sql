
CREATE TABLE city (
 id int NOT NULL IDENTITY(1,1),
 city_name char(128) NOT NULL,
  lat  decimal(9,6) NOT NULL,
  long decimal(9,6) NOT NULL,
  country_id int NOT NULL,
  CONSTRAINT city_pk PRIMARY KEY (id)
  );

  CREATE TABLE country (
    id int NOT NULL IDENTITY(1,1),
	country_name char(128) NOT NULL,
	country_name_eng char(128) NOT NULL,
	country_code char(8) NOT NULL,
	CONSTRAINT country_pk_1 UNIQUE (country_name),
	CONSTRAINT country_pk_2 UNIQUE (country_name_eng),
	CONSTRAINT country_pk_3 UNIQUE (country_code),
	CONSTRAINT country_pk PRIMARY KEY (id),
	);

	INSERT INTO country (country_name, country_name_eng, country_code) VALUES 
	 ('Deutschland','Germany','DEU');
	INSERT INTO country (country_name, country_name_eng, country_code) VALUES
     ('Srbija', 'Serbia', 'SRB');
    INSERT INTO country (country_name, country_name_eng, country_code) VALUES
    ('Hrvatska', 'Croatia', 'HRV');
    INSERT INTO country (country_name, country_name_eng, country_code) VALUES
    ('United Stated of America', 'United Stated of America', 'USA');
   INSERT INTO country (country_name, country_name_eng, country_code) VALUES
   ('Polska', 'Poland', 'POL');
   INSERT INTO city (city_name,lat,long,country_id) VALUES ('Washington','2.11','3.3453','4');
   select top (5) * from country;
   select top (5) * from city;
   