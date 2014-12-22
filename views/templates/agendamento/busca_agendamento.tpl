{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        <div class="panel panel-default">

            <div class="panel-heading">
                <h1>Agendamento de Revisita</h1>
            </div>

            <div class="panel-body"> 

                {if isset($msg_erro)}
                    <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span></button>
                        {$msg_erro}
                    </div>
                {/if}
                {if isset($msg_sucesso)}
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span></button>
                        {$msg_sucesso}
                    </div>
                {/if}

                <div class="row">
                    <form 
                        name="form_buscar" 
                        action="/agendamento_revisita/busca_agendamento" 
                        method="POST" 
                        enctype="multipart/form-data"
                        onsubmit="return validaFormBuscar()">
                        <div class="col-sm-12">
                            <div class="col-sm-3">
                                Unidade Consumidora:
                                <div class="input-group col-lg-12">
                                    <input  type="text" class="form-control col-lg-12" name="uc" id="uc" value="{$uc|default:''}">                     
                                </div>
                            </div>
                            <div class="col-sm-3">
                                Data Inicial:
                                <div class="input-group col-lg-12">
                                    <input readonly style="background: white" type="text" class="form-control col-lg-12 data" name="data_inicial" id="data_inicial" value="{$data_inicial|default:NULL}">                     
                                </div>
                            </div>
                            <div class="col-sm-3">
                                Data Final:
                                <div class="input-group col-lg-12">
                                    <input readonly style="background: white" type="text" class="form-control col-lg-12 data" name="data_final" id="data_final" value="{$data_final|default:NULL}">                     
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <br>
                                <div class="input-group col-lg-12">
                                    <input  type="submit" class="btn btn-primary" name="btn_buscar" id="btn_buscar" value="Buscar">                     
                                </div>
                            </div>
                        </div>
                    </form>

                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <br><hr>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-3">
                        <div class="input-group col-lg-12">
                            <a  href="/agendamento_revisita/novo_agendamento" class="btn btn-danger" name="btn_novo" id="btn_novo">Novo Agendamento</a>  
                            <br><br>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <table class="table table-hover"border="1">
                            <thead>
                                <tr>
                                    <th>UC</th>  
                                    <th>Municipio</th>
                                    <th>Bairro</th>
                                    <th>Nome</th>
                                    <th>Data Agendamento</th>   
                                    <th>Ação</th>                                          
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$agendamento_lista|default:NULL item="linha"}
                                    <tr>
                                        <td>{$linha.uc}</td>
                                        <td>{$linha.municipio}</td>
                                        <td>{$linha.bairro}</td>
                                        <td>{$linha.usuario}</td>
                                        <td>{$linha.dt_agendada|date_format:"%d/%m/%Y %H:%M:%S"}</td>
                                        <td><a class="glyphicon glyphicon-trash" onclick="excluir_agendamento({$linha.id_agendamento_revisita})" href="#">Excluir</a></td>
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
                        {if !empty($smarty.session.paginacao.botoes.meio)}
                            <ul class="pagination">
                                <li>{$smarty.session.paginacao.botoes.primeiro}</li>
                                    {$smarty.session.paginacao.botoes.meio} 
                                <li>{$smarty.session.paginacao.botoes.ultimo}</li>
                            </ul> 
                        {/if}
                    </div>
                </div>


            </div>

            <div class="panel-footer">
                <a class="glyphicon glyphicon-arrow-left" href="/home"> Voltar</a><br>
            </div>
        </div>
        <!--Altere daqui pra cima-->
    </div>
</div>

<script type="text/javascript" src="/files/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/files/js/bootstrap.js"></script>
<script type="text/javascript" src="/files/js/jquery_ui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<script type="text/javascript" src="/files/js/util.js"></script>

<script type="text/javascript" src="/files/js/jquery.mask.js"></script>
<script type="text/javascript" src="/files/js/agendamento_revisita/busca_agendamento.js"></script>
