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
                        Resumo do Sistema
                    </div>
                    <div class="panel-body">
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-users-3"></i>
                                Produtos Cadastrados
                                <span class="negrito dados dados-success">
                                    <?= $dados['TotalInscricoesRestantes']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-users-3"></i>
                                Produtos Destaque
                                <span class="negrito dados dados-warning">
                                    <?= $dados['TotalRetirantes']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-users-3"></i>
                                Categorias cadastradas
                                <span class="negrito dados dados-danger">
                                    <?= $dados['TotalInscricoes']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa fa-money"></i>
                                Mais Visitados
                                <span class="dados negrito dados-info">
                                    <?= $dados['TotalArrecadado']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-user-cancel"></i>
                                Mais Vendidos
                                <span class="dados negrito dados-beige">
                                    <?= $dados['TotalNaoMembros']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-user-3"></i>
                                Produtos com estoque
                                <span class="dados negrito dados-olivia">
                                    <?= $dados['TotalMembros']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-users-2"></i>
                                Mais vendidos
                                <span class="dados negrito dados-black">
                                    <?= $dados['TotalServos']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-dollar fa"></i>
                                Novos Produtos
                                <span class="dados negrito dados-orange">
                                    <?= $dados['TotalAArrecadar']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-eur fa"></i>
                                Mais procurados
                                <span class="dados negrito dados-purple">
                                    <?= $dados['TotalNaoPago']; ?>
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