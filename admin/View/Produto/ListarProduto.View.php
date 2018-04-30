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
                        Modal::deletaRegistro("Produto");
                        Modal::confirmacao("confirma_Produto");
                        $arrColunas = array('Código', 'Nome do Produto', 'Estoque', 'Fabricante', 'Categoria', 'Valor R$', 'Ações');
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
                                 </a>
                                 <a data-toggle="modal" role="button" class="btn btn-bricky 
                                        tooltips deleta" id="' . $res->getCoProduto() . '" data-msg-restricao="MSG01"
                                           href="#Produto" data-original-title="Desativar Produto" data-placement="top">
                                            <i class="fa fa-trash-o"></i>
                                        </a>';
                            $grid->setColunas($res->getNuCodigoInterno(), 2);
                            $grid->setColunas($res->getNoProduto());
                            $grid->setColunas(FuncoesSistema::ProdutoEstoque($res->getNuEstoque()), 2);
                            $grid->setColunas($res->getCoFabricante()->getNoFabricante(), 2);
                            $grid->setColunas($res->getCoCategoria()->getNoCategoria(), 2);
                            $grid->setColunas('<b>'.Valida::FormataMoeda(
                                $res->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                            ).'</b>');
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoProduto());
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