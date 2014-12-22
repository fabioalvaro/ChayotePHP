{foreach from=$empresa_lista item="data"}
  <tr id="line_{$data.emp_id}">
    <td>{$data.emp_id}</td>
    <td>{$data.nome_fantasia}</td>
    <td>{$data.tipos}</td>
    <td style="text-align:center;vertical-align:middle;">
      <span class="link_falso" onclick="link_edita_empresa({$data.emp_id})">
        <img src="/files/images/cad_edit.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 
      
      
      <span class="link_falso" onclick="link_exclui_empresa({$data.emp_id})">
        <img src="/files/images/cad_exclui.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 
    </td>
  </tr>   
  {foreachelse}    
  <tr>
    <td></td>
    <td></td>
    <td>Faça uma busca</td>
    <td></td>
  </tr>
{/foreach}