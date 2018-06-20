<?php

/**
 * Lead.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class LeadEntidade extends AbstractEntidade
{
	const TABELA = 'TB_LEAD';
	const ENTIDADE = 'LeadEntidade';
	const CHAVE = CO_LEAD;

	private $co_lead;
	private $ds_email;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_LEAD,
			DS_EMAIL,
		];
    }

	/**
	* @return array $relacionamentos
     */
	public static function getRelacionamentos() 
    {
		return [];
	}

    /**
     * @return int $co_lead
     */
    public function getCoLead()
    {
        return $this->co_lead;
    }

    /**
     * @param mixed $co_lead
     */
    public function setCoLead($co_lead)
    {
        $this->co_lead = $co_lead;
    }

    /**
     * @return mixed $ds_email
     */
    public function getDsEmail()
    {
        return $this->ds_email;
    }

    /**
     * @param mixed $ds_email
     */
    public function setDsEmail($ds_email)
    {
        $this->ds_email = $ds_email;
    }

}