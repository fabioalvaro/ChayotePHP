{include file="comuns/head.tpl"}
<div style="margin-left: 15px;margin-right: 15px;margin-top: -15px">

    <div class="row">
        <div class="col-xs-6">
            <h2>Relatório de Críticas</h2>
            <p>{$data_ini|date_format:'%d/%m/%Y'|default:''} até {$data_fim|date_format:'%d/%m/%Y'|default:''}</p>
            <hr>
        </div>
    </div>

    <table class="table table-hover table-striped">
        <thead>
            <tr>                
                <th>UC</th>                
                <th>Nome</th>
                <th>CPF</th>
                <th>Endereço</th>
                <th>Bairro</th>
                <th>Município</th>    
                <th>Motorista</th>
                <th>Crítica</th>     
                <th>Projeto</th>
                <th>Usuario</th>
                <th>Data</th>
                <th>Foto</th>
                <th>Tipo</th>
            </tr>        
        </thead>
        <tbody>
            {foreach from=$lista_critica item="reg"}   
            <tr>                
                <td>{$reg.uc}</td>                
                <td>{$reg.nome}</td>
                <td>{$reg.cpf}</td>
                <td>{$reg.endereco}</td>
                <td>{$reg.bairro}</td>
                <td>{$reg.municipio}</td>
                <td>{$reg.motorista}</td>
                <td>{$reg.critica}</td>    
                <td>{$reg.projeto}</td>  
                <td>{$reg.UsuarioCritica}</td> 
                <td>{$reg.dataCritica|date_format:'%d/%m/%Y'|default:''}</td> 
                <td>{$reg.filename}</td> 
                <td>{$reg.TipoFoto}</td> 
                
            </tr>
            {foreachelse}
            <tr>
                <td colspan="100%">Nenhum registro encontrado.</td>
            </tr>
            {/foreach}
            <tr>
                <td colspan="100%">TOTAL : <strong>{sizeof($lista_critica)}</strong></td>
            </tr>
        </tbody>
    </table>
</div>

<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/bootstrap.js"></script>

{include file="comuns/footer.tpl"}
