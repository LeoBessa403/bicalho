<!-- ========================================= HOME BANNERS ========================================= -->
<section id="banner-holder" class="wow fadeInUp">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-6 col-sm-6 col-lg-6 banner">
                <a href="<?php echo PASTASITE; ?>Categorias/ListarCategorias">
                    <div class="banner-text theblue">
                        <h1>Equipamentos</h1>
                        <span class="tagline">Toda Linha de refrigeração</span>
                    </div>
                    <?php
                    echo Valida::GetMiniatura(
                        'banner/banner01.jpg',
                        'Toda Linha de refrigeração',
                        570,
                        157,
                        'banner-image img-responsive'
                    );
                    ?>
                </a>
            </div>
            <div class="col-xs-12 col-md-6 col-sm-6 col-lg-6 text-right banner">
                <a href="<?php echo PASTASITE; ?>Categorias/ListarCategorias">
                    <div class="banner-text right">
                        <h1>Refrigeração Comercial</h1>
                        <span class="tagline">Nossa linha completa</span>
                    </div>
                    <?php
                    echo Valida::GetMiniatura(
                        'banner/banner02.jpg',
                        'Refrigeração Comercial',
                        570,
                        157,
                        'banner-image img-responsive'
                    );
                    ?>
                </a>
            </div>
        </div>
    </div><!-- /.container -->
</section><!-- /#banner-holder -->
<!-- ========================================= HOME BANNERS : END ========================================= -->