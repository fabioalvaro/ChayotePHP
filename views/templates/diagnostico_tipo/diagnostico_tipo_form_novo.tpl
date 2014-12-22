{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

<h1>Novo Tipo de Diagnostico</h1>


<form name="frm-diagnostico_tipo"
      action="/diagnostico_tipo/gravar_diagnostico_tipo"
      method="POST" enctype="multipart/form-data"
      onsubmit="return validaFormulario()"
      >
    
    {if {$registro.id_diagnostico_tipo}>0}
                codigo:{$registro.id_diagnostico_tipo} <br>
            {else}
            <br><label for="novo">Codigo Diagnostico Tipo: Novo Registro</label> 
            {/if}
    <input type="hidden" name="id_diagnostico_tipo" value="{$registro.id_diagnostico_tipo}" /><br><br>
    
    <div class="input-group">        
        <label for="latitude">Descrição</label>        
        <input type="text" class="form-control" name="descricao" id="descricao" value="{$registro.descricao}" />
    </div><br>     
   
    
    <div class="form-group">                     
    <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravar" />       
    <a href="/diagnostico_tipo" class="btn btn-primary"> Voltar</a>
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
<script src="/files/js/diagnostico_tipo/diagnostico_tipo_novo.js"></script>

{include file="comuns/footer.tpl"}
