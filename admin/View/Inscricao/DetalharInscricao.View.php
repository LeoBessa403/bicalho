<div class="main-content">
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-home-3"></i>
                        <a href="#">
                            Inscrição
                        </a>
                    </li>
                    <li class="active">
                        Inscrição
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Inscrição
                        <small> Detalhes da Inscrição</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <?php
        if ($inscDuplicada):
            Valida::Mensagem($inscDuplicada, 2);
        endif;
        ?>
        <!-- end: PAGE HEADER -->
        <!-- start: PAGE CONTENT -->
        <div class="row">
            <?php
            echo $form;
            ?>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>