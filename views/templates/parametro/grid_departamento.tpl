{foreach from=$departamento_lista item="data"}
  <tr id="line_{$data.emp_dep_id}">
    <td>{$data.emp_dep_id}</td>
    <td>{$data.departamento}</td>    
    <td>
      <span class="link_falso" onclick="link_edita_departamento({$data.emp_dep_id})">
        <img src="/files/images/cad_edit.png" title="Alterar" alt="Alterar" height="40px">
      </span> 
      
      
      <span class="link_falso" onclick="link_exclui_departamento({$data.emp_dep_id})">
        <img src="/files/images/cad_exclui.png" title="Alterar" alt="Alterar" height="40px">
      </span> 

    </td>
  </tr>   
  {foreachelse}    
  <tr>
    <td></td>
    <td>Faça uma busca</td>
    <td></td>
  </tr>
{/foreach}

