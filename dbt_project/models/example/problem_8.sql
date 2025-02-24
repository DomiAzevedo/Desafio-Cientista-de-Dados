with raw_data as (
    select 
        id_paciente,
        case 
            when identidade_genero = 'Cis' and sexo = 'male' then 'Homem cisgênero'
            when identidade_genero = 'Cis' and sexo = 'female' then 'Mulher cisgênero'
            when identidade_genero = 'Travesti' and sexo = 'male' then 'Homem transgênero'
            when identidade_genero = 'Travesti' and sexo = 'female' then 'Mulher transgênero'
            when identidade_genero = 'Homem transexual' then 'Homem transgênero'
            when identidade_genero = 'Mulher transexual'then 'Mulher transgênero'
            when identidade_genero in ('Não', 'Heterossexual', 'Homossexual (gay / lésbica)', 'Bissexual', null) then null
            else identidade_genero
        end as identidade_genero
        
    from `dbt-project-451513.dados_raw.pacientes`
)

select * from raw_data