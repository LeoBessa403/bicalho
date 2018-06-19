<?php
$carouselID = isset($carouselID) ? $carouselID : 'owl-recently-viewed';
$containerClass = isset($containerClass) ? $containerClass : 'container';
$productItemSize = isset($productItemSize) ? $productItemSize : 'size-small';

$produtoController = new Produto();
/** @var ProdutoService $produtoService */
$produtoService = $produtoController->getService(PRODUTO_SERVICE);
$vistosRecentemente =  $produtoService->pesquisaProdutos(8);
?>
<!-- ========================================= RECENTLY VIEWED ========================================= -->
<section id="recently-reviewd" class="wow fadeInUp">
    <div class="<?php echo $containerClass; ?>">
        <div class="carousel-holder hover">

            <div class="title-nav">
                <h2 class="h1">visto recentemente</h2>
                <div class="nav-holder">
                    <a href="#prev" data-target="#<?php echo $carouselID; ?>"
                       class="slider-prev btn-prev fa fa-angle-left"></a>
                    <a href="#next" data-target="#<?php echo $carouselID; ?>"
                       class="slider-next btn-next fa fa-angle-right"></a>
                </div>
            </div><!-- /.title-nav -->

            <div id="<?php echo $carouselID; ?>" class="owl-carousel product-grid-holder">

                <?php
                /** @var ProdutoEntidade $produto */
                foreach ($vistosRecentemente as $produto) {
                    ?>
                    <div class="no-margin carousel-item product-item-holder <?php echo $productItemSize; ?> hover">
                        <div class="product-item">
                            <?php
                            if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                            ?>
                            <div class="ribbon red"><span>destaque</span></div>
                            <?php } ?>
                            <div class="image">
                                <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                $produto->getNoProdutoUrlAmigavel(); ?>">
                                    <?php
                                    echo Valida::GetMiniatura(
                                        'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                        $produto->getNoProduto(),
                                        194,
                                        134,
                                        'img-responsive'
                                    );
                                    ?>
                                </a>
                            </div>
                            <div class="body">
                                <?php
                                if (count($produto->getUltimoCoProdutoDetalhe()->getCoProdutoDestaque())) {
                                    ?>
                                    <div class="label-discount blue">10% desconto</div>
                                <?php }
                                if ($produto->getNuEstoque() < 1) {
                                    ?>
                                    <div class="label-discount red">Sem Estoque</div>
                                <?php } ?>
                                <div class="title">
                                    <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                    $produto->getNoProdutoUrlAmigavel(); ?>"><?=
                                        Valida::Resumi($produto->getNoProduto(), 30);
                                        ?></a>
                                </div>
                                <div class="brand"><?= $produto->getCoFabricante()->getNoFabricante(); ?></div>
                            </div>
                            <div class="prices">
                                <div class="price-current text-right">por <?=
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
                                <?php
                                    if(!empty($favoritos)){
                                ?>
                                <div class="wish-compare">
                                    <a  class="btn-add-to-wishlist <?=
                                    (in_array($produto->getCoProduto(), $favoritos))
                                        ? 'remove-favo' : 'add-favo';
                                    ;?>" href="#" title="Adicionar aos favoritos"
                                       data-co-produto="<?= $produto->getCoProduto(); ?>"> <?=
                                        (in_array($produto->getCoProduto(), $favoritos))
                                            ? 'Remove dos Favoritos' : 'Add aos Favoritos';
                                        ;?></a>
                                    <a class="btn-add-to-compare <?=
                                    (in_array($produto->getCoProduto(), $comparados))
                                        ? 'remove-compare' : 'add-compare';
                                    ;?>" href="#" title="Remove dos comparados"
                                       data-co-produto="<?= $produto->getCoProduto(); ?>"> <?=
                                        (in_array($produto->getCoProduto(), $comparados))
                                            ? 'Remove dos Comparados' : 'Add aos Comparados';
                                        ;?></a>
                                </div>
                                <?php } ?>
                            </div>
                        </div><!-- /.product-item -->
                    </div><!-- /.product-item-holder -->
                <?php } ?>

            </div><!-- /#recently-carousel -->

        </div><!-- /.carousel-holder -->
    </div><!-- /.container -->
</section><!-- /#recently-reviewd -->
<!-- ========================================= RECENTLY VIEWED : END ========================================= -->