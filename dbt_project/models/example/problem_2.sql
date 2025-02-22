with raw_data as (
    select 
        id_paciente,
        case 
            when frequenta_escola = 1 then true
            when frequenta_escola = 0 then false
            else null 
        end as frequenta_escola

    from `dbt-project-451513.dados_raw.pacientes`
)

select * from raw_data