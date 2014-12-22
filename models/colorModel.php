<?php

class colorModel extends model {

    var $tabPadrao = 'veiculos';
    var $campo_chave = 'id_veiculos';

    //Estrutura da Tabela Vazia Utilizada para novos Cadastros
    public function estrutura_vazia() {
        $dados = null;
        $dados[0]['id_veiculos'] = NULL;
        $dados[0]['descricao'] = NULL;
        $dados[0]['placa'] = NULL;
        $dados[0]['tipo'] = NULL;
        $dados[0]['status'] = NULL;
        return $dados;
    }

    //Recupera o Log
    public function getVeiculo($where = null) {
        $select = array('*');
        return $this->read($this->tabPadrao, $select, $where, null, null, null, null);
    }

    //Grava o log
    public function setVeiculo($array) {

        $this->startTransaction();

        $id = $this->transaction(
                $this->insert($this->tabPadrao, $array, false)
        );

        $this->commit();

        return $id;
    }

    //Atualiza o Log
    public function updVeiculo($array) {
        //Chave    
        $where = $this->campo_chave . " = " . $array[$this->campo_chave];
        $this->startTransaction();
        $this->transaction($this->update($this->tabPadrao, $array, $where));
        $this->commit();
        return true;
    }

    //Remove o Log
    public function delVeiculo($array) {
        //Chave
        $where = $this->campo_chave . " = " . $array[$this->campo_chave];
        $array2['status'] = 0; //Muda status para zero excluido!   
        $this->startTransaction();
        $this->transaction($this->update($this->tabPadrao, $array2, $where));
        $this->commit();
        return true;
    }

}

?>
