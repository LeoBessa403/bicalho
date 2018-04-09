<?php

class Auditoria extends AbstractController
{
    public $result;

    function ListarAuditoria()
    {
        if (!empty($_POST)) {
            /** @var AuditoriaService $auditoriaService */
            $auditoriaService = $this->getService(AUDITORIA_SERVICE);
            $this->result = $auditoriaService->PesquisaAvancada($_POST);
        } else {
            $this->result = [];
        }

    }

    public function ListarAuditoriaPesquisaAvancada()
    {
        /** @var UsuarioService $usuarioService */
        $usuarioService = $this->getService(USUARIO_SERVICE);
        /** @var AuditoriaService $auditoriaService */
        $auditoriaService = $this->getService(AUDITORIA_SERVICE);
        echo AuditoriaForm::Pesquisar($usuarioService, $auditoriaService);
    }

}
