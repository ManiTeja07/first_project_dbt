{{config(materialized='table')}}
with source_data as (
    select * from {{ source('WEB_PAGE_data','WEB_PAGE') }} as WP 
    inner join 
    {{ref('web_page_creator')}} as SD on SD.ID =WP.WP_WEB_PAGE_SK

)
 select * from source_data