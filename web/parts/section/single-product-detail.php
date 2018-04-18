<div class="no-margin col-xs-12 col-sm-7 body-holder">
    <div class="body">
        <div class="star-holder inline">
            <div class="star" data-score="4"></div>
        </div>
        <div class="availability"><label>Disponibilidade:</label><span class="available">  em estoque</span></div>

        <div class="title"><a href="#">VAIO fit laptop - windows 8 SVF14322CXW</a></div>
        <div class="brand">
            <a href="<?php echo PASTASITE; ?>Marcas/Index">sony</a>
        </div>
        <?php
        $produto = 'VAIO fit laptop - windows 8 SVF14322CXW - Marca - SONY'
        ?>

        <div class="social-row">
            <span title="Compartilhe no Facebook" class="st_facebook_hcount"></span>
            <span title="Compartilhe no Twitter" class="st_twitter_hcount"></span>
            <a class="whatsapp" title="Nos chame no WhatSapp"
               href="<?php Valida::geraLinkWhatSapp(Mensagens::ZAP05, [$produto]) ?>"
               target="_blank">
                <i class="fa fa-whatsapp"></i> WhatSapp
            </a>
        </div>

        <div class="buttons-holder">
            <a class="btn-add-to-wishlist" href="#">add aos favoritos</a>
            <a class="btn-add-to-compare" href="#">comparar</a>
        </div>

        <div class="excerpt">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare turpis non risus semper dapibus.
                Quisque eu vehicula turpis. Donec sodales lacinia eros, sit amet auctor tellus volutpat non.</p>
        </div>

        <div class="prices">
            <div class="price-current">R$1740.00</div>
            <div class="price-prev">de R$2199.00</div>
        </div>

        <div class="qnt-holder">
            <div class="le-quantity">
                <form>
                    <a class="minus" href="#reduce"></a>
                    <input name="quantity" readonly="readonly" type="text" value="1"/>
                    <a class="plus" href="#add"></a>
                </form>
            </div>
            <a id="addto-cart" href="index.php?page=cart" class="le-button huge">add ao carrinho</a>
        </div><!-- /.qnt-holder -->
    </div><!-- /.body -->

</div><!-- /.body-holder -->