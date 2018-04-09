<div class="main-content">
    <!-- end: SPANEL CONFIGURATION MODAL FORM -->
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-home-3"></i>
                        <a href="#">
                            Início
                        </a>
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Resumo Inscrições</h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <!-- end: PAGE HEADER -->
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-calendar"></i>
                        Resumo das Inscrições
                    </div>
                    <div class="panel-body">
                        <div class="col-sm-6">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-users-3"></i>
                                Vagas Garantidas
                                <span class="negrito dados dados-success">
                                    <?= $dados['TotalInscricoesRestantes']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-6">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-users-3"></i>
                                Retirantes Inscritos
                                <span class="negrito dados dados-warning">
                                    <?= $dados['TotalRetirantes']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-6">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-users-3"></i>
                                Total Inscritos
                                <span class="negrito dados dados-danger">
                                    <?= $dados['TotalInscricoes']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-6">
                            <button class="btn btn-icon btn-block">
                                <i class="fa fa-money"></i>
                                Total Arrecadado
                                <span class="dados negrito dados-info">
                                    <?= $dados['TotalArrecadado']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-user-cancel"></i>
                                Não Membros
                                <span class="dados negrito dados-warning">
                                    <?= $dados['TotalNaoMembros']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-user-3"></i>
                                Membros
                                <span class="dados negrito dados-info">
                                    <?= $dados['TotalMembros']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-users-2"></i>
                                Servos
                                <span class="dados negrito dados-success">
                                    <?= $dados['TotalServos']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-3">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-dollar fa"></i>
                                Total a Arrecadar
                                <span class="dados negrito dados-success">
                                    <?= $dados['TotalAArrecadar']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-3">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-eur fa"></i>
                                Não Pagos
                                <span class="dados negrito dados-danger">
                                    <?= $dados['TotalNaoPago']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-3">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-gbp fa"></i>
                                Pag. Parcial
                                <span class="dados negrito dados-info">
                                    <?= $dados['TotalParcial']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-3">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-usd fa"></i>
                                Pag. Concluídos
                                <span class="dados negrito dados-success">
                                    <?= $dados['TotalConcluido']; ?>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- end: FULL CALENDAR PANEL -->
            </div>
            <!-- end: PAGE CONTENT-->

        </div>
    </div>
</div>