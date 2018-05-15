<?php

/**
 * Produto.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ProdutoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_PRODUTO';
    const ENTIDADE = 'ProdutoEntidade';
    const CHAVE = CO_PRODUTO;

    private $co_produto;
    private $no_produto;
    private $no_produto_url_amigavel;
    private $ds_descricao;
    private $nu_estoque;
    private $nu_codigo;
    private $nu_codigo_interno;
    private $dt_cadastro;
    private $st_status;
    private $ds_caminho_manual;
    private $ds_caminho_video;
    private $co_unidade_venda;
    private $co_categoria;
    private $co_fabricante;
    private $co_negociacao_produto;
    private $co_produto_detalhe;
    private $co_produto_imagem;
    private $co_imagem;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_PRODUTO,
            NO_PRODUTO,
            NO_PRODUTO_URL_AMIGAVEL,
            DS_DESCRICAO,
            NU_ESTOQUE,
            NU_CODIGO,
            NU_CODIGO_INTERNO,
            DT_CADASTRO,
            ST_STATUS,
            DS_CAMINHO_MANUAL,
            DS_CAMINHO_VIDEO,
            CO_UNIDADE_VENDA,
            CO_CATEGORIA,
            CO_FABRICANTE,
            CO_IMAGEM,
        ];
    }

    /**
     * @return array $relacionamentos
     */
    public static function getRelacionamentos()
    {
        $relacionamentos = Relacionamentos::getRelacionamentos();
        return $relacionamentos[static::TABELA];
    }


    /**
     * @return int $co_produto
     */
    public function getCoProduto()
    {
        return $this->co_produto;
    }

    /**
     * @param $co_produto
     * @return mixed
     */
    public function setCoProduto($co_produto)
    {
        return $this->co_produto = $co_produto;
    }

    /**
     * @return mixed $no_produto
     */
    public function getNoProduto()
    {
        return $this->no_produto;
    }

    /**
     * @param mixed $no_produto
     */
    public function setNoProduto($no_produto)
    {
        $this->no_produto = $no_produto;
    }

    /**
     * @param $no_produto_url_amigavel
     * @return mixed
     */
    public function setNoProdutoUrlAmigavel($no_produto_url_amigavel)
    {
        return $this->no_produto_url_amigavel = $no_produto_url_amigavel;
    }

    /**
     * @return mixed $no_produto_url_amigavel
     */
    public function getNoProdutoUrlAmigavel()
    {
        return $this->no_produto_url_amigavel;
    }

    /**
     * @return mixed $ds_descricao
     */
    public function getDsDescricao()
    {
        return $this->ds_descricao;
    }

    /**
     * @param $ds_descricao
     * @return mixed
     */
    public function setDsDescricao($ds_descricao)
    {
        return $this->ds_descricao = $ds_descricao;
    }

    /**
     * @return mixed $nu_estoque
     */
    public function getNuEstoque()
    {
        return $this->nu_estoque;
    }

    /**
     * @param $nu_estoque
     * @return mixed
     */
    public function setNuEstoque($nu_estoque)
    {
        return $this->nu_estoque = $nu_estoque;
    }

    /**
     * @return mixed $nu_codigo
     */
    public function getNuCodigo()
    {
        return $this->nu_codigo;
    }

    /**
     * @param $nu_codigo
     * @return mixed
     */
    public function setNuCodigo($nu_codigo)
    {
        return $this->nu_codigo = $nu_codigo;
    }

    /**
     * @return mixed $nu_codigo_interno
     */
    public function getNuCodigoInterno()
    {
        return $this->nu_codigo_interno;
    }

    /**
     * @param $nu_codigo_interno
     * @return mixed
     */
    public function setNuCodigoInterno($nu_codigo_interno)
    {
        return $this->nu_codigo_interno = $nu_codigo_interno;
    }

    /**
     * @return mixed $dt_cadastro
     */
    public function getDtCadastro()
    {
        return $this->dt_cadastro;
    }

    /**
     * @param $dt_cadastro
     * @return mixed
     */
    public function setDtCadastro($dt_cadastro)
    {
        return $this->dt_cadastro = $dt_cadastro;
    }

    /**
     * @return mixed $st_status
     */
    public function getStStatus()
    {
        return $this->st_status;
    }

    /**
     * @param $st_status
     * @return mixed
     */
    public function setStStatus($st_status)
    {
        return $this->st_status = $st_status;
    }

    /**
     * @return mixed $ds_caminho_manual
     */
    public function getDsCaminhoManual()
    {
        return $this->ds_caminho_manual;
    }

    /**
     * @param mixed $ds_caminho_manual
     */
    public function setDsCaminhoManual($ds_caminho_manual)
    {
        $this->ds_caminho_manual = $ds_caminho_manual;
    }

    /**
     * @return mixed $ds_caminho_video
     */
    public function getDsCaminhoVideo()
    {
        return $this->ds_caminho_video;
    }

    /**
     * @param mixed $ds_caminho_video
     */
    public function setDsCaminhoVideo($ds_caminho_video)
    {
        $this->ds_caminho_video = $ds_caminho_video;
    }

    /**
     * @return UnidadeVendaEntidade $co_unidade_venda
     */
    public function getCoUnidadeVenda()
    {
        return $this->co_unidade_venda;
    }

    /**
     * @param $co_unidade_venda
     * @return mixed
     */
    public function setCoUnidadeVenda($co_unidade_venda)
    {
        return $this->co_unidade_venda = $co_unidade_venda;
    }

    /**
     * @return CategoriaEntidade $co_categoria
     */
    public function getCoCategoria()
    {
        return $this->co_categoria;
    }

    /**
     * @param $co_categoria
     * @return mixed
     */
    public function setCoCategoria($co_categoria)
    {
        return $this->co_categoria = $co_categoria;
    }

    /**
     * @return FabricanteEntidade $co_fabricante
     */
    public function getCoFabricante()
    {
        return $this->co_fabricante;
    }

    /**
     * @param $co_fabricante
     * @return mixed
     */
    public function setCoFabricante($co_fabricante)
    {
        return $this->co_fabricante = $co_fabricante;
    }

    /**
     * @return NegociacaoProdutoEntidade $co_negociacao_produto
     */
    public function getCoNegociacaoProduto()
    {
        return $this->co_negociacao_produto;
    }

    /**
     * @param $co_negociacao_produto
     * @return mixed
     */
    public function setCoNegociacaoProduto($co_negociacao_produto)
    {
        return $this->co_negociacao_produto = $co_negociacao_produto;
    }

    /**
     * @return ProdutoDetalheEntidade $co_produto_detalhe
     */
    public function getCoProdutoDetalhe()
    {
        return $this->co_produto_detalhe;
    }

    /**
     * @param $co_produto_detalhe
     * @return mixed
     */
    public function setCoProdutoDetalhe($co_produto_detalhe)
    {
        return $this->co_produto_detalhe = $co_produto_detalhe;
    }

    /**
     * @return ProdutoImagemEntidade $co_produto_imagem
     */
    public function getCoProdutoImagem()
    {
        return $this->co_produto_imagem;
    }

    /**
     * @param $co_produto_imagem
     * @return mixed
     */
    public function setCoProdutoImagem($co_produto_imagem)
    {
        return $this->co_produto_imagem = $co_produto_imagem;
    }

    /**
     * @return ImagemEntidade $co_imagem
     */
    public function getCoImagem()
    {
        return $this->co_imagem;
    }

    /**
     * @param $co_imagem
     * @return mixed
     */
    public function setCoImagem($co_imagem)
    {
        return $this->co_imagem = $co_imagem;
    }

    /**
     * @return ProdutoDetalheEntidade $co_produto_detalhe
     */
    public function getUltimoCoProdutoDetalhe()
    {
        return $this->ultimo($this->getCoProdutoDetalhe());
    }

}