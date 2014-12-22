{include file="comuns/head.tpl"}
<div class="col-sm-12">
    <div class="panel panel-primary">
        <div class="panel-body">

            <h1>Relatório de Agendamentos de Revisitas</h1>  
            <hr>
            <span><b>Filtros: </b>UC -> {$uc|default:"N/A"} | Data Inicial -> {$data_inicial|default:"N/A"} | Data Final -> {$data_final|default:"N/A"}</span>

        </div>
    </div>
</div>


<div class="col-sm-12">
    <table class="table table-hover"border="1">
        <thead>
            <tr>
                <th>UC</th>  
                <th>Nome</th>
                <th>Municipio</th>
                <th>Bairro</th>
                <th>Data Agendamento</th>  
                <th>Data Registro</th>    
                <th>Telefone</th>   
                <th>Observação</th>                                         
            </tr>
        </thead>
        <tbody>
            {foreach from=$agendamento_lista|default:NULL item="linha"}
                <tr>
                    <td>{$linha.uc}</td>
                    <td>{$linha.nome_cliente}</td>
                    <td>{$linha.municipio}</td>
                    <td>{$linha.bairro}</td>
                    <td>{$linha.dt_agendada|date_format:"%d/%m/%Y %H:%M:%S"}</td>
                    <td>{$linha.dt_registro|date_format:"%d/%m/%Y %H:%M:%S"}</td>
                    <td>{$linha.telefone}</td>
                    <td>{$linha.obs}</td>
                </tr>
            {foreachelse}
                <tr>
                    <td colspan="100%">    
                        Nada encontrado..
                    </td>                                            
                </tr>
            {/foreach}
        </tbody>
    </table>
</div>

<script type="text/javascript" src="/files/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/files/js/bootstrap.js"></script>
<script type="text/javascript" src="/files/js/jquery_ui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<script type="text/javascript" src="/files/js/util.js"></script>

<script type="text/javascript" src="/files/js/jquery.mask.js"></script>
