{foreach from=$ajudante_lista item="data"}
    <tr id="line_{$data.id_ajudante}">
        <td>{$data.id_ajudante}</td>
        <td>{$data.nome}</td>    
        <td>

            <span class="link_falso" onclick="link_edita_ajudante({$data.id_ajudante})">
                <img src="/files/images/cad_edit.png" alt="Alterar" width="25" height="25" title="Alterar">
            </span> 


            <span class="link_falso" onclick="link_exclui_ajudante({$data.id_ajudante})">
                <img src="/files/images/cad_exclui.png" alt="Alterar" width="25" height="25" title="Alterar">
            </span> 

        </td>
    </tr>   
{foreachelse}    
    <tr>    
        <td>Nenhum Registro Encontrado</td>
    </tr>
{/foreach}

