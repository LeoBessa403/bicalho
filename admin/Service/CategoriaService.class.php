<?php

/**
 * CategoriaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CategoriaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CategoriaEntidade::ENTIDADE);
        $this->ObjetoModel = New CategoriaModel();
    }

    public function salvaCategoria($dados)
    {
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $categoriaValidador = new CategoriaValidador();
        /** @var CategoriaValidador $validador */
        $validador = $categoriaValidador->validarCategoria($dados);
        if ($validador[SUCESSO]) {
            $categoria[NO_CATEGORIA] = trim($dados[NO_CATEGORIA]);
            $categoria[CO_SEGMENTO] = $dados[CO_SEGMENTO][0];
            $categoria[NO_CATEGORIA_URL_AMIGAVEL] = Valida::ValNome(trim($dados[NO_CATEGORIA]));

            if (!empty($_POST[CO_CATEGORIA])):
                $coCategoria = $dados[CO_CATEGORIA];
                $retorno[SUCESSO] = $this->Salva($categoria, $coCategoria);
            else:
                $retorno[SUCESSO] = $this->Salva($categoria);
            endif;
        } else {
            $session = new Session();
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

    /**
     * @param $noCategoria
     * @return mixed
     */
    public function getSeoCategorias($noCategoria)
    {
        return $this->ObjetoModel->getSeoCategorias($noCategoria);
    }
}