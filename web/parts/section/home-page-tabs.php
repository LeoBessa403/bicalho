<div id="products-tab" class="wow fadeInUp">
    <div class="container">
        <div class="tab-holder">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
                <li class="active"><a href="#featured" data-toggle="tab">destaque</a></li>
                <li><a href="#new-arrivals" data-toggle="tab">novas chegadas</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="featured">
                    <div class="product-grid-holder">
                        <?php
                        /** @var ProdutoEntidade $produto */
                        foreach ($produtosDestaque as $produto) {
                            ?>
                            <div class="col-sm-4 col-md-3  no-margin product-item-holder hover">
                                <div class="product-item">
                                    <?php
                                    if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                        ?>
                                        <div class="ribbon red"><span>destaque</span></div>
                                        <!--                                        <div class="ribbon blue"><span>novo!</span></div>-->
                                        <!--                                        <div class="ribbon green"><span>mais vendidos</span></div>-->
                                    <?php } ?>
                                    <div class="image">
                                        <?php
                                        echo Valida::GetMiniatura(
                                            'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                            $produto->getNoProduto(),
                                            280,
                                            210,
                                            'img-responsive'
                                        );
                                        ?>
                                    </div>
                                    <div class="body">
                                        <?php
                                        if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                            ?>
                                            <div class="label-discount green">10% desconto</div>
                                        <?php } ?>
                                        <div class="title">
                                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                            Valida::GeraParametro(CO_PRODUTO . "/" .
                                                $produto->getCoProduto()); ?>"><?=
                                                Valida::Resumi($produto->getNoProduto(), 100);
                                                ?></a>
                                        </div>
                                        <div class="brand"><?= $produto->getCoFabricante()->getNoFabricante(); ?></div>
                                    </div>
                                    <div class="prices">
                                        <div class="price-prev">de <?=
                                            Valida::FormataMoeda(
                                                floor($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.10)
                                            );
                                            ?></div>
                                        <div class="price-current pull-right">por <?=
                                            Valida::FormataMoeda(
                                                $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                            );
                                            ?></div>
                                    </div>

                                    <div class="hover-area">
                                        <div class="add-cart-button">
                                            <a href="<?php echo PASTASITE; ?>Produtos/DetalharProduto"
                                               class="le-button">
                                                add ao carrinho</a>
                                        </div>
                                        <div class="wish-compare">
                                            <a class="btn-add-to-wishlist" href="#">add aos favoritos</a>
                                            <a class="btn-add-to-compare" href="#">compare</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="loadmore-holder text-center">
                        <a class="btn-loadmore" href="#">
                            <i class="fa fa-plus"></i>
                            carregar mais produtos</a>
                    </div>
                </div>
                <div class="tab-pane" id="new-arrivals">
                    <div class="product-grid-holder">
                        <?php
                        /** @var ProdutoEntidade $produto */
                        foreach ($novasChegadas as $produto) {
                            ?>
                            <div class="col-sm-4 col-md-3  no-margin product-item-holder hover">
                                <div class="product-item">
                                    <!--                                        <div class="ribbon red"><span>destaque</span></div>-->
                                    <div class="ribbon green"><span>novo!</span></div>
                                    <!--                                        <div class="ribbon blue"><span>mais vendidos</span></div>-->
                                    <div class="image">
                                        <?php
                                        echo Valida::GetMiniatura(
                                            'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                            $produto->getNoProduto(),
                                            280,
                                            210,
                                            'img-responsive'
                                        );
                                        ?>
                                    </div>
                                    <div class="body">
                                        <?php
                                        if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                            ?>
                                            <div class="label-discount red">10% desconto</div>
                                        <?php } ?>
                                        <div class="title">
                                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                            Valida::GeraParametro(CO_PRODUTO . "/" .
                                                $produto->getCoProduto()); ?>"><?=
                                                Valida::Resumi($produto->getNoProduto(), 100);
                                                ?></a>
                                        </div>
                                        <div class="brand"><?= $produto->getCoFabricante()->getNoFabricante(); ?></div>
                                    </div>
                                    <div class="prices">
                                        <div class="price-prev">de <?=
                                            Valida::FormataMoeda(
                                                floor($produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda() * 1.10)
                                            );
                                            ?></div>
                                        <div class="price-current pull-right">por <?=
                                            Valida::FormataMoeda(
                                                $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                            );
                                            ?></div>
                                    </div>

                                    <div class="hover-area">
                                        <div class="add-cart-button">
                                            <a href="<?php echo PASTASITE; ?>Produtos/DetalharProduto"
                                               class="le-button">
                                                add ao carrinho</a>
                                        </div>
                                        <div class="wish-compare">
                                            <a class="btn-add-to-wishlist" href="#">add aos favoritos</a>
                                            <a class="btn-add-to-compare" href="#">compare</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="loadmore-holder text-center">
                        <a class="btn-loadmore" href="#">
                            <i class="fa fa-plus"></i>
                            carregar mais produtos</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>