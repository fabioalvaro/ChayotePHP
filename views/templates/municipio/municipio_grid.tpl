{foreach from=$padrao_lista item="data"}
  <tr id="line_{$data.id_municipio}">
    <td>{$data.id_municipio}</td>
    <td>{$data.uf}</td>
    <td>{$data.codigo_ibge}</td>
    <td>{$data.id_nome}</td> 
    <td>        
      <span class="link_falso" onclick="link_edita_municipio({$data.id_municipio})">
        <img src="/files/images/cad_edit.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span>
      <span class="link_falso" onclick="link_exclui_municipio({$data.id_municipio})">
        <img src="/files/images/cad_exclui.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 
    </td>
  </tr>   
  {foreachelse}    
  <tr>    
    <td>Nenhum Registro Encontrado</td>
  </tr>
{/foreach}
