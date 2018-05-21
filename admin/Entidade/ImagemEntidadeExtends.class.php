<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class ImagemEntidadeExtends extends AbstractEntidade
{
    private $co_empresa;
    private $co_funcionario;
    private $co_produto_imagem;
    private $co_sugestao;
    private $co_produto;

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
     * @return ProdutoImagemEntidade $co_produto_imagem
     */
    public function getCoProdutoImagem()
    {
        return $this->co_produto_imagem;
    }

    /**
     * @param $co_produto_imagem
     * @return mixed
     */
    public function setCoProdutoImagem($co_produto_imagem)
    {
        return $this->co_produto_imagem = $co_produto_imagem;
    }

    /**
     * @return SugestaoEntidade $co_sugestao
     */
    public function getCoSugestao()
    {
        return $this->co_sugestao;
    }

    /**
     * @param $co_sugestao
     * @return mixed
     */
    public function setCoSugestao($co_sugestao)
    {
        return $this->co_sugestao = $co_sugestao;
    }

    /**
     * @return ProdutoEntidade $co_produto
     */
    public function getCoProduto()
    {
        return $this->co_produto;
    }

    /**
     * @param $co_produto
     * @return mixed
     */
    public function setCoProduto($co_produto)
    {
        return $this->co_produto = $co_produto;
    }
}