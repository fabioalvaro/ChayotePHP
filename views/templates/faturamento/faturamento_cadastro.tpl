{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        <div class="panel panel-default">

            <div class="panel-heading">
                <h1>Faturamento</h1>
            </div>

            <div class="panel-body"> 

                {if isset($erro)}
                    <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span></button>
                        {$erro}
                    </div>
                {/if}

                <div class="row">

                    <form 
                        name="form_buscar" 
                        action="/faturamento/novo_faturamento" 
                        method="POST" 
                        enctype="multipart/form-data"
                        onsubmit="return validaFormBusca()">

                        <div class="col-sm-12">
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label for="data_inicio">Projeto:</label>
                                    <div class="input-group col-lg-12">
                                        <select class="form-control" name="id_projeto" id="id_projeto">
                                            {html_options options=$lista_projetos selected=$id_projeto}
                                        </select>                    
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <div class="form-group">
                                    <label for="data_inicio">Data inicial:</label>
                                    <input type="text" name="data_inicio" class="form-control data datepicker" id="data_inicio" value="{$data_inicio|default:''}">
                                </div>
                            </div>

                            <div class="col-xs-2">
                                <div class="form-group">
                                    <label for="data_fim">Data final:</label>
                                    <input type="text" name="data_fim" class="form-control data datepicker" id="data_fim" value="{$data_fim|default:''}">
                                </div>
                            </div>
                            <div class="col-xs-3">
                                <div class="form-group">
                                    <label class="col-sm-12"><br></label>
                                    <input type="submit" class="btn btn-primary col-sm-6" name="btn_buscar" id="btn_buscar" value="Buscar">  
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

                {if isset($lista_troca)}
                    <div class="row">
                        <div class="col-sm-12">

                            <div class="panel panel-primary">

                                <div class="panel-heading"> 

                                    <div class="row">

                                        <div class="col-sm-12">
                                            <div class="col-sm-2">
                                                <div class="form-group">
                                                    <label for="data_inicio">Nº NF:</label>
                                                    <input type="text" name="numero_nf" class="form-control numeric" id="numero_nf">  
                                                </div>
                                            </div>
                                            <div class="col-xs-2">
                                                <div class="form-group">
                                                    <label for="data_inicio">Laudo:</label>
                                                    <input type="text" name="laudo" class="form-control" id="laudo">
                                                </div>
                                            </div>

                                            <div class="col-xs-2">
                                                <div class="form-group">
                                                    <label for="data_fim">Data:</label>
                                                    <input type="text" name="data" class="form-control data datepicker" id="data">
                                                </div>
                                            </div>
                                            <div class="col-xs-3">
                                                <div class="form-group">
                                                    <label class="col-sm-12"><br></label>
                                                    <input type="button" class="btn btn-danger col-sm-6" name="btn_faturar" id="btn_faturar" value="Faturar" onclick="validaFormGravar()">  
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel-body"> 

                                    <div class="row">

                                        <div class="col-sm-12">
                                            Total de registros: <b>{$total_registro|default:0}</b>
                                            <table class="table table-hover" border="1">
                                                <thead>
                                                    <tr>
                                                        <th>PROJETO</th>
                                                        <th>UC</th>
                                                        <th>DATA DA TROCA</th>
                                                        <th><input id="check_all" type="checkbox" title="Selecionar todos"></th>
                                                    </tr>
                                                </thead>
                                                <tbody id="table_trocas">
                                                    {foreach from=$lista_troca item=troca}
                                                        <tr>
                                                            <td>{$troca.projeto}</td>
                                                            <td>{$troca.UC}</td>
                                                            <td>{$troca.data_conclusao|date_format:"%d/%m/%Y %H:%M:%S"}</td>
                                                            <td><input type="checkbox" name="cb_troca" id="cb_troca" value="{$troca.id_troca}" /></td>
                                                        </tr>
                                                    {foreachelse}
                                                        <tr>
                                                            <td colspan="4">Nenhuma troca encontrada</td>
                                                        </tr> 
                                                    {/foreach}
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                {/if}
            </div>
            <div class="panel-footer">
                <a class="glyphicon glyphicon-arrow-left" href="/dashboard"> Voltar</a><br>
            </div>
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
<script type="text/javascript" src="/files/js/faturamento/novo_faturamento.js"></script>
{include file="comuns/footer.tpl"}
