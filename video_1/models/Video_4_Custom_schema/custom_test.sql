with source_data as (
    select * from {{ref('Seed_test')}} where name= '{{var('person_name')}}'

)
select * from source_data
