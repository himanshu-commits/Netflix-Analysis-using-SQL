--- [1] Types of content

/*SELECT DISTINCT type
FROM sql_netflix_analysis
*/

--- [2] Number of types of content

/*
SELECT count(type) as 'number of Movies content'
FROM sql_netflix_analysis
WHERE type = 'Movie'*/

/*SELECT count(type) as 'number of Tv shows content'
FROM sql_netflix_analysis
WHERE type = 'TV Show'*/

--- [3] Number of distinct countries

/*SELECT count(DISTINCT country) as 'No of distinct country'
from sql_netflix_analysis*/

--- [4] Total Count for top 10 country
/*SELECT DISTINCT country , count(*) as 'Count'
from sql_netflix_analysis
GROUP BY country 
ORDER BY count(*) DESC
LIMIT 10      */
--- [5] Total count for movies for top 10 country

/*SELECT DISTINCT country , type , count(*) as 'Count'
FROM sql_netflix_analysis
WHERE type = 'Movie'
GROUP BY country
ORDER BY count(*) DESC
LIMIT 10*/

--- [6] Total count for tv shows for top 10 country

/*SELECT DISTINCT country , type , count(*) as 'Count'
FROM sql_netflix_analysis
WHERE type = 'TV Show'
GROUP BY country
ORDER BY count(*) DESC
LIMIT 10*/

--- [7] Top 10 category of movie content which were rated highest

/*SELECT type,rating,count(*) as 'Count'
FROM sql_netflix_analysis
WHERE type = 'Movie'
GROUP BY rating
ORDER BY count(*) DESC
LIMIT 10*/

--- [8] Top 10 category of TV Show content  which were rated highest

/*SELECT type,rating,count(*) as 'Count'
FROM sql_netflix_analysis
WHERE type = 'TV Show'
GROUP BY rating
ORDER BY count(*) DESC
LIMIT 10
*/

--- [9] Count for Number of Movie content released in different years

/*
SELECT release_year,type,count(*) as 'Count'
FROM sql_netflix_analysis
WHERE type = 'Movie'
GROUP BY release_year
ORDER BY count(*) DESC
LIMIT 10
*/

--- [10] Count for Number of TV shows content released in different years

/*SELECT release_year,type,count(*) as 'Count'
FROM sql_netflix_analysis
WHERE type = 'TV Show'
GROUP BY release_year
ORDER BY count(*) DESC
LIMIT 10*/

--- [11] Total number of movie content for each types of movie 

/*SELECT DISTINCT listed_in ,type, count(*) as 'Count'
FROM sql_netflix_analysis
WHERE type ='Movie'
GROUP BY listed_in
ORDER BY count(*) DESC
LIMIT 10

--- [12] Total number of TV shows content for each types of TV Shows
*/
/*SELECT DISTINCT listed_in ,type, count(*) as 'Count'
FROM sql_netflix_analysis
WHERE type ='TV Show'
GROUP BY listed_in
ORDER BY count(*) DESC
LIMIT 10
*/


