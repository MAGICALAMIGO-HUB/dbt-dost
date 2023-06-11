{{ config(materialized='table', schema='CLASS_WORK_FORM_API_AIRBYTE_JSON_IN_SHEET_TRANSFORM') }}
SELECT
  TRY_PARSE_JSON(abc):id AS id,
  TRY_PARSE_JSON(abc):first_name AS first_name,
  TRY_PARSE_JSON(abc):last_name AS last_name,
  TRY_PARSE_JSON(abc):email AS email,
  TRY_PARSE_JSON(abc):gender AS gender,
  TRY_PARSE_JSON(abc):ip_address AS ip_address
FROM
  MEROMAYA.CLASS_WORK_FORM_API_AIRBYTE_JSON_IN_SHEET_TRANSFORM.FROM_SHEET_TO_SNOWFLAKE_JSONSHEET1
