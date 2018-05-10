<?php
    $containerClass = isset($containerClass) ? $containerClass : 'container';
    $hasSidebar = isset($hasSidebar) ? $hasSidebar : false;
    /** @var ProdutoEntidade $produto */
    $prod = $produto;
?>
<!-- ========================================= SINGLE PRODUCT TAB ========================================= -->
<section id="single-product-tab">
    <div class="<?php echo $containerClass;?>">
        <div class="tab-holder">
            
            <ul class="nav nav-tabs simple" >
                <li class="active"><a href="#description" data-toggle="tab">Descrição</a></li>
            </ul><!-- /.nav-tabs -->

            <div class="tab-content">
                <div class="tab-pane active" id="description">
                    <?= $prod->getDsDescricao(); ?>
                    <div class="meta-row">
                        <div class="inline">
                            <label>Código:</label>
                            <span><?= $prod->getNuCodigoInterno(); ?></span>
                        </div><!-- /.inline -->

                        <span class="seperator">/</span>

                        <div class="inline">
                            <label>categorias:</label>
                            <span><a href="#"><?= $prod->getCoCategoria()->getNoCategoria(); ?></a></span>
                        </div><!-- /.inline -->

                        <span class="seperator">/</span>

                        <div class="inline">
                            <label>Segmento:</label>
                            <span><a href="#"><?= $prod->getCoCategoria()->getCoSegmento()->getDsSegmento(); ?></a></span>
                        </div><!-- /.inline -->
                    </div><!-- /.meta-row -->
                </div><!-- /.tab-pane #description -->

                <div class="tab-pane" id="reviews">
                    <div class="comments">
                        <div class="comment-item">
                            <div class="row no-margin">
                                <div class="col-lg-1 col-xs-12 col-sm-2 no-margin">
                                    <div class="avatar">
                                        <img alt="avatar" src="<?php echo PASTASITE; ?>images/default-avatar.jpg">
                                    </div><!-- /.avatar -->
                                </div><!-- /.col -->

                                <div class="col-xs-12 col-lg-11 col-sm-10 <?php if(!$hasSidebar):?>no-margin<?php endif;?>">
                                    <div class="comment-body">
                                        <div class="meta-info">
                                            <div class="author inline">
                                                <a href="#" class="bold">John Smith</a>
                                            </div>
                                            <div class="star-holder inline">
                                                <div class="star" data-score="4"></div>
                                            </div>
                                            <div class="date inline pull-right">
                                                12.07.2013
                                            </div>
                                        </div><!-- /.meta-info -->
                                        <p class="comment-text">
                                            Integer id purus ultricies nunc tincidunt congue vitae nec felis. Vivamus sit amet nisl convallis, faucibus risus in, suscipit sapien. Vestibulum egestas interdum tellus id venenatis. 
                                        </p><!-- /.comment-text -->
                                    </div><!-- /.comment-body -->

                                </div><!-- /.col -->

                            </div><!-- /.row -->
                        </div><!-- /.comment-item -->

                        <div class="comment-item">
                            <div class="row no-margin">
                                <div class="col-lg-1 col-xs-12 col-sm-2 no-margin">
                                    <div class="avatar">
                                        <img alt="avatar" src="<?php echo PASTASITE; ?>images/default-avatar.jpg">
                                    </div><!-- /.avatar -->
                                </div><!-- /.col -->

                                <div class="col-xs-12 col-lg-11 col-sm-10 <?php if(!$hasSidebar):?>no-margin<?php endif;?>">
                                    <div class="comment-body">
                                        <div class="meta-info">
                                            <div class="author inline">
                                                <a href="#" class="bold">Jane Smith</a>
                                            </div>
                                            <div class="star-holder inline">
                                                <div class="star" data-score="5"></div>
                                            </div>
                                            <div class="date inline pull-right">
                                                12.07.2013
                                            </div>
                                        </div><!-- /.meta-info -->
                                        <p class="comment-text">
                                            Integer id purus ultricies nunc tincidunt congue vitae nec felis. Vivamus sit amet nisl convallis, faucibus risus in, suscipit sapien. Vestibulum egestas interdum tellus id venenatis. 
                                        </p><!-- /.comment-text -->
                                    </div><!-- /.comment-body -->

                                </div><!-- /.col -->

                            </div><!-- /.row -->
                        </div><!-- /.comment-item -->

                        <div class="comment-item">
                            <div class="row no-margin">
                                <div class="col-lg-1 col-xs-12 col-sm-2 no-margin">
                                    <div class="avatar">
                                        <img alt="avatar" src="<?php echo PASTASITE; ?>images/default-avatar.jpg">
                                    </div><!-- /.avatar -->
                                </div><!-- /.col -->

                                <div class="col-xs-12 col-lg-11 col-sm-10 <?php if(!$hasSidebar):?>no-margin<?php endif;?>">
                                    <div class="comment-body">
                                        <div class="meta-info">
                                            <div class="author inline">
                                                <a href="#" class="bold">John Doe</a>
                                            </div>
                                            <div class="star-holder inline">
                                                <div class="star" data-score="3"></div>
                                            </div>
                                            <div class="date inline pull-right">
                                                12.07.2013
                                            </div>
                                        </div><!-- /.meta-info -->
                                        <p class="comment-text">
                                            Integer id purus ultricies nunc tincidunt congue vitae nec felis. Vivamus sit amet nisl convallis, faucibus risus in, suscipit sapien. Vestibulum egestas interdum tellus id venenatis. 
                                        </p><!-- /.comment-text -->
                                    </div><!-- /.comment-body -->

                                </div><!-- /.col -->

                            </div><!-- /.row -->
                        </div><!-- /.comment-item -->
                    </div><!-- /.comments -->

                    <div class="add-review row">
                        <div class="col-sm-8 col-xs-12">
                            <div class="new-review-form">
                                <h2>Add review</h2>
                                <form id="contact-form" class="contact-form" method="post" >
                                    <div class="row field-row">
                                        <div class="col-xs-12 col-sm-6">
                                            <label>name*</label>
                                            <input class="le-input" >
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <label>email*</label>
                                            <input class="le-input" >
                                        </div>
                                    </div><!-- /.field-row -->
                                    
                                    <div class="field-row star-row">
                                        <label>your rating</label>
                                        <div class="star-holder">
                                            <div class="star big" data-score="0"></div>
                                        </div>
                                    </div><!-- /.field-row -->

                                    <div class="field-row">
                                        <label>your review</label>
                                        <textarea rows="8" class="le-input"></textarea>
                                    </div><!-- /.field-row -->

                                    <div class="buttons-holder">
                                        <button type="submit" class="le-button huge">submit</button>
                                    </div><!-- /.buttons-holder -->
                                </form><!-- /.contact-form -->
                            </div><!-- /.new-review-form -->
                        </div><!-- /.col -->
                    </div><!-- /.add-review -->

                </div><!-- /.tab-pane #reviews -->
            </div><!-- /.tab-content -->

        </div><!-- /.tab-holder -->
    </div><!-- /.container -->
</section><!-- /#single-product-tab -->
<!-- ========================================= SINGLE PRODUCT TAB : END ========================================= -->