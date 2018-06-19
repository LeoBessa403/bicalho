<?php
$produtoRecController = new Produto();
/** @var ProdutoService $produtoRecService */
$produtoRecService = $produtoRecController->getService(PRODUTO_SERVICE);
$vistosRecentementes = $produtoRecService->pesquisaProdutos(8);
?>
<section id="recommended-products" class="carousel-holder hover small">

    <div class="title-nav">
        <h2 class="inverse">produtos recomendados</h2>
        <div class="nav-holder">
            <a href="#prev" data-target="#owl-recommended-products" class="slider-prev btn-prev fa fa-angle-left"></a>
            <a href="#next" data-target="#owl-recommended-products" class="slider-next btn-next fa fa-angle-right"></a>
        </div>
    </div><!-- /.title-nav -->

    <div id="owl-recommended-products" class="owl-carousel product-grid-holder">


        <?php
        /** @var ProdutoEntidade $produtoRec */
        foreach ($vistosRecentementes as $produtoRec) {
            ?>
            <article class="no-margin carousel-item product-item-holder <?php echo $productItemSize; ?> hover">
                <div class="product-item">
                    <?php
                    if (count($produtoRec->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                        ?>
                        <div class="ribbon red"><span>destaque</span></div>
                    <?php } ?>
                    <div class="image">
                        <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                        $produtoRec->getNoProdutoUrlAmigavel(); ?>">
                            <?php
                            echo Valida::GetMiniatura(
                                'ProdutosCapa/' . $produtoRec->getCoImagem()->getDsCaminho(),
                                $produtoRec->getNoProduto(),
                                194,
                                134,
                                'img-responsive'
                            );
                            ?>
                        </a>
                    </div>
                    <div class="body">
                        <?php
                        if (count($produtoRec->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                            ?>
                            <div class="label-discount blue">10% desconto</div>
                        <?php }
                        if ($produtoRec->getNuEstoque() < 1) {
                            ?>
                            <div class="label-discount red">Sem Estoque</div>
                        <?php } ?>
                        <div class="title">
                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                            $produtoRec->getNoProdutoUrlAmigavel(); ?>"><?=
                                Valida::Resumi($produtoRec->getNoProduto(), 30);
                                ?></a>
                        </div>
                        <div class="brand"><?= $produtoRec->getCoFabricante()->getNoFabricante(); ?></div>
                    </div>
                    <div class="prices">
                        <div class="price-current text-right">por <?=
                            Valida::FormataMoeda(
                                $produtoRec->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                            );
                            ?></div>
                    </div>
                    <div class="hover-area">
                        <div class="add-cart-button">
                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                            $produtoRec->getNoProdutoUrlAmigavel(); ?>"
                               class="le-button">Ver Detalhes</a>
                        </div>
                        <div class="wish-compare">
                            <a  class="btn-add-to-wishlist <?=
                            (in_array($produtoRec->getCoProduto(), $favoritos))
                                ? 'remove-favo' : 'add-favo';
                            ;?>" href="#" title="Adicionar aos favoritos"
                               data-co-produto="<?= $produtoRec->getCoProduto(); ?>"> <?=
                                (in_array($produtoRec->getCoProduto(), $favoritos))
                                    ? 'Remove dos Favoritos' : 'Add aos Favoritos';
                                ;?></a>
                            <a class="btn-add-to-compare <?=
                            (in_array($produtoRec->getCoProduto(), $comparados))
                                ? 'remove-compare' : 'add-compare';
                            ;?>" href="#" title="Remove dos comparados"
                               data-co-produto="<?= $produtoRec->getCoProduto(); ?>"> <?=
                                (in_array($produtoRec->getCoProduto(), $comparados))
                                    ? 'Remove dos Comparados' : 'Add aos Comparados';
                                ;?></a>
                        </div>
                    </div>
                </div><!-- /.product-item -->
            </article><!-- /.product-item-holder -->
        <?php } ?>


    </div><!-- /#recommended-products-carousel .owl-carousel -->
</section><!-- /.carousel-holder -->