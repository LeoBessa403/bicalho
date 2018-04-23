<?php

/**
 * Acesso.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class AcessoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_ACESSO';
	const ENTIDADE = 'AcessoEntidade';
	const CHAVE = CO_ACESSO;

	private $co_acesso;
	private $ds_session_id;
	private $dt_inicio_acesso;
	private $dt_fim_acesso;
	private $tp_situacao;
	private $ds_navegador;
	private $ds_sistema_operacional;
	private $ds_dispositivo;
	private $co_usuario;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_ACESSO,
			DS_SESSION_ID,
			DT_INICIO_ACESSO,
			DT_FIM_ACESSO,
			TP_SITUACAO,
			DS_NAVEGADOR,
			DS_SISTEMA_OPERACIONAL,
			DS_DISPOSITIVO,
			CO_USUARIO,
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
	* @return int $co_acesso
     */
	public function getCoAcesso()
    {
        return $this->co_acesso;
    }

	/**
	* @param $co_acesso
     * @return mixed
     */
	public function setCoAcesso($co_acesso)
    {
        return $this->co_acesso = $co_acesso;
    }

	/**
	* @return mixed $ds_session_id
     */
	public function getDsSessionId()
    {
        return $this->ds_session_id;
    }

	/**
	* @param $ds_session_id
     * @return mixed
     */
	public function setDsSessionId($ds_session_id)
    {
        return $this->ds_session_id = $ds_session_id;
    }

	/**
	* @return mixed $dt_inicio_acesso
     */
	public function getDtInicioAcesso()
    {
        return $this->dt_inicio_acesso;
    }

	/**
	* @param $dt_inicio_acesso
     * @return mixed
     */
	public function setDtInicioAcesso($dt_inicio_acesso)
    {
        return $this->dt_inicio_acesso = $dt_inicio_acesso;
    }

	/**
	* @return mixed $dt_fim_acesso
     */
	public function getDtFimAcesso()
    {
        return $this->dt_fim_acesso;
    }

	/**
	* @param $dt_fim_acesso
     * @return mixed
     */
	public function setDtFimAcesso($dt_fim_acesso)
    {
        return $this->dt_fim_acesso = $dt_fim_acesso;
    }

	/**
	* @return mixed $tp_situacao
     */
	public function getTpSituacao()
    {
        return $this->tp_situacao;
    }

	/**
	* @param $tp_situacao
     * @return mixed
     */
	public function setTpSituacao($tp_situacao)
    {
        return $this->tp_situacao = $tp_situacao;
    }

	/**
	* @return mixed $ds_navegador
     */
	public function getDsNavegador()
    {
        return $this->ds_navegador;
    }

	/**
	* @param $ds_navegador
     * @return mixed
     */
	public function setDsNavegador($ds_navegador)
    {
        return $this->ds_navegador = $ds_navegador;
    }

	/**
	* @return mixed $ds_sistema_operacional
     */
	public function getDsSistemaOperacional()
    {
        return $this->ds_sistema_operacional;
    }

	/**
	* @param $ds_sistema_operacional
     * @return mixed
     */
	public function setDsSistemaOperacional($ds_sistema_operacional)
    {
        return $this->ds_sistema_operacional = $ds_sistema_operacional;
    }

	/**
	* @return mixed $ds_dispositivo
     */
	public function getDsDispositivo()
    {
        return $this->ds_dispositivo;
    }

	/**
	* @param $ds_dispositivo
     * @return mixed
     */
	public function setDsDispositivo($ds_dispositivo)
    {
        return $this->ds_dispositivo = $ds_dispositivo;
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

}