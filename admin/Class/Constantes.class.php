<?php

/**
 * Constantes.class [ HELPER ]
 * Classe responável por manipular e validade dados do sistema!
 *
 * @copyright (c) 2017, Leo Bessa
 */
define('CO_ACESSO', 'co_acesso');
define('DS_SESSION_ID', 'ds_session_id');
define('DT_INICIO_ACESSO', 'dt_inicio_acesso');
define('DT_FIM_ACESSO', 'dt_fim_acesso');
define('CO_USUARIO', 'co_usuario');
define('CO_AUDITORIA', 'co_auditoria');
define('CO_AGENDA_EVENTO', 'co_agenda_evento');
define('NO_TABELA', 'no_tabela');
define('DT_REALIZADO', 'dt_realizado');
define('DS_ITEM_ANTERIOR', 'ds_item_anterior');
define('DS_ITEM_ATUAL', 'ds_item_atual');
define('CO_REGISTRO', 'co_registro');
define('DS_PERFIL_USUARIO', 'ds_perfil_usuario');
define('CO_CONTATO', 'co_contato');
define('NU_TEL1', 'nu_tel1');
define('NU_TEL2', 'nu_tel2');
define('NU_TEL3', 'nu_tel3');
define('DS_EMAIL', 'ds_email');
define('CO_ENDERECO', 'co_endereco');
define('DS_ENDERECO', 'ds_endereco');
define('DS_COMPLEMENTO', 'ds_complemento');
define('DS_BAIRRO', 'ds_bairro');
define('NU_CEP', 'nu_cep');
define('NO_CIDADE', 'no_cidade');
define('SG_UF', 'sg_uf');
define('CO_EVENTO', 'co_evento');
define('NO_EVENTO', 'no_evento');
define('DS_CONTEUDO', 'ds_conteudo');
define('DS_PALAVRAS_CHAVES', 'ds_palavras_chaves');
define('DT_CADASTRO', 'dt_cadastro');
define('DS_LOCAL', 'ds_local');
define('CO_FUNCIONALIDADE', 'co_funcionalidade');
define('NO_FUNCIONALIDADE', 'no_funcionalidade');
define('ST_STATUS', 'st_status');
define('CO_IMAGEM', 'co_imagem');
define('DS_CAMINHO', 'ds_caminho');
define('DS_NAVEGADOR', 'ds_navegador');
define('DS_SISTEMA_OPERACIONAL', 'ds_sistema_operacional');
define('DS_DISPOSITIVO', 'ds_dispositivo');
define('CO_INSCRICAO', 'co_inscricao');
define('DS_PASTORAL', 'ds_pastoral');
define('DS_RETIRO', 'ds_retiro');
define('DS_MEMBRO_ATIVO', 'ds_membro_ativo');
define('DS_SITUACAO_ATUAL_GRUPO', 'ds_situacao_atual_grupo');
define('NU_CAMISA', 'nu_camisa');
define('NO_RESPONSAVEL', 'no_responsavel');
define('NU_TEL_RESPONSAVEL', 'nu_tel_responsavel');
define('DS_DESCRICAO', 'ds_descricao');
define('DS_ALIMENTACAO', 'ds_alimentacao');
define('DS_MEDICACAO', 'ds_medicacao');
define('CO_PESSOA', 'co_pessoa');
define('CO_MEMBRO', 'co_membro');
define('ST_ESTUDA', 'st_estuda');
define('ST_TRABALHA', 'st_trabalha');
define('DS_CONHECIMENTO', 'ds_conhecimento');
define('ST_BATIZADO', 'st_batizado');
define('ST_EUCARISTIA', 'st_eucaristia');
define('ST_CRISMA', 'st_crisma');
define('ST_EQUIPE_TRABALHO', 'st_equipe_trabalho');
define('CO_PAGAMENTO', 'co_pagamento');
define('NU_TOTAL', 'nu_total');
define('NU_VALOR_PAGO', 'nu_valor_pago');
define('NU_PARCELAS', 'nu_parcelas');
define('TP_SITUACAO', 'tp_situacao');
define('DS_OBSERVACAO', 'ds_observacao');
define('CO_PARCELAMENTO', 'co_parcelamento');
define('NU_PARCELA', 'nu_parcela');
define('NU_VALOR_PARCELA', 'nu_valor_parcela');
define('NU_VALOR_PARCELA_PAGO', 'nu_valor_parcela_pago');
define('DT_VENCIMENTO', 'dt_vencimento');
define('DT_VENCIMENTO_PAGO', 'dt_vencimento_pago');
define('CO_TIPO_PAGAMENTO', 'co_tipo_pagamento');
define('CO_PERFIL', 'co_perfil');
define('NO_PERFIL', 'no_perfil');
define('CO_PERFIL_FUNCIONALIDADE', 'co_perfil_funcionalidade');
define('NU_CPF', 'nu_cpf');
define('NO_PESSOA', 'no_pessoa');
define('NU_RG', 'nu_rg');
define('DT_NASCIMENTO', 'dt_nascimento');
define('ST_SEXO', 'st_sexo');
define('DS_TIPO_PAGAMENTO', 'ds_tipo_pagamento');
define('SG_TIPO_PAGAMENTO', 'sg_tipo_pagamento');
define('DS_SENHA', 'ds_senha');
define('DS_CODE', 'ds_code');
define('CO_USUARIO_PERFIL', 'co_usuario_perfil');
define('CO_AUDITORIA_TABELA', 'co_auditoria_tabela');
define('TP_OPERACAO', 'tp_operacao');
define('CO_AUDITORIA_ITENS', 'co_auditoria_itens');
define('DS_CAMPO', 'ds_campo');
define('CO_CATEGORIA_EVENTO', 'co_categoria_evento');
define('NO_CATEGORIA_EVENTO', 'no_categoria_evento');
define('CO_COMISSAO_EVENTO', 'co_comissao_evento');
define('CO_IMAGEM_EVENTO', 'co_imagem_evento');
define('CO_AGENDA', 'co_agenda');
define('ST_DIA_TODO', 'st_dia_todo');
define('DT_INICIO', 'dt_inicio');
define('DT_FIM', 'dt_fim');
define('DS_TITULO', 'ds_titulo');
define('CO_CATEGORIA_AGENDA', 'co_categoria_agenda');
define('CO_PERFIL_AGENDA', 'co_perfil_agenda');
define('NO_CATEGORIA_AGENDA', 'no_categoria_agenda');
define('DS_COR', 'ds_cor');
define('CO_CATEGORIA', 'co_categoria');
define('NO_CATEGORIA', 'no_categoria');
define('DS_TIPO', 'ds_tipo');



define('ACESSO_SERVICE', 'AcessoService');
define('AUDITORIA_SERVICE', 'AuditoriaService');
define('CONTATO_SERVICE', 'ContatoService');
define('ENDERECO_SERVICE', 'EnderecoService');
define('EVENTO_SERVICE', 'EventoService');
define('FUNCIONALIDADE_SERVICE', 'FuncionalidadeService');
define('IMAGEM_SERVICE', 'ImagemService');
define('INSCRICAO_SERVICE', 'InscricaoService');
define('MEMBRO_SERVICE', 'MembroService');
define('PAGAMENTO_SERVICE', 'PagamentoService');
define('PARCELAMENTO_SERVICE', 'ParcelamentoService');
define('PERFIL_SERVICE', 'PerfilService');
define('PERFIL_FUNCIONALIDADE_SERVICE', 'PerfilFuncionalidadeService');
define('PESSOA_SERVICE', 'PessoaService');
define('TIPO_PAGAMENTO_SERVICE', 'TipoPagamentoService');
define('USUARIO_SERVICE', 'UsuarioService');
define('USUARIO_PERFIL_SERVICE', 'UsuarioPerfilService');
define('AUDITORIA_TABELA_SERVICE', 'AuditoriaTabelaService');
define('AUDITORIA_ITENS_SERVICE', 'AuditoriaItensService');
define('CATEGORIA_EVENTO_SERVICE', 'CategoriaEventoService');
define('COMISSAO_EVENTO_SERVICE', 'ComissaoEventoService');
define('IMAGEM_EVENTO_SERVICE', 'ImagemEventoService');
define('AGENDA_SERVICE', 'AgendaService');
define('PERFIL_AGENDA_SERVICE', 'PerfilAgendaService');
define('CATEGORIA_AGENDA_SERVICE', 'CategoriaAgendaService');
define('AGENDA_EVENTO_SERVICE', 'AgendaEventoService');



define('SUCESSO', 'sucesso');
define('MSG', 'msg');
define('DADOS', 'dados');
define('VALIDOS', 'validos');
define('OBRIGATORIOS', 'obrigatorios');

