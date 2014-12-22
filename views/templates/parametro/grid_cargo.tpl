{foreach from=$cargo_lista item="data"}
  <tr id="line_{$data.emp_car_id}">
    <td>{$data.emp_car_id}</td>
    <td>{$data.cargo}</td>    
    <td>
      <span class="link_falso" onclick="link_edita_cargo({$data.emp_car_id})">
        <img src="/files/images/cad_edit.png" title="Alterar" alt="Alterar" height="40px">
      </span> 
      
      
      <span class="link_falso" onclick="link_exclui_cargo({$data.emp_car_id})">
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

