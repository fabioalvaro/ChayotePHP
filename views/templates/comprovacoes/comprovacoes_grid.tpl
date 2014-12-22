{foreach from=$padrao_lista item="data"}
  <tr id="line_{$data.id_motorista}">
    <td>{$data.id_motorista}</td>
    <td>{$data.nome}</td>
    <td>{$data.telefone1}</td>
    <td>{$data.telefone2}</td>
    <td>{$data.email}</td>
    <td>{$data.status}</td>
    <td>        
      <span class="link_falso" onclick="link_edita_motorista({$data.id_motorista})">
        <img src="/files/images/cad_edit.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span>
      <span class="link_falso" onclick="link_exclui_motorista({$data.id_motorista})">
        <img src="/files/images/cad_exclui.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 
    </td>
  </tr>   
  {foreachelse}    
  <tr>    
    <td>Nenhum Registro Encontrado</td>
  </tr>
{/foreach}

