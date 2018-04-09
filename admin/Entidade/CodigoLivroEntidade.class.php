<?php

/**
 * CodigoLivro.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class CodigoLivroEntidade extends AbstractEntidade
{
	const TABELA = 'TB_CODIGO_LIVRO';
	const ENTIDADE = 'CodigoLivroEntidade';
	const CHAVE = CO_CODIGO_LIVRO;

	private $co_codigo_livro;
	private $ds_codigo_livro;
	private $co_livro;
	private $st_status;
	private $co_emprestimo;

	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_CODIGO_LIVRO,
			DS_CODIGO_LIVRO,
			CO_LIVRO,
			ST_STATUS,
		];
    }

	/**
	* @return $relacionamentos
     */
	public static function getRelacionamentos() {
    	$relacionamentos = Relacionamentos::getRelacionamentos();
		return $relacionamentos[static::TABELA];
	}


	/**
	* @return $co_codigo_livro
     */
	public function getCoCodigoLivro()
    {
        return $this->co_codigo_livro;
    }

	/**
	* @param $co_codigo_livro
     * @return mixed
     */
	public function setCoCodigoLivro($co_codigo_livro)
    {
        return $this->co_codigo_livro = $co_codigo_livro;
    }

	/**
	* @return $ds_codigo_livro
     */
	public function getDsCodigoLivro()
    {
        return $this->ds_codigo_livro;
    }

	/**
	* @param $ds_codigo_livro
     * @return mixed
     */
	public function setDsCodigoLivro($ds_codigo_livro)
    {
        return $this->ds_codigo_livro = $ds_codigo_livro;
    }

	/**
	* @return LivroEntidade $co_livro
     */
	public function getCoLivro()
    {
        return $this->co_livro;
    }

	/**
	* @param $co_livro
     * @return mixed
     */
	public function setCoLivro($co_livro)
    {
        return $this->co_livro = $co_livro;
    }

	/**
	* @return $st_status
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
	* @return EmprestimoEntidade $co_emprestimo
     */
	public function getCoEmprestimo()
    {
        return $this->co_emprestimo;
    }

	/**
     * @param $co_emprestimo
     * @return mixed
     */
	public function setCoEmprestimo($co_emprestimo)
    {
        return $this->co_emprestimo = $co_emprestimo;
    }

}