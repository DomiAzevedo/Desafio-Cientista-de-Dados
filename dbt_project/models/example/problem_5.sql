with raw_data as (
    select 
        id_paciente,
        case 
            when tipo = 'rotineiro' then 'Rotineiro'
            when tipo = 'historico' then 'Histórico'
            else null 
        end as tipo

    from `dbt-project-451513.dados_raw.pacientes`
)

select * from raw_data