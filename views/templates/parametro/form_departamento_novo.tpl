<form id="frm_cad_departamento" name="frm_cad_departamento">
  <fieldset>
    <legend>Cadastro de Departamentos</legend>

    <input type="hidden" name="emp_dep_id" id="emp_dep_id" value="{$registro[0].emp_dep_id}" size="60" /><br/>

    <label for="emp_dep_pai_id">Departamento Ancestral</label>    
    <select name="emp_dep_pai_id" id="emp_dep_pai_id">
      {html_options options=$lista_departamentos selected=$registro[0].emp_dep_pai_id}
    </select>   

    <label for="emp_id">Empresa</label>   
    <select name="emp_id" id="emp_id">
      {html_options options=$lista_empresas selected=$registro[0].emp_id}
    </select>

    <label for="departamento">Departamento</label>
    <input type="text" name="departamento" id="departamento" value="{$registro[0].departamento}" size="60" /><br/>
    <br/>
    <br/>
    <br/>
    <input type="button" class="btn_padrao" value="Salvar Depto" onclick="btn_salvar_departamento()"/><br/>
    <input type="button" class="btn_padrao" value="Voltar" onclick="btn_inicio_depto_click()"/><br/>
  </fieldset>
</form>
          <div class="clear"></div>
