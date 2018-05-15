<?php 

/**
 * Constantes.class [ HELPER ]
 * Classe responável por manipular e validade dados do sistema!
 *
 * @copyright (c) 2018, Leo Bessa
 */ 
	define('CO_ACESSO', 'co_acesso');
	define('DS_SESSION_ID', 'ds_session_id');
	define('DT_INICIO_ACESSO', 'dt_inicio_acesso');
	define('DT_FIM_ACESSO', 'dt_fim_acesso');
	define('TP_SITUACAO', 'tp_situacao');
	define('DS_NAVEGADOR', 'ds_navegador');
	define('DS_SISTEMA_OPERACIONAL', 'ds_sistema_operacional');
	define('DS_DISPOSITIVO', 'ds_dispositivo');
	define('CO_USUARIO', 'co_usuario');
	define('CO_AJUDA', 'co_ajuda');
	define('DS_AJUDA', 'ds_ajuda');
	define('CO_FUNCIONALIDADE', 'co_funcionalidade');
	define('CO_AUDITORIA', 'co_auditoria');
	define('DS_PERFIL_USUARIO', 'ds_perfil_usuario');
	define('CO_AUDITORIA_ITENS', 'co_auditoria_itens');
	define('DS_ITEM_ANTERIOR', 'ds_item_anterior');
	define('DS_ITEM_ATUAL', 'ds_item_atual');
	define('DS_CAMPO', 'ds_campo');
	define('CO_AUDITORIA_TABELA', 'co_auditoria_tabela');
	define('NO_TABELA', 'no_tabela');
	define('TP_OPERACAO', 'tp_operacao');
	define('CO_REGISTRO', 'co_registro');
	define('CO_CATEGORIA', 'co_categoria');
	define('NO_CATEGORIA', 'no_categoria');
	define('NO_PRODUTO', 'no_produto');
	define('NO_PRODUTO_URL_AMIGAVEL', 'no_produto_url_amigavel');
	define('ST_STATUS', 'st_status');
	define('CO_SEGMENTO', 'co_segmento');
	define('CO_CLIENTE', 'co_cliente');
	define('DS_OBSERVACAO', 'ds_observacao');
	define('TP_CREDOR', 'tp_credor');
	define('CO_PESSOA', 'co_pessoa');
	define('CO_EMPRESA', 'co_empresa');
	define('CO_CONTATO', 'co_contato');
	define('NU_TEL1', 'nu_tel1');
	define('NU_TEL2', 'nu_tel2');
	define('NU_TEL3', 'nu_tel3');
	define('NU_TEL4', 'nu_tel4');
	define('DS_EMAIL', 'ds_email');
	define('DS_SITE', 'ds_site');
	define('NO_EMPRESA', 'no_empresa');
	define('NO_FANTASIA', 'no_fantasia');
	define('DT_CADASTRO', 'dt_cadastro');
	define('NU_CNPJ', 'nu_cnpj');
	define('NU_INSC_ESTADUAL', 'nu_insc_estadual');
	define('CO_ENDERECO', 'co_endereco');
	define('CO_IMAGEM', 'co_imagem');
	define('DS_ENDERECO', 'ds_endereco');
	define('DS_COMPLEMENTO', 'ds_complemento');
	define('DS_BAIRRO', 'ds_bairro');
	define('NU_CEP', 'nu_cep');
	define('NO_CIDADE', 'no_cidade');
	define('SG_UF', 'sg_uf');
	define('CO_ENTREGA_PEDIDO', 'co_entrega_pedido');
	define('DT_ENTREGA', 'dt_entrega');
	define('DT_SER_ENTREGUE', 'dt_ser_entregue');
	define('CO_SIT_ENTREG_PED', 'co_sit_entreg_ped');
	define('CO_NEGOCIACAO', 'co_negociacao');
	define('CO_TRANSPORTADORA', 'co_transportadora');
	define('CO_FABRICANTE', 'co_fabricante');
	define('NO_FABRICANTE', 'no_fabricante');
	define('CO_FORNECEDOR', 'co_fornecedor');
	define('CO_REPRESENTANTE', 'co_representante');
	define('NO_FUNCIONALIDADE', 'no_funcionalidade');
	define('CO_FUNCIONARIO', 'co_funcionario');
	define('DS_CARGO', 'ds_cargo');
	define('DT_ADMISSAO', 'dt_admissao');
	define('DT_DEMISSAO', 'dt_demissao');
	define('NU_CARTEIRA', 'nu_carteira');
	define('NU_SALARIO', 'nu_salario');
	define('NU_HORAS', 'nu_horas');
	define('DS_CAMINHO', 'ds_caminho');
	define('CO_TIPO_NEGOCIACAO', 'co_tipo_negociacao');
	define('CO_NEGOCIACAO_PRODUTO', 'co_negociacao_produto');
	define('NU_VALOR', 'nu_valor');
	define('NU_QUANTIDADE', 'nu_quantidade');
	define('CO_PRODUTO', 'co_produto');
	define('CO_PAGAMENTO', 'co_pagamento');
	define('NU_TOTAL', 'nu_total');
	define('NU_VALOR_PAGO', 'nu_valor_pago');
	define('NU_PARCELAS', 'nu_parcelas');
	define('CO_TIPO_PAGAMENTO', 'co_tipo_pagamento');
	define('CO_PARCELAMENTO', 'co_parcelamento');
	define('NU_PARCELA', 'nu_parcela');
	define('NU_VALOR_PARCELA', 'nu_valor_parcela');
	define('NU_VALOR_PARCELA_PAGO', 'nu_valor_parcela_pago');
	define('DT_VENCIMENTO', 'dt_vencimento');
	define('DT_VENCIMENTO_PAGO', 'dt_vencimento_pago');
	define('CO_PERFIL', 'co_perfil');
	define('NO_PERFIL', 'no_perfil');
	define('CO_PERFIL_FUNCIONALIDADE', 'co_perfil_funcionalidade');
	define('NU_CPF', 'nu_cpf');
	define('NO_PESSOA', 'no_pessoa');
	define('NU_RG', 'nu_rg');
	define('DT_NASCIMENTO', 'dt_nascimento');
	define('DT_REALIZADO', 'dt_realizado');
	define('ST_SEXO', 'st_sexo');
	define('DS_DESCRICAO', 'ds_descricao');
	define('NU_ESTOQUE', 'nu_estoque');
	define('NU_CODIGO', 'nu_codigo');
	define('NU_CODIGO_INTERNO', 'nu_codigo_interno');
	define('NU_CODIGO_FABRICANTE', 'nu_codigo_fabricante');
	define('CO_UNIDADE_VENDA', 'co_unidade_venda');
	define('CO_PRODUTO_DESTAQUE', 'co_produto_destaque');
	define('DT_INICIO', 'dt_inicio');
	define('DT_FIM', 'dt_fim');
	define('CO_PRODUTO_DETALHE', 'co_produto_detalhe');
	define('NU_ESTOQUE_BAIXO', 'nu_estoque_baixo');
	define('NU_PRECO_VENDA', 'nu_preco_venda');
	define('NU_VALOR_LUCRO', 'nu_valor_lucro');
	define('NU_PORC_VALOR_LUCRO', 'nu_porc_valor_lucro');
	define('NU_VALOR_DESCONTO_MAXIMO', 'nu_valor_desconto_maximo');
	define('NU_PORC_DESC_MAX', 'nu_porc_desc_max');
	define('NU_PRECO_ATACADO', 'nu_preco_atacado');
	define('NU_QUANTIDADE_ATACADO', 'nu_quantidade_atacado');
	define('CO_PRODUTO_IMAGEM', 'co_produto_imagem');
	define('DS_SEGMENTO', 'ds_segmento');
	define('NO_SIT_ENTREG_PED', 'no_sit_entreg_ped');
	define('SG_SIT_ENTREG_PED', 'sg_sit_entreg_ped');
	define('CO_SUGESTAO', 'co_sugestao');
	define('TP_SUGESTAO', 'tp_sugestao');
	define('DS_TITULO_SUGESTAO', 'ds_titulo_sugestao');
	define('DS_SUGESTAO', 'ds_sugestao');
	define('NO_TIPO_NEGOCIACAO', 'no_tipo_negociacao');
	define('SG_TIPO_NEGOCIACAO', 'sg_tipo_negociacao');
	define('DS_TIPO_PAGAMENTO', 'ds_tipo_pagamento');
	define('SG_TIPO_PAGAMENTO', 'sg_tipo_pagamento');
	define('NO_UNIDADE_VENDA', 'no_unidade_venda');
	define('SG_UNIDADE_VENDA', 'sg_unidade_venda');
	define('DS_LOGIN', 'ds_login');
	define('DS_SENHA', 'ds_senha');
	define('DS_CODE', 'ds_code');
	define('DS_CAMINHO_VIDEO', 'ds_caminho_video');
	define('DS_CAMINHO_MANUAL', 'ds_caminho_manual');
	define('CO_USUARIO_PERFIL', 'co_usuario_perfil');

	// SERVICES
	define('ACESSO_SERVICE', 'AcessoService');
	define('AJUDA_SERVICE', 'AjudaService');
	define('AUDITORIA_SERVICE', 'AuditoriaService');
	define('AUDITORIA_ITENS_SERVICE', 'AuditoriaItensService');
	define('AUDITORIA_TABELA_SERVICE', 'AuditoriaTabelaService');
	define('CATEGORIA_SERVICE', 'CategoriaService');
	define('CLIENTE_SERVICE', 'ClienteService');
	define('CONTATO_SERVICE', 'ContatoService');
	define('EMPRESA_SERVICE', 'EmpresaService');
	define('ENDERECO_SERVICE', 'EnderecoService');
	define('ENTREGA_PEDIDO_SERVICE', 'EntregaPedidoService');
	define('FABRICANTE_SERVICE', 'FabricanteService');
	define('FORNECEDOR_SERVICE', 'FornecedorService');
	define('FUNCIONALIDADE_SERVICE', 'FuncionalidadeService');
	define('FUNCIONARIO_SERVICE', 'FuncionarioService');
	define('IMAGEM_SERVICE', 'ImagemService');
	define('NEGOCIACAO_SERVICE', 'NegociacaoService');
	define('NEGOCIACAO_PRODUTO_SERVICE', 'NegociacaoProdutoService');
	define('PAGAMENTO_SERVICE', 'PagamentoService');
	define('PARCELAMENTO_SERVICE', 'ParcelamentoService');
	define('PERFIL_SERVICE', 'PerfilService');
	define('PERFIL_FUNCIONALIDADE_SERVICE', 'PerfilFuncionalidadeService');
	define('PESSOA_SERVICE', 'PessoaService');
	define('PRODUTO_SERVICE', 'ProdutoService');
	define('PRODUTO_DESTAQUE_SERVICE', 'ProdutoDestaqueService');
	define('PRODUTO_DETALHE_SERVICE', 'ProdutoDetalheService');
	define('PRODUTO_IMAGEM_SERVICE', 'ProdutoImagemService');
	define('REPRESENTANTE_SERVICE', 'RepresentanteService');
	define('SEGMENTO_SERVICE', 'SegmentoService');
	define('SIT_ENTREG_PED_SERVICE', 'SitEntregPedService');
	define('SUGESTAO_SERVICE', 'SugestaoService');
	define('TIPO_NEGOCIACAO_SERVICE', 'TipoNegociacaoService');
	define('TIPO_PAGAMENTO_SERVICE', 'TipoPagamentoService');
	define('TRANSPORTADORA_SERVICE', 'TransportadoraService');
	define('UNIDADE_VENDA_SERVICE', 'UnidadeVendaService');
	define('USUARIO_SERVICE', 'UsuarioService');
	define('USUARIO_PERFIL_SERVICE', 'UsuarioPerfilService');

    // CONSTANTES
    define('SUCESSO', 'sucesso');
    define('MSG', 'msg');
    define('DADOS', 'dados');
    define('VALIDOS', 'validos');
    define('OBRIGATORIOS', 'obrigatorios');


