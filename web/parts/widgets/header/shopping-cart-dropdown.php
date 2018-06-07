<?php
    $produto = new Produtos();
    $favoritos = $produto->getProdutosFavoritos();
    $comparados = $produto->getProdutosComparados();
?>
<div class="top-cart-row-container">
    <div class="wishlist-compare-holder">
        <div class="wishlist">
            <a href="<?php echo PASTASITE; ?>Produtos/DetalharFavoritos"><i class="fa fa-heart"></i>Favoritos (<span
                        class="value"><?= count($favoritos); ?></span>) </a>
        </div>
        <div class="compare">
            <a href="<?php echo PASTASITE; ?>Produtos/ComparaProdutos"><i class="fa fa-exchange"></i>Compare (<span
                        class="value"><?= count($comparados); ?></span>) </a>
        </div>
    </div>

    <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
    <div class="top-cart-holder dropdown animate-dropdown">
        <div class="basket">
            <ul class="dropdown-menu">
                <li>
                    <div class="basket-item">
                        <div class="row">
                            <div class="col-xs-4 col-sm-4 no-margin text-center">
                                <div class="thumb">
                                    <img alt="" src="<?php echo PASTASITE; ?>images/products/product-small-01.jpg"/>
                                </div>
                            </div>
                            <div class="col-xs-8 col-sm-8 no-margin">
                                <div class="title">Blueberry</div>
                                <div class="price">R$270.00</div>
                            </div>
                        </div>
                        <a class="close-btn" href="#"></a>
                    </div>
                </li>
                <li>
                    <div class="basket-item">
                        <div class="row">
                            <div class="col-xs-4 col-sm-4 no-margin text-center">
                                <div class="thumb">
                                    <img alt="" src="<?php echo PASTASITE; ?>images/products/product-small-01.jpg"/>
                                </div>
                            </div>
                            <div class="col-xs-8 col-sm-8 no-margin">
                                <div class="title">Blueberry</div>
                                <div class="price">R$270.00</div>
                            </div>
                        </div>
                        <a class="close-btn" href="#"></a>
                    </div>
                </li>
                <li>
                    <div class="basket-item">
                        <div class="row">
                            <div class="col-xs-4 col-sm-4 no-margin text-center">
                                <div class="thumb">
                                    <img alt="" src="<?php echo PASTASITE; ?>images/products/product-small-01.jpg"/>
                                </div>
                            </div>
                            <div class="col-xs-8 col-sm-8 no-margin">
                                <div class="title">Blueberry</div>
                                <div class="price">R$270.00</div>
                            </div>
                        </div>
                        <a class="close-btn" href="#"></a>
                    </div>
                </li>
                <li class="checkout">
                    <div class="basket-item">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6">
                                <a href="index.php?page=cart" class="le-button inverse">View cart</a>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <a href="index.php?page=checkout" class="le-button">Checkout</a>
                            </div>
                        </div>
                    </div>
                </li>

            </ul>
        </div><!-- /.basket -->
    </div><!-- /.top-cart-holder -->
</div><!-- /.top-cart-row-container -->
<!-- ============================================================= SHOPPING CART DROPDOWN : END ============================================================= -->