<?php

/**
 * Transportadora.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class TransportadoraEntidade extends AbstractEntidade
{
	const TABELA = 'TB_TRANSPORTADORA';
	const ENTIDADE = 'TransportadoraEntidade';
	const CHAVE = CO_TRANSPORTADORA;

	private $co_transportadora;
	private $ds_observacao;
	private $dt_cadastro;
	private $st_status;
	private $co_empresa;
	private $co_entrega_pedido;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_TRANSPORTADORA,
			DS_OBSERVACAO,
			DT_CADASTRO,
			ST_STATUS,
			CO_EMPRESA,
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
	* @return int $co_transportadora
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
	* @return mixed $st_status
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
	* @return EmpresaEntidade $co_empresa
     */
	public function getCoEmpresa()
    {
        return $this->co_empresa;
    }

	/**
	* @param $co_empresa
     * @return mixed
     */
	public function setCoEmpresa($co_empresa)
    {
        return $this->co_empresa = $co_empresa;
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