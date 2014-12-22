{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        
        <div class="alert alert-info" >
            <tt><h1>Nova Reclama&ccedil;&atilde;o</h1></tt>
        </div>          
        
        <a href="/reclamacao" class="btn btn-primary"> Voltar</a><br>
        <form name="frm-reclamacao" 
              action="/reclamacao/gravar_reclamacao" method="POST" 
              enctype="multipart/form-data"
              onsubmit="return validaFormulario()">
            <div class="form-group"> 
                <label for="id_reclamacao_historico">            
                    {if {$registro.id_reclamacao}>0}
                        Código:{$registro.id_reclamacao}
                    {else}
                        Código: Novo Registro
                    {/if}    
                </label>
                <div type="hidden" class="form-group">        
                    <input type="hidden" class="form-control" name="id_reclamacao" id="id_reclamacao" value="{$registro.id_reclamacao}" />
                </div>
                <br>
                <div class="input-group col-lg-4">
                    <span class="input-group-addon btn-outline btn-primary">Usuário - {$smarty.session.user.nome}</span>
                        <input type="text" class="form-control" name="id_usuario" id="id_usuario" value="{$registro.id_usuario|default: {$smarty.session.user.id_usuario}}" READONLY >           
                </div> 
                <br>
                <div class="input-group col-lg-4">
                    <span class="input-group-addon btn-outline btn-primary">UC</span>
                        <input type="text" class="form-control" name="uc" id="uc" value="{$registro.uc}">           
                </div> 
                <br> 
                <div class="input-group col-lg-4">
                    <span class="input-group-addon btn-outline btn-primary">Nome</span>
                        <input type="text" class="form-control" name="nome" id="nome" value="{$registro.nome}">           
                </div> 
                <br> 
                <div class="input-group col-lg-4">
                    <span class="input-group-addon btn-outline btn-primary">Telefone</span>
                        <input type="text" class="form-control" name="telefone" id="telefone" value="{$registro.telefone}">           
                </div> 
                <br> 
                <div class="input-group col-lg-12">
                    <span class="input-group-addon btn-outline btn-primary">Descri&ccedil;&atilde;o</span>
                        <input type="textarea" class="form-control" style="width: 100%;" name="descricao" id="descricao" rows="5" cols="15" value="{$registro.descricao}"</textarea>           
                </div> 
                <br> 
                <div type="hidden" class="form-group">        
                    <input type="hidden" class="form-control" name="status" id="status" value="{$registro.status}" />
                </div>
                <br>            
                <div type="hidden" class="form-group">        
                    <input type="hidden" class="form-control" name="envia_email" id="envia_email" value="{$registro.envia_email}" />
                </div>
                <br>            
                
                {if {$registro.id_reclamacao}>0}
                    <input type="submit" class="btn btn-primary" value="Salvar" name="btnGravar"/>
                {else}
                    <input type="submit" class="btn btn-primary" value="Cadastrar" name="btnGravar"/>
                {/if}  
            </div>
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
<script src="/files/js/reclamacao/reclamacao_novo.js"></script>

{include file="comuns/footer.tpl"}

