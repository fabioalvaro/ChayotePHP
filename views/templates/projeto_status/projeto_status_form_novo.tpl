{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        <div class="alert alert-info" >
            <h1>Novo Status do Projeto - Status : {if {$registro.id_projeto_status}>0} Edi&ccedil;&atilde;o {else} Inclus&atilde;o {/if}</h1>
        </div>  
        <div class="row">
            <div class="col-lg-6">  
                <a href="/projeto_status" class="btn btn-primary"> Voltar</a><br> <br>
                <form name="frm-projeto-status" action="/projeto_status/gravar_projeto_status" method="POST" enctype="multipart/form-data" onsubmit="return validaFormulario()" role="form">
                    <div class="row">
                        <div class="form-group  col-lg-6">
                            <label  class="control-label" for="disabledInput">Código</label>
                            {if {$registro.id_projeto_status}>0}                        
                                <input class="form-control" id="disabledInput" type="text" value="{$registro.id_projeto_status}" disabled>
                            {else}
                                <input class="form-control" id="disabledInput" type="text" value="Novo Registro" disabled>
                            {/if}
                        </div>          
                        <input type="hidden" name="id_log" value="{$registro.id_projeto_status}" />
                    </div>
                    <div class="form-group">
                        <label  class="control-label" for="descricao">Descri&ccedil;&atilde;o</label>                        
                        <input type="text" class="form-control" name="descricao" id="descricao" value="{$registro.descricao}">           
                    </div>
                    
                    <input type="hidden" name="status" value="{$registro.status}" />
                <!-- //Dock das mensagens -->
                <div id="mensagem-dock"></div>                    
                    <input type="submit" value="Gravar" name="btnGravar" id="btnGravar" class="btn btn-success btn-lg"/>       
                </form>
            </div>     
        </div>
        <!--Altere daqui pra cima-->
    </div>
</div>

<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/bootstrap.js"></script>
<!-- Toast Message -->
<script src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<!-- Utils -->
<script src="/files/js/util.js"></script>
<script src="/files/js/ion.sound.js"></script>
<!-- JS Especifico do Controller -->
<script src="/files/js/projeto_status/projeto_status_novo.js"></script>

{include file="comuns/footer.tpl"}

