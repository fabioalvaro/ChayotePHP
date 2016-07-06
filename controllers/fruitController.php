<?php

class fruit extends controller {

    public function index_action() {

        //list all records
        $model_fruits = new fruitModel();
        $fruits_res = $model_fruits->getFruit('active<>0'); //Full table Scan :( or :)         
        //send the records to template sytem
        $this->smarty->assign('listfruit', $fruits_res);
        $this->smarty->assign('title', 'Fruits');
        //call the smarty
        $this->smarty->display('fruit/index.tpl');
    }

    public function add() {
        $this->smarty->assign('title', 'New Fruit');
        $this->smarty->display('fruit/new.tpl');
    }

    public function save() {
        $modelfruit = new fruitModel();
        $dados['description'] = $_POST['description'];
        $dados['created'] = date("Y-m-d H:i:s");
        $dados['active'] = 1;
        $modelfruit->setFruit($dados);

        header('Location: /fruit');
    }

    public function update() {
        $id = $this->getParam('id');
        
         

        $modelfruit = new fruitModel();
        $dados['id'] = $id;
        $dados['description'] = $_POST['description'];
        $dados['created'] = $_POST['created'];
        $dados['active'] = $_POST['active'];
        $modelfruit->updFruit($dados);

        header('Location: /fruit');
    }

    public function detalhes() {
        $id = $this->getParam('id');
        $modelfruit = new fruitModel();
        $resfruit = $modelfruit->getFruit('id=' . $id);
        $this->smarty->assign('registro', $resfruit[0]);
        $this->smarty->assign('title', 'Fruits Details');
        //call the smarty
        $this->smarty->display('fruit/detail.tpl');
    }

    public function edit() {
       
        //die();
        $id = $this->getParam('id');
        $modelfruit = new fruitModel();
        $resfruit = $modelfruit->getFruit('id=' . $id);
        $this->smarty->assign('registro', $resfruit[0]);
        $this->smarty->assign('title', 'Fruits Details');
        //call the smarty
        $this->smarty->display('fruit/edit.tpl');
    }

    public function delete() {

        $id = $this->getParam('id');
        $modelfruit = new fruitModel();
        $dados['id'] = $id;
        $modelfruit->delFruit($dados);

        header('Location: /fruit');
    }

}

?>
