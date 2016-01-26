<?php

class fotos extends controller {

    public function index_action() {

        //Inicializa o Template
        $this->template->run();

        $model = new fotosModel();
        $sql = "f.status <> 0"; //somente os nao excluidos
        $fotos_lista = $model->getfotos($sql);
        //Passa a lista de registros
        $this->smarty->assign('fotos_lista', $fotos_lista);
        //Chama o Smarty
        $this->smarty->assign('title', 'Fotos');
        $this->smarty->display('fotos/fotos_lista.html');
    }

//Funcao de Busca
    public function busca_fotos() {

        //se nao existir o indice estou como padrao '';
        $texto = isset($_POST['buscaid']) ? $_POST['buscaid'] : '';
        //$texto = '';
        $model = new fotosModel();
        $sql = "f.status <> 0 and upper(idfotos) like upper('%" . $texto . "%')"; //somente os nao excluidos
        $resultado = $model->getfotos($sql);

        //var_dump($resultado);

        if (sizeof($resultado) > 0) {
            $this->smarty->assign('fotos_lista', $resultado);
            //Chama o Smarty
            $this->smarty->assign('title', 'Fotos');
            $this->smarty->assign('buscaid', $texto);
            $this->smarty->display('fotos/fotos_lista.html');
        } else {
            $this->smarty->assign('fotos_lista', null);
            //Chama o Smarty
            $this->smarty->assign('title', 'Fotos');
            $this->smarty->assign('buscaid', $texto);
            $this->smarty->display('fotos/fotos_lista.html');
        }
    }

    //Funcao de Inserir
    public function novo_fotos() {

        $idfotos = $this->getParam('idfotos');

        $model = new fotosModel();

        if ($idfotos > 0) {
            $registro = $model->getfotos('idfotos=' . $idfotos);
            $registro = $registro[0];
        } else {
            //Novo Registro
            $registro = $model->estrutura_vazia();
            $registro = $registro[0];
        }

        //Obter lista a de tipos fk
        $objLista = new fotos_tipoModel();
        //criar uma lista
        $lista_tipos = $objLista->getfotos_tipo('status <>0');
        foreach ($lista_tipos as $value) {
            $lista_tipos_fotos[$value['id_fotos_tipo']] = $value['descricao'];
        }

        $this->smarty->assign('lista_tipos_fotos', $lista_tipos_fotos);
        $this->smarty->assign('registro', $registro);
        $this->smarty->assign('title', 'Nova Foto');
        $this->smarty->display('fotos/fotos_form_novo.tpl');
    }

    // Gravar Padrao
    public function gravar_fotos() {
        $model = new fotosModel();

        $data = $this->trataPost($_POST);

        if ($data['idfotos'] == NULL)
            $model->setfotos($data);
        else
            $model->updfotos($data); //update

        header('Location: /fotos');
        return;
    }

    //busca fotos por UC
    public function busca_fotos_uc($id_troca) {

        $where = ' idfoto in (select id_foto from trocas_fotos where id_troca = ' . $id_troca . ')';
        $campos = 'caminho ';
        return $this->read('fotos ', $campos, $where);
    }

    //Trata dados antes de Enviar para o Gravar
    private function trataPost($post) {
        $data['idfotos'] = ($post['idfotos'] != '') ? $post['idfotos'] : null;
        $data['caminho'] = ($post['caminho'] != '') ? $post['caminho'] : null;
        $data['filename'] = ($post['filename'] != '') ? $post['filename'] : null;
        $data['id_fotos_tipo'] = ($post['id_fotos_tipo'] != '') ? $post['id_fotos_tipo'] : null;
        // $data['status'] = ($post['status'] != '') ? $post['status'] : 1;

        return $data;
    }

    // Remove Padrao
    public function delfotos() {
        $idfotos = $this->getParam('idfotos');
        if (!is_null($idfotos)) {
            $model = new fotosModel();
            $dados['idfotos'] = $idfotos;
            $retorno = $model->delfotos($dados);
            echo $retorno;
        }

        header('Location: /fotos');
    }

    public function sobe_arquivo() {

        $utils = new util();

        $idfotos = $_POST['idfotos'];



        $modelproj = new projetoModel();

        $ano = date('Y');
        $mes = date('m');
        $id_projetos = $_SESSION['user']['projeto']['id_projetos'];
        $caminho = PATH_ROOT . STORAGE_ROOT . $ano . '/' . $mes . '/' . $utils->str_pad_left($id_projetos, "0", 3) . '/fotos/'; //Mudar AQUI@@@@@@@
        $caminhoBanco = STORAGE_ROOT . $ano . '/' . $mes . '/' . $utils->str_pad_left($id_projetos, "0", 3) . '/fotos/';
        $caminhoBancoFoto = '';

        if (is_dir($caminho)) {


            $log = new logModel();
            $pro_fotos = new fotosModel();
            $uploaddir = $caminho;
            $uploadfile_original = $uploaddir . $_FILES['arquivo_foto']['name'];
            $uploadfile_novo_arquivo = 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'];
            $uploadfile_novo = $uploaddir . 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'];
            $caminhoBancoFoto = $caminhoBanco . $uploadfile_novo_arquivo;
            //estrutura para fazer inserção de dados
            if ($idfotos == 0) {

                //grava no banco    
                $dados['idfotos'] = $idfotos;
                $dados['caminho'] = 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'];
                $dados['filename'] = $_FILES['arquivo_foto']['name']; //$uploadfile_novo;
                $dados['id_fotos_tipo'] = $_POST['id_fotos_tipo'];
                $dados['status'] = 1;
                $idfotos = $pro_fotos->setfotos($dados);



                if (move_uploaded_file(
                                $_FILES['arquivo_foto']['tmp_name'], $uploaddir . 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'])) {
                    // Verifica se o arquivo existe antes de renomear
                    if (file_exists($uploadfile_original)) {
                        rename($uploadfile_original, $uploadfile_novo);
                    }

                    //grava no banco    
                    $dados['idfotos'] = $idfotos;
                    $dados['caminho'] = $caminhoBanco . 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'];
                    $dados['filename'] = 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name']; //$caminhoBancoFoto; //$uploadfile_novo;
                    $dados['id_fotos_tipo'] = $_POST['id_fotos_tipo'];
                    $dados['status'] = 1;

                    $pro_fotos->updfotos($dados);


                    header('Location: /fotos');
                } else {
                    $msg = "Possivel ataque de upload! Aqui esta alguma informação";
                    $log->logPadrao($msg);
                    print_r($_FILES);
                }
                //estrutura para fazer update de dados
            } else {
                if (move_uploaded_file(
                                $_FILES['arquivo_foto']['tmp_name'], $uploaddir . 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'])) {
                    // Verifica se o arquivo existe antes de renomear
                    if (file_exists($uploadfile_original)) {
                        rename($uploadfile_original, $uploadfile_novo);
                    }

                    //grava no banco    
                    $dados['idfotos'] = $idfotos;
                    $dados['caminho'] = $caminhoBanco . 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'];
                    $dados['filename'] = 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name']; //$caminhoBancoFoto; //$uploadfile_novo;
                    $dados['id_fotos_tipo'] = $_POST['id_fotos_tipo'];
                    $dados['status'] = 1;

                    $pro_fotos->updfotos($dados);


                    header('Location: /fotos');
                } else {
                    $msg = "Possivel ataque de upload! Aqui esta alguma informação";
                    $log->logPadrao($msg);
                    print_r($_FILES);
                }
            }
        } else {

            //criação de pasta caso não exista.
            mkdir($caminho, 0777, true);


            $log = new logModel();
            $pro_fotos = new fotosModel();
            $uploaddir = $caminho;
            $uploadfile_original = $uploaddir . $_FILES['arquivo_foto']['name'];
            $uploadfile_novo_arquivo = 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'];
            $uploadfile_novo = $uploaddir . 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'];
            $caminhoBancoFoto = $caminhoBanco . $uploadfile_novo_arquivo;

            if ($idfotos == 0) {

                //grava no banco    
                $dados['idfotos'] = $idfotos;
                $dados['caminho'] = 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'];
                $dados['filename'] = $_FILES['arquivo_foto']['name']; //$uploadfile_novo;
                $dados['id_fotos_tipo'] = $_POST['id_fotos_tipo'];
                $dados['status'] = 1;
                $idfotos = $pro_fotos->setfotos($dados);



                if (move_uploaded_file(
                                $_FILES['arquivo_foto']['tmp_name'], $uploaddir . 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'])) {
                    // Verifica se o arquivo existe antes de renomear
                    if (file_exists($uploadfile_original)) {
                        rename($uploadfile_original, $uploadfile_novo);
                    }

                    //grava no banco    
                    $dados['idfotos'] = $idfotos;
                    $dados['caminho'] = $caminhoBanco . 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'];
                    $dados['filename'] = 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name']; //$caminhoBancoFoto; //$uploadfile_novo;
                    $dados['id_fotos_tipo'] = $_POST['id_fotos_tipo'];
                    $dados['status'] = 1;

                    $pro_fotos->updfotos($dados);


                    header('Location: /fotos');
                } else {
                    $msg = "Possivel ataque de upload! Aqui esta alguma informação";
                    $log->logPadrao($msg);
                    print_r($_FILES);
                }
            } else
            if (move_uploaded_file(
                            $_FILES['arquivo_foto']['tmp_name'], $uploaddir . 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'])) {
                // Verifica se o arquivo existe antes de renomear
                if (file_exists($uploadfile_original)) {
                    rename($uploadfile_original, $uploadfile_novo);
                }

                //grava no banco    
                $dados['idfotos'] = $idfotos;
                $dados['caminho'] = $caminhoBanco . 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name'];
                $dados['filename'] = 'fotos_' . $idfotos . '-' . $_FILES['arquivo_foto']['name']; //$caminhoBancoFoto; //$uploadfile_novo;
                $dados['id_fotos_tipo'] = $_POST['id_fotos_tipo'];
                $dados['status'] = 1;

                $pro_fotos->updfotos($dados);


                header('Location: /fotos');
            } else {
                $msg = "Possivel ataque de upload! Aqui esta alguma informação";
                $log->logPadrao($msg);
                print_r($_FILES);
            }
        }
    }

    public function relatorio001_pre_fotos() {
        //gerar o relatorio
        //Inicializa o Template
        $this->template->run();

        //Chama o Smarty
        $this->smarty->assign('title', 'Relatorio de Fotos');
        $this->smarty->display('fotos/relatorio001_pre_fotos.html');
    }

    public function relatorio001_fotos() {


        //gerar o relatorio
        $texto = isset($_POST['edtbusca']) ? $_POST['edtbusca'] : '';
        //Inicializa o Template
        $this->template->run();

        $model = new fotosModel();
        $sql = "f.status <> 0";

        $fotos_lista = $model->getfotos($sql);
        //Passa a lista de registros
        $this->smarty->assign('fotos_lista', $fotos_lista);


        //Chama o Smarty
        $this->smarty->assign('title', 'Relatorio de Fotos');
        $this->smarty->display('fotos/relatorio001_fotos.html');
    }

}

?>
