<?php

/**
 * Emprestimo.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class EmprestimoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_EMPRESTIMO';
	const ENTIDADE = 'EmprestimoEntidade';
	const CHAVE = 'co_emprestimo';

	private $co_usuario;
	private $co_codigo_livro;
	private $st_situacao;
	private $dt_reserva;
	private $dt_emprestimo;
	private $dt_devolucao;

	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_USUARIO,
			CO_CODIGO_LIVRO,
			ST_SITUACAO,
			DT_RESERVA,
			DT_EMPRESTIMO,
			DT_DEVOLUCAO,
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
	* @return CodigoLivroEntidade $co_codigo_livro
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
	* @return $st_situacao
     */
	public function getStSituacao()
    {
        return $this->st_situacao;
    }

	/**
	* @param $st_situacao
     * @return mixed
     */
	public function setStSituacao($st_situacao)
    {
        return $this->st_situacao = $st_situacao;
    }

	/**
	* @return $dt_reserva
     */
	public function getDtReserva()
    {
        return $this->dt_reserva;
    }

	/**
	* @param $dt_reserva
     * @return mixed
     */
	public function setDtReserva($dt_reserva)
    {
        return $this->dt_reserva = $dt_reserva;
    }

	/**
	* @return $dt_emprestimo
     */
	public function getDtEmprestimo()
    {
        return $this->dt_emprestimo;
    }

	/**
	* @param $dt_emprestimo
     * @return mixed
     */
	public function setDtEmprestimo($dt_emprestimo)
    {
        return $this->dt_emprestimo = $dt_emprestimo;
    }

	/**
	* @return $dt_devolucao
     */
	public function getDtDevolucao()
    {
        return $this->dt_devolucao;
    }

	/**
	* @param $dt_devolucao
     * @return mixed
     */
	public function setDtDevolucao($dt_devolucao)
    {
        return $this->dt_devolucao = $dt_devolucao;
    }

}