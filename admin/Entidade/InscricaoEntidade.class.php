<?php

/**
 * Inscricao.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class InscricaoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_INSCRICAO';
	const ENTIDADE = 'InscricaoEntidade';
	const CHAVE = CO_INSCRICAO;

	private $co_inscricao;
	private $ds_pastoral;
	private $ds_retiro;
	private $dt_cadastro;
	private $ds_membro_ativo;
	private $ds_situacao_atual_grupo;
	private $nu_camisa;
	private $no_responsavel;
	private $nu_tel_responsavel;
	private $ds_descricao;
	private $ds_alimentacao;
	private $ds_medicacao;
	private $st_equipe_trabalho;
	private $co_pessoa;
	private $co_imagem;
	private $co_pagamento;
	private $st_status;

	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_INSCRICAO,
			DS_PASTORAL,
			DS_RETIRO,
			DT_CADASTRO,
			DS_MEMBRO_ATIVO,
			DS_SITUACAO_ATUAL_GRUPO,
			NU_CAMISA,
			NO_RESPONSAVEL,
			NU_TEL_RESPONSAVEL,
			ST_STATUS,
			DS_DESCRICAO,
			DS_ALIMENTACAO,
			DS_MEDICACAO,
			ST_EQUIPE_TRABALHO,
			CO_PESSOA,
			CO_IMAGEM,
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
	* @return $co_inscricao
     */
	public function getCoInscricao()
    {
        return $this->co_inscricao;
    }

	/**
	* @param $co_inscricao
     * @return mixed
     */
	public function setCoInscricao($co_inscricao)
    {
        return $this->co_inscricao = $co_inscricao;
    }

	/**
	* @return $ds_pastoral
     */
	public function getDsPastoral()
    {
        return $this->ds_pastoral;
    }

	/**
	* @param $ds_pastoral
     * @return mixed
     */
	public function setDsPastoral($ds_pastoral)
    {
        return $this->ds_pastoral = $ds_pastoral;
    }

	/**
	* @return $ds_retiro
     */
	public function getDsRetiro()
    {
        return $this->ds_retiro;
    }

	/**
	* @param $ds_retiro
     * @return mixed
     */
	public function setDsRetiro($ds_retiro)
    {
        return $this->ds_retiro = $ds_retiro;
    }

	/**
	* @return $ds_membro_ativo
     */
	public function getDsMembroAtivo()
    {
        return $this->ds_membro_ativo;
    }

	/**
	* @param $ds_membro_ativo
     * @return mixed
     */
	public function setDsMembroAtivo($ds_membro_ativo)
    {
        return $this->ds_membro_ativo = $ds_membro_ativo;
    }

	/**
	* @return $ds_situacao_atual_grupo
     */
	public function getDsSituacaoAtualGrupo()
    {
        return $this->ds_situacao_atual_grupo;
    }

	/**
	* @param $ds_situacao_atual_grupo
     * @return mixed
     */
	public function setDsSituacaoAtualGrupo($ds_situacao_atual_grupo)
    {
        return $this->ds_situacao_atual_grupo = $ds_situacao_atual_grupo;
    }

	/**
	* @return $nu_camisa
     */
	public function getNuCamisa()
    {
        return $this->nu_camisa;
    }

	/**
	* @param $nu_camisa
     * @return mixed
     */
	public function setNuCamisa($nu_camisa)
    {
        return $this->nu_camisa = $nu_camisa;
    }

	/**
	* @return $no_responsavel
     */
	public function getNoResponsavel()
    {
        return $this->no_responsavel;
    }

	/**
	* @param $no_responsavel
     * @return mixed
     */
	public function setNoResponsavel($no_responsavel)
    {
        return $this->no_responsavel = $no_responsavel;
    }

	/**
	* @return $nu_tel_responsavel
     */
	public function getNuTelResponsavel()
    {
        return $this->nu_tel_responsavel;
    }

	/**
	* @param $nu_tel_responsavel
     * @return mixed
     */
	public function setNuTelResponsavel($nu_tel_responsavel)
    {
        return $this->nu_tel_responsavel = $nu_tel_responsavel;
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
	 * @return mixed
	 */
	public function getDsAlimentacao()
	{
		return $this->ds_alimentacao;
	}

	/**
	 * @param mixed $ds_alimentacao
	 */
	public function setDsAlimentacao($ds_alimentacao)
	{
		$this->ds_alimentacao = $ds_alimentacao;
	}

	/**
	 * @return mixed
	 */
	public function getDsMedicacao()
	{
		return $this->ds_medicacao;
	}

	/**
	 * @param mixed $ds_medicacao
	 */
	public function setDsMedicacao($ds_medicacao)
	{
		$this->ds_medicacao = $ds_medicacao;
	}

	/**
	* @return PessoaEntidade $co_pessoa
     */
	public function getCoPessoa()
    {
        return $this->co_pessoa;
    }

	/**
	* @param $co_pessoa
     * @return mixed
     */
	public function setCoPessoa($co_pessoa)
    {
        return $this->co_pessoa = $co_pessoa;
    }

	/**
	* @return ImagemEntidade $co_imagem
     */
	public function getCoImagem()
    {
        return $this->co_imagem;
    }

	/**
	* @param $co_imagem
     * @return mixed
     */
	public function setCoImagem($co_imagem)
    {
        return $this->co_imagem = $co_imagem;
    }

	/**
	* @return PagamentoEntidade $co_pagamento
     */
	public function getCoPagamento()
    {
        return $this->co_pagamento;
    }

	/**
     * @param $co_pagamento
     * @return mixed
     */
	public function setCoPagamento($co_pagamento)
    {
        return $this->co_pagamento = $co_pagamento;
    }

	/**
	 * @return mixed
	 */
	public function getDtCadastro()
	{
		return $this->dt_cadastro;
	}

	/**
	 * @param mixed $dt_cadastro
	 */
	public function setDtCadastro($dt_cadastro)
	{
		$this->dt_cadastro = $dt_cadastro;
	}

	/**
	 * @return mixed
	 */
	public function getStEquipeTrabalho()
	{
		return $this->st_equipe_trabalho;
	}

	/**
	 * @param mixed $st_equipe_trabalho
	 */
	public function setStEquipeTrabalho($st_equipe_trabalho)
	{
		$this->st_equipe_trabalho = $st_equipe_trabalho;
	}

    /**
     * @return mixed
     */
    public function getStStatus()
    {
        return $this->st_status;
    }

    /**
     * @param mixed $st_status
     */
    public function setStStatus($st_status)
    {
        $this->st_status = $st_status;
    }

}