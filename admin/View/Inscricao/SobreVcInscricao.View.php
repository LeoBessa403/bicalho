<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Inscrições
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Inscrições
                        <small>Sobre Você Inscrições</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Inscrições
                    </div>
                    <div class="panel-body">
                        <?php
                        $grid = new Grid();
                        echo $grid->PesquisaAvancada('Pesquisar Inscrições');
                        ?>
                        <h2><small>Inscrições Cadastradas</small></h2>
                        <?php
                        Modal::load();
                        $arrColunas = array('Nome', 'Sobre', 'Medicação', 'Alimentação');
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();

                        /** @var InscricaoEntidade $inscricao */
                        foreach ($result as $inscricao):
                            $grid->setColunas(strtoupper($inscricao->getCoPessoa()->getNoPessoa()));
                            $grid->setColunas($inscricao->getDsDescricao());
                            $grid->setColunas($inscricao->getDsMedicacao());
                            $grid->setColunas($inscricao->getDsAlimentacao());
                            $grid->criaLinha(
                                $inscricao->getCoInscricao(),
                                ($inscricao->getStStatus() == StatusAcessoEnum::DESISTENTE)
                                    ? true : null
                            );
                        endforeach;
                        $grid->finalizaGrid();
                        ?>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->