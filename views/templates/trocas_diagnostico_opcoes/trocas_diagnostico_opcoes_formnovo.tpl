{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

<h1>Novo Diagnostico de Trocas</h1>


<form name="frm-trocas_diagnostico_opcoes"
      action="/trocas_diagnostico_opcoes/gravar_trocas_diagnostico_opcoes"
      method="POST" enctype="multipart/form-data"
      >
    
    {if {$registro.id_diagnostico_trocas}>0}
                codigo:{$registro.id_diagnostico_trocas} <br>
            {else}
            <br><label for="novo">Codigo Diagnostico de Trocas: Novo Registro</label> 
            {/if}
    <input type="hidden" name="id_diagnostico_trocas" value="{$registro.id_diagnostico_trocas}" /><br><br>
    
    <div class="input-group">        
    <label for="latitude">Codigo da Troca</label>  <br> 
    {html_options name=id_troca options=$lista_codigo_troca selected=$id_troca}
    </div><br>

    
    
    <div class="form-group">                     
    <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravar" />       
    <a href="/trocas_diagnostico_opcoes" class="btn btn-primary"> Voltar</a>
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
<script src="/files/js/trocas_diagnostico_opcoes/trocas_diagnostico_opcoes_novo.js"></script>

{include file="comuns/footer.tpl"}
