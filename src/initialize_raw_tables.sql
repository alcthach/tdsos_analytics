-- Since 2017-2020 have the same fields, I can consider automating this in case I need to dockerize the project so someone us can build it
-- I think that could be a 'nice to have' 
-- Focusing on driving insights and data storytelling is the most important thing
-- I can choose to run the script inside psql, I can also use python/sql alchemy (feature upgrade in the future)

CREATE TABLE IF NOT EXISTS daily_shelter_occupancy_2017 (
    _id                 varchar(5),
    OCCUPANCY_DATE      timestamp, -- Might need to debug this after
    ORGANIZATION_NAME   varchar(255),
    SHELTER_NAME        varchar(255),
    SHELTER_ADDRESS     varchar(255),
    SHELTER_CITY        varchar(255),
    SHELTER_PROVINCE    varchar(2),
    SHELTER_POSTAL_CODE varchar(7), -- Might benefit from regex constraint
    FACILITY_NAME       varchar(255),
    PROGRAM_NAME        varchar(255),
    SECTOR              varchar(255),
    OCCUPANCY           smallint,
    CAPACITY            smallint 
);

CREATE TABLE IF NOT EXISTS daily_shelter_occupancy_2018 (
    _id                 varchar(5),
    OCCUPANCY_DATE      timestamp, -- Might need to debug this after
    ORGANIZATION_NAME   varchar(255),
    SHELTER_NAME        varchar(255),
    SHELTER_ADDRESS     varchar(255),
    SHELTER_CITY        varchar(255),
    SHELTER_PROVINCE    varchar(2),
    SHELTER_POSTAL_CODE varchar(7), -- Might benefit from regex constraint
    FACILITY_NAME       varchar(255),
    PROGRAM_NAME        varchar(255),
    SECTOR              varchar(255),
    OCCUPANCY           smallint,
    CAPACITY            smallint 
);

CREATE TABLE IF NOT EXISTS daily_shelter_occupancy_2019 (
    _id                 varchar(5),
    OCCUPANCY_DATE      timestamp, -- Might need to debug this after
    ORGANIZATION_NAME   varchar(255),
    SHELTER_NAME        varchar(255),
    SHELTER_ADDRESS     varchar(255),
    SHELTER_CITY        varchar(255),
    SHELTER_PROVINCE    varchar(2),
    SHELTER_POSTAL_CODE varchar(7), -- Might benefit from regex constraint
    FACILITY_NAME       varchar(255),
    PROGRAM_NAME        varchar(255),
    SECTOR              varchar(255),
    OCCUPANCY           smallint,
    CAPACITY            smallint 
);

CREATE TABLE IF NOT EXISTS daily_shelter_occupancy_2020 (
    _id                 varchar(5),
    OCCUPANCY_DATE      date, -- Might need to debug this after
    ORGANIZATION_NAME   varchar(255),
    SHELTER_NAME        varchar(255),
    SHELTER_ADDRESS     varchar(255),
    SHELTER_CITY        varchar(255),
    SHELTER_PROVINCE    varchar(2),
    SHELTER_POSTAL_CODE varchar(7), -- Might benefit from regex constraint
    FACILITY_NAME       varchar(255),
    PROGRAM_NAME        varchar(255),
    SECTOR              varchar(255),
    OCCUPANCY           smallint,
    CAPACITY            smallint 
);

CREATE TABLE IF NOT EXISTS daily_shelter_overnight_service_occupancy_2021 (
    _id                     varchar(5),
    OCCUPANCY_DATE          varchar(8), -- date format is yy-mm-dd
    ORGANIZATION_ID         varchar(2),
    ORGANIZATION_NAME       varchar(255),
    SHELTER_ID              varchar(2),
    SHELTER_GROUP           varchar(255),
    LOCATION_ID             varchar(4),
    LOCATION_NAME           varchar(255),
    LOCATION_ADDRESS        varchar(255),
    LOCATION_POSTAL_CODE    varchar(7),
    LOCATION_CITY           varchar(255),
    LOCATION_PROVINCE       varchar(2),
    PROGRAM_ID              varchar(5),
    PROGRAM_NAME            varchar(255),
    SECTOR                  varchar(255),
    PROGRAM_MODEL           varchar(255),
    OVERNIGHT_SERVICE_TYPE  varchar(255),
    PROGRAM_AREA            varchar(255),
    SERVICE_USER_COUNT      smallint,
    CAPACITY_TYPE           varchar(255),
    CAPACITY_ACTUAL_BED     smallint,
    CAPACITY_FUNDING_BED    smallint,
    OCCUPIED_BEDS           smallint,
    UNOCCUPIED_BEDS         smallint,
    UNAVAILABLE_BEDS        smallint,
    CAPACITY_ACTUAL_ROOM    smallint,
    CAPACITY_FUNDING_ROOM   smallint,
    OCCUPIED_ROOMS          smallint,
    UNOCCUPIED_ROOMS        smallint,
    UNAVAILABLE_ROOMS       smallint,
    OCCUPANCY_RATE_BEDS     numeric(5,2),
    OCCUPANCY_RATE_ROOMS    numeric(5,2)
);

CREATE TABLE IF NOT EXISTS daily_shelter_overnight_service_occupancy_2022 (
    _id                     varchar(5),
    OCCUPANCY_DATE          varchar(8), -- date format is yy-mm-dd
    ORGANIZATION_ID         varchar(2),
    ORGANIZATION_NAME       varchar(255),
    SHELTER_ID              varchar(2),
    SHELTER_GROUP           varchar(255),
    LOCATION_ID             varchar(4),
    LOCATION_NAME           varchar(255),
    LOCATION_ADDRESS        varchar(255),
    LOCATION_POSTAL_CODE    varchar(7),
    LOCATION_CITY           varchar(255),
    LOCATION_PROVINCE       varchar(2),
    PROGRAM_ID              varchar(5),
    PROGRAM_NAME            varchar(255),
    SECTOR                  varchar(255),
    PROGRAM_MODEL           varchar(255),
    OVERNIGHT_SERVICE_TYPE  varchar(255),
    PROGRAM_AREA            varchar(255),
    SERVICE_USER_COUNT      smallint,
    CAPACITY_TYPE           varchar(255),
    CAPACITY_ACTUAL_BED     smallint,
    CAPACITY_FUNDING_BED    smallint,
    OCCUPIED_BEDS           smallint,
    UNOCCUPIED_BEDS         smallint,
    UNAVAILABLE_BEDS        smallint,
    CAPACITY_ACTUAL_ROOM    smallint,
    CAPACITY_FUNDING_ROOM   smallint,
    OCCUPIED_ROOMS          smallint,
    UNOCCUPIED_ROOMS        smallint,
    UNAVAILABLE_ROOMS       smallint,
    OCCUPANCY_RATE_BEDS     numeric(5,2),
    OCCUPANCY_RATE_ROOMS    numeric(5,2)
);

CREATE TABLE IF NOT EXISTS daily_shelter_overnight_service_occupancy_2023 (
    _id                     varchar(5),
    OCCUPANCY_DATE          timestamp,
    ORGANIZATION_ID         varchar(2),
    ORGANIZATION_NAME       varchar(255),
    SHELTER_ID              varchar(2),
    SHELTER_GROUP           varchar(255),
    LOCATION_ID             varchar(4),
    LOCATION_NAME           varchar(255),
    LOCATION_ADDRESS        varchar(255),
    LOCATION_POSTAL_CODE    varchar(7),
    LOCATION_CITY           varchar(255),
    LOCATION_PROVINCE       varchar(2),
    PROGRAM_ID              varchar(5),
    PROGRAM_NAME            varchar(255),
    SECTOR                  varchar(255),
    PROGRAM_MODEL           varchar(255),
    OVERNIGHT_SERVICE_TYPE  varchar(255),
    PROGRAM_AREA            varchar(255),
    SERVICE_USER_COUNT      smallint,
    CAPACITY_TYPE           varchar(255),
    CAPACITY_ACTUAL_BED     smallint,
    CAPACITY_FUNDING_BED    smallint,
    OCCUPIED_BEDS           smallint,
    UNOCCUPIED_BEDS         smallint,
    UNAVAILABLE_BEDS        smallint,
    CAPACITY_ACTUAL_ROOM    smallint,
    CAPACITY_FUNDING_ROOM   smallint,
    OCCUPIED_ROOMS          smallint,
    UNOCCUPIED_ROOMS        smallint,
    UNAVAILABLE_ROOMS       smallint,
    OCCUPANCY_RATE_BEDS     numeric(5,2),
    OCCUPANCY_RATE_ROOMS    numeric(5,2) 
);

CREATE TABLE IF NOT EXISTS daily_shelter_overnight_service_occupancy_2024 (
    _id                     varchar(5),
    OCCUPANCY_DATE          timestamp,
    ORGANIZATION_ID         varchar(2),
    ORGANIZATION_NAME       varchar(255),
    SHELTER_ID              varchar(2),
    SHELTER_GROUP           varchar(255),
    LOCATION_ID             varchar(4),
    LOCATION_NAME           varchar(255),
    LOCATION_ADDRESS        varchar(255),
    LOCATION_POSTAL_CODE    varchar(7),
    LOCATION_CITY           varchar(255),
    LOCATION_PROVINCE       varchar(2),
    PROGRAM_ID              varchar(5),
    PROGRAM_NAME            varchar(255),
    SECTOR                  varchar(255),
    PROGRAM_MODEL           varchar(255),
    OVERNIGHT_SERVICE_TYPE  varchar(255),
    PROGRAM_AREA            varchar(255),
    SERVICE_USER_COUNT      smallint,
    CAPACITY_TYPE           varchar(255),
    CAPACITY_ACTUAL_BED     smallint,
    CAPACITY_FUNDING_BED    smallint,
    OCCUPIED_BEDS           smallint,
    UNOCCUPIED_BEDS         smallint,
    UNAVAILABLE_BEDS        smallint,
    CAPACITY_ACTUAL_ROOM    smallint,
    CAPACITY_FUNDING_ROOM   smallint,
    OCCUPIED_ROOMS          smallint,
    UNOCCUPIED_ROOMS        smallint,
    UNAVAILABLE_ROOMS       smallint,
    OCCUPANCY_RATE_BEDS     numeric(5,2),
    OCCUPANCY_RATE_ROOMS    numeric(5,2)
);