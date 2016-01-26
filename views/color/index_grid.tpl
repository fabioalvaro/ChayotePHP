<table class="table table-striped">
    <thead>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>Created</th>
            <th>Active</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>John</td>
            <td>Doe</td>
            <td>john@example.com</td>
            <td>john@example.com</td>
           
        </tr>

        {foreach from=$listcolor item="linha"}
            <tr>                                                                
                <td>{$linha.id}</td>
                <td>{$linha.name}</td>
                <td>{$linha.created}</td>
                <td>{$linha.active}</td>  
                 <td>View | Edit | Delete</td>

            </tr>
        {foreachelse}
            <tr><td colspan="100%">Empty Table</td></tr>
        {/foreach}          
    </tbody>
</table>