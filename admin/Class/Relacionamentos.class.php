<?php

/**
 * Relacionamentos.class [ RELACIONAMENTOS DO BANCO ]
 * @copyright (c) 2018, Leo Bessa
 */

class Relacionamentos
{

	public static function getRelacionamentos(){
    		return array(
			(AcessoEntidade::TABELA) => Array(
				(CO_USUARIO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
				(CO_TRAFEGO) => Array(
					('Campo') => CO_TRAFEGO,
					('Entidade') => 'TrafegoEntidade',
					('Tipo') => '1',
				),
			),
			(UsuarioEntidade::TABELA) => Array(
				(CO_ACESSO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'AcessoEntidade',
					('Tipo') => '2',
				),
				(CO_AUDITORIA) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'AuditoriaEntidade',
					('Tipo') => '2',
				),
				(CO_NEGOCIACAO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'NegociacaoEntidade',
					('Tipo') => '2',
				),
				(CO_PRODUTO_DETALHE) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'ProdutoDetalheEntidade',
					('Tipo') => '2',
				),
				(CO_SUGESTAO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'SugestaoEntidade',
					('Tipo') => '2',
				),
				(CO_IMAGEM) => Array(
					('Campo') => CO_IMAGEM,
					('Entidade') => 'ImagemEntidade',
					('Tipo') => '1',
				),
				(CO_PESSOA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
				(CO_USUARIO_PERFIL) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioPerfilEntidade',
					('Tipo') => '2',
				),
			),
			(AjudaEntidade::TABELA) => Array(
				(CO_FUNCIONALIDADE) => Array(
					('Campo') => CO_FUNCIONALIDADE,
					('Entidade') => 'FuncionalidadeEntidade',
					('Tipo') => '1',
				),
			),
			(FuncionalidadeEntidade::TABELA) => Array(
				(CO_AJUDA) => Array(
					('Campo') => CO_FUNCIONALIDADE,
					('Entidade') => 'AjudaEntidade',
					('Tipo') => '1',
				),
				(CO_PERFIL_FUNCIONALIDADE) => Array(
					('Campo') => CO_FUNCIONALIDADE,
					('Entidade') => 'PerfilFuncionalidadeEntidade',
					('Tipo') => '2',
				),
			),
			(AuditoriaEntidade::TABELA) => Array(
				(CO_USUARIO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
				(CO_AUDITORIA_TABELA) => Array(
					('Campo') => CO_AUDITORIA,
					('Entidade') => 'AuditoriaTabelaEntidade',
					('Tipo') => '2',
				),
			),
			(AuditoriaItensEntidade::TABELA) => Array(
				(CO_AUDITORIA_TABELA) => Array(
					('Campo') => CO_AUDITORIA_TABELA,
					('Entidade') => 'AuditoriaTabelaEntidade',
					('Tipo') => '1',
				),
			),
			(AuditoriaTabelaEntidade::TABELA) => Array(
				(CO_AUDITORIA_ITENS) => Array(
					('Campo') => CO_AUDITORIA_TABELA,
					('Entidade') => 'AuditoriaItensEntidade',
					('Tipo') => '2',
				),
				(CO_AUDITORIA) => Array(
					('Campo') => CO_AUDITORIA,
					('Entidade') => 'AuditoriaEntidade',
					('Tipo') => '1',
				),
			),
			(CategoriaEntidade::TABELA) => Array(
				(CO_SEGMENTO) => Array(
					('Campo') => CO_SEGMENTO,
					('Entidade') => 'SegmentoEntidade',
					('Tipo') => '1',
				),
				(CO_PRODUTO) => Array(
					('Campo') => CO_CATEGORIA,
					('Entidade') => 'ProdutoEntidade',
					('Tipo') => '2',
				),
			),
			(SegmentoEntidade::TABELA) => Array(
				(CO_CATEGORIA) => Array(
					('Campo') => CO_SEGMENTO,
					('Entidade') => 'CategoriaEntidade',
					('Tipo') => '2',
				),
			),
			(ClienteEntidade::TABELA) => Array(
				(CO_PESSOA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
				(CO_EMPRESA) => Array(
					('Campo') => CO_EMPRESA,
					('Entidade') => 'EmpresaEntidade',
					('Tipo') => '1',
				),
				(CO_NEGOCIACAO) => Array(
					('Campo') => CO_CLIENTE,
					('Entidade') => 'NegociacaoEntidade',
					('Tipo') => '2',
				),
			),
			(PessoaEntidade::TABELA) => Array(
				(CO_CLIENTE) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'ClienteEntidade',
					('Tipo') => '1',
				),
				(CO_EMPRESA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'EmpresaEntidade',
					('Tipo') => '1',
				),
				(CO_FORNECEDOR) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'FornecedorEntidade',
					('Tipo') => '1',
				),
				(CO_FUNCIONARIO) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'FuncionarioEntidade',
					('Tipo') => '1',
				),
				(CO_ENDERECO) => Array(
					('Campo') => CO_ENDERECO,
					('Entidade') => 'EnderecoEntidade',
					('Tipo') => '1',
				),
				(CO_CONTATO) => Array(
					('Campo') => CO_CONTATO,
					('Entidade') => 'ContatoEntidade',
					('Tipo') => '1',
				),
				(CO_IMAGEM) => Array(
					('Campo') => CO_IMAGEM,
					('Entidade') => 'ImagemEntidade',
					('Tipo') => '1',
				),
				(CO_REPRESENTANTE) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'RepresentanteEntidade',
					('Tipo') => '1',
				),
				(CO_USUARIO) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
			),
			(EmpresaEntidade::TABELA) => Array(
				(CO_CLIENTE) => Array(
					('Campo') => CO_EMPRESA,
					('Entidade') => 'ClienteEntidade',
					('Tipo') => '1',
				),
				(CO_CONTATO) => Array(
					('Campo') => CO_CONTATO,
					('Entidade') => 'ContatoEntidade',
					('Tipo') => '1',
				),
				(CO_PESSOA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
				(CO_ENDERECO) => Array(
					('Campo') => CO_ENDERECO,
					('Entidade') => 'EnderecoEntidade',
					('Tipo') => '1',
				),
				(CO_IMAGEM) => Array(
					('Campo') => CO_IMAGEM,
					('Entidade') => 'ImagemEntidade',
					('Tipo') => '1',
				),
				(CO_FORNECEDOR) => Array(
					('Campo') => CO_EMPRESA,
					('Entidade') => 'FornecedorEntidade',
					('Tipo') => '1',
				),
				(CO_TRANSPORTADORA) => Array(
					('Campo') => CO_EMPRESA,
					('Entidade') => 'TransportadoraEntidade',
					('Tipo') => '1',
				),
			),
			(ContatoEntidade::TABELA) => Array(
				(CO_EMPRESA) => Array(
					('Campo') => CO_CONTATO,
					('Entidade') => 'EmpresaEntidade',
					('Tipo') => '1',
				),
				(CO_PESSOA) => Array(
					('Campo') => CO_CONTATO,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
			),
			(EnderecoEntidade::TABELA) => Array(
				(CO_EMPRESA) => Array(
					('Campo') => CO_ENDERECO,
					('Entidade') => 'EmpresaEntidade',
					('Tipo') => '1',
				),
				(CO_PESSOA) => Array(
					('Campo') => CO_ENDERECO,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
			),
			(ImagemEntidade::TABELA) => Array(
			),
			(EntregaPedidoEntidade::TABELA) => Array(
				(CO_SIT_ENTREG_PED) => Array(
					('Campo') => CO_SIT_ENTREG_PED,
					('Entidade') => 'SitEntregPedEntidade',
					('Tipo') => '1',
				),
				(CO_NEGOCIACAO) => Array(
					('Campo') => CO_NEGOCIACAO,
					('Entidade') => 'NegociacaoEntidade',
					('Tipo') => '1',
				),
				(CO_TRANSPORTADORA) => Array(
					('Campo') => CO_TRANSPORTADORA,
					('Entidade') => 'TransportadoraEntidade',
					('Tipo') => '1',
				),
			),
			(SitEntregPedEntidade::TABELA) => Array(
				(CO_ENTREGA_PEDIDO) => Array(
					('Campo') => CO_SIT_ENTREG_PED,
					('Entidade') => 'EntregaPedidoEntidade',
					('Tipo') => '2',
				),
			),
			(NegociacaoEntidade::TABELA) => Array(
				(CO_ENTREGA_PEDIDO) => Array(
					('Campo') => CO_NEGOCIACAO,
					('Entidade') => 'EntregaPedidoEntidade',
					('Tipo') => '1',
				),
				(CO_CLIENTE) => Array(
					('Campo') => CO_CLIENTE,
					('Entidade') => 'ClienteEntidade',
					('Tipo') => '1',
				),
				(CO_FORNECEDOR) => Array(
					('Campo') => CO_FORNECEDOR,
					('Entidade') => 'FornecedorEntidade',
					('Tipo') => '1',
				),
				(CO_USUARIO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
				(CO_TIPO_NEGOCIACAO) => Array(
					('Campo') => CO_TIPO_NEGOCIACAO,
					('Entidade') => 'TipoNegociacaoEntidade',
					('Tipo') => '1',
				),
				(CO_NEGOCIACAO_PRODUTO) => Array(
					('Campo') => CO_NEGOCIACAO,
					('Entidade') => 'NegociacaoProdutoEntidade',
					('Tipo') => '2',
				),
				(CO_PAGAMENTO) => Array(
					('Campo') => CO_NEGOCIACAO,
					('Entidade') => 'PagamentoEntidade',
					('Tipo') => '1',
				),
			),
			(TransportadoraEntidade::TABELA) => Array(
				(CO_ENTREGA_PEDIDO) => Array(
					('Campo') => CO_TRANSPORTADORA,
					('Entidade') => 'EntregaPedidoEntidade',
					('Tipo') => '1',
				),
				(CO_EMPRESA) => Array(
					('Campo') => CO_EMPRESA,
					('Entidade') => 'EmpresaEntidade',
					('Tipo') => '1',
				),
			),
			(FabricanteEntidade::TABELA) => Array(
				(CO_FORNECEDOR) => Array(
					('Campo') => CO_FORNECEDOR,
					('Entidade') => 'FornecedorEntidade',
					('Tipo') => '1',
				),
				(CO_PRODUTO) => Array(
					('Campo') => CO_FABRICANTE,
					('Entidade') => 'ProdutoEntidade',
					('Tipo') => '2',
				),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
			),
			(FornecedorEntidade::TABELA) => Array(
				(CO_FABRICANTE) => Array(
					('Campo') => CO_FORNECEDOR,
					('Entidade') => 'FabricanteEntidade',
					('Tipo') => '1',
				),
				(CO_REPRESENTANTE) => Array(
					('Campo') => CO_REPRESENTANTE,
					('Entidade') => 'RepresentanteEntidade',
					('Tipo') => '1',
				),
				(CO_PESSOA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
				(CO_EMPRESA) => Array(
					('Campo') => CO_EMPRESA,
					('Entidade') => 'EmpresaEntidade',
					('Tipo') => '1',
				),
				(CO_NEGOCIACAO) => Array(
					('Campo') => CO_FORNECEDOR,
					('Entidade') => 'NegociacaoEntidade',
					('Tipo') => '2',
				),
			),
			(RepresentanteEntidade::TABELA) => Array(
				(CO_FORNECEDOR) => Array(
					('Campo') => CO_REPRESENTANTE,
					('Entidade') => 'FornecedorEntidade',
					('Tipo') => '1',
				),
				(CO_PESSOA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
			),
			(FuncionarioEntidade::TABELA) => Array(
				(CO_IMAGEM) => Array(
					('Campo') => CO_IMAGEM,
					('Entidade') => 'ImagemEntidade',
					('Tipo') => '1',
				),
				(CO_PESSOA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
			),
			(TipoNegociacaoEntidade::TABELA) => Array(
				(CO_NEGOCIACAO) => Array(
					('Campo') => CO_TIPO_NEGOCIACAO,
					('Entidade') => 'NegociacaoEntidade',
					('Tipo') => '2',
				),
			),
			(NegociacaoProdutoEntidade::TABELA) => Array(
				(CO_NEGOCIACAO) => Array(
					('Campo') => CO_NEGOCIACAO,
					('Entidade') => 'NegociacaoEntidade',
					('Tipo') => '1',
				),
				(CO_PRODUTO) => Array(
					('Campo') => CO_PRODUTO,
					('Entidade') => 'ProdutoEntidade',
					('Tipo') => '1',
				),
			),
			(ProdutoEntidade::TABELA) => Array(
				(CO_NEGOCIACAO_PRODUTO) => Array(
					('Campo') => CO_PRODUTO,
					('Entidade') => 'NegociacaoProdutoEntidade',
					('Tipo') => '2',
				),
				(CO_UNIDADE_VENDA) => Array(
					('Campo') => CO_UNIDADE_VENDA,
					('Entidade') => 'UnidadeVendaEntidade',
					('Tipo') => '1',
				),
				(CO_CATEGORIA) => Array(
					('Campo') => CO_CATEGORIA,
					('Entidade') => 'CategoriaEntidade',
					('Tipo') => '1',
				),
				(CO_FABRICANTE) => Array(
					('Campo') => CO_FABRICANTE,
					('Entidade') => 'FabricanteEntidade',
					('Tipo') => '1',
				),
				(CO_PRODUTO_DETALHE) => Array(
					('Campo') => CO_PRODUTO,
					('Entidade') => 'ProdutoDetalheEntidade',
					('Tipo') => '2',
				),
				(CO_PRODUTO_IMAGEM) => Array(
					('Campo') => CO_PRODUTO,
					('Entidade') => 'ProdutoImagemEntidade',
					('Tipo') => '2',
				),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
			),
			(PagamentoEntidade::TABELA) => Array(
				(CO_TIPO_PAGAMENTO) => Array(
					('Campo') => CO_TIPO_PAGAMENTO,
					('Entidade') => 'TipoPagamentoEntidade',
					('Tipo') => '1',
				),
				(CO_NEGOCIACAO) => Array(
					('Campo') => CO_NEGOCIACAO,
					('Entidade') => 'NegociacaoEntidade',
					('Tipo') => '1',
				),
				(CO_PARCELAMENTO) => Array(
					('Campo') => CO_PAGAMENTO,
					('Entidade') => 'ParcelamentoEntidade',
					('Tipo') => '2',
				),
			),
			(TipoPagamentoEntidade::TABELA) => Array(
				(CO_PAGAMENTO) => Array(
					('Campo') => CO_TIPO_PAGAMENTO,
					('Entidade') => 'PagamentoEntidade',
					('Tipo') => '2',
				),
			),
			(ParcelamentoEntidade::TABELA) => Array(
				(CO_PAGAMENTO) => Array(
					('Campo') => CO_PAGAMENTO,
					('Entidade') => 'PagamentoEntidade',
					('Tipo') => '1',
				),
			),
			(PerfilFuncionalidadeEntidade::TABELA) => Array(
				(CO_PERFIL) => Array(
					('Campo') => CO_PERFIL,
					('Entidade') => 'PerfilEntidade',
					('Tipo') => '1',
				),
				(CO_FUNCIONALIDADE) => Array(
					('Campo') => CO_FUNCIONALIDADE,
					('Entidade') => 'FuncionalidadeEntidade',
					('Tipo') => '1',
				),
			),
			(PerfilEntidade::TABELA) => Array(
				(CO_PERFIL_FUNCIONALIDADE) => Array(
					('Campo') => CO_PERFIL,
					('Entidade') => 'PerfilFuncionalidadeEntidade',
					('Tipo') => '2',
				),
				(CO_USUARIO_PERFIL) => Array(
					('Campo') => CO_PERFIL,
					('Entidade') => 'UsuarioPerfilEntidade',
					('Tipo') => '2',
				),
			),
			(UnidadeVendaEntidade::TABELA) => Array(
				(CO_PRODUTO) => Array(
					('Campo') => CO_UNIDADE_VENDA,
					('Entidade') => 'ProdutoEntidade',
					('Tipo') => '2',
				),
			),
			(ProdutoDetalheEntidade::TABELA) => Array(
				(CO_USUARIO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
				),
				(CO_PRODUTO) => Array(
					('Campo') => CO_PRODUTO,
					('Entidade') => 'ProdutoEntidade',
					('Tipo') => '1',
				),
			),
			(ProdutoImagemEntidade::TABELA) => Array(
				(CO_PRODUTO) => Array(
					('Campo') => CO_PRODUTO,
					('Entidade') => 'ProdutoEntidade',
					('Tipo') => '1',
				),
				(CO_IMAGEM) => Array(
					('Campo') => CO_IMAGEM,
					('Entidade') => 'ImagemEntidade',
					('Tipo') => '1',
				),
			),
			(SugestaoEntidade::TABELA) => Array(
				(CO_USUARIO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
				(CO_IMAGEM) => Array(
					('Campo') => CO_IMAGEM,
					('Entidade') => 'ImagemEntidade',
					('Tipo') => '1',
				),
			),
			(UsuarioPerfilEntidade::TABELA) => Array(
				(CO_USUARIO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
				(CO_PERFIL) => Array(
					('Campo') => CO_PERFIL,
					('Entidade') => 'PerfilEntidade',
					('Tipo') => '1',
				),
			),
			(VisitaEntidade::TABELA) => Array(
				(CO_TRAFEGO) => Array(
					('Campo') => CO_TRAFEGO,
					('Entidade') => 'TrafegoEntidade',
					('Tipo') => '1',
				),
				(CO_PAGINA_VISITA) => Array(
					('Campo') => CO_VISITA,
					('Entidade') => 'PaginaVisitaEntidade',
					('Tipo') => '2',
				),
			),
			(PaginaEntidade::TABELA) => Array(
				(CO_PAGINA_VISITA) => Array(
					('Campo') => CO_PAGINA,
					('Entidade') => 'PaginaVisitaEntidade',
					('Tipo') => '2',
				),
			),
			(PaginaVisitaEntidade::TABELA) => Array(
				(CO_PAGINA) => Array(
					('Campo') => CO_PAGINA,
					('Entidade') => 'PaginaEntidade',
					('Tipo') => '1',
				),
				(CO_VISITA) => Array(
					('Campo') => CO_VISITA,
					('Entidade') => 'VisitaEntidade',
					('Tipo') => '1',
				),
			),
			(TrafegoEntidade::TABELA) => Array(
			),
		);
}
}