<link href="/files/js/jquery_ui/css/smoothness/jquery-ui.css">
<div id="painel_basico">
  <div class="titulos_paginas" id="parametros">
    <h2>
      <img src="../../../files/images/icon_tab_parametros.png" width="63" height="75" /> 
      Novo Colaborador</h2>
  </div>

  <fieldset>
    <legend>Cadastro de Colaborador</legend>  

    <form id="my_cad_form_colaborador" name="my_cad_form_colaborador" 
          action="#" method="POST" enctype="multipart/form-data">
     <input  type="hidden"  id="col_id" name="col_id" value="{$registro.col_id}"><br>
      
      <label for="emp_id">Empresa</label>      
      <select name="emp_id" id="emp_id">
       {html_options options=$lista_empresas selected=$registro.emp_id}
      </select><br>
      
      <label for="emp_car_id">Cargo</label>      
      <select name="emp_car_id" id="emp_car_id">
       {html_options options=$lista_cargos selected=$registro.emp_car_id}
      </select><br>      
      
      <label for="col_pai_id">Col. Superior</label>      
      <select name="col_pai_id" id="col_pai_id">
       {html_options options=$lista_colaboradores selected=$registro.col_pai_id}
      </select><br>          
      
      <label for="nome">nome *</label><input  type="text" id="nome" name="nome" value="{$registro.nome}"><br>
      <label for="sobrenome">sobrenome *</label><input  type="text" id="sobrenome" name="sobrenome" value="{$registro.sobrenome}"><br>
      <label for="data_nascimento">Data Nascimento*</label><input  type="text" class="campo_data" id="data_nascimento" name="data_nascimento" value="{$registro.data_nascimento|date_format:"%d/%m/%Y"}"><br>
      <label for="email_corporativo">email corporativo*</label><input  type="text" id="email_corporativo" name="email_corporativo" value="{$registro.email_corporativo}"><br>
      <label for="email_pessoal">email pessoal</label><input  type="text" id="email_pessoal" name="email_pessoal" value="{$registro.email_pessoal}"><br>
      <label for="data_admissao">Data Admissao</label><input  type="text" class="campo_data" id="data_admissao" name="data_admissao" value="{$registro.data_admissao}"><br>
      <label for="telefone_corporativo">telefone corporativo</label><input  type="text" id="telefone_corporativo" name="telefone_corporativo" value="{$registro.telefone_corporativo}"><br>
      <label for="ramal">Ramal*</label><input  type="text" id="ramal" name="ramal" value="{$registro.ramal}"><br>
      <label for="celular_corporativo">celular corporativo</label><input  type="text" id="celular_corporativo" name="celular_corporativo" value="{$registro.celular_corporativo}"><br>
      <label for="telefone_particulae">telefone particular</label><input  type="text" id="telefone_particulae" name="telefone_particulae" value="{$registro.telefone_particulae}"><br>
      <label for="celular_particular">celular particular</label><input  type="text" id="celular_particular" name="celular_particular" value="{$registro.celular_particular}"><br>
      <label for="senha">senha *</label><input type="password" type="text" id="senha" name="senha" value="{$registro.senha}"><br>
      
      <label for="col_sta_id">Status</label>
      <select name="col_sta_id" id="col_sta_id">
       {html_options options=$lista_status selected=$registro.col_sta_id}
      </select><br>     
    <input type="button" class="btn_padrao" value="Salvar Colaborador" onclick="btn_salvar_colaborador()"/><br/>
    <input type="button" class="btn_padrao" value="Voltar" onclick="btn_inicio_colaborador_click()"/><br/>  
    </form>
  </fieldset>
</div>