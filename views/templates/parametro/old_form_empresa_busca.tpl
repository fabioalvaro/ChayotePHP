<div id="painel_basico">
  <div class="titulos_paginas" id="parametros">
    <h2>
      <img src="../../../files/images/icon_tab_parametros.png" width="63" height="75" /> 
      Parâmetros</h2>
  </div>
  <div id="tabs"  style="height: 900px;">
    <ul>
      <li><a href="#tabs-1" >Empresa</a></li>    
    </ul>
    <div id="tabs-1">    
      <div id="tab_content">
        <button onclick="btn_nova_empresa_click()" class="btn_padrao">Nova Empresa</button>
        <table border="1" class="tableList" width="100%">
          <thead>
            <tr>        
              <th>Cód.</th>
              <th>Empresa</th>
              <th>Tipo</th>
              <th>Acao</th>
            </tr>
          </thead>
          <tbody>
            {include file="parametro/grid_empresas.tpl" empresa_lista=$empresa_lista}
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>