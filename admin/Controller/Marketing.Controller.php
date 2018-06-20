<?php

class Marketing extends AbstractController
{
    public $resultEmail;

    function Email()
    {
        if (!empty($_POST)) {
            /** @var Email $email */
            $email = new Email();

            /** @var LeadService $leadService */
            $leadService = $this->getService(LEAD_SERVICE);
            $emails = $leadService->PesquisaTodos();

            $Mensagem = "<div style='max-width: 600px'>".$_POST[DS_DESCRICAO]."</div>";

            $email->setEmailDestinatario($emails)
                ->setTitulo(DESC ." - Promoção de hoje!")
                ->setMensagem($Mensagem);

            // Variável para validação de Emails Enviados com Sucesso.
            $this->resultEmail = $email->Enviar();
        }

        $this->form = MarketingForm::Email();

    }

}
   