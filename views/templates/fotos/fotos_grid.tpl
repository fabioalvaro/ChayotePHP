{foreach from=$padrao_lista item="data"}
  <tr id="line_{$data.id_fotos}">
    <td>{$data.id_caminho}</td>
    <td>{$data.id_filename}</td>
    <td>{$data.Tipo}</td>  
    <td>        
      <span class="link_falso" onclick="link_edita_fotos({$data.id_fotos})">
        <img src="/files/images/cad_edit.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span>
      <span class="link_falso" onclick="link_exclui_fotos({$data.id_fotos})">
        <img src="/files/images/cad_exclui.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 
    </td>
  </tr>   
  {foreachelse}    
  <tr>    
    <td>Nenhum Registro Encontrado</td>
  </tr>
{/foreach}

