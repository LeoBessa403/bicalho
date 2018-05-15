<!-- ========================================= GRID PRODUTOS ========================================= -->
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
            $produto->getNoProdutoUrlAmigavel(); ?>">
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
                $produto->getNoProdutoUrlAmigavel(); ?>"><?=
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
                $produto->getNoProdutoUrlAmigavel(); ?>"
                   class="le-button">Ver Detalhes</a>
            </div>
            <div class="wish-compare">
                <a class="btn-add-to-wishlist" href="#">add aos
                    favoritos</a>
                <a class="btn-add-to-compare" href="#">compare</a>
            </div>
        </div>
    </div><!-- /.product-item -->
</div><!-- /.product-item-holder -->
<!-- ========================================= GRID PRODUTOS : END ========================================= -->