<form id="frm_cad_cargo" name="frm_cad_cargo">
  <fieldset>
    <legend>Cadastro de Cargos</legend>

    <input type="hidden" name="emp_car_id" id="emp_car_id" value="{$registro[0].emp_car_id}" size="60" /><br/>

    <label for="emp_dep_id">Departamento</label>   
    <select name="emp_dep_id" id="emp_dep_id">
      {html_options options=$lista_departamentos selected=$registro[0].emp_dep_id}
    </select>

    <label for="cargo">Cargo</label>
    <input type="text" name="cargo" id="cargo" value="{$registro[0].cargo}" size="60" /><br/>
    <br/>
    <br/>
    <br/>
    <input type="button" class="btn_padrao" value="Salvar Cargo" onclick="btn_salvar_cargo()"/><br/>
    <input type="button" class="btn_padrao" value="Voltar" onclick="btn_inicio_cargo_click()"/><br/>
  </fieldset>
</form>
<div class="clear"></div>
