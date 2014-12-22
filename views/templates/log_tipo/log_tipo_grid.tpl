{foreach from=$log_tipo_lista item="linha"}
  <tr id="line_{$data.id_log_tipo}">
    <td>{$data.id_log_tipo}</td>
    <td>{$data.descricao}</td>    
    <td>{$data.status}</td>    
    <td>
         <tr>
            <td><a href="/log_tipo/novo_log_tipo/id_log_tipo/{$linha.id_log_tipo}">{$linha.id_log_tipo}</a></td>
            <td>{$linha.descricao}</td>
            <td>{$linha.status}</td>
            <td> <a class="glyphicon glyphicon-pencil" href="/log_tipo/novo_log_tipo/id_log_tipo/{$linha.id_log_tipo}">Editar</a> |
                <a class="glyphicon glyphicon-trash" href="/log_tipo/dellog_tipo/id_log_tipo/{$linha.id_log_tipo}">Excluir</a> </td>
        </tr>
    </td>
  </tr>   
  {foreachelse}    
  <tr>    
    <td>Nenhum Registro Encontrado</td>
  </tr>
{/foreach}


