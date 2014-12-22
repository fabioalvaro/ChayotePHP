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

                {if isset($erro)}
                    <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span></button>
                        {$erro}
                    </div>
                {/if}

                <div class="row">
                    <form 
                        name="form_buscar" 
                        action="/agendamento_revisita/gravar_agendamento" 
                        method="POST" 
                        enctype="multipart/form-data"
                        onsubmit="return validaFormGravar()">

                        <input type="hidden" id="id_troca" name="id_troca" value="0">

                        <div class="col-sm-12">
                            <div class="col-sm-4">
                                Unidade Consumidora:
                                <div class="input-group col-lg-12">
                                    <input  type="text" class="form-control col-lg-12" name="uc" id="uc" value="{$uc|default:''}"> 
                                    <span class="input-group-btn">
                                        <input  type="button" class="btn btn-info" name="btn_buscar" id="btn_buscar" value="Buscar">
                                    </span>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                Data para Revisita:
                                <div class="input-group col-lg-12">
                                    <input readonly style="background: white" type="text" class="form-control col-lg-12 data" name="data_revisita" id="data_revisita" >
                                </div>
                            </div>
                            <div class="col-sm-4">
                                Telefone(Opcional):
                                <div class="input-group col-lg-12">
                                    <input  type="text" class="form-control col-lg-12 telefone" name="telefone" id="telefone" >
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="col-sm-12">
                                Observação:
                                <div class="input-group col-lg-12">
                                    <input  type="text" class="form-control col-lg-12" name="obs" id="obs" >
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12" id="div_uc">

                        </div>

                        <div class="col-sm-12">
                            <div class="col-sm-3">
                                <br>
                                <div class="input-group">
                                    <input  type="submit" class="btn btn-primary col-sm-12" name="btn_gravar" id="btn_gravar" value="Gravar">                     
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="panel-footer">
                <a class="glyphicon glyphicon-arrow-left" href="/agendamento_revisita"> Voltar</a><br>
            </div>
        </div>
        <!--Altere daqui pra cima-->
    </div>
</div>

<link rel="stylesheet" href="/files/css/jquery-ui-timepicker-addon.css">

<script type="text/javascript" src="/files/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/files/js/bootstrap.js"></script>
<script type="text/javascript" src="/files/js/jquery_ui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<script type="text/javascript" src="/files/js/util.js"></script>
<script type="text/javascript" src="/files/js/jquery.ui.timepicker.addon.js"></script>

<script type="text/javascript" src="/files/js/jquery.mask.js"></script>
<script type="text/javascript" src="/files/js/agendamento_revisita/novo_agendamento.js"></script>
