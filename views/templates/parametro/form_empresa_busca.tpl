<div class="basico_empresa_busca">
  <fieldset>
    <legend>Buscar</legend>
    Empresa:<input type="text" name="empresa_busca_texto" id="empresa_busca_texto" value=""/>   
    <input type="button" class="btn_padrao" value="Buscar" id="btn_empresa_buscar" 
           name="btn_empresa_buscar" 
           onclick="btn_busca_empresa()"/>
  </fieldset>
  <div class="clear"></div>
  <div class="alinha_esquerda">    
    <button onclick="btn_novo_empresa_click()" class="btn_padrao">Nova Empresa</button>
  </div>
  <div id="grid_resultados" class="box_resultados_100">    
    <div class="clear"></div>
    <table id="lista_empresas" name="lista_empresas" class="basicTable">
      <thead>
            <tr>        
              <th>Cód.</th>
              <th>Empresa</th>
              <th>Tipo</th>
              <th>Ação</th>
            </tr>
          </thead>
      <tbody>
        {include file="parametro/grid_empresas.tpl" empresa_lista=$empresa_lista}
      </tbody>      
    </table>
  </div>
  <div class="clear"></div>
</div>