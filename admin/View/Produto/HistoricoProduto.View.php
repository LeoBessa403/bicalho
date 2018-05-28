<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Produto
                        </a>
                    </li>
                    <li class="active">
                        Historico
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Produto
                        <small>Historico Produto</small>
                    </h1>
                    <span class="pull-right" style="float: right; margin-right: 10px; margin-top: -30px;">
                        <?php
                        echo '<a href="' . PASTAADMIN . UrlAmigavel::$controller . '/Listar' . UrlAmigavel::$controller . '"
                               class="btn btn-primary tooltips" data-original-title="Voltar" data-placement="top">
                                Voltar <i class="clip-arrow-right-2"></i>
                            </a>';
                        ?>
                    </span>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Historico do Produto
                    </div>
                    <div class="panel-body">
                        <h2><?= $produto->getNoProduto(); ?></h2>
                        <div id="timeline" class="demo1">
                            <div class="timeline">
                                <div class="spine"></div>
                                <?php

                                $cor = array('green', 'teal', 'bricky', 'purple', '');
                                $corBtn = array('warning', 'danger', 'dark-beige', 'info', 'dark-grey');

                                $mes_extenso = array(
                                    'Jan' => 'Janeiro',
                                    'Feb' => 'Fevereiro',
                                    'Mar' => 'Marco',
                                    'Apr' => 'Abril',
                                    'May' => 'Maio',
                                    'Jun' => 'Junho',
                                    'Jul' => 'Julho',
                                    'Aug' => 'Agosto',
                                    'Nov' => 'Novembro',
                                    'Sep' => 'Setembro',
                                    'Oct' => 'Outubro',
                                    'Dec' => 'Dezembro'
                                );
                                $produtoDet = array_reverse($produto->getCoProdutoDetalhe());

                                $meses = '';
                                $fechamento = '';
                                $corI = 0;
                                $controle = true;
                                /** @var ProdutoDetalheEntidade $produtoDetalhe */
                                foreach ($produtoDet as $produtoDetalhe) {

                                /** @var PessoaService $pessoaService */
                                $pessoaService = new PessoaService();
                                /** @var PessoaEntidade $pessoa */
                                $pessoa = $pessoaService->PesquisaUmRegistro(
                                    $produtoDetalhe->getCoUsuario()->getCoPessoa()
                                );
                                $data = strtotime($produtoDetalhe->getDtCadastro());
                                if ($meses != Valida::DataShow($produtoDetalhe->getDtCadastro(), 'Y/m')) {
                                if (!$controle)
                                    $fechamento = '</ul>';
                                $controle = false;
                                $meses = Valida::DataShow($produtoDetalhe->getDtCadastro(), 'Y/m')
                                ?>
                                <div class="date_separator">
                                            <span><?php
                                                $mes = date('M', $data);
                                                $dia = date('d', $data);
                                                $ano = date('Y', $data);
                                                echo $mes_extenso["$mes"] . " de {$ano}";
                                                ?></span>
                                </div>
                                <ul class="columns">
                                    <?php } else {
                                        $fechamento = '';
                                    }
                                    if ($corI == 5)
                                        $corI = 0;
                                    ?>

                                    <li>
                                        <div class="timeline_element <?= $cor[$corI]; ?>">
                                            <div class="timeline_title">
                                                <span class="timeline_date"></span>
                                            </div>
                                            <div class="content">
                                                Valor de Venda: <b><?=
                                                    Valida::FormataMoeda($produtoDetalhe->getNuPrecoVenda()); ?></b></br>
                                                Alterado Por: <b><?= $pessoa->getNoPessoa(); ?></b></br>
                                                Modificado: <b><?=
                                                    Valida::DataShow(
                                                        $produtoDetalhe->getDtCadastro(), 'd/m/Y H:i'
                                                    )
                                                    ?></b>
                                            </div>
                                            <div class="readmore">
                                                <a href="<?= HOME . SITE . '/Produtos/DetalharProduto/' .
                                                $produto->getNoProdutoUrlAmigavel(); ?>"
                                                   class="btn btn-<?= $corBtn[$corI]; ?>" target="_blank">
                                                    Ver Produto <i class="fa fa-arrow-circle-right"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                    <?= $fechamento;
                                    $corI++;
                                    ?>
                                    <?php } ?>
                            </div>
                        </div>
                        <span class="pull-right" style="margin-right: 10px; margin-bottom: 10px; display: block;">
                        <?php
                        echo '<a href="' . PASTAADMIN . UrlAmigavel::$controller . '/Listar' . UrlAmigavel::$controller . '"
                               class="btn btn-primary tooltips" data-original-title="Voltar" data-placement="top">
                                Voltar <i class="clip-arrow-right-2"></i>
                            </a>';
                        ?>
                    </span>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->