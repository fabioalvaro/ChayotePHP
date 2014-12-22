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

                <div class="row">
                    <form 
                        name="form_buscar" 
                        action="/agendamento_revisita/rel_agendamento" 
                        method="POST" 
                        enctype="multipart/form-data"
                        onsubmit="return validaFormPreRel()">

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="col-sm-3">
                                    Unidade Consumidora:
                                    <div class="input-group col-lg-12">
                                        <input  type="text" class="form-control col-lg-12" name="uc" id="uc" value="{$uc|default:''}">                     
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
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
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="col-sm-3">
                                    Ordenar por:
                                    <div class="input-group col-lg-12">
                                        <select class="form-control" id="orderby" name="orderby">
                                            <option value="DA">Data Agendada</option>
                                            <option value="DR">Data do Registro</option>
                                        </select>             
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="col-sm-3">
                                    <br>
                                    <div class="input-group col-lg-12">
                                        <input  type="submit" class="btn btn-primary" name="btn_buscar" id="btn_buscar" value="Buscar">                     
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form>

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
<script type="text/javascript" src="/files/js/agendamento_revisita/prerel_agendamento.js"></script>
