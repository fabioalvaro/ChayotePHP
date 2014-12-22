{foreach from=$padrao_lista item="data"}
  <tr id="line_{$data.id_uc}">
    <td>{$data.codigo}</td>
    <td>{$data.nome}</td>
    <td>{$data.telefone}</td>
    <td>{$data.cpf}</td>
    <td>{$data.Bairro}</td> 
    <td>{$data.endereco}</td>
    <td>{$data.complemento}</td>
    <td>{$data.cep}</td>
    <td>{$data.latitude}</td>
    <td>{$data.longitude}</td>
    
    <td>        
      <span class="link_falso" onclick="link_edita_unidadeconsumidora({$data.id_uc})">
        <img src="/files/images/cad_edit.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span>
      <span class="link_falso" onclick="link_exclui_unidadeconsumidora({$data.id_uc})">
        <img src="/files/images/cad_exclui.png" alt="Alterar" width="25" height="25" title="Alterar">
      </span> 
    </td>
  </tr>   
  {foreachelse}    
  <tr>    
    <td>Nenhum Registro Encontrado</td>
  </tr>
{/foreach}