<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Agenda
                        </a>
                    </li>
                    <li class="active">
                        Listar Compromissos
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Agenda
                        <small>Listar Compromissos</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <?php
        ?>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-calendar"></i>
                        Agenda GEJ
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::deletaRegistro("Agenda");
                        ?>
                        <div class="col-sm-9">
                            <div id='calendar'></div>
                        </div>
                        <div class="col-sm-3">
                            <h4>Categorias</h4>
                            <div id="event-categories">
                                <?php
                                foreach ($categoriaAgenda as $cor => $catAgenda) {
                                    ?>
                                    <div class="event-category label-<?php echo $cor; ?>"
                                         data-class="label-<?php echo $cor; ?>">
                                        <i class="fa fa-move"></i>
                                        <?php echo $catAgenda; ?>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end: FULL CALENDAR PANEL -->

            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->
<!-- start: MODAL DE EDIÇÃO -->
<?php echo $result; ?>
<!-- end: MODAL DE EDIÇÃO -->