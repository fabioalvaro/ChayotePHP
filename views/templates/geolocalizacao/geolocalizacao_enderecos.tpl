<table class="table table-hover">
    <thead>
        <tr>           
            <th>id_uc</th> 
            <th>lat</th>
            <th>long</th>
            <th>gErro</th>
            <th>Ação</th>
        </tr>
    </thead>
    <tbody>     
        {foreach from=$troca_lista item="linha"}
            <tr>
                <td><a href="#" onclick="pop_detalhes({$linha.id_uc})">{$linha.id_uc}</a></td>
                <td>{$linha.Latitude}</td>
                <td>{$linha.Longitude}</td>
                <td>{if ($linha.id_geoErro==0)}<span class="label label-default">0-Novo</span>{/if}
                    {if ($linha.id_geoErro==1)}<span class="label label-success">1-Sucesso</span>{/if}
                    {if ($linha.id_geoErro==2)}<span class="label label-warning">2-Erro</span>{/if}                    
                    
                </td>
                <td> 
                    <a href="#" onclick="pop_detalhes({$linha.id_uc})">Detalhes</a> | 
                    {if $linha.Latitude!=''}
                    <a href="#" onclick="criaMarcadorNoMapaLink({$linha.Latitude},{$linha.Longitude})">Mapa</a>
                    {/if}
                </td>
            {foreachelse}
            <tr><td colspan="2">Nenhum registro encontrado</td></tr>
        {/foreach}          
    </tbody>
</table>


