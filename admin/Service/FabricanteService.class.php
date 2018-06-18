<?php

/**
 * FabricanteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FabricanteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FabricanteEntidade::ENTIDADE);
        $this->ObjetoModel = New FabricanteModel();
    }

    public function salvaFabricante($dados, $files)
    {
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $fabricanteValidador = new FabricanteValidador();
        /** @var FabricanteValidador $validador */
        $validador = $fabricanteValidador->validarFabricante($dados);
        if ($validador[SUCESSO]) {
            /** @var PDO $PDO */
            $PDO = $this->getPDO();
            /** @var ImagemService $imagemService */
            $imagemService = $this->getService(IMAGEM_SERVICE);

            $fabricante[NO_FABRICANTE] = trim($dados[NO_FABRICANTE]);
            $fabricante[NU_CODIGO_FABRICANTE] = $dados[NU_CODIGO_FABRICANTE];
            $fabricante[NO_FABRICANTE_URL_AMIGAVEL] = Valida::ValNome(trim($dados[NO_FABRICANTE]));

            $imagem[DS_CAMINHO] = "";
            $nome = Valida::ValNome($fabricante[NO_FABRICANTE]);
            if ($files[DS_CAMINHO]["tmp_name"]):
                $foto = $_FILES[DS_CAMINHO];
                $up = new Upload();
                $up->UploadImagens($foto, $nome, "Fabricantes");
                $imagem[DS_CAMINHO] = $up->getNameImage();
            endif;

            $PDO->beginTransaction();
            if (!empty($_POST[CO_FABRICANTE])):
                $coFabricante = $dados[CO_FABRICANTE];
                if ($files[DS_CAMINHO]["tmp_name"]) {
                    if (!empty($dados[CO_IMAGEM])) {
                        $fabricante[CO_IMAGEM] = $dados[CO_IMAGEM];
                        $imagemService->Salva($imagem, $dados[CO_IMAGEM]);
                    } else {
                        $fabricante[CO_IMAGEM] = $imagemService->Salva($imagem);
                    }
                }
                $retorno[SUCESSO] = $this->Salva($fabricante, $coFabricante);
            else:
                $fabricante[CO_IMAGEM] = $imagemService->Salva($imagem);
                $fabricante[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $retorno[SUCESSO] = $this->Salva($fabricante);
            endif;

            if ($retorno[SUCESSO]) {
                $session->setSession(MENSAGEM, Mensagens::OK_SALVO);
                $PDO->commit();
            } else {
                $session->setSession(MENSAGEM, 'Não foi possível cadastrar o Fabricante');
                $PDO->rollBack();
            }
        } else {
            $session = new Session();
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

    /**
     * @param $limite
     * @return mixed
     */
    public function pesquisaFabricantesParceiros($limite)
    {
        $fabricantes = $this->ObjetoModel->pesquisaFabricantes();
        foreach ($fabricantes as $fabricante) {
            $pesqFabricantes[] = $fabricante[CO_FABRICANTE];
        }
        $coFabricantes = [];
        for ($i = 0; $i < $limite; $i++) {
            $coFabricante = rand(0, count($pesqFabricantes) - 1);
            if (!in_array($pesqFabricantes[$coFabricante], $coFabricantes)) {
                $coFabricantes[] = $pesqFabricantes[$coFabricante];
            } else {
                $limite = $limite + 1;
            }
        }
        return $this->ObjetoModel->pesquisaFabricantesAleatorios(implode(", ", $coFabricantes));
    }

    /**
     * @param $noFabricante
     * @return mixed
     */
    public function getSeoFabricantes($noFabricante)
    {
        return $this->ObjetoModel->getSeoFabricantes($noFabricante);
    }

}