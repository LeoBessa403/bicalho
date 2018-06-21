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
            /** @var ImagemService $imagemService */
            $imagemService = $this->getService(IMAGEM_SERVICE);

            /** @var Session $us */
            $us = $_SESSION[SESSION_USER];
            $user = $us->getUser();

            /** @var PDO $PDO */
            $PDO = $this->getPDO();
            $retorno = [
                SUCESSO => false,
                MSG => null
            ];

            $produto[NU_CODIGO_INTERNO] = $result[NU_CODIGO_INTERNO];
            /** @var ProdutoEntidade $produtoJaCadastrado */
            $produtoJaCadastrado = $this->PesquisaUmQuando($produto);
            if (count($produtoJaCadastrado) && $result[CO_PRODUTO] != $produtoJaCadastrado->getCoProduto()) {
                $session->setSession(
                    MENSAGEM,
                    "Já exite um produto cadastro com esse código, favor verificar"
                );
                return $retorno;
            }
            $produto[CO_FABRICANTE] = $result[CO_FABRICANTE][0];
            $produto[CO_CATEGORIA] = $result[CO_CATEGORIA][0];
            $produto[CO_UNIDADE_VENDA] = $result[CO_UNIDADE_VENDA][0];
            $produto[NO_PRODUTO] = trim($result[NO_PRODUTO]);
            $produto[NO_PRODUTO_URL_AMIGAVEL] = Valida::ValNome(trim($result[NO_PRODUTO]));
            $produto[DS_DESCRICAO] = trim($result[DS_DESCRICAO]);
            if (!empty($result[NU_ESTOQUE])) {
                $detalheProduto[NU_ESTOQUE] = 1; // Com Estoque
            } else {
                $detalheProduto[NU_ESTOQUE] = 0; // Sem Estoque
            }
            $produto[DS_CAMINHO_MANUAL] = $result[DS_CAMINHO_MANUAL];
            $produto[DS_CAMINHO_VIDEO] = $result[DS_CAMINHO_VIDEO];
            $detalheProduto[NU_PRECO_VENDA] = Valida::FormataMoedaBanco($result[NU_PRECO_VENDA]);
            $detalheProduto[CO_USUARIO] = $user[md5(CO_USUARIO)];
            $detalheProduto[DT_CADASTRO] = Valida::DataHoraAtualBanco();

            $imagem[DS_CAMINHO] = "";
            $nome = Valida::ValNome($produto[NO_PRODUTO]);
            if ($files[DS_CAMINHO]["tmp_name"]):
                $foto = $_FILES[DS_CAMINHO];
                $up = new Upload();
                $up->UploadImagens($foto, $nome, "ProdutosCapa");
                $imagem[DS_CAMINHO] = $up->getNameImage();
            endif;

            $PDO->beginTransaction();
            if (!empty($result[CO_PRODUTO])):
                $coProduto = $result[CO_PRODUTO];
                /** @var ProdutoEntidade $produtoEdicao */
                $produtoEdicao = $this->PesquisaUmRegistro($coProduto);
                if ($files[DS_CAMINHO]["tmp_name"]) {
                    $produto[CO_IMAGEM] = $result[CO_IMAGEM];
                    $fotoApaga = $produtoEdicao->getCoImagem()->getDsCaminho();
                    if (($fotoApaga) && (file_exists(PASTA_RAIZ . 'uploads/ProdutosCapa/' . $fotoApaga))) {
                        unlink(PASTA_RAIZ . 'uploads/ProdutosCapa/' . $fotoApaga);
                    }
                    $imagemService->Salva($imagem, $result[CO_IMAGEM]);
                }
                $this->Salva($produto, $coProduto);

                if($produtoEdicao->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() != $detalheProduto[NU_PRECO_VENDA] ||
                    $produtoEdicao->getUltimoCoProdutoDetalhe()->getNuEstoque() != $detalheProduto[NU_ESTOQUE] ){
                    $detalheProduto[CO_PRODUTO] = $coProduto;
                    $detalheProduto[ST_DESTAQUE] = $produtoEdicao->getUltimoCoProdutoDetalhe()->getStDestaque();
                    $coProdutoDetalhe = $produtoDetalheService->Salva($detalheProduto);
                }
                $session->setSession(ATUALIZADO, "OK");
            else:
                $produto[CO_IMAGEM] = $imagemService->Salva($imagem);
                $produto[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $produto[ST_STATUS] = StatusAcessoEnum::ATIVO;
                $coProduto = $this->Salva($produto);
                $detalheProduto[CO_PRODUTO] = $coProduto;
                $detalheProduto[ST_DESTAQUE] = SimNaoEnum::NAO;
                $coProdutoDetalhe = $produtoDetalheService->Salva($detalheProduto);
                $session->setSession(CADASTRADO, "OK");
            endif;

            if (!empty($files[CO_PRODUTO_IMAGEM])):
                $produtoImagemService->SalvaProdutoImagens($files, $coProduto, $nome);
            endif;


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
     * @param $Condicoes
     * @return mixed
     */
    public function PesquisaAvancadaForm($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAvancadaForm($Condicoes);
    }

    /**
     * @return array
     */
    public function PesquisaProdutosSemEstoque()
    {
        return $this->ObjetoModel->PesquisaProdutosSemEstoque();
    }

    /**
     * @param $dias
     * @return array
     */
    public function PesquisaProdutosNovos($dias)
    {
        return $this->ObjetoModel->PesquisaProdutosNovos($dias);
    }

    /**
     * @return array
     */
    public function PesquisaProdutosMaisVisitados()
    {
        return $this->ObjetoModel->PesquisaProdutosMaisVisitados();
    }

    /**
     * @param $coProduto
     * @return array
     */
    public function desativarProduto($coProduto)
    {
        return $this->mudarStatusProduto($coProduto, StatusUsuarioEnum::INATIVO);
    }

    /**
     * @param $noProduto
     * @return mixed
     */
    public function getSeoProdutos($noProduto)
    {
        return $this->ObjetoModel->getSeoProdutos($noProduto);
    }

    /**
     * @param $coProduto
     * @return array
     */
    public function ativarProduto($coProduto)
    {
        return $this->mudarStatusProduto($coProduto, StatusUsuarioEnum::ATIVO);
    }

    /**
     * @param $coProduto
     * @param $stStatus
     * @return array
     */
    private function mudarStatusProduto($coProduto, $stStatus)
    {
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $dados = [
            ST_STATUS => $stStatus
        ];

        $coProdutoDetalhe = $this->Salva($dados, $coProduto);

        if ($coProdutoDetalhe) {
            $session->setSession(MENSAGEM, Mensagens::OK_ATUALIZADO);
            $retorno[SUCESSO] = true;
        } else {
            $session->setSession(MENSAGEM, 'Não foi possível alterar o Produto');
            $retorno[SUCESSO] = false;
        }
        return $retorno;
    }

    /**
     * @param $coProdutoDetalhe
     * @param $stStatus
     * @return array
     */
    private function mudarDestaqueProduto($coProdutoDetalhe, $stStatus)
    {
        /** @var Session $us */
        $us = $_SESSION[SESSION_USER];
        $user = $us->getUser();

        /** @var ProdutoDetalheService $produtoDetalheService */
        $produtoDetalheService = $this->getService(PRODUTO_DETALHE_SERVICE);
        /** @var ProdutoDetalheEntidade $produtoDetalhe */
        $produtoDetalhe = $produtoDetalheService->PesquisaUmRegistro($coProdutoDetalhe);

        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $detalheProduto[NU_PRECO_VENDA] = $produtoDetalhe->getNuPrecoVenda();
        $detalheProduto[CO_USUARIO] = $user[md5(CO_USUARIO)];
        $detalheProduto[DT_CADASTRO] = Valida::DataHoraAtualBanco();
        $detalheProduto[CO_PRODUTO] = $produtoDetalhe->getCoProduto()->getCoProduto();
        $detalheProduto[ST_DESTAQUE] = $stStatus;
        $detalheProduto[NU_ESTOQUE] = $produtoDetalhe->getNuEstoque();

        $coProdDet = $produtoDetalheService->Salva($detalheProduto);

        if ($coProdDet) {
            $session->setSession(MENSAGEM, Mensagens::OK_ATUALIZADO);
            $retorno[SUCESSO] = true;
        } else {
            $session->setSession(MENSAGEM, 'Não foi possível alterar o Produto');
            $retorno[SUCESSO] = false;
        }
        return $retorno;
    }

    /**
     * @param $coProdutoDetalhe
     * @return array
     */
    public function AtivarDestaque($coProdutoDetalhe)
    {
        return $this->mudarDestaqueProduto($coProdutoDetalhe, SimNaoEnum::SIM);
    }

    /**
     * @param $coProdutoDetalhe
     * @return array
     */
    public function DesativarDestaque($coProdutoDetalhe)
    {
        return $this->mudarDestaqueProduto($coProdutoDetalhe, SimNaoEnum::NAO);
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
        $dados[NU_ESTOQUE] = $produto->getUltimoCoProdutoDetalhe()->getNuEstoque();
        $dados[NU_CODIGO_INTERNO] = $produto->getNuCodigoInterno();
        $dados[CO_FABRICANTE] = $produto->getCoFabricante()->getCoFabricante();
        $dados[CO_CATEGORIA] = $produto->getCoCategoria()->getCoCategoria();
        $dados[CO_UNIDADE_VENDA] = $produto->getCoUnidadeVenda()->getCoUnidadeVenda();
        $dados[NU_PRECO_VENDA] = Valida::FormataMoeda($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda());
        $dados[DS_CAMINHO_MANUAL] = $produto->getDsCaminhoManual();
        $dados[DS_CAMINHO_VIDEO] = $produto->getDsCaminhoVideo();
        $dados[DS_CAMINHO] = "ProdutosCapa/" . $produto->getCoImagem()->getDsCaminho();
        $dados[CO_IMAGEM] = $produto->getCoImagem()->getCoImagem();
        $dados[DS_DESCRICAO] = $produto->getDsDescricao();

        return $dados;
    }

    /**
     * @param $limite
     * @return array
     */
    public function pesquisaProdutos($limite)
    {
        $coProdutos = $this->ObjetoModel->pesquisaProdutos();
        foreach ($coProdutos as $coProduto) {
            $pesqProdutos[] = $coProduto[CO_PRODUTO];
        }
        $coProdutos = [];
        for ($i = 0; $i < $limite; $i++) {
            $coProduto = rand(0, count($pesqProdutos) - 1);
            if (!in_array($pesqProdutos[$coProduto], $coProdutos)) {
                $coProdutos[] = $pesqProdutos[$coProduto];
            } else {
                $limite = $limite + 1;
            }
        }
        return $this->ObjetoModel->pesquisaProdutosAleatorios(implode(", ", $coProdutos));
    }

}