<?php
    $isListView = isset($_GET['view']) && ($_GET['view'] == 'list') ? true : false;
?>
<section id="category-grid">
    <div class="container">
        
        <!-- ========================================= SIDEBAR ========================================= -->
        <div class="col-xs-12 col-sm-3 no-margin sidebar narrow">

            <?php require PASTA_RAIZ.SITE. '/parts/widgets/sidebar/product-filter.php';?>

            <?php require PASTA_RAIZ.SITE. '/parts/widgets/sidebar/special-offers.php';?>

            <?php require PASTA_RAIZ.SITE. '/parts/widgets/sidebar/sidebar-banner.php';?>

            <?php require PASTA_RAIZ.SITE. '/parts/widgets/sidebar/featured-products.php';?>

        </div>
        <!-- ========================================= SIDEBAR : END ========================================= -->

        <!-- ========================================= CONTENT ========================================= -->

        <div class="col-xs-12 col-sm-9 no-margin wide sidebar">

            <?php require PASTA_RAIZ.SITE. '/parts/section/recommended-products.php';?>
            
            <?php require PASTA_RAIZ.SITE. '/parts/section/category-products.php';?>
            
        </div><!-- /.col -->
        <!-- ========================================= CONTENT : END ========================================= -->    
    </div><!-- /.container -->
</section><!-- /#category-grid -->