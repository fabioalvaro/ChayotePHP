{foreach from=$padrao_lista item="data"}
  <tr id="line_{$data.id_documento}">
    <td>{$data.descricao}</td>  
    <td>{$data.caminho}</td>
    <td>{$data.Tipo}</td>
    <td>{$data.id_troca}</td>

    <td>        
      <span class="link_falso" onclick="link_edita_documento({$data.id_documento})">
        <img src="/files/images/cad_edit.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span>
      <span class="link_falso" onclick="link_exclui_documento({$data.id_documento})">
        <img src="/files/images/cad_exclui.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 
    </td>
  </tr>   
  {foreachelse}    
  <tr>    
    <td>Nenhum Registro Encontrado</td>
  </tr>
{/foreach}