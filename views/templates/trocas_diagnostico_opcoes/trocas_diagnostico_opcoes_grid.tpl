{foreach from=$padrao_lista item="data"}
  <tr id="line_{$data.id_diagnostico_trocas}">
    <td>{$data.id_troca}</td>
    
    <td>        
      <span class="link_falso" onclick="link_edita_trocas_diagnostico_opcoes({$data.id_diagnostico_trocas})">
        <img src="/files/images/cad_edit.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span>
      <span class="link_falso" onclick="link_exclui_trocas_diagnostico_opcoes({$data.id_diagnostico_trocas})">
        <img src="/files/images/cad_exclui.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 
    </td>
  </tr>   
  {foreachelse}    
  <tr>    
    <td>Nenhum Registro Encontrado</td>
  </tr>
{/foreach}
