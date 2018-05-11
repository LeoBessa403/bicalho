<!-- ========================================= HOME BANNERS ========================================= -->
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
                    <div class="star-holder inline">
                        <div class="star" data-score="<?=
                        rand(3, 5);
                        ?>"></div>
                    </div>
                    <?= Valida::Resumi($produto->getDsDescricao(), 300); ?>
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
                <div class="clear"></div>
            </div>
        </div><!-- /.price-area -->
    </div><!-- /.row -->
</div><!-- /.product-item -->
<!-- ========================================= HOME BANNERS : END ========================================= -->