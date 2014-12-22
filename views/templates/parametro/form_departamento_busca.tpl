<div id="painel_basico" class="basico_depto_busca">
    <fieldset>
      <legend>Buscar</legend>
      Departamento:<input type="text" name="colaborador_busca_texto" id="colaborador_busca_texto" value=""/>
      <label>Empresa:</label>          
      <select name="busca_empresa" id="busca_empresa">
        {html_options options=$lista_empresas}
      </select><br>
      <input type="button" class="btn_padrao" value="buscar" id="btn_colaborador_buscar" 
             name="btn_departamento_buscar"
             onclick="btn_busca_departamento()"/>
    </fieldset>
      <div class="clear"></div>
  <div class="alinha_esquerda">    
    <button onclick="btn_novo_departamento_click()" class="btn_padrao">Novo Departamento</button>
  </div>
  <div id="grid_resultados" class="box_resultados_100">    
    <div class="clear"></div>
    <table id="lista_departamentos" name="lista_departamentos" class="basicTable">
      <thead>
        <tr>
          <th>cod</th>
          <th>departamento</th>
          <th>Ação</th>
        </tr>
      </thead>      
      <tbody>
        {include file="parametro/grid_departamento.tpl" departamento_lista=$departamento_lista}
      </tbody>      
    </table>

  </div>
  
  <div class="clear"></div>
  
</div>