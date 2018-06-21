<?php 

/**
 * Constantes.class [ HELPER ]
 * Classe responável por manipular e validade dados do sistema!
 *
 * @copyright (c) 2018, Leo Bessa
 */ 
	define('CO_AJUDA', 'co_ajuda');
	define('DS_AJUDA', 'ds_ajuda');
	define('CO_CATEGORIA', 'co_categoria');
	define('NO_CATEGORIA', 'no_categoria');
	define('NO_PRODUTO', 'no_produto');
	define('NO_PRODUTO_URL_AMIGAVEL', 'no_produto_url_amigavel');
	define('NO_SEGMENTO_URL_AMIGAVEL', 'no_segmento_url_amigavel');
	define('NO_CATEGORIA_URL_AMIGAVEL', 'no_categoria_url_amigavel');
	define('NO_FABRICANTE_URL_AMIGAVEL', 'no_fabricante_url_amigavel');
	define('CO_SEGMENTO', 'co_segmento');
	define('CO_CLIENTE', 'co_cliente');
	define('DS_OBSERVACAO', 'ds_observacao');
	define('TP_CREDOR', 'tp_credor');
	define('CO_EMPRESA', 'co_empresa');
	define('NO_EMPRESA', 'no_empresa');
	define('NO_FANTASIA', 'no_fantasia');
	define('NU_CNPJ', 'nu_cnpj');
	define('NU_INSC_ESTADUAL', 'nu_insc_estadual');
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
	define('CO_FUNCIONARIO', 'co_funcionario');
	define('DS_CARGO', 'ds_cargo');
	define('DT_ADMISSAO', 'dt_admissao');
	define('DT_DEMISSAO', 'dt_demissao');
	define('NU_CARTEIRA', 'nu_carteira');
	define('NU_SALARIO', 'nu_salario');
	define('NU_HORAS', 'nu_horas');
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
	define('NU_ESTOQUE', 'nu_estoque');
	define('NU_CODIGO', 'nu_codigo');
	define('NU_CODIGO_INTERNO', 'nu_codigo_interno');
	define('NU_CODIGO_FABRICANTE', 'nu_codigo_fabricante');
	define('CO_UNIDADE_VENDA', 'co_unidade_venda');
	define('ST_DESTAQUE', 'st_destaque');
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
	define('DS_CAMINHO_VIDEO', 'ds_caminho_video');
	define('DS_CAMINHO_MANUAL', 'ds_caminho_manual');
	define('CO_LEAD', 'co_lead');


	// SERVICES
	define('AJUDA_SERVICE', 'AjudaService');
	define('CATEGORIA_SERVICE', 'CategoriaService');
	define('CLIENTE_SERVICE', 'ClienteService');
	define('EMPRESA_SERVICE', 'EmpresaService');
	define('ENTREGA_PEDIDO_SERVICE', 'EntregaPedidoService');
	define('FABRICANTE_SERVICE', 'FabricanteService');
	define('FORNECEDOR_SERVICE', 'FornecedorService');
	define('FUNCIONARIO_SERVICE', 'FuncionarioService');
	define('NEGOCIACAO_SERVICE', 'NegociacaoService');
	define('NEGOCIACAO_PRODUTO_SERVICE', 'NegociacaoProdutoService');
	define('PAGAMENTO_SERVICE', 'PagamentoService');
	define('PARCELAMENTO_SERVICE', 'ParcelamentoService');
	define('PRODUTO_SERVICE', 'ProdutoService');
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
	define('LEAD_SERVICE', 'LeadService');


