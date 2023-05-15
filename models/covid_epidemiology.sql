with source as (

    select * from _airbyte_raw_covid_epidemiology

),

renamed as (

    select
        '{{ var("custom_variable") }}' as db_source,
        *

    from source

)

select * from renamed
