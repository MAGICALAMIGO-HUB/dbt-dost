-- select * from {{ ref('titanic') }}

-- A. How many people survived and how many people died
-- SELECT
--   SUM(CASE WHEN survived = 1 THEN 1 ELSE 0 END) AS survived_count,
--   SUM(CASE WHEN survived = 0 THEN 1 ELSE 0 END) AS dead_count
-- FROM
--   {{ ref('titanic') }}

-- B. How many people survived who do not have siblings
-- SELECT
--   COUNT(*) AS survived_without_sibling_count
-- FROM
--   {{ ref('titanic') }}
-- WHERE
--   survived = 1
--   AND SIBSP = 0

-- C. How many people died who have siblings
-- SELECT
--   COUNT(*) AS died_with_sibling_count
-- FROM
--   {{ ref('titanic') }}
-- WHERE
--   survived = 0
--   AND SIBSP > 0


-- D. Remove the NaN data from the cabin and display the updated list
-- SELECT
--   *
-- FROM
--   {{ ref('titanic') }}
-- WHERE
--   cabin IS NOT NULL

-- E. How many males died and how many females died?
SELECT
  SUM(CASE WHEN sex = 'male' AND survived = 0 THEN 1 ELSE 0 END) AS males_died_count,
  SUM(CASE WHEN sex = 'female' AND survived = 0 THEN 1 ELSE 0 END) AS females_died_count
FROM
  {{ ref('titanic') }}
