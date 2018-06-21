<div class="main-content" id="main-content">
    <div class="row">
        <div class="col-lg-10 center-block page-wishlist style-cart-page inner-bottom-xs">

            <div class="inner-xs">
                <div class="page-header">
                    <h2 class="page-title">Meus Favoritos</h2>
                </div>
            </div><!-- /.section-page-title -->

            <div class="items-holder">
                <div class="container-fluid wishlist_table">
                    <?php
                    $produtoControl = new Produtos();
                    /** @var ProdutoService $produtoService */
                    $produtoService = $produtoControl->getService(PRODUTO_SERVICE);
                    foreach ($favoritos as $favorito) {
                        if ($favorito) {
                            /** @var ProdutoEntidade $produto */
                            $produto = $produtoService->PesquisaUmRegistro($favorito);
                            ?>
                            <div class="row cart-item cart_item"
                                 id="yith-wcwl-row-<?= $produto->getCoProduto(); ?>">

                                <div class="col-xs-12 col-sm-1 no-margin">
                                    <a title="Remove dos Favoritos" class="remove_from_wishlist remove-item"
                                       data-co-produto="<?= $produto->getCoProduto(); ?>"
                                       href="#">x</a>
                                </div>

                                <div class="col-xs-12 col-sm-1 no-margin">
                                    <div class="image-favorito">
                                        <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                        $produto->getNoProdutoUrlAmigavel(); ?>">
                                            <?php
                                            echo Valida::GetMiniatura(
                                                'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                                $produto->getNoProduto(),
                                                150,
                                                150,
                                                'img-responsive'
                                            );
                                            ?>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-4 no-margin">
                                    <div class="title">
                                        <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                        $produto->getNoProdutoUrlAmigavel(); ?>"><?=
                                            Valida::Resumi($produto->getNoProduto(), 150);
                                            ?></a>
                                    </div><!-- /.title -->
                                    <div>
                                        <?php
                                        if ($produto->getUltimoCoProdutoDetalhe()->getNuEstoque() > 0) {
                                            ?>
                                            <span class="label label-success wishlist-in-stock">Com estoque</span>
                                        <?php } else { ?>
                                            <span class="label label-danger wishlist-in-stock">Sem estoque</span>
                                        <?php } ?>
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-3 no-margin">
                                    <div class="price">
                                <span class="amount">R$ <?=
                                    Valida::FormataMoeda(
                                        $produto->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                                    );
                                    ?></span>
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-3 no-margin">
                                    <div class="text-right">
                                        <div class="add-cart-button">
                                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                            $produto->getNoProdutoUrlAmigavel(); ?>"
                                               class="le-button">Ver Detalhes</a>
                                        </div>
                                    </div>
                                </div>

                            </div><!-- /.cart-item -->
                        <?php }
                    }
                    $display = 'block';
                    if (count($favoritos)) {
                        $display = 'none';
                    }
                        ?>
                        <div style="text-align: center; display: <?= $display; ?>" id="nenhum-favorito">
                            <h2>Nenhum produto adicionado aos favoritos!</h2>
                        </div>

                </div><!-- /.wishlist-table -->
            </div><!-- /.items-holder -->

        </div><!-- .large-->
    </div><!-- .row-->
</div>