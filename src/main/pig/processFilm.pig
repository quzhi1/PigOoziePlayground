-- Load CSV file containing data about movies filmed in SF.
sf_film_loc = load '/user/zhiqu/grid_getting_started/Film_Locations_in_San_Francisco.csv' USING org.apache.pig.piggybank.storage.CSVLoader() as (title:chararray, release_year:int, locations:chararray, fun_facts:chararray, production_company:chararray, distributor:chararray, director:chararray, writer:chararray, actor_1:chararray, actor_2:chararray, actor_3:chararray);
-- Extract the director and title from the data set.
film_details = foreach sf_film_loc generate director, title;
-- Confirm that the directory field is not null.
films_with_dirs = FILTER film_details BY director is not null;
-- Remove duplicate entries that were created because some films were filmed at multiple locations in SF.
films_with_dirs = DISTINCT films_with_dirs;
-- Group the films by group so we can count the number of films for each directory.
films_by_dir = GROUP films_with_dirs by director;
-- Generate a tuple with just the director and number of movies filmed in SF.
number_films_by_dir = FOREACH films_by_dir GENERATE group as director, COUNT(films_with_dirs) as no_films;
-- Sort the tuple from the most to the least movies filmed in SF.
number_films_by_dir = ORDER number_films_by_dir BY no_films DESC;

DUMP number_films_by_dir;