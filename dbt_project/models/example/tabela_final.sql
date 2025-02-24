with p1 as (select * from {{ ref('problem_1') }}),
p2 as (select * from {{ ref('problem_2') }}),
p3 as (select * from {{ ref('problem_3') }}),
p4 as (select * from {{ ref('problem_4') }}),
p5 as (select * from {{ ref('problem_5') }}),
p67 as (select * from {{ ref('problem_6-7') }}),
p8 as (select * from {{ ref('problem_8') }}),
p9 as (select * from {{ ref('problem_9') }}),
dados as (select * from `dbt-project-451513.dados_raw.pacientes`)

select 
    p1.id_paciente as id_paciente,
    p4.sexo as sexo,
    p1.obito as obito,
    dados.bairro as bairro,
    dados.raca_cor as raca_cor,
    dados.ocupacao as ocupacao,
    dados.religiao as religiao,
    p1.luz_eletrica as luz_eletrica,
    dados.data_cadastro as data_cadastro,
    dados.escolaridade as escolaridade,
    dados.nacionalidade as nacionalidade,
    dados.renda_familiar as renda_familiar,
    dados.data_nascimento as data_nascimento,
    p1.em_situacao_de_rua as em_situacao_de_rua,
    p2.frequenta_escola as frequenta_escola,
    p67.meios_transporte as meios_transporte,
    p67.doencas_condicoes as doencas_condicoes,
    p8.identidade_genero as identidade_genero,
    p67.meios_comunicacao as meios_comunicacao,
    dados.orientacao_sexual as orientacao_sexual,
    p1.possui_plano_saude as possui_plano_saude,
    p67.em_caso_doenca_procura as em_caso_doenca_procura,
    dados.situacao_profissional as situacao_profissional,
    p1.vulnerabilidade_social as vulnerabilidade_social,
    dados.data_atualizacao_cadastro as data_atualizacao_cadastro,
    p1.familia_beneficiaria_auxilio_brasil as familia_beneficiaria_auxilio_brasil,
    p3.crianca_matriculada_creche_pre_escola as crianca_matriculada_creche_pre_escola,
    dados.altura as altura,
    dados.peso as peso,
    p9.pressao_sistolica as pressao_sistolica,
    p9.pressao_diastolica as pressao_diastolica,
    dados.n_atendimentos_atencao_primaria as n_atendimentos_atencao_primaria,
    dados.n_atendimentos_hospital as n_atendimentos_hospital,
    p4.atualizado_em,
    p5.tipo
from p1
left join p2 on p1.id_paciente = p2.id_paciente
left join p3 on p1.id_paciente = p3.id_paciente
left join p4 on p1.id_paciente = p4.id_paciente
left join p5 on p1.id_paciente = p5.id_paciente
left join p67 on p1.id_paciente = p67.id_paciente
left join p8 on p1.id_paciente = p8.id_paciente
left join p9 on p1.id_paciente = p9.id_paciente
left join dados on p1.id_paciente = dados.id_paciente