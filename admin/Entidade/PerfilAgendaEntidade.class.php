<?php

/**
 * PerfilAgenda.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class PerfilAgendaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PERFIL_AGENDA';
	const ENTIDADE = 'PerfilAgendaEntidade';
	const CHAVE = CO_PERFIL_AGENDA;

	private $co_perfil_agenda;
	private $co_agenda;
	private $co_perfil;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_PERFIL_AGENDA,
			CO_AGENDA,
			CO_PERFIL,
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
	* @return int $co_perfil_agenda
     */
	public function getCoPerfilAgenda()
    {
        return $this->co_perfil_agenda;
    }

	/**
	* @param $co_perfil_agenda
     * @return mixed
     */
	public function setCoPerfilAgenda($co_perfil_agenda)
    {
        return $this->co_perfil_agenda = $co_perfil_agenda;
    }

	/**
	* @return AgendaEntidade $co_agenda
     */
	public function getCoAgenda()
    {
        return $this->co_agenda;
    }

	/**
	* @param $co_agenda
     * @return mixed
     */
	public function setCoAgenda($co_agenda)
    {
        return $this->co_agenda = $co_agenda;
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

}