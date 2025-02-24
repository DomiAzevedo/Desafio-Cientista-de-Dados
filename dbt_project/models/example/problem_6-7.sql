with raw_data as (
    select 
        id_paciente,
        case 
            when meios_transporte in (null, '[]', '') then null
            else replace(replace(replace(replace(replace(replace(replace(replace(
                meios_transporte, '[', ''), ']', ''), '"', ''), '\\u00d4', 'Ô'),
                '\\u00e3', 'ã'), '\\u00e7', 'ç'), '\\u00ed', 'í'), '\\u00f4', 'ô')
        end as meios_transporte,

        case 
            when doencas_condicoes in (null, '[]', '') then null
            else replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
                doencas_condicoes, '[', ''), ']', ''), '"', ''), '\\u00d4', 'Ô'), '\\u00e1', 'á'), '\\u00e2', 'â'), 
                '\\u00e3', 'ã'), '\\u00e9', 'é'), '\\u00ea', 'ê'), '\\u00ed', 'í'), '\\u00f3', 'ó')
        end as doencas_condicoes,

        case 
            when meios_comunicacao in (null, '[]', '') then null
            else replace(replace(replace(replace(replace(
                meios_comunicacao, '[', ''), ']', ''), '"', ''),'\\u00e1', 'á'), '\\u00e3', 'ã')
        end as meios_comunicacao,

        case 
            when em_caso_doenca_procura in (null, '[]', '') then null
            else replace(replace(replace(replace(replace(replace(
                em_caso_doenca_procura, '[', ''), ']', ''), '"', ''), 
                '\\u00e1', 'á'), '\\u00ed', 'í'), '\\u00fa', 'ú')
        end as em_caso_doenca_procura

    from `dbt-project-451513.dados_raw.pacientes`
)

select * from raw_data