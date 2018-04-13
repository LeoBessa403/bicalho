<div class="no-margin col-xs-12 col-sm-7 body-holder">
    <div class="body">
        <div class="star-holder inline"><div class="star" data-score="4"></div></div>
        <div class="availability"><label>Disponibilidade:</label><span class="available">  em estoque</span></div>

        <div class="title"><a href="#">VAIO fit laptop - windows 8 SVF14322CXW</a></div>
        <div class="brand">
            <a href="<?php echo PASTASITE; ?>Marcas/Index">sony</a>
        </div>
        <?php
            $produto = 'VAIO%20fit%20laptop%20-%20windows%208%20SVF14322CXW%20-%20Marca%20-%20SONY'
        ?>

        <div class="social-row">
            <span class="st_facebook_hcount"></span>
            <span class="st_twitter_hcount"></span>
            <a class="whatsapp" title="Nos chame no WhatSapp"
               href="https://api.whatsapp.com/send?phone=5561993704240&text=Vi%20no%20site%20o%20item:%20<?php
                    echo $produto;
               ?>%20e%20gostaria%20de%20saber%20mais%20sobre%20o%20mesmo!&l=pt_BR"
               target="_blank">
           <i class="fa fa-whatsapp"></i> WhatSapp
            </a>
        </div>

        <div class="buttons-holder">
            <a class="btn-add-to-wishlist" href="#">add aos favoritos</a>
            <a class="btn-add-to-compare" href="#">comparar</a>
        </div>

        <div class="excerpt">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare turpis non risus semper dapibus. Quisque eu vehicula turpis. Donec sodales lacinia eros, sit amet auctor tellus volutpat non.</p>
        </div>
        
        <div class="prices">
            <div class="price-current">R$1740.00</div>
            <div class="price-prev">de R$2199.00</div>
        </div>

        <div class="qnt-holder">
            <div class="le-quantity">
                <form>
                    <a class="minus" href="#reduce"></a>
                    <input name="quantity" readonly="readonly" type="text" value="1" />
                    <a class="plus" href="#add"></a>
                </form>
            </div>
            <a id="addto-cart" href="index.php?page=cart" class="le-button huge">add ao carrinho</a>
        </div><!-- /.qnt-holder -->
    </div><!-- /.body -->

</div><!-- /.body-holder -->