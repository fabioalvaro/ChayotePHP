{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        <div class="panel panel-default">

            <div class="panel-heading">
                <h1>Forçar Troca</h1>
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
                        action="/rota/forcar" 
                        method="POST" 
                        enctype="multipart/form-data"
                        onsubmit="return validaFormBuscar()">
                        <div class="col-sm-6">
                            <div class="col-sm-6">
                                Unidade Consumidora:
                                <div class="input-group col-lg-12">
                                    <input  type="text" class="form-control col-lg-12" name="uc" id="uc" value="{$uc|default:''}">                     
                                </div>
                            </div>
                            <div class="col-sm-6">
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

                {if isset($troca)}
                    <div class="row">

                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label>Forçar: </label>
                                    {if $troca.forca_roteirizacao|default:0}SIM{else}NÃO{/if}
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <label>Cliente: </label>
                                    {$troca.nome|default:'N/A'}
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <label>Status: </label>
                                    {$troca.situacao|default:'N/A'}
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <br><hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table table-hover"border="1">
                                        <label>HISTORICO</label>
                                        <thead>
                                            <tr>
                                                <th>Tentativa</th>  
                                                <th>Motivo</th>                                            
                                            </tr>
                                        </thead>
                                        <tbody>
                                            {$count = 1}
                                            {foreach from=$tentativa_lista|default:NULL item="linha"}
                                                <tr>
                                                    <td>{$count++}</td>
                                                    <td>{$linha.descricao}</td>
                                                </tr>
                                            {foreachelse}
                                                <tr>
                                                    <td colspan="2">    
                                                        Nada encontrado..
                                                    </td>                                            
                                                </tr>
                                            {/foreach}
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <br><hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table table-hover"border="1">
                                        <label>HISTORICO FORCA ROTEIRIZACAO</label>
                                        <thead>
                                            <tr>
                                                <th>Usuário</th>
                                                <th>Motivo</th>  
                                                <th>Data</th>                                          
                                            </tr>
                                        </thead>
                                        <tbody>
                                            {foreach from=$forcar_lista|default:NULL item="linha"}
                                                <tr>
                                                    <td>{$linha.nome}</td>
                                                    <td>{$linha.motivo}</td>
                                                    <td>{$linha.datahora|date_format:"%d/%m/%Y %H:%M:%S"}</td>
                                                </tr>
                                            {foreachelse}
                                                <tr>
                                                    <td colspan="3">    
                                                        Nada encontrado..
                                                    </td>                                            
                                                </tr>
                                            {/foreach}
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-12">
                                    {if !$troca.forca_roteirizacao|default:0}
                                        <form 
                                            name="form_buscar" 
                                            action="/rota/forcar_gravar" 
                                            method="POST" 
                                            enctype="multipart/form-data"
                                            onsubmit="return validaFormForcar()">
                                            <input  type="hidden" class="form-control col-lg-12" name="uc" id="uc" value="{$uc|default:''}">
                                            <label>Descrição do Motivo: </label>
                                            <div class="input-group col-sm-12">
                                                <input  type="text" class="form-control col-lg-12" name="descricao_motivo" id="descricao_motivo">                     
                                            </div>
                                            <br>
                                            <div class="input-group col-sm-12">
                                                <input  type="submit" class="btn btn-danger col-sm-3" name="btn_salvar" id="btn_salvar" value="Forçar Troca">                     
                                            </div>
                                        </form>
                                    {/if}
                                </div>
                            </div>
                        </div>

                    </div>
                {else}
                    <div class="row">
                        <div class="col-sm-6">
                            Realize uma busca...
                        </div>
                    </div>
                {/if}

            </div>

            <div class="panel-footer">
                <a class="glyphicon glyphicon-arrow-left" href="/rota"> Voltar</a><br>
            </div>
        </div>
        <!--Altere daqui pra cima-->
    </div>
</div>

<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<!--<script src="/files/js/jquery-2.1.1.js"></script>-->
<script src="/files/js/jquery_ui/js/jquery-ui-1.10.4.custom.min.js"></script>
<!--<script src="/files/js/jquery_ui/js/jquery-ui.min.js"></script>-->
<script src="/files/js/bootstrap.js"></script>
<!-- Toast Message -->
<script src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<!-- Utils -->
<script src="/files/js/util.js"></script>
<!-- JS Especifico do Controller -->
<script src="/files/js/rota/forcar.js"></script>
{include file="comuns/footer.tpl"}
