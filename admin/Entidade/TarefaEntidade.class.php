<?php

/**
 * Tarefa.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class TarefaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_TAREFA';
	const ENTIDADE = 'TarefaEntidade';
	const CHAVE = CO_TAREFA;

	private $co_tarefa;
	private $ds_titulo;
	private $ds_descricao;
	private $st_status;
	private $dt_cadastro;
	private $dt_inicio;
	private $dt_fim;
	private $dt_conclusao;
	private $co_evento;
	private $co_perfil;
	private $co_usuario;
	private $st_prioridade;

	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_TAREFA,
			DS_TITULO,
			DS_DESCRICAO,
			ST_STATUS,
			DT_CADASTRO,
			DT_INICIO,
			DT_FIM,
			DT_CONCLUSAO,
			CO_EVENTO,
			CO_PERFIL,
			CO_USUARIO,
			ST_PRIORIDADE,
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
	* @return $co_tarefa
     */
	public function getCoTarefa()
    {
        return $this->co_tarefa;
    }

	/**
	* @param $co_tarefa
     * @return mixed
     */
	public function setCoTarefa($co_tarefa)
    {
        return $this->co_tarefa = $co_tarefa;
    }

	/**
	* @return $ds_titulo
     */
	public function getDsTitulo()
    {
        return $this->ds_titulo;
    }

	/**
	* @param $ds_titulo
     * @return mixed
     */
	public function setDsTitulo($ds_titulo)
    {
        return $this->ds_titulo = $ds_titulo;
    }

	/**
	* @return $ds_descricao
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
	* @return $dt_cadastro
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
	* @return $dt_inicio
     */
	public function getDtInicio()
    {
        return $this->dt_inicio;
    }

	/**
	* @param $dt_inicio
     * @return mixed
     */
	public function setDtInicio($dt_inicio)
    {
        return $this->dt_inicio = $dt_inicio;
    }

	/**
	* @return $dt_fim
     */
	public function getDtFim()
    {
        return $this->dt_fim;
    }

	/**
	* @param $dt_fim
     * @return mixed
     */
	public function setDtFim($dt_fim)
    {
        return $this->dt_fim = $dt_fim;
    }

	/**
	* @return $dt_conclusao
     */
	public function getDtConclusao()
    {
        return $this->dt_conclusao;
    }

	/**
	* @param $dt_conclusao
     * @return mixed
     */
	public function setDtConclusao($dt_conclusao)
    {
        return $this->dt_conclusao = $dt_conclusao;
    }

	/**
	* @return EventoEntidade $co_evento
     */
	public function getCoEvento()
    {
        return $this->co_evento;
    }

	/**
	* @param $co_evento
     * @return mixed
     */
	public function setCoEvento($co_evento)
    {
        return $this->co_evento = $co_evento;
    }

	/**
	* @return PerfilEntidade $co_perfil
     */
	public function getCoPerfil()
    {
        return $this->co_perfil;
    }

	/**
	* @param $co_perfil
     * @return mixed
     */
	public function setCoPerfil($co_perfil)
    {
        return $this->co_perfil = $co_perfil;
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
	* @return $st_prioridade
     */
	public function getStPrioridade()
    {
        return $this->st_prioridade;
    }

	/**
	* @param $st_prioridade
     * @return mixed
     */
	public function setStPrioridade($st_prioridade)
    {
        return $this->st_prioridade = $st_prioridade;
    }

}