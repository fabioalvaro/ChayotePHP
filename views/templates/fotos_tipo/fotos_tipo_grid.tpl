{foreach from=$padrao_lista item="data"}
  <tr id="line_{$data.id_fotos_tipo}">
    <td>{$data.descricao}</td>
    <td>{$data.status}</td>

    <td>        
      <span class="link_falso" onclick="link_edita_fotos_tipo({$data.id_fotos_tipo})">
        <img src="/files/images/cad_edit.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span>
      <span class="link_falso" onclick="link_exclui_documento_tipo({$data.id_fotos_tipo})">
        <img src="/files/images/cad_exclui.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 
    </td>
  </tr>   
  {foreachelse}    
  <tr>    
    <td>Nenhum Registro Encontrado</td>
  </tr>
{/foreach}