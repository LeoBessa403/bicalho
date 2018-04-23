<?php

/**
 * EntregaPedido.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class EntregaPedidoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_ENTREGA_PEDIDO';
	const ENTIDADE = 'EntregaPedidoEntidade';
	const CHAVE = CO_ENTREGA_PEDIDO;

	private $co_entrega_pedido;
	private $dt_entrega;
	private $dt_ser_entregue;
	private $ds_observacao;
	private $co_sit_entreg_ped;
	private $co_negociacao;
	private $co_transportadora;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_ENTREGA_PEDIDO,
			DT_ENTREGA,
			DT_SER_ENTREGUE,
			DS_OBSERVACAO,
			CO_SIT_ENTREG_PED,
			CO_NEGOCIACAO,
			CO_TRANSPORTADORA,
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
	* @return int $co_entrega_pedido
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

	/**
	* @return mixed $dt_entrega
     */
	public function getDtEntrega()
    {
        return $this->dt_entrega;
    }

	/**
	* @param $dt_entrega
     * @return mixed
     */
	public function setDtEntrega($dt_entrega)
    {
        return $this->dt_entrega = $dt_entrega;
    }

	/**
	* @return mixed $dt_ser_entregue
     */
	public function getDtSerEntregue()
    {
        return $this->dt_ser_entregue;
    }

	/**
	* @param $dt_ser_entregue
     * @return mixed
     */
	public function setDtSerEntregue($dt_ser_entregue)
    {
        return $this->dt_ser_entregue = $dt_ser_entregue;
    }

	/**
	* @return mixed $ds_observacao
     */
	public function getDsObservacao()
    {
        return $this->ds_observacao;
    }

	/**
	* @param $ds_observacao
     * @return mixed
     */
	public function setDsObservacao($ds_observacao)
    {
        return $this->ds_observacao = $ds_observacao;
    }

	/**
	* @return SitEntregPedEntidade $co_sit_entreg_ped
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
	* @return NegociacaoEntidade $co_negociacao
     */
	public function getCoNegociacao()
    {
        return $this->co_negociacao;
    }

	/**
	* @param $co_negociacao
     * @return mixed
     */
	public function setCoNegociacao($co_negociacao)
    {
        return $this->co_negociacao = $co_negociacao;
    }

	/**
	* @return TransportadoraEntidade $co_transportadora
     */
	public function getCoTransportadora()
    {
        return $this->co_transportadora;
    }

	/**
	* @param $co_transportadora
     * @return mixed
     */
	public function setCoTransportadora($co_transportadora)
    {
        return $this->co_transportadora = $co_transportadora;
    }

}