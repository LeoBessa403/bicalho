<?php
$produtoController = new Produto();
/** @var ProdutoService $produtoService */
$produtoService = $produtoController->getService(PRODUTO_SERVICE);
$produtosDestacados =  $produtoService->pesquisaProdutos(3);
$produtosMaisVendidos =  $produtoService->pesquisaProdutos(3);
$produtosMaisProcurados =  $produtoService->pesquisaProdutos(3);
?>
<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="color-bg">

    <div class="container">
        <div class="row no-margin widgets-row">
            <div class="col-xs-12  col-sm-4 no-margin-left">
                <?php require PASTA_RAIZ.SITE. '/parts/widgets/footer/featured-products-footer.php'; ?>
            </div><!-- /.col -->

            <div class="col-xs-12 col-sm-4 ">
                <?php require PASTA_RAIZ.SITE. '/parts/widgets/footer/on-sale-products-footer.php'; ?>
            </div><!-- /.col -->

            <div class="col-xs-12 col-sm-4 ">
                <?php require PASTA_RAIZ.SITE. '/parts/widgets/footer/top-rated-products-footer.php'; ?>
            </div><!-- /.col -->

        </div><!-- /.widgets-row-->
    </div><!-- /.container -->

    <div class="sub-form-row">
        <div class="container">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 no-padding">
                <form role="form">
                    <input placeholder="Receba nossas promoções">
                    <button class="le-button">Se inscrever</button>
                </form>
            </div>
        </div><!-- /.container -->
    </div><!-- /.sub-form-row -->

    <div class="sub-form-row-2">
        <div class="container">
            <div class="col-xs-12 no-padding">
                <h2>Alguma Dúvida? clique e nos chame pelo
                    <a class="whatsapp" title="Nos chame no WhatSapp"
                       href="<?php Valida::geraLinkWhatSapp(Mensagens::ZAP03) ?>"
                       target="_blank">
                        <i class="fa fa-whatsapp"></i> WhatSapp
                    </a>
                </h2>
            </div>
        </div><!-- /.container -->
    </div><!-- /.sub-form-row -->

    <div class="link-list-row">
        <div class="container no-padding">
            <div class="col-xs-12 col-md-4 ">
                <?php require PASTA_RAIZ.SITE. '/parts/widgets/footer/contact-info-footer.php'; ?>
            </div>

            <div class="col-xs-12 col-md-8 no-margin">
                <?php require PASTA_RAIZ.SITE. '/parts/widgets/footer/links-footer.php'; ?>
            </div>
        </div><!-- /.container -->
    </div><!-- /.link-list-row -->

    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-margin">
                <div class="copyright">
                    &copy; Desenvolvimento Leo Bessa <?php echo date("Y"); ?>
                </div><!-- /.copyright -->
            </div>
        </div><!-- /.container -->
    </div><!-- /.copyright-bar -->

</footer><!-- /#footer -->
<!-- ============================================================= FOOTER : END ============================================================= -->