<?php

class color extends controller {

    public function index_action() {
        
    //Chama o Smarty
        $this->smarty->assign('title', 'Color');
         $this->smarty->display('color/index.tpl');
    }


}

?>
