{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <div class="alert alert-info" >
            <tt><h1>Postar Acompanhamento</h1></tt>
        </div>          
        <div class="alert alert-info" >
            <tt><h2>Ticket # - UC {$uc_reclamacao}</h2></tt>
        </div>          
        
        <a href="/reclamacao/carrega_detalhe/id_reclamacao/{$reclamacao_id}" class="btn btn-primary"> Voltar</a><br>
        
        <form name="frm-reclamacao_historico" 
              action="/reclamacao/gravar_reclamacao_historico" 
              method="POST" 
              enctype="multipart/form-data"
              onsubmit="return validaFormulario()">
            
              <div class="form-group">
                <label for="id_reclamacao_historico">            
                    {if {$registro.id_reclamacao_historico}>0}
                        Código:{$registro.id_reclamacao_historico}
                    {else}
                        Código: Novo Registro
                    {/if}            
                </label>
                <div type="hidden" class="form-group">        
                    <input type="hidden" class="form-control" name="id_reclamacao_historico" id="id_reclamacao" value="{$registro.id_reclamacao_historico}" />
                </div>
                <br>
                <div class="input-group col-lg-4">
                    <span class="input-group-addon btn-outline btn-primary">Reclama&ccedil;&atilde;o</span>
                        <input type="text" class="form-control" name="id_reclamacao" id="id_reclamacao" value="{$registro.id_reclamacao|default: $reclamacao_id}" READONLY >           
                </div> 
                <br>
                <div class="input-group col-lg-12">
                    <div class="input-group col-lg-8">
                        <span class="input-group-addon btn-outline btn-primary">Tipo</span>                    
                        <select class="form-control col-lg-12" name="id_reclamacao_tipo" id="id_reclamacao_tipo"> 
                            {html_options options=$lista_tipos selected=$registro.id_reclamacao_tipo}
                        </select>                        
                    </div><!-- /input-group -->
                </div>                
                <div type="hidden" class="form-group">        
                    <input type="hidden" class="form-control" name="id_usuario" id="id_usuario" value="{$id_usuario_reclamacao}" />
                </div>
                <div type="hidden" class="form-group">        
                    <input type="hidden" class="form-control" name="status" id="status" value="{$registro.status}" />
                </div>                
                <div class="input-group col-lg-8">
                    <span class="input-group-addon btn-outline btn-primary">Mensagem</span>
                    <input type="text" class="form-control" name="mensagem" id="mensagem" rows="4" cols="15" style="width: 100%;" value="{$registro.mensagem}" />
                </div>
              </div>
              <br>
                <input type="submit" class="btn btn-primary" value="Cadastrar" name="btnGravar"/>               
        </form>

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
<!-- JS Especifico do Controller -->
<script src="/files/js/reclamacao_historico/reclamacao_historico_novo.js"></script>

{include file="comuns/footer.tpl"}

