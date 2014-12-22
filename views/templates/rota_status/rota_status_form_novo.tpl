{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

<h1>Nova Rota Status</h1>


<form name="frm-rota_status"
      action="/rota_status/gravar_rota_status"
      method="POST" enctype="multipart/form-data"
      onsubmit="return validaFormulario()">
    
    {if {$registro.id_rota_status}>0}
                Código:{$registro.id_rota_status} <br>
            {else}
            <br><label for="novo">Código: Novo Registro</label> 
            {/if}
    <input type="hidden" name="id_rota_status" value="{$registro.id_rota_status}" /><br><br>

     <div class="input-group">        
        <label for="descricao">Descrição</label>        
        <input type="text" class="form-control" name="descricao" id="descricao" value="{$registro.descricao}" />
    </div>      <br> 
            
    <div class="form-group">                     
    <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravar" />       
    <a href="/rota_status" class="btn btn-primary"> Voltar</a>
</form>
    
            </div>
    
<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/bootstrap.js"></script>
<!-- Toast Message -->
<script src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<!-- Utils -->
<script src="/files/js/util.js"></script>
<!-- JS Especifico do Controller -->
<script src="/files/js/rota_status/rota_status_novo.js"></script>

{include file="comuns/footer.tpl"}
