<?php

/**
 * SitEntregPed.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class SitEntregPedEntidade extends AbstractEntidade
{
	const TABELA = 'TB_SIT_ENTREG_PED';
	const ENTIDADE = 'SitEntregPedEntidade';
	const CHAVE = CO_SIT_ENTREG_PED;

	private $co_sit_entreg_ped;
	private $no_sit_entreg_ped;
	private $sg_sit_entreg_ped;
	private $co_entrega_pedido;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_SIT_ENTREG_PED,
			NO_SIT_ENTREG_PED,
			SG_SIT_ENTREG_PED,
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
	* @return int $co_sit_entreg_ped
     */
	public function getCoSitEntregPed()
    {
        return $this->co_sit_entreg_ped;
    }

	/**
	* @param $co_sit_entreg_ped
     * @return mixed
     */
	public function setCoSitEntregPed($co_sit_entreg_ped)
    {
        return $this->co_sit_entreg_ped = $co_sit_entreg_ped;
    }

	/**
	* @return mixed $no_sit_entreg_ped
     */
	public function getNoSitEntregPed()
    {
        return $this->no_sit_entreg_ped;
    }

	/**
	* @param $no_sit_entreg_ped
     * @return mixed
     */
	public function setNoSitEntregPed($no_sit_entreg_ped)
    {
        return $this->no_sit_entreg_ped = $no_sit_entreg_ped;
    }

	/**
	* @return mixed $sg_sit_entreg_ped
     */
	public function getSgSitEntregPed()
    {
        return $this->sg_sit_entreg_ped;
    }

	/**
	* @param $sg_sit_entreg_ped
     * @return mixed
     */
	public function setSgSitEntregPed($sg_sit_entreg_ped)
    {
        return $this->sg_sit_entreg_ped = $sg_sit_entreg_ped;
    }

	/**
	* @return EntregaPedidoEntidade $co_entrega_pedido
     */
	public function getCoEntregaPedido()
    {
        return $this->co_entrega_pedido;
    }

	/**
     * @param $co_entrega_pedido
     * @return mixed
     */
	public function setCoEntregaPedido($co_entrega_pedido)
    {
        return $this->co_entrega_pedido = $co_entrega_pedido;
    }

}