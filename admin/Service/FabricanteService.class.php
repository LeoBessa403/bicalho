<?php

/**
 * FabricanteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FabricanteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FabricanteEntidade::ENTIDADE);
        $this->ObjetoModel = New FabricanteModel();
    }

    public function salvaFabricante($dados)
    {
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $fabricanteValidador = new FabricanteValidador();
        /** @var FabricanteValidador $validador */
        $validador = $fabricanteValidador->validarFabricante($dados);
        if ($validador[SUCESSO]) {
            $fabricante[NO_FABRICANTE] = trim($dados[NO_FABRICANTE]);
            $fabricante[NU_CODIGO_FABRICANTE] = $dados[NU_CODIGO_FABRICANTE];

            if (!empty($_POST[CO_FABRICANTE])):
                $coFabricante = $dados[CO_FABRICANTE];
                $retorno[SUCESSO] = $this->Salva($fabricante, $coFabricante);
            else:
                $fabricante[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $retorno[SUCESSO] = $this->Salva($fabricante);
            endif;
        } else {
            $session = new Session();
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }
}