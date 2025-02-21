with source as (
    select 
        "Date",
        "Close",
        "simbolo"
    from
        {{ source('dbsales_e6y3', 'commodities') }}
),  

renamed_data as (  
    select
        cast("Date" as date) as data,
        "Close" as valor_fechamento,
        simbolo
    from
        source
)

select * from renamed_data
