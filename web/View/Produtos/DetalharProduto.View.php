<section class="sidebar-page">
    <h1 style="display: none;"><?= $produtoPrincipal->getNoProduto() . ' - ' .
        $produtoPrincipal->getCoFabricante()->getNoFabricante() . ' | ' . DESC; ?></h1>
    <div class="container">
        <!-- ========================================= SIDEBAR ========================================= -->
        <div class="col-xs-12 col-sm-3 no-margin sidebar narrow">

            <?php require PASTA_RAIZ . SITE . '/parts/widgets/sidebar/product-filter.php'; ?>

            <?php require PASTA_RAIZ . SITE . '/parts/widgets/sidebar/category-tree.php'; ?>

            <?php require PASTA_RAIZ . SITE . '/parts/widgets/sidebar/le-links.php'; ?>

            <?php require PASTA_RAIZ . SITE . '/parts/widgets/sidebar/sidebar-banner.php'; ?>

            <?php require PASTA_RAIZ . SITE . '/parts/widgets/sidebar/featured-products.php'; ?>

        </div>
        <!-- ========================================= SIDEBAR : END ========================================= -->

        <!-- ========================================= CONTENT ========================================= -->

        <div class="col-xs-12 col-sm-9 no-margin wide sidebar page-main-content">
            <div id="single-product" class="row">

                <?php require PASTA_RAIZ . SITE . '/parts/section/single-product-gallery.php'; ?>

                <?php require PASTA_RAIZ . SITE . '/parts/section/single-product-detail.php'; ?>

            </div><!-- /.row #single-product -->

            <?php
            $containerClass = 'no-container';
            $hasSidebar = true;
            require PASTA_RAIZ . SITE . '/parts/section/single-product-tab.php';
            ?>

            <?php
            $carouselID = 'owl-recently-viewed-2';
            $containerClass = 'no-container';
            $productItemSize = 'size-medium';
            require PASTA_RAIZ . SITE . '/parts/section/recently-viewed.php';
            ?>

        </div><!-- /.page-main-content -->
        <!-- ========================================= CONTENT : END ========================================= -->

    </div><!-- /.container -->
</section><!-- /.sidebar-page -->