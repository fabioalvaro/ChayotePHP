{include file="comuns/head.tpl"}

<!DOCTYPE html>
<html>
    <head>
        <title>{$title}</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div>
            <h1>Sucessos por cidade</h1>
        
            
             <table border="0"class="table table-striped" >
            <thead>
                <tr>
                    <th>CIDADE</th>
                    <th>QTDE</th>
                  <tr>
            </thead>
            <tbody>
                {foreach from=$cidades item="cidade"}
                <tr>
                    <td>{$cidade.Cidade}</td>
                    <td>{$cidade.Qtde}</td>
                           
                    </tr>
                {/foreach}        
            </tbody>
        </table>

            
        </div>
    </body>
    
 
    
</html>