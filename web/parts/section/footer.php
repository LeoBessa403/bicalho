<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="color-bg">

    <div class="container">
        <div class="row no-margin widgets-row">
            <div class="col-xs-12  col-sm-4 no-margin-left">
                <?php require PASTASITE . '/parts/widgets/footer/featured-products-footer.php'; ?>
            </div><!-- /.col -->

            <div class="col-xs-12 col-sm-4 ">
                <?php require PASTASITE . '/parts/widgets/footer/on-sale-products-footer.php'; ?>
            </div><!-- /.col -->

            <div class="col-xs-12 col-sm-4 ">
                <?php require PASTASITE . '/parts/widgets/footer/top-rated-products-footer.php'; ?>
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
                       href="https://api.whatsapp.com/send?phone=<?php echo WHATSAPP; ?>&text=Vi%20no%20site%20o%20item:%20%20e%20gostaria%20de%20saber%20mais%20sobre%20o%20mesmo!&l=pt_BR"
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
                <?php require PASTASITE . '/parts/widgets/footer/contact-info-footer.php'; ?>
            </div>

            <div class="col-xs-12 col-md-8 no-margin">
                <?php require PASTASITE . '/parts/widgets/footer/links-footer.php'; ?>
            </div>
        </div><!-- /.container -->
    </div><!-- /.link-list-row -->

    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-margin">
                <div class="copyright">
                    &copy; DESENVOLVIMENTO LEO BESSA <?php echo date("Y"); ?>
                </div><!-- /.copyright -->
            </div>
        </div><!-- /.container -->
    </div><!-- /.copyright-bar -->

</footer><!-- /#footer -->
<!-- ============================================================= FOOTER : END ============================================================= -->