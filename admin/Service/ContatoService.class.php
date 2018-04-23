<?php

/**
 * ContatoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ContatoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ContatoEntidade::ENTIDADE);
        $this->ObjetoModel = New ContatoModel();
    }

    public function getArrayDadosContato(ContatoEntidade $contato, array $dados)
    {
        $dados[CO_CONTATO] = $contato->getCoContato();
        $dados[NU_TEL1] = Valida::MascaraTel($contato->getNuTel1());
        $dados[NU_TEL2] = Valida::MascaraTel($contato->getNuTel2());
        $dados[NU_TEL3] = Valida::MascaraTel($contato->getNuTel3());
        $dados[DS_EMAIL] = $contato->getDsEmail();

        return $dados;
    }

}