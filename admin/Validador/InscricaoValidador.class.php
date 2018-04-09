<?php

/**
 * AcessoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  InscricaoValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarInscricao($dados, $arquivo)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_CPF], AbstractValidador::VALIDACAO_CPF, 'CPF'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoArquivo(
            $arquivo[DS_CAMINHO], 'Foto de Perfil'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[ST_SEXO], 'Sexo'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DT_NASCIMENTO],AbstractValidador::VALIDACAO_DATA, 'Nascimento'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_TEL1],AbstractValidador::VALIDACAO_TEL, 'Celular'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_TEL_RESPONSAVEL],AbstractValidador::VALIDACAO_TEL, 'Tel. Referência'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NO_RESPONSAVEL],AbstractValidador::VALIDACAO_NOME, 'Pessoa de Referência', 3
        );

        return $this->MontaRetorno($this->retorno);
    }
}