SELECT avg(averagerating) AS avg_rating
FROM (
  SELECT
    tconst
  FROM dsti_2022_spring.imdb_title_basics
  WHERE array_contains(genres, 'Comedy')
) titles
JOIN dsti_2022_spring.imdb_title_ratings ratings
ON titles.tconst = ratings.tconst;
