<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class PessoaEntidadeExtends extends AbstractEntidade
{
    private $co_cliente;
    private $co_empresa;
    private $co_fornecedor;
    private $co_funcionario;
    private $co_representante;
    private $co_imagem;

    /**
     * @return ClienteEntidade $co_cliente
     */
    public function getCoCliente()
    {
        return $this->co_cliente;
    }

    /**
     * @param $co_cliente
     * @return mixed
     */
    public function setCoCliente($co_cliente)
    {
        return $this->co_cliente = $co_cliente;
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
     * @return FornecedorEntidade $co_fornecedor
     */
    public function getCoFornecedor()
    {
        return $this->co_fornecedor;
    }

    /**
     * @param $co_fornecedor
     * @return mixed
     */
    public function setCoFornecedor($co_fornecedor)
    {
        return $this->co_fornecedor = $co_fornecedor;
    }

    /**
     * @return FuncionarioEntidade $co_funcionario
     */
    public function getCoFuncionario()
    {
        return $this->co_funcionario;
    }

    /**
     * @param $co_funcionario
     * @return mixed
     */
    public function setCoFuncionario($co_funcionario)
    {
        return $this->co_funcionario = $co_funcionario;
    }

    /**
     * @return RepresentanteEntidade $co_representante
     */
    public function getCoRepresentante()
    {
        return $this->co_representante;
    }

    /**
     * @param $co_representante
     * @return mixed
     */
    public function setCoRepresentante($co_representante)
    {
        return $this->co_representante = $co_representante;
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


}