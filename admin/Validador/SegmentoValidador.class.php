<?php

/**
 * SegmentoValidador [ VALIDATOR ]
 * @copyright (c) 2017, Leo Bessa
 */
class  SegmentoValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarSegmento($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[DS_SEGMENTO], 2, 'Nome do Segmento'
        );
        return $this->MontaRetorno($this->retorno);
    }
}