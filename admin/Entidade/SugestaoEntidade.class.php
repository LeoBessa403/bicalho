<?php

/**
 * Sugestao.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class SugestaoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_SUGESTAO';
	const ENTIDADE = 'SugestaoEntidade';
	const CHAVE = CO_SUGESTAO;

	private $co_sugestao;
	private $dt_cadastro;
	private $tp_sugestao;
	private $ds_titulo_sugestao;
	private $ds_sugestao;
	private $co_usuario;
	private $co_imagem;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_SUGESTAO,
			DT_CADASTRO,
			TP_SUGESTAO,
			DS_TITULO_SUGESTAO,
			DS_SUGESTAO,
			CO_USUARIO,
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
	* @return int $co_sugestao
     */
	public function getCoSugestao()
    {
        return $this->co_sugestao;
    }

	/**
	* @param $co_sugestao
     * @return mixed
     */
	public function setCoSugestao($co_sugestao)
    {
        return $this->co_sugestao = $co_sugestao;
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
	* @return mixed $tp_sugestao
     */
	public function getTpSugestao()
    {
        return $this->tp_sugestao;
    }

	/**
	* @param $tp_sugestao
     * @return mixed
     */
	public function setTpSugestao($tp_sugestao)
    {
        return $this->tp_sugestao = $tp_sugestao;
    }

	/**
	* @return mixed $ds_titulo_sugestao
     */
	public function getDsTituloSugestao()
    {
        return $this->ds_titulo_sugestao;
    }

	/**
	* @param $ds_titulo_sugestao
     * @return mixed
     */
	public function setDsTituloSugestao($ds_titulo_sugestao)
    {
        return $this->ds_titulo_sugestao = $ds_titulo_sugestao;
    }

	/**
	* @return mixed $ds_sugestao
     */
	public function getDsSugestao()
    {
        return $this->ds_sugestao;
    }

	/**
	* @param $ds_sugestao
     * @return mixed
     */
	public function setDsSugestao($ds_sugestao)
    {
        return $this->ds_sugestao = $ds_sugestao;
    }

	/**
	* @return UsuarioEntidade $co_usuario
     */
	public function getCoUsuario()
    {
        return $this->co_usuario;
    }

	/**
	* @param $co_usuario
     * @return mixed
     */
	public function setCoUsuario($co_usuario)
    {
        return $this->co_usuario = $co_usuario;
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

}