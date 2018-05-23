<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Produto
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Produto
                        <small>Listar Produto</small>
                        <?php Valida::geraBtnNovo(); ?>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Produtos
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        Modal::Foto();
                        Modal::desativaDestaque("DesativarDestaque");
                        Modal::ativaDestaque("AtivarDestaque");
                        Modal::desativaProduto("ProdutoDesativar");
                        Modal::ativaProduto("ProdutoAtivar");
                        Modal::confirmacao("confirma_Produto");
                        $arrColunas = array('Foto', 'Código', 'Nome do Produto', 'Estoque', 'Fabricante', 'Categoria', 'Valor R$', 'Ações');
                        $grid = new Grid();
                        echo $grid->PesquisaAvancada('Pesquisar Produtos');
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var ProdutoEntidade $res */
                        foreach ($result as $res):
                            $acao = '<a href="' . PASTAADMIN . 'Produto/CadastroProduto/' .
                                Valida::GeraParametro(CO_PRODUTO . "/" . $res->getCoProduto()) . '" class="btn btn-primary tooltips" 
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a>';
                            if ($res->getStStatus() == StatusUsuarioEnum::ATIVO) {
                                $acao .= ' <a data-toggle="modal" role="button" class="btn btn-bricky 
                                        tooltips acao" id="' . $res->getCoProduto() . '" data-msg-restricao="MSG02"
                                           href="#ProdutoDesativar" data-original-title="Desativar Produto" data-placement="top"
                                            data-url-action="' . PASTAADMIN . 'Produto/DesativarProduto/' .
                                    Valida::GeraParametro(CO_PRODUTO . "/" . $res->getCoProduto()) . '">
                                            <i class="fa fa-lock"></i>
                                        </a>';

                                // Botão de destaque
                                $coDetalheProduto = $res->getUltimoCoProdutoDetalhe()->getCoProdutoDetalhe();

                                if(!count($res->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())){
                                    $acao .= ' <a data-toggle="modal" role="button" class="btn btn-green tooltips acao" 
                                            id="' . $coDetalheProduto . '" data-msg-restricao="MSG03"
                                           href="#AtivarDestaque" data-original-title="Ativar Destaque" data-placement="top"
                                           data-url-action="' . PASTAADMIN . 'Produto/AtivarDestaque/' .
                                        Valida::GeraParametro(CO_PRODUTO_DETALHE . "/" . $coDetalheProduto) . '">
                                            <i class="fa fa-star"></i>
                                        </a>';
                                }else{
                                    $acao .= ' <a data-toggle="modal" role="button" class="btn btn-warning tooltips acao" 
                                            id="' . $coDetalheProduto . '" data-msg-restricao="MSG03"
                                           href="#DesativarDestaque" data-original-title="Desativar Destaque" data-placement="top"
                                           data-url-action="' . PASTAADMIN . 'Produto/DesativarDestaque/' .
                                        Valida::GeraParametro(CO_PRODUTO_DETALHE . "/" . $coDetalheProduto) . '">
                                            <i class="fa fa-star-o"></i>
                                        </a>';
                                }

                            } else {
                                $acao .= ' <a data-toggle="modal" role="button" class="btn btn-success 
                                        tooltips acao" id="' . $res->getCoProduto() . '" data-msg-restricao="MSG03"
                                           href="#ProdutoAtivar" data-original-title="Ativar Produto" data-placement="top"
                                           data-url-action="' . PASTAADMIN . 'Produto/AtivarProduto/' .
                                    Valida::GeraParametro(CO_PRODUTO . "/" . $res->getCoProduto()) . '">
                                            <i class="fa fa-unlock-alt"></i>
                                        </a>';
                            }

                            $imagem = Valida::GetMiniatura(
                                'ProdutosCapa/' . $res->getCoImagem()->getDsCaminho(),
                                Valida::ValNome($res->getNoProduto()),
                                90, 90, "circle-img"
                            );

                            $foto = '<a data-toggle="modal" class="fotos" 
                                id="' . $res->getCoProduto() . '" 
                                      href="#Foto" title="' . $res->getNoProduto() . '" 
                                      data-placement="top">' . $imagem . '</a>';

                            $grid->setColunas($foto, 2);
                            $grid->setColunas($res->getNuCodigoInterno(), 2);
                            $grid->setColunas($res->getNoProduto());
                            $grid->setColunas(FuncoesSistema::ProdutoEstoque($res->getNuEstoque()), 2);
                            $grid->setColunas($res->getCoFabricante()->getNoFabricante(), 2);
                            $grid->setColunas($res->getCoCategoria()->getNoCategoria(), 2);
                            $grid->setColunas('<b>' . Valida::FormataMoeda(
                                    $res->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                ) . '</b>');
                            $grid->setColunas($acao, 3);
                            $grid->criaLinha($res->getCoProduto(),
                                ($res->getStStatus() == StatusUsuarioEnum::INATIVO) ? true : false);
                        endforeach;
                        $grid->finalizaGrid();
                        ?>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->