<?php

class MembroWeb extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;
    public $formas;
    public $coInscricao;
    public $inscDuplicada;

    function CadastroRetiroCarnaval()
    {
        $this->inscDuplicada = false;
        $id = "CadastroRetiroCarnaval";

        if (!empty($_POST[$id])):
            /** @var InscricaoService $inscricaoService */
            $inscricaoService = $this->getService(INSCRICAO_SERVICE);
            $retorno = $inscricaoService->salvarInscricao($_POST, $_FILES);

            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormaDePagamento/' .
                    Valida::GeraParametro(CO_INSCRICAO . '/' . $retorno[CO_INSCRICAO]));
            } else {
                $this->inscDuplicada = $retorno[MSG];
                $res = $inscricaoService->montaDadosInscricao($_POST);
                $this->form = MembroWebForm::Cadastrar(false, $res);
            }
        else:
            $this->form = MembroWebForm::Cadastrar();
        endif;

    }

    static function montaComboCamisas()
    {
        return array(
            "" => "Selecione um Tamanho",
            "1" => "BL PP",
            "2" => "BL P",
            "3" => "BL M",
            "4" => "BL G",
            "5" => "BL GG",
            "6" => "P",
            "7" => "M",
            "8" => "G",
            "9" => "GG",
            "10" => "XG",
        );
    }

    function FormaDePagamento()
    {
        $this->coInscricao = UrlAmigavel::PegaParametro(CO_INSCRICAO);
        $this->formas = TipoPagamentoService::montaComboTodosTipoPagamento();
    }

    function ConcluirInscricao()
    {
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);
        /** @var ParcelamentoService $parcelamentoService */
        $parcelamentoService = $this->getService(PARCELAMENTO_SERVICE);
        $id = "formaPagamento";
        /** @var PDO $PDO */
        $PDO = $parcelamentoService->getPDO();
        $PDO->beginTransaction();

        if (!empty($_POST[$id])):
            $dados = $_POST;
            $pagamento[NU_TOTAL] = InscricaoEnum::VALOR_DINHEIRO;
            if ($dados[CO_TIPO_PAGAMENTO] == TipoPagamentoEnum::CARTAO_CREDITO) {
                $pagamento[NU_TOTAL] = InscricaoEnum::VALOR_CARTAO;
            }

            $pagamento[NU_PARCELAS] = 1;
            $temPagamento = $pagamentoService->PesquisaUmQuando([CO_INSCRICAO => $dados[CO_INSCRICAO]]);
            if (!empty($temPagamento)) {
                $parcela[CO_PAGAMENTO] = $pagamentoService->Salva($pagamento, $dados[CO_INSCRICAO]);
                $parcelamentoService->DeletaQuando([CO_PAGAMENTO => $parcela[CO_PAGAMENTO]]);
            } else {
                $pagamento[CO_INSCRICAO] = $dados[CO_INSCRICAO];
                $parcela[CO_PAGAMENTO] = $pagamentoService->Salva($pagamento);
            }

            $parcela[CO_TIPO_PAGAMENTO] = $dados[CO_TIPO_PAGAMENTO];
            $parcela[NU_PARCELA] = 1;
            $parcela[NU_VALOR_PARCELA] = $pagamento[NU_TOTAL];
            $parcela[DT_VENCIMENTO] = Valida::DataAtualBanco('Y-m-d');

            $retorno = $parcelamentoService->Salva($parcela);
            if ($retorno) {
                $PDO->commit();
            } else {
                $retorno[MSG] = 'Não foi possível Concluir a Inscrição';
                $PDO->rollBack();
            }
        endif;
    }

    public function Normas()
    {
    }

    public function SobrePagamento()
    {
    }
}