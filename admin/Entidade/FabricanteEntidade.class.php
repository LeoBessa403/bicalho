<?php

/**
 * Fabricante.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class FabricanteEntidade extends AbstractEntidade
{
	const TABELA = 'TB_FABRICANTE';
	const ENTIDADE = 'FabricanteEntidade';
	const CHAVE = CO_FABRICANTE;

	private $co_fabricante;
	private $dt_cadastro;
	private $no_fabricante;
	private $no_fabricante_url_amigavel;
	private $co_fornecedor;
	private $co_produto;
	private $nu_codigo_fabricante;
	private $co_imagem;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_FABRICANTE,
			DT_CADASTRO,
			NO_FABRICANTE,
			NU_CODIGO_FABRICANTE,
            NO_FABRICANTE_URL_AMIGAVEL
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
	* @return int $co_fabricante
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
	* @return mixed $no_fabricante
     */
	public function getNoFabricante()
    {
        return $this->no_fabricante;
    }

	/**
	* @param $no_fabricante
     * @return mixed
     */
	public function setNoFabricante($no_fabricante)
    {
        return $this->no_fabricante = $no_fabricante;
    }

	/**
	* @return FornecedorEntidade $co_fornecedor
     */
	public function getCoFornecedor()
    {
        return $this->co_fornecedor;
    }

	/**
	* @param $co_fornecedor
     * @return mixed
     */
	public function setCoFornecedor($co_fornecedor)
    {
        return $this->co_fornecedor = $co_fornecedor;
    }

	/**
	* @return ProdutoEntidade $co_produto
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
     * @return mixed $nu_codigo_fabricante
     */
    public function getNuCodigoFabricante()
    {
        $tamanho = 3; //Tamanho padrão do código
        $qt = strlen($this->nu_codigo_fabricante);
        $restante = $tamanho - $qt;
        for($i=0;$i<$restante;$i++){
            $this->nu_codigo_fabricante = (string) '0'.$this->nu_codigo_fabricante;
        }
        return $this->nu_codigo_fabricante;
    }

    /**
     * @param mixed $nu_codigo_fabricante
     */
    public function setNuCodigoFabricante($nu_codigo_fabricante)
    {
        $this->nu_codigo_fabricante = $nu_codigo_fabricante;
    }

    /**
     * @return ImagemEntidade $co_imagem
     */
    public function getCoImagem()
    {
        return $this->co_imagem;
    }

    /**
     * @param mixed $co_imagem
     */
    public function setCoImagem($co_imagem)
    {
        $this->co_imagem = $co_imagem;
    }

    /**
     * @return mixed $no_fabricante_url_amigavel
     */
    public function getNoFabricanteUrlAmigavel()
    {
        return $this->no_fabricante_url_amigavel;
    }

    /**
     * @param mixed $no_fabricante_url_amigavel
     */
    public function setNoFabricanteUrlAmigavel($no_fabricante_url_amigavel)
    {
        $this->no_fabricante_url_amigavel = $no_fabricante_url_amigavel;
    }



}