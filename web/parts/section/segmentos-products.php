<?php
/** @var SegmentoEntidade $segment */
$segment = $segmento;
/** @var SegmentoEntidade $seg */
$seg = $segmento;
?>
<section id="gaming">
    <div class="grid-list-products">
        <h2 class="section-title">Segmento <?php
            if (count($segmento) == 1)
                echo $segment->getDsSegmento();
            ?></h2>

        <?php require PASTA_RAIZ . SITE . '/parts/section/control-bar.php'; ?>
        <div class="tab-content">
            <div id="grid-view" class="products-grid fade tab-pane <?php if (!$isListView) echo 'in active'; ?>">
                <div class="product-grid-holder">
                    <div class="row no-margin">

                        <?php
                        $i = 0;
                        if (count($seg->getCoCategoria())) {
                            /** @var CategoriaEntidade $cat */
                            foreach ($seg->getCoCategoria() as $cat) {
                                if (count($cat->getCoProduto())) {
                                    /** @var ProdutoEntidade $prod */
                                    foreach ($cat->getCoProduto() as $prod) {
                                        /** @var ProdutoEntidade $produto */
                                        $produto = $produtoService->PesquisaUmRegistro($prod->getCoProduto());
                                        ?>
                                        <?php require PASTA_RAIZ . SITE . '/parts/section/grid-produtos.php'; ?>
                                        <?php
                                    }
                                }
                            }
                        } ?>


                    </div><!-- /.row -->
                </div><!-- /.product-grid-holder -->

                <?php require PASTA_RAIZ . SITE . '/parts/section/pagination.php'; ?>
            </div><!-- /.products-grid #grid-view -->

            <div id="list-view" class="products-grid fade tab-pane <?php if ($isListView) echo 'active in'; ?>">
                <div class="products-list">

                    <?php
                    $i = 0;
                    /** @var SegmentoEntidade $segmen */
                    foreach ($seg as $segmen) {
                        if (count($segmen->getCoCategoria())) {
                            /** @var CategoriaEntidade $cat */
                            foreach ($segmen->getCoCategoria() as $cat) {
                                if (count($cat->getCoProduto())) {
                                    /** @var ProdutoEntidade $prod */
                                    foreach ($cat->getCoProduto() as $prod) {
                                        /** @var ProdutoEntidade $produto */
                                        $produto = $produtoService->PesquisaUmRegistro($prod->getCoProduto());
                                        ?>
                                        <?php require PASTA_RAIZ . SITE . '/parts/section/list-produtos.php'; ?>
                                        <?php
                                    }
                                }
                            }
                        }
                    } ?>


                </div><!-- /.products-list -->

                <?php require PASTA_RAIZ . SITE . '/parts/section/pagination.php'; ?>

            </div><!-- /.products-grid #list-view -->

        </div><!-- /.tab-content -->
    </div><!-- /.grid-list-products -->

</section><!-- /#gaming -->