with raw_data as (
    select 
        id_paciente,
        case 
            when obito in ('1', 'TRUE') then true
            when obito in ('0', 'FALSE') then false
            else null 
        end as obito,

        case 
            when luz_eletrica in ('1', 'TRUE') then true
            when luz_eletrica in ('0', 'FALSE') then false
            else null 
        end as luz_eletrica,

        case 
            when em_situacao_de_rua in ('1', 'TRUE') then true
            when em_situacao_de_rua in ('0', 'FALSE') then false
            else null 
        end as em_situacao_de_rua,

        case 
            when possui_plano_saude in ('1', 'TRUE') then true
            when possui_plano_saude in ('0', 'FALSE') then false
            else null 
        end as possui_plano_saude,

        case 
            when familia_beneficiaria_auxilio_brasil in ('1', 'TRUE') then true
            when familia_beneficiaria_auxilio_brasil in ('0', 'FALSE') then false
            else null 
        end as familia_beneficiaria_auxilio_brasil

    from `dbt-project-451513.dados_raw.pacientes`
)

select * from raw_data
