<?php
/** @var CategoriaEntidade $categor */
$categor = $categoria[0];
/** @var CategoriaEntidade $cat */
$cat = $categoria;
?>
<section id="gaming">
    <div class="grid-list-products">
        <h2 class="section-title">Categoria <?php
            if (count($categoria) == 1)
                echo $categor->getNoCategoria();
            ?></h2>
        <div class="control-bar">
            <div id="popularity-sort" class="le-select">
                <select data-placeholder="sort by popularity">
                    <option value="1">Por preço</option>
                    <option value="2">Por vendas</option>
                    <option value="3">Por Visitas</option>
                </select>
            </div>

            <div id="item-count" class="le-select">
                <select>
                    <option value="1">12 por página</option>
                    <option value="2">24 por página</option>
                    <option value="3">36 por página</option>
                </select>
            </div>

            <div class="grid-list-buttons">
                <ul>
                    <li class="grid-list-button-item <?php if (!$isListView) echo 'active'; ?>"><a data-toggle="tab"
                                                                                                   href="#grid-view"><i
                                    class="fa fa-th-large"></i> Grid</a></li>
                    <li class="grid-list-button-item <?php if ($isListView) echo 'active'; ?>"><a data-toggle="tab"
                                                                                                  href="#list-view"><i
                                    class="fa fa-th-list"></i> List</a></li>
                </ul>
            </div>
        </div><!-- /.control-bar -->

        <div class="tab-content">
            <div id="grid-view" class="products-grid fade tab-pane <?php if (!$isListView) echo 'in active'; ?>">
                <div class="product-grid-holder">
                    <div class="row no-margin">

                        <?php
                        /** @var CategoriaEntidade $categ */
                        foreach ($cat as $categ) {
                            if (count($categ->getCoProduto())) {
                                /** @var ProdutoEntidade $prod */
                                foreach ($categ->getCoProduto() as $prod) {
                                    /** @var ProdutoEntidade $produto */
                                    $produto = $produtoService->PesquisaUmRegistro($prod->getCoProduto());
                                    ?>
                                    <div class="col-xs-12 col-sm-4 no-margin product-item-holder hover">
                                        <div class="product-item">
                                            <?php
                                            if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                                ?>
                                                <div class="ribbon red"><span>destaque</span></div>
                                            <?php } ?>
                                            <!--                                            <div class="ribbon green"><span>mais vendido</span></div>-->
                                            <!--                                            <div class="ribbon blue"><span>novo</span></div>-->

                                            <div class="image">
                                                <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                                Valida::GeraParametro(CO_PRODUTO . "/" .
                                                    $produto->getCoProduto()); ?>">
                                                    <?php
                                                    echo Valida::GetMiniatura(
                                                        'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                                        $produto->getNoProduto(),
                                                        260,
                                                        200,
                                                        'img-responsive'
                                                    );
                                                    ?>
                                                </a>
                                            </div>
                                            <div class="body">
                                                <?php
                                                if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                                    ?>
                                                    <div class="label-discount green">10% desconto</div>
                                                <?php } else { ?>
                                                    <div class="label-discount clear"></div>
                                                <?php } ?>
                                                <div class="title">
                                                    <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                                    Valida::GeraParametro(CO_PRODUTO . "/" .
                                                        $produto->getCoProduto()); ?>"><?=
                                                        Valida::Resumi($produto->getNoProduto(), 40);
                                                        ?></a>
                                                </div>
                                                <div class="brand"><?= $produto->getCoFabricante()->getNoFabricante(); ?></div>
                                            </div>
                                            <div class="prices">
                                                <div class="price-prev">de <?=
                                                    Valida::FormataMoeda(
                                                        floor($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.10)
                                                        , 'R$');
                                                    ?></div>
                                                <div class="price-current pull-right">por <?=
                                                    Valida::FormataMoeda(
                                                        $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                                    );
                                                    ?></div>
                                            </div>
                                            <div class="hover-area">
                                                <div class="add-cart-button">
                                                    <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                                    Valida::GeraParametro(CO_PRODUTO . "/" .
                                                        $produto->getCoProduto()); ?>"
                                                       class="le-button">Ver Detalhes</a>
                                                </div>
                                                <div class="wish-compare">
                                                    <a class="btn-add-to-wishlist" href="#">add aos favoritos</a>
                                                    <a class="btn-add-to-compare" href="#">compare</a>
                                                </div>
                                            </div>
                                        </div><!-- /.product-item -->
                                    </div><!-- /.product-item-holder -->


                                <?php }
                            }
                        } ?>


                    </div><!-- /.row -->
                </div><!-- /.product-grid-holder -->

                <div class="pagination-holder">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 text-left">
                            <ul class="pagination">
                                <li><a href="#"><<</a></li>
                                <li class="current"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">>></a></li>
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="result-counter">
                                de<span> 1 a 9</span> de <span>11</span> Encontrados
                            </div>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.pagination-holder -->
            </div><!-- /.products-grid #grid-view -->

            <div id="list-view" class="products-grid fade tab-pane <?php if ($isListView) echo 'active in'; ?>">
                <div class="products-list">


                    <?php
                    /** @var CategoriaEntidade $categ */
                    foreach ($cat as $categ) {
                        if (count($categ->getCoProduto())) {
                            /** @var ProdutoEntidade $prod */
                            foreach ($categ->getCoProduto() as $prod) {
                                /** @var ProdutoEntidade $produto */
                                $produto = $produtoService->PesquisaUmRegistro($prod->getCoProduto());
                                ?>

                                <div class="product-item product-item-holder">
                                    <?php
                                    if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                        ?>
                                        <div class="ribbon red"><span>destaque</span></div>
                                    <?php } ?>
<!--                                    <div class="ribbon blue"><span>novo</span></div>-->
<!--                                    <div class="ribbon green"><span>mais vendidos</span></div>-->
                                    <div class="row">
                                        <div class="no-margin col-xs-12 col-sm-4 image-holder">
                                            <div class="image">
                                                <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                                Valida::GeraParametro(CO_PRODUTO . "/" .
                                                    $produto->getCoProduto()); ?>">
                                                    <?php
                                                    echo Valida::GetMiniatura(
                                                        'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                                        $produto->getNoProduto(),
                                                        260,
                                                        200,
                                                        'img-responsive'
                                                    );
                                                    ?>
                                                </a>
                                            </div>
                                        </div><!-- /.image-holder -->
                                        <div class="no-margin col-xs-12 col-sm-5 body-holder">
                                            <div class="body">
                                                <?php
                                                if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                                    ?>
                                                    <div class="label-discount green">10% desconto</div>
                                                <?php } else { ?>
                                                    <div class="label-discount clear"></div>
                                                <?php } ?>
                                                <div class="title">
                                                    <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                                    Valida::GeraParametro(CO_PRODUTO . "/" .
                                                        $produto->getCoProduto()); ?>"><?=
                                                        Valida::Resumi($produto->getNoProduto(), 100);
                                                        ?></a>
                                                </div>
                                                <div class="brand"><?= $produto->getCoFabricante()->getNoFabricante(); ?></div>
                                                <div class="excerpt">
                                                    <?= Valida::Resumi($produto->getDsDescricao(), 50);?>
                                                </div>
                                                <div class="addto-compare">
                                                    <a class="btn-add-to-compare" href="#">comparar</a>
                                                </div>
                                            </div>
                                        </div><!-- /.body-holder -->
                                        <div class="no-margin col-xs-12 col-sm-3 price-area">
                                            <div class="right-clmn">
                                                <div class="price-current"> <?=
                                                    Valida::FormataMoeda(
                                                        $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                                    );
                                                    ?></div>
                                                <div class="price-prev">de <?=
                                                    Valida::FormataMoeda(
                                                        floor($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.10)
                                                        , 'R$');
                                                    ?></div>
                                                <div class="availability"><span
                                                            class="available"><?=
                                                        FuncoesSistema::ProdutoEstoqueLabel($produto->getNuEstoque())
                                                        ?></span>
                                                </div>
                                                <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                                Valida::GeraParametro(CO_PRODUTO . "/" .
                                                    $produto->getCoProduto()); ?>"
                                                   class="le-button">Ver Detalhes</a>
                                                <a class="btn-add-to-wishlist" href="#">add aos favoritos</a>
                                            </div>
                                        </div><!-- /.price-area -->
                                    </div><!-- /.row -->
                                </div><!-- /.product-item -->


                            <?php }
                        }
                    } ?>


                </div><!-- /.products-list -->

                <div class="pagination-holder">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 text-left">
                            <ul class="pagination">
                                <li class="current"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">next</a></li>
                            </ul><!-- /.pagination -->
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="result-counter">
                                de<span> 1 a 9</span> de <span>11</span> Encontrados
                            </div><!-- /.result-counter -->
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.pagination-holder -->

            </div><!-- /.products-grid #list-view -->

        </div><!-- /.tab-content -->
    </div><!-- /.grid-list-products -->

</section><!-- /#gaming -->