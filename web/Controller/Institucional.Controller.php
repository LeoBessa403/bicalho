<?php
          
class Institucional extends AbstractController
{
    public $resultEmail;

    public function Contatos()
    {
         if (!empty($_POST)) {
             /** @var Email $email */
             $email = new Email();

             // Índice = Nome, e Valor = Email.
             $emails = array($_POST['nome'] => USER_EMAIL);
             $Mensagem = "<p>".$_POST['mensagem']."</p>";

             $email->setEmailDestinatario($emails)
                 ->setTitulo("Autor: ".$_POST['nome']." - ".$_POST['titulo'])
                 ->setEmailReplayTo($_POST['mail'])
                 ->setNomeReplayTo($_POST['nome'])
                 ->setMensagem($Mensagem);

             // Variável para validação de Emails Enviados com Sucesso.
             $this->resultEmail = $email->Enviar();
         }else{
             $this->resultEmail = null;
         }
    }

    public function SobreNos()
    {
    }

    public function Duvidas()
    {
    }
}
?>
   