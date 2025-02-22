with raw_data as (
    select 
        id_paciente,
        case 
            when crianca_matriculada_creche_pre_escola in ('1', 'TRUE') then 'Creche'
            when crianca_matriculada_creche_pre_escola in ('0', 'FALSE') then 'Pré-escola'
            else null 
        end as crianca_matriculada_creche_pre_escola,
        

    from `dbt-project-451513.dados_raw.pacientes`
)

select * from raw_data