<div class="no-margin col-xs-12 col-sm-6 col-md-5 gallery-holder">
    <div class="product-item-holder size-big single-product-gallery small-gallery">

        <div id="owl-single-product" class="owl-carousel">

            <!--    CARREGA A CAPA DO PRODUTO        -->
            <div class="single-product-gallery-item" id="slide<?= $produto->getCoImagem()->getCoImagem(); ?>">
                <a data-rel="prettyphoto" target="_blank"
                   href="<?= HOME . 'uploads/ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(); ?>">
                    <?=
                    Valida::GetMiniatura(
                        'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                        $produto->getNoProduto(),
                        500,
                        400,
                        'img-responsive'
                    );
                    ?>
                </a>
            </div>

            <!--    CARREGA OUTRAS IMAGENS DO PRODUTO        -->
            <?php
            if (count($produto->getCoProdutoImagem())) {
                /** @var ProdutoImagemEntidade $imagemProduto */
                foreach ($produto->getCoProdutoImagem() as $imagemProduto) {
                    echo '<div class="single-product-gallery-item" 
                                id="slide' . $imagemProduto->getCoImagem()->getCoImagem() . '">';
                    echo '<a data-rel="prettyphoto" target="_blank"
                   href="' . HOME . 'uploads/' . $imagemProduto->getCoImagem()->getDsCaminho() . '">';
                    echo Valida::GetMiniatura(
                        $imagemProduto->getCoImagem()->getDsCaminho(),
                        $imagemProduto->getCoProduto()->getNoProduto(),
                        500,
                        400,
                        'img-responsive'
                    );
                    echo '</a></div>';
                }
            }

            // CARREGA VÍDEO
            if ($produto->getDsCaminhoVideo()) {
                echo '<div class="single-product-gallery-item" 
                                id="slide-video' . $produto->getCoImagem()->getCoImagem() . '">';
                echo '<a data-rel="prettyphoto" target="_blank"
                   href="' . $produto->getDsCaminhoVideo() . '">';
                echo Valida::GetMiniatura(
                    'youtube-vid.jpg',
                    'Ver Vídeo',
                    500,
                    400,
                    'img-responsive'
                );
                echo '</a></div>';
            }
            ?>
        </div><!-- /.single-product-slider -->

        <div class="single-product-gallery-thumbs gallery-thumbs">
            <div id="owl-single-product-thumbnails" class="owl-carousel">
                <!-- CARREGA A MINIATURA DA IMAGEM DE CAPA DO PRODUTO-->
                <?php
                echo '<div class="single-product-gallery-item" 
                                data-id="slide' . $produto->getCoImagem()->getCoImagem() . '">';
                echo Valida::GetMiniatura(
                    'ProdutosCapa/' . $produto->getCoImagem()->getDsCaminho(),
                    $produto->getNoProduto(),
                    50,
                    50,
                    'img-responsive'
                );
                echo '</div>';
                // CARREGA A MINIATURA DAS IMAGEM DO PRODUTO
                if (count($produto->getCoProdutoImagem())) {
                    /** @var ProdutoImagemEntidade $imagemProduto */
                    foreach ($produto->getCoProdutoImagem() as $imagemProduto) {
                        echo '<div class="single-product-gallery-item" 
                                data-id="slide' . $imagemProduto->getCoImagem()->getCoImagem() . '">';
                        echo Valida::GetMiniatura(
                            $imagemProduto->getCoImagem()->getDsCaminho(),
                            $imagemProduto->getCoProduto()->getNoProduto(),
                            50,
                            50,
                            'img-responsive'
                        );
                        echo '</div>';
                    }
                }

                // CARREGA VÍDEO
                if ($produto->getDsCaminhoVideo()) {
                    echo '<div class="single-product-gallery-item" 
                                data-id="slide-video' . $produto->getCoImagem()->getCoImagem() . '">';
                    echo Valida::GetMiniatura(
                        'youtube-vid.jpg',
                        'Ver Vídeo',
                        50,
                        50,
                        'img-responsive'
                    );
                    echo '</div>';
                }

                // CARREGA MANUAL
                if ($produto->getDsCaminhoManual()) {
                    echo '<div class="single-product-gallery-item" 
                                data-id="slide-manual' . $produto->getCoImagem()->getCoImagem() . '">';
                    echo '<a data-rel="prettyphoto" target="_blank"
                   href="' . $produto->getDsCaminhoManual() . '">';
                    echo Valida::GetMiniatura(
                        'download.jpg',
                        'Ver Vídeo',
                        50,
                        50,
                        'img-responsive'
                    );
                    echo '</a></div>';
                }
                ?>
            </div><!-- /#owl-single-product-thumbnails -->

            <div class="nav-holder left hidden-xs">
                <a class="prev-btn slider-prev" data-target="#owl-single-product-thumbnails" href="#prev"></a>
            </div><!-- /.nav-holder -->

            <div class="nav-holder right hidden-xs">
                <a class="next-btn slider-next" data-target="#owl-single-product-thumbnails" href="#next"></a>
            </div><!-- /.nav-holder -->

        </div><!-- /.gallery-thumbs -->

    </div><!-- /.single-product-gallery -->
</div><!-- /.gallery-holder -->