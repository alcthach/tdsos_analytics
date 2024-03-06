select * from daily_shelter_occupancy_2017 dso;

select distinct shelter_name
from daily_shelter_occupancy_2017 dso 
order by shelter_name ASC;

select *
from daily_shelter_occupancy_2017 dso ;

select *
from daily_shelter_occupancy_2017 dso 
where shelter_name like 'Downsview Dells';

-- The grain of this data is a snapshot measure of daily occupancy

	select count(*) as total_record_count
	from daily_shelter_occupancy_2017 dso 
	where shelter_name like 'Downsview Dells'

-- Sanity check; yes, for each day in 2017, this shelter had a measurement
	
-- I'm going to need to profile the data for the next little while to figure out what questions to ask, and what stories to tell
	-- And why I'm going to do that

	select *
	from daily_shelter_occupancy_2017 dso;

select *
from daily_shelter_occupancy_2020 dso;

select *
from daily_shelter_occupancy_2017 dso ;

select *
from daily_shelter_occupancy_2017 dso 
where shelter_postal_code is null;

-- Not sure if missing postal codes is going to be an issue
-- Though it would be nice to impute the values in case I want to have lat/long values for a map/gram type visualization
