<?php

/**
 * CategoriaAgenda.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class CategoriaAgendaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_CATEGORIA_AGENDA';
	const ENTIDADE = 'CategoriaAgendaEntidade';
	const CHAVE = CO_CATEGORIA_AGENDA;

	private $co_categoria_agenda;
	private $no_categoria_agenda;
	private $co_agenda;
	private $ds_cor;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_CATEGORIA_AGENDA,
			NO_CATEGORIA_AGENDA,
			DS_COR,
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
	* @return int $co_categoria_agenda
     */
	public function getCoCategoriaAgenda()
    {
        return $this->co_categoria_agenda;
    }

	/**
	* @param $co_categoria_agenda
     * @return mixed
     */
	public function setCoCategoriaAgenda($co_categoria_agenda)
    {
        return $this->co_categoria_agenda = $co_categoria_agenda;
    }

	/**
	* @return $no_categoria_agenda
     */
	public function getNoCategoriaAgenda()
    {
        return $this->no_categoria_agenda;
    }

	/**
	* @param $no_categoria_agenda
     * @return mixed
     */
	public function setNoCategoriaAgenda($no_categoria_agenda)
    {
        return $this->no_categoria_agenda = $no_categoria_agenda;
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
     * @return mixed
     */
    public function getDsCor()
    {
        return $this->ds_cor;
    }

    /**
     * @param mixed $ds_cor
     */
    public function setDsCor($ds_cor)
    {
        $this->ds_cor = $ds_cor;
    }



}