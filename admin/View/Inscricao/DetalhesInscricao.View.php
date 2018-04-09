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
                        <small>Detalhes Inscrições</small>
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
                        $arrColunas = array('Nome', 'Camisa', 'Contatos', 'Participa Pastoral', 'Particiopou Retiro');
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();

                        /** @var InscricaoEntidade $inscricao */
                        foreach ($result as $inscricao):
                            $contato = Valida::MascaraTel($inscricao->getCoPessoa()->getCoContato()->getNuTel1());
                            if($inscricao->getCoPessoa()->getCoContato()->getNuTel2()){
                                $contato = $contato . ' / '.Valida::MascaraTel(
                                        $inscricao->getCoPessoa()->getCoContato()->getNuTel2()
                                    );
                            }else if($inscricao->getNuTelResponsavel()){
                                $contato = $contato . ' / '.Valida::MascaraTel(
                                        $inscricao->getNuTelResponsavel()
                                    );
                            }
                            
                            $grid->setColunas(strtoupper($inscricao->getCoPessoa()->getNoPessoa()));
                            $grid->setColunas(FuncoesSistema::TamanhoCamisa($inscricao->getNuCamisa()));
                            $grid->setColunas($contato);
                            $grid->setColunas($inscricao->getDsPastoral());
                            $grid->setColunas(FuncoesSistema::SituacaoSimNao($inscricao->getDsRetiro()));
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