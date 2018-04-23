<?php

/**
 * PessoaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PessoaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PessoaEntidade::ENTIDADE);
        $this->ObjetoModel = New PessoaModel();
    }

    /**
     * @param PessoaEntidade $pessoa
     * @param array $dados
     * @return array
     */
    public function getArrayDadosPessoa(PessoaEntidade $pessoa, array $dados)
    {
        $dados[CO_PESSOA] = $pessoa->getCoPessoa();
        $dados[NU_CPF] = Valida::MascaraCpf($pessoa->getNuCpf());
        $dados[NU_RG] = $pessoa->getNuRg();
        $dados[DT_NASCIMENTO] = Valida::DataShow($pessoa->getDtNascimento());
        $dados[ST_SEXO] = $pessoa->getStSexo();
        $dados[NO_PESSOA] = $pessoa->getNoPessoa();

        return $dados;
    }
}