<?php
$containerClass = isset($containerClass) ? $containerClass : 'container';
$hasSidebar = isset($hasSidebar) ? $hasSidebar : false;
/** @var ProdutoEntidade $prod */
$prod = $produtoPrincipal;
?>
<!-- ========================================= SINGLE PRODUCT TAB ========================================= -->
<section id="single-product-tab">

    <div class="<?php echo $containerClass; ?>">
        <div class="tab-holder">
            <h2 style="display: none;">Descrição Produto</h2>
            <ul class="nav nav-tabs simple">
                <li class="active"><a href="#description" data-toggle="tab">Descrição</a></li>
            </ul><!-- /.nav-tabs -->

            <div class="tab-content">
                <div class="tab-pane active" id="description">
                    <?= $prod->getDsDescricao(); ?>
                    <div class="meta-row">
                        <div class="inline">
                            <label>Código:</label>
                            <span><?= $prod->getNuCodigoInterno(); ?></span>
                        </div><!-- /.inline -->

                        <span class="seperator">/</span>

                        <div class="inline">
                            <label>categoria:</label>
                            <span><a href="<?= PASTASITE; ?>Categorias/ListarCategorias/<?=
                                $prod->getCoCategoria()->getNoCategoriaUrlAmigavel(); ?>">
                                    <?= $prod->getCoCategoria()->getNoCategoria(); ?></a>
                            </span>
                        </div><!-- /.inline -->

                        <span class="seperator">/</span>

                        <div class="inline">
                            <label>Segmento:</label>
                            <span><a href="<?= PASTASITE; ?>Segmentos/ListarSegmentos/<?=
                                $prod->getCoCategoria()->getCoSegmento()->getNoSegmentoUrlAmigavel(); ?>">
                                    <?= $prod->getCoCategoria()->getCoSegmento()->getDsSegmento(); ?></a>
                            </span>
                        </div><!-- /.inline -->
                    </div><!-- /.meta-row -->
                </div><!-- /.tab-pane #description -->
            </div><!-- /.tab-holder -->
        </div><!-- /.container -->
</section><!-- /#single-product-tab -->
<!-- ========================================= SINGLE PRODUCT TAB : END ========================================= -->