select count(type) as countdata from {{ ref("for_my_first_model") }}
