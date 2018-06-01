<!-- ========================================= Marcas destaques ========================================= -->
<section id="top-brands" class="wow fadeInUp">
    <div class="container">
        <div class="carousel-holder" >
            
            <div class="title-nav">
                <h1>Fabricantes parceiros</h1>
                <div class="nav-holder">
                    <a href="#prev" data-target="#owl-brands" class="slider-prev btn-prev fa fa-angle-left"></a>
                    <a href="#next" data-target="#owl-brands" class="slider-next btn-next fa fa-angle-right"></a>
                </div>
            </div><!-- /.title-nav -->
            
            <div id="owl-brands" class="owl-carousel brands-carousel">
                <?php
                    foreach ($fabricantesDestaque as $fabricante){
                ?>
                <div class="carousel-item">
                    <a href="<?php echo PASTASITE; ?>Fabricantes/ListarFabricantes/<?=
                    $fabricante[NO_FABRICANTE_URL_AMIGAVEL]; ?>">
                        <?=
                        Valida::GetMiniatura(
                            'Fabricantes/' . $fabricante[DS_CAMINHO],
                            $fabricante[NO_FABRICANTE_URL_AMIGAVEL],
                            250,
                            180,
                            'img-responsive'
                        );
                        ?>
                    </a>
                </div><!-- /.carousel-item -->
                
               <?php } ?>

            </div><!-- /.brands-caresoul -->

        </div><!-- /.carousel-holder -->
    </div><!-- /.container -->
</section><!-- /#top-brands -->
<!-- ========================================= Marcas destaques : END ========================================= -->