<?php

/**
 * FabricanteValidador [ VALIDATOR ]
 * @copyright (c) 2017, Leo Bessa
 */
class  FabricanteValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarFabricante($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[NU_CODIGO_FABRICANTE], 1,'Código do Fabricante'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[NO_FABRICANTE], 2, 'Nome do Fabricante'
        );
        return $this->MontaRetorno($this->retorno);
    }
}