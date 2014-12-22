<div id="painel_basico" class="basico_cargo_busca">
  <fieldset>
    <legend>Buscar</legend>
    Cargo:<input type="text" name="cargo_busca_texto" id="cargo_busca_texto" value=""/>
    <label>Empresa:</label>          
    <select name="busca_empresa" id="busca_empresa">
      {html_options options=$lista_empresas}
    </select><br>
    <input type="button" class="btn_padrao" value="buscar" 
           id="btn_cargo_buscar" name="btn_cargo_buscar" 
           onclick="btn_busca_cargo()"/>
  </fieldset>   
  <div class="clear"></div>
  <div class="alinha_esquerda">    
    <button onclick="btn_novo_cargo_click()" class="btn_padrao">Novo Cargo</button>
  </div>
  <div id="grid_resultados" class="box_resultados_100">    
    <div class="clear"></div>
    <table id="lista_cargos" name="lista_cargos" class="basicTable">
      <thead>
        <tr>
          <th>cod</th>
          <th>cargo</th>
          <th>Ação</th>
        </tr>
      </thead>      
      <tbody>
        {include file="parametro/grid_cargo.tpl" cargo_lista=$cargo_lista}
      </tbody>      
    </table>
  </div>
  <div class="clear"></div>
</div>