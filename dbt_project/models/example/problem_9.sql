with raw_data as (
    select 
        id_paciente,
        cast(pressao_diastolica as int64) as pressao_diastolica,
        cast(pressao_sistolica as int64) as pressao_sistolica

    from `dbt-project-451513.dados_raw.pacientes`
)

select * from raw_data