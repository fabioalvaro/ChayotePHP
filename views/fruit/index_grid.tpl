<table class="table table-striped">
    <thead>
        <tr>
            <th>id</th>
            <th>description</th>
            <th>Created</th>
            <th>Active</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$listfruit item="linha"}
            <tr>                                                                
                <td>{$linha.id}</td>
                <td>{$linha.description}</td>
                <td>{$linha.created}</td>
                <td>{if $linha.active eq 1} Enabled{/if}{if $linha.active eq 0} Disabled{/if}</td>  
                 <td><a href="/fruit/detalhes/id/{$linha.id}">Details</a> | 
                     <a href="/fruit/edit/id/{$linha.id}">Edit</a> | 
                     <a href="/fruit/delete/id/{$linha.id}" class="del">Delete</a></td>
            </tr>
        {foreachelse}
            <tr><td colspan="100%">Empty Table</td></tr>
        {/foreach}          
    </tbody>
</table>