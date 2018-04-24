<?php

/**
 * CategoriaValidador [ VALIDATOR ]
 * @copyright (c) 2017, Leo Bessa
 */
class  CategoriaValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarCategoria($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_SEGMENTO], 'Segmento'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[NO_CATEGORIA], 2, 'Nome da Categoria'
        );
        return $this->MontaRetorno($this->retorno);
    }
}