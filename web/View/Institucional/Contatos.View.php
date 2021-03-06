<!-- ========================================= MAIN ========================================= -->
<main id="contact-us" class="inner-bottom-md">
    <section class="google-map map-holder">
        <div id="map" class="center">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1141.3034549165923!2d-48.0650129352055!
            3d-15.810705276267305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4019fd0d953ec96b!
            2sBicalho+Balan%C3%A7as+e+Refrigera%C3%A7%C3%A3o!5e0!3m2!1spt-BR!2sbr!4v1524579301806"
                    width="100%" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <section class="section leave-a-message">
                    <h2 class="bordered">Deixe um recado / sugestão</h2>
                    <?php
                        $display = 'none';
                        if($resultEmail)
                            $display = 'block';
                    ?>
                    <p class="mensagem-success mensagem-email alert-success"
                       style="display: <?= $display; ?>;">E-mail enviado com sucesso, em breve entraremos em contato!</p>
                    <p>Dicas e sugestões.</p>
                    <form id="contact-form" class="contact-form cf-style-1 inner-top-xs" method="post">
                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <label>Seu Nome*</label>
                                <input class="le-input" name="nome" id="nome" />
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <label>Seu Email*</label>
                                <input class="le-input" name="mail" id="mail" />
                            </div>
                        </div><!-- /.field-row -->
                        <div class="field-row">
                            <label>Título</label>
                            <input type="text" class="le-input" name="titulo" id="titulo" />
                        </div><!-- /.field-row -->
                        <div class="field-row">
                            <label>Mensagem</label>
                            <textarea rows="8" class="le-input" name="mensagem" id="mensagem"></textarea>
                        </div><!-- /.field-row -->
                        <div class="buttons-holder">
                            <button type="submit" class="le-button huge">Enviar Mensagem</button>
                        </div><!-- /.buttons-holder -->
                    </form><!-- /.contact-form -->
                </section><!-- /.leave-a-message -->
            </div><!-- /.col -->

            <div class="col-md-4">
                <section class="our-store section inner-left-xs">
                    <h2 class="bordered">Nossa loja</h2>
                    <address>
                        QNE 16 lote 08 Loja 01 Bicalho Refrigeração<br/>
                        Comercial, Taguatinga, - Avenida Comercial Norte<br/>
                        Brasília / DF
                    </address>
                    <h3>Horário de funcionamento</h3>
                    <ul class="list-unstyled operation-hours">
                        <li class="clearfix">
                            <span class="day">SEGUNDA A SEXTA-FEIRA:</span>
                            <span class="pull-right hours">DAS 08H ÀS 18H</span>
                        </li>
                        <li class="clearfix">
                            <span class="day">SÁBADO:</span>
                            <span class="pull-right hours">DAS 08H. ÀS 12H</span>
                        </li>
                    </ul>
                    <h3>Emprego</h3>
                    <p>Se você está interessado em oportunidades de emprego na nossa empresa, por favor envie-nos um
                        email
                        <a href="mailto:contato@bicalhorefrigeracao.com">contato@bicalhorefrigeracao.com</a></p>
                    <div class="phone">
                        <a class="link-phone" href="tel:06130461009" target="_blank">
                            <i class="fa fa-phone"></i> (61) 3046-1009
                        </a>
                    </div>
                    <div class="phone" style="margin-top: 10px;">
                        <a class="link-phone" title="Nos chame no WhatSapp"  style="color: green !important;"
                           href="<?php Valida::geraLinkWhatSapp(Mensagens::ZAP04) ?>"
                           target="_blank">
                            <i class="fa fa-whatsapp"></i> (61) 99370-4240
                        </a>
                    </div>
                </section><!-- /.our-store -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </div><!-- /.container -->
</main>
<!-- ========================================= MAIN : END ========================================= -->