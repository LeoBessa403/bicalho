<!-- ========================================= BEST SELLERS ========================================= -->
<section id="bestsellers" class="color-bg wow fadeInUp">
    <div class="container">
        <h1 class="section-title">Mais vendidos</h1>

        <div class="product-grid-holder medium">
            <div class="col-xs-12 col-md-7 no-margin">
                <div class="row no-margin">
                    <?php
                    $i = 0;
                    /** @var ProdutoEntidade $produto */
                    foreach ($maisVendidos  as $produto) {
                    ?>
                    <article class="col-xs-12 col-sm-4 no-margin product-item-holder size-medium hover">
                        <h1 style="display: none;"><?= $produto->getNoProduto() . ' - ' .
                            $produto->getCoFabricante()->getNoFabricante() . ' | ' . DESC; ?></h1>
                        <div class="product-item">
                            <div class="image">
                                <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                $produto->getNoProdutoUrlAmigavel(); ?>">
                                    <?php
                                    echo Valida::GetMiniatura(
                                        'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                                        $produto->getNoProduto(),
                                        194,
                                        143,
                                        'img-responsive'
                                    );
                                    ?>
                                </a>
                            </div>
                            <div class="body">
                                <div class="label-discount clear"></div>
                                <div class="title">
                                    <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                    $produto->getNoProdutoUrlAmigavel(); ?>"><?=
                                        Valida::Resumi($produto->getNoProduto(), 40);
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
                            </div>
                        </div>
                    </article><!-- /.product-item-holder -->
                    <?php if ($i == 2) { ?>
                </div><!-- /.row -->
                <div class="row no-margin">
                    <?php }
                    $i++;
                    } ?>
                </div><!-- /.row -->
            </div><!-- /.col -->
            <div class="col-xs-12 col-md-5 no-margin">
                <div class="product-item-holder size-big single-product-gallery small-gallery">
                    <div id="best-seller-single-product-slider" class="single-product-slider owl-carousel">
                        <div class="single-product-gallery-item" id="slide<?=
                        $bemMaisVendidos->getCoImagem()->getCoImagem();
                        ?>">
                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                            $bemMaisVendidos->getNoProdutoUrlAmigavel(); ?>">
                                <?php
                                echo Valida::GetMiniatura(
                                    'ProdutosCapa/' . $bemMaisVendidos->getCoImagem()->getDsCaminho(),
                                    $bemMaisVendidos->getNoProduto(),
                                    433,
                                    325,
                                    'img-responsive'
                                );
                                ?>
                            </a>
                        </div><!-- /.single-product-gallery-item -->

                        <!--    CARREGA OUTRAS IMAGENS DO PRODUTO        -->
                        <?php
                        if (count($bemMaisVendidos->getCoProdutoImagem())) {
                            /** @var ProdutoImagemEntidade $imagemProduto */
                            foreach ($bemMaisVendidos->getCoProdutoImagem() as $imagemProduto) {
                                ?>
                                <article class="single-product-gallery-item" id="slide<?=
                                $imagemProduto->getCoImagem()->getCoImagem();
                                ?>">
                                    <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                        $imagemProduto->getCoProduto()->getNoProdutoUrlAmigavel(); ?>">
                                        <?php
                                        echo Valida::GetMiniatura(
                                            $imagemProduto->getCoImagem()->getDsCaminho(),
                                            $bemMaisVendidos->getNoProduto(),
                                            433,
                                            325,
                                            'img-responsive'
                                        );
                                        ?>
                                    </a>
                                </article><!-- /.single-product-gallery-item -->
                            <?php }
                        } ?>
                    </div><!-- /.single-product-slider -->

                    <div class="gallery-thumbs clearfix">
                        <ul>
                            <li>
                                <a class="horizontal-thumb active" data-target="#best-seller-single-product-slider"
                                   data-slide="0" href="#slide<?= $bemMaisVendidos->getCoProduto(); ?>"
                                   href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                   $bemMaisVendidos->getNoProdutoUrlAmigavel(); ?>">
                                    <?php
                                    echo Valida::GetMiniatura(
                                        'ProdutosCapa/' . $bemMaisVendidos->getCoImagem()->getDsCaminho(),
                                        $bemMaisVendidos->getNoProduto(),
                                        67,
                                        60,
                                        'img-responsive '
                                    );
                                    ?>
                                </a>
                            </li>

                            <!--    CARREGA OUTRAS IMAGENS DO PRODUTO        -->
                            <?php
                            if (count($bemMaisVendidos->getCoProdutoImagem())) {
                                /** @var ProdutoImagemEntidade $imagemProduto */
                                foreach ($bemMaisVendidos->getCoProdutoImagem() as $imagemProduto) {
                                    ?>
                                    <li><a class="horizontal-thumb"
                                           data-target="#best-seller-single-product-slider"
                                           data-slide="0"
                                           href="#slide<?= $imagemProduto->getCoProduto()->getCoProduto(); ?>"
                                           href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                                           $bemMaisVendidos->getNoProdutoUrlAmigavel(); ?>">
                                            <?php
                                            echo Valida::GetMiniatura(
                                                $imagemProduto->getCoImagem()->getDsCaminho(),
                                                $bemMaisVendidos->getNoProduto(),
                                                67,
                                                60,
                                                'img-responsive'
                                            );
                                            ?>
                                        </a></li>
                                <?php }
                            } ?>
                        </ul>
                    </div><!-- /.gallery-thumbs -->

                    <div class="body">
                        <div class="label-discount clear"></div>
                        <div class="title">
                            <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                            Valida::GeraParametro(CO_PRODUTO . "/" .
                                $bemMaisVendidos->getCoProduto()); ?>"><?=
                                Valida::Resumi($bemMaisVendidos->getNoProduto(), 100);
                                ?></a>
                        </div>
                        <div class="brand"><?= $bemMaisVendidos->getCoFabricante()->getNoFabricante(); ?></div>
                    </div>
                    <div class="prices text-right">
                        <div class="price-current inline"><?=
                            Valida::FormataMoeda(
                                $bemMaisVendidos->getUltimoCoProdutoDetalhe()->getNuPrecoVenda()
                            );
                            ?></div>
                        <a href="<?= PASTASITE; ?>Produtos/DetalharProduto/<?=
                        $bemMaisVendidos->getNoProdutoUrlAmigavel(); ?>"
                           class="le-button big inline">Ver Detalhes</a>
                    </div>
                </div><!-- /.product-item-holder -->
            </div><!-- /.col -->
        </div><!-- /.product-grid-holder -->
    </div><!-- /.container -->
</section><!-- /#bestsellers -->
<!-- ========================================= BEST SELLERS : END ========================================= -->