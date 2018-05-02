<!-- ============================================================= TOP NAVIGATION ============================================================= -->
<nav class="top-bar animate-dropdown">
    <div class="container">
        <div class="col-xs-12 col-sm-6 no-margin">
            <ul>
                <li><a href="<?php echo PASTASITE; ?>">Home</a></li>
                <li><a href="<?php echo PASTASITE; ?>Institucional/Duvidas">Dúvidas</a></li>
                <li><a href="<?php echo PASTASITE; ?>Institucional/Contatos">Contatos</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#pages">Páginas</a>
                    <ul class="dropdown-menu" role="menu">
                        <?php foreach ($pages as $key => $packagePage) : ?>
                            <li><a href="<?php echo PASTASITE.$key; ?>">
                                    <?php echo $packagePage; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </li>
                <li><a href="<?php echo PASTAADMIN; ?>Index/PrimeiroAcesso" target="_blank">Administrativo</a></li>
            </ul>
        </div><!-- /.col -->
    </div><!-- /.container -->
</nav><!-- /.top-bar -->
<!-- ============================================================= TOP NAVIGATION : END ============================================================= -->