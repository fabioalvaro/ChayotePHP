{foreach from=$colaborador_lista item="data"}
  <tr id="line_{$data.col_id}">
    <td>{$data.col_id}</td>
    <td>{$data.nome}</td>    
    <td>
      <span class="link_falso" onclick="link_edita_colaborador({$data.col_id})">
        <img src="/files/images/cad_edit.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 
      
      
      <span class="link_falso" onclick="link_exclui_colaborador({$data.col_id})">
        <img src="/files/images/cad_exclui.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 

    </td>
  </tr>   
  {foreachelse}    
  <tr>
    <td>--</td>
    <td>--</td>
    <td>--</td>
  </tr>
{/foreach}

