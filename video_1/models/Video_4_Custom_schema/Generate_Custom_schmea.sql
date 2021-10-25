{{config(materialized='view')}}
with source_data as (
    select * from {{ source('WEB_PAGE_data','WEB_PAGE') }} as WP 
    inner join 
    {{source('WEB_SITE_data','WEB_SITE')}} as WS on WS.WEB_SITE_SK =WP.WP_WEB_PAGE_SK

)
 select * from source_data