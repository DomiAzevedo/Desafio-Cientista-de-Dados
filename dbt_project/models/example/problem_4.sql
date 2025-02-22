with raw_data as (
    select 
        id_paciente,
        case 
            when sexo = 'male' then 'Masculino'
            when sexo = 'female' then 'Feminino'
            else null 
        end as sexo,
        updated_at as atualizado_em

    from `dbt-project-451513.dados_raw.pacientes`
)

select * from raw_data