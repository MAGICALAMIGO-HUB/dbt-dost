WITH row_count AS (
  SELECT COUNT(*) AS total_rows
  FROM TABLE1 -- Replace 'your_table' with the actual table name
)
SELECT total_rows
FROM row_count
