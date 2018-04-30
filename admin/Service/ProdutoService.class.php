<?php

/**
 * ProdutoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProdutoService extends AbstractService
{

    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(ProdutoEntidade::ENTIDADE);
        $this->ObjetoModel = New ProdutoModel();
    }

    public function salvaProduto($result, $files)
    {
        $session = new Session();
        /** @var ProdutoValidador $produtoValidador */
        $produtoValidador = new ProdutoValidador();
        $validador = $produtoValidador->validarProduto($result, $files);
        if ($validador[SUCESSO]) {
            /** @var ProdutoImagemService $produtoImagemService */
            $produtoImagemService = $this->getService(PRODUTO_IMAGEM_SERVICE);
            /** @var ProdutoDetalheService $produtoDetalheService */
            $produtoDetalheService = $this->getService(PRODUTO_DETALHE_SERVICE);

            $us = $_SESSION[SESSION_USER];
            $user = $us->getUser();

            /** @var PDO $PDO */
            $PDO = $this->getPDO();
            $retorno = [
                SUCESSO => false,
                MSG => null
            ];

            $produto[CO_FABRICANTE] = $result[CO_FABRICANTE][0];
            $produto[CO_CATEGORIA] = $result[CO_CATEGORIA][0];
            $produto[CO_UNIDADE_VENDA] = $result[CO_UNIDADE_VENDA][0];
            $produto[NO_PRODUTO] =  trim($result[NO_PRODUTO]);
            $produto[DS_DESCRICAO] =  trim($result[DS_DESCRICAO]);
            if (!empty($result[NU_ESTOQUE])){
                $produto[NU_ESTOQUE] = 1; // Com Estoque
            }else{
                $produto[NU_ESTOQUE] = 0; // Sem Estoque
            }
            $produto[NU_CODIGO_INTERNO] =  $result[NU_CODIGO_INTERNO];
            $produto[DS_CAMINHO_MANUAL] =  $result[DS_CAMINHO_MANUAL];
            $produto[DS_CAMINHO_VIDEO] =  $result[DS_CAMINHO_VIDEO];
            $detalheProduto[NU_PRECO_VENDA] =  Valida::FormataMoedaBanco($result[NU_PRECO_VENDA]);
            $detalheProduto[CO_USUARIO] =  $user[md5(CO_USUARIO)];
            $detalheProduto[DT_CADASTRO] = Valida::DataHoraAtualBanco();

            $PDO->beginTransaction();
            if (!empty($result[CO_PRODUTO])):
                $coProduto = $result[CO_PRODUTO];
                $this->Salva($produto, $coProduto);
                if (!empty($files)):
                    $produtoImagemService->SalvaProdutoImagens($files, $coProduto);
                endif;
                $session->setSession(ATUALIZADO, "OK");
            else:
                $produto[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $produto[ST_STATUS] = StatusAcessoEnum::ATIVO;
                $coProduto = $this->Salva($produto);
                if (!empty($files)):
                    $produtoImagemService->SalvaProdutoImagens($files, $coProduto);
                endif;
                $session->setSession(CADASTRADO, "OK");
            endif;

            $detalheProduto[CO_PRODUTO] = $coProduto;
            $coProdutoDetalhe = $produtoDetalheService->Salva($detalheProduto);

            if ($coProdutoDetalhe) {
                $session->setSession(MENSAGEM, Mensagens::OK_SALVO);
                $retorno[SUCESSO] = true;
                $PDO->commit();
            } else {
                $session->setSession(MENSAGEM, 'Não foi possível cadastrar o Produto');
                $retorno[SUCESSO] = false;
                $PDO->rollBack();
            }

        } else {
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }

        return $retorno;
    }

    /**
     * @param $Condicoes
     * @return mixed
     */
    public function PesquisaAvancada($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAvancada($Condicoes);
    }

    /**
     * @param ProdutoEntidade $produto
     * @param array $dados
     * @return array
     */
    public function getArrayDadosProduto(ProdutoEntidade $produto, array $dados)
    {
        $dados[CO_PRODUTO] = $produto->getCoProduto();
        $dados[NO_PRODUTO] = $produto->getNoProduto();
        $dados[NU_ESTOQUE] = $produto->getNuEstoque();
        $dados[NU_CODIGO_INTERNO] = $produto->getNuCodigoInterno();
        $dados[CO_FABRICANTE] = $produto->getCoFabricante()->getCoFabricante();
        $dados[CO_CATEGORIA] = $produto->getCoCategoria()->getCoCategoria();
        $dados[CO_UNIDADE_VENDA] = $produto->getCoUnidadeVenda()->getCoUnidadeVenda();
        $dados[NU_PRECO_VENDA] = $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda();
        $dados[DS_CAMINHO_MANUAL] = $produto->getDsCaminhoManual();
        $dados[DS_CAMINHO_VIDEO] = $produto->getDsCaminhoVideo();
        $dados[DS_DESCRICAO] = $produto->getDsDescricao();

        return $dados;
    }
}