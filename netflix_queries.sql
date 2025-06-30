-- 1. List all TV shows
SELECT * FROM netflix_titles
WHERE type = 'TV Show';

-- 2. All Indian movies released in 2021
SELECT title, release_year 
FROM netflix_titles
WHERE country = 'India' AND type = 'Movie' AND release_year = 2021;

-- 3. Count total movies VS Tv shows
SELECT type, COUNT(*) as total_count
FROM netflix_titles
GROUP BY type;

-- 4. Top 5 countries with most titles
SELECT country, COUNT(*) AS title_count
FROM netflix_titles
GROUP BY country
ORDER BY title_count DESC
LIMIT 5;

-- 5. Titles released in the most recent year
SELECT title, release_year
FROM netflix_nitles
WHERE release_year = (SELECT MAX(release_year) FROM netflix_titles);

-- 6. Create a view of Indian Content
CREATE VIEW Indian_Content AS
SELECT * FROM Netflix_Titles WHERE country = 'India';