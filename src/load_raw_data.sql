COPY daily_shelter_occupancy_2017
FROM '/tmp/raw/daily_shelter_occupancy_2017.csv'
DELIMITER ','
CSV HEADER;

COPY daily_shelter_occupancy_2018
FROM '/tmp/raw/daily_shelter_occupancy_2018.csv'
DELIMITER ','
CSV HEADER;

COPY daily_shelter_occupancy_2019
FROM '/tmp/raw/daily_shelter_occupancy_2019.csv'
DELIMITER ','
CSV HEADER;

COPY daily_shelter_occupancy_2020
FROM '/tmp/raw/daily_shelter_occupancy_2020.csv'
DELIMITER ','
CSV HEADER;

COPY daily_shelter_overnight_service_occupancy_2021
FROM '/tmp/raw/daily-shelter-overnight-service-occupancy-capacity-2021.csv'
DELIMITER ','
CSV HEADER;

COPY daily_shelter_overnight_service_occupancy_2022
FROM '/tmp/raw/daily-shelter-overnight-service-occupancy-capacity-2022.csv'
DELIMITER ','
CSV HEADER;

COPY daily_shelter_overnight_service_occupancy_2023
FROM '/tmp/raw/daily-shelter-overnight-service-occupancy-capacity-2023.csv'
DELIMITER ','
CSV HEADER;

COPY daily_shelter_overnight_service_occupancy_2024
FROM '/tmp/raw/daily-shelter-overnight-service-occupancy-capacity-2024.csv'
DELIMITER ','
CSV HEADER;