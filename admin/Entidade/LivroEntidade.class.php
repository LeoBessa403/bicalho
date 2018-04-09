<?php

/**
 * Livro.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class LivroEntidade extends AbstractEntidade
{
	const TABELA = 'TB_LIVRO';
	const ENTIDADE = 'LivroEntidade';
	const CHAVE = CO_LIVRO;

	private $co_livro;
	private $no_titulo;
	private $no_editora;
	private $no_autor;
	private $dt_cadastro;
	private $ds_observacao;
	private $nu_ano_publicacao;
	private $nu_paginas;
	private $nu_isbn;
	private $nu_edicao;
	private $ds_foto_capa;
	private $ds_palavras_chave;
	private $co_codigo_livro;

	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_LIVRO,
			NO_TITULO,
			NO_EDITORA,
			NO_AUTOR,
			DT_CADASTRO,
			DS_OBSERVACAO,
			NU_ANO_PUBLICACAO,
			NU_PAGINAS,
			NU_ISBN,
			NU_EDICAO,
			DS_FOTO_CAPA,
			DS_PALAVRAS_CHAVE,
		];
    }

	/**
	* @return $relacionamentos
     */
	public static function getRelacionamentos() {
    	$relacionamentos = Relacionamentos::getRelacionamentos();
		return $relacionamentos[static::TABELA];
	}


	/**
	* @return $co_livro
     */
	public function getCoLivro()
    {
        return $this->co_livro;
    }

	/**
	* @param $co_livro
     * @return mixed
     */
	public function setCoLivro($co_livro)
    {
        return $this->co_livro = $co_livro;
    }

	/**
	* @return $no_titulo
     */
	public function getNoTitulo()
    {
        return $this->no_titulo;
    }

	/**
	* @param $no_titulo
     * @return mixed
     */
	public function setNoTitulo($no_titulo)
    {
        return $this->no_titulo = $no_titulo;
    }

	/**
	* @return $no_editora
     */
	public function getNoEditora()
    {
        return $this->no_editora;
    }

	/**
	* @param $no_editora
     * @return mixed
     */
	public function setNoEditora($no_editora)
    {
        return $this->no_editora = $no_editora;
    }

	/**
	* @return $no_autor
     */
	public function getNoAutor()
    {
        return $this->no_autor;
    }

	/**
	* @param $no_autor
     * @return mixed
     */
	public function setNoAutor($no_autor)
    {
        return $this->no_autor = $no_autor;
    }

	/**
	* @return $dt_cadastro
     */
	public function getDtCadastro()
    {
        return $this->dt_cadastro;
    }

	/**
	* @param $dt_cadastro
     * @return mixed
     */
	public function setDtCadastro($dt_cadastro)
    {
        return $this->dt_cadastro = $dt_cadastro;
    }

	/**
	* @return $ds_observacao
     */
	public function getDsObservacao()
    {
        return $this->ds_observacao;
    }

	/**
	* @param $ds_observacao
     * @return mixed
     */
	public function setDsObservacao($ds_observacao)
    {
        return $this->ds_observacao = $ds_observacao;
    }

	/**
	* @return $nu_ano_publicacao
     */
	public function getNuAnoPublicacao()
    {
        return $this->nu_ano_publicacao;
    }

	/**
	* @param $nu_ano_publicacao
     * @return mixed
     */
	public function setNuAnoPublicacao($nu_ano_publicacao)
    {
        return $this->nu_ano_publicacao = $nu_ano_publicacao;
    }

	/**
	* @return $nu_paginas
     */
	public function getNuPaginas()
    {
        return $this->nu_paginas;
    }

	/**
	* @param $nu_paginas
     * @return mixed
     */
	public function setNuPaginas($nu_paginas)
    {
        return $this->nu_paginas = $nu_paginas;
    }

	/**
	* @return $nu_isbn
     */
	public function getNuIsbn()
    {
        return $this->nu_isbn;
    }

	/**
	* @param $nu_isbn
     * @return mixed
     */
	public function setNuIsbn($nu_isbn)
    {
        return $this->nu_isbn = $nu_isbn;
    }

	/**
	* @return $nu_edicao
     */
	public function getNuEdicao()
    {
        return $this->nu_edicao;
    }

	/**
	* @param $nu_edicao
     * @return mixed
     */
	public function setNuEdicao($nu_edicao)
    {
        return $this->nu_edicao = $nu_edicao;
    }

	/**
	* @return $ds_foto_capa
     */
	public function getDsFotoCapa()
    {
        return $this->ds_foto_capa;
    }

	/**
	* @param $ds_foto_capa
     * @return mixed
     */
	public function setDsFotoCapa($ds_foto_capa)
    {
        return $this->ds_foto_capa = $ds_foto_capa;
    }

	/**
	* @return $ds_palavras_chave
     */
	public function getDsPalavrasChave()
    {
        return $this->ds_palavras_chave;
    }

	/**
	* @param $ds_palavras_chave
     * @return mixed
     */
	public function setDsPalavrasChave($ds_palavras_chave)
    {
        return $this->ds_palavras_chave = $ds_palavras_chave;
    }

	/**
	* @return CodigoLivroEntidade $co_codigo_livro
     */
	public function getCoCodigoLivro()
    {
        return $this->co_codigo_livro;
    }

	/**
     * @param $co_codigo_livro
     * @return mixed
     */
	public function setCoCodigoLivro($co_codigo_livro)
    {
        return $this->co_codigo_livro = $co_codigo_livro;
    }

}