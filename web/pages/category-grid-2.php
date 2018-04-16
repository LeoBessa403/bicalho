<?php
    $isListView = isset($_GET['view']) && ($_GET['view'] == 'list') ? true : false;
?>
<section id="category-grid">
    <div class="container">

        <!-- ========================================= SIDEBAR ========================================= -->
        <div class="col-xs-12 col-sm-3 no-margin sidebar narrow">

            <?php require PASTASITE.'/parts/widgets/sidebar/product-filter.php';?>

            <?php require PASTASITE.'/parts/widgets/sidebar/category-tree.php';?>

            <?php require PASTASITE.'/parts/widgets/sidebar/le-links.php';?>

            <?php require PASTASITE.'/parts/widgets/sidebar/sidebar-banner.php';?>

            <?php require PASTASITE.'/parts/widgets/sidebar/featured-products.php';?>

        </div>
        <!-- ========================================= SIDEBAR : END ========================================= -->

        <!-- ========================================= CONTENT ========================================= -->

        <div class="col-xs-12 col-sm-9 no-margin wide sidebar">

            <div id="grid-page-banner">
                <a href="#">
                    <img src="<?php echo PASTASITE; ?>images/banners/banner-gamer.jpg" alt="" />
                </a>
            </div>

            <?php require PASTASITE.'/parts/section/category-products.php';?>
                        
        </div><!-- /.col -->
        <!-- ========================================= CONTENT : END ========================================= -->    
    </div><!-- /.container -->
</section><!-- /#category-grid -->