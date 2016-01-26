<?php

class color extends controller {

    public function index_action() {
        
        //list all records
        $model_colors = new colorModel();
        $colors_res =  $model_colors->getColor();//Full table Scan :( or :) 
        //var_dump($colors_res);
        $this->smarty->assign('listcolor', $colors_res);
        $this->smarty->assign('title', 'Colors');
         $this->smarty->display('color/index.tpl');
    }
    
    public function add() {
        $this->smarty->assign('title', 'New Color');
         $this->smarty->display('color/new.tpl');
    }
    
    public function save() {
        $modelcolor = new colorModel();
        $dados['name']= $_POST['name'];
        $dados['created']= date("Y-m-d H:i:s");
        $dados['active']= 1;
        $modelcolor->setColor($dados);
         
         header('Location: /color');
    }    


}

?>
