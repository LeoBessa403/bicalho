<!-- ============================================================= TOP NAVIGATION ============================================================= -->
<nav class="top-bar animate-dropdown">
    <div class="container">
        <div class="col-xs-12 col-sm-6 no-margin">
            <ul>
                <li><a href="<?php echo BASE_URL;?>/index.php?page=home">Home</a></li>
                <li><a href="index.php?page=faq">Dúvidas</a></li>
                <li><a href="index.php?page=contact">Contatos</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#pages">Páginas</a>
                    <ul class="dropdown-menu" role="menu">
                        <?php foreach ( $pages as $key => $packagePage ) : ?>
                        <li><a href="index.php?page=<?php echo $key;?>&amp;style=<?php echo $_GET['style'];?>"><?php echo $packagePage;?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </li>
            </ul>
        </div><!-- /.col -->

        <div class="col-xs-12 col-sm-6 no-margin">
            <ul class="right">
                <li><a href="index.php?page=authentication">se inscrever</a></li>
            </ul>
        </div><!-- /.col -->
    </div><!-- /.container -->
</nav><!-- /.top-bar -->
<!-- ============================================================= TOP NAVIGATION : END ============================================================= -->