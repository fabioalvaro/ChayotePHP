{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>Novo Tipo de Documento</h1>


        <form name="frm-documento_tipo"
              action="/documento_tipo/gravar_documento_tipo"
              method="POST" enctype="multipart/form-data"
              onsubmit="return validaFormulario()"
              >

            {if {$registro.id_documento_tipo}>0}
                Código:{$registro.id_documento_tipo} <br>
            {else}
                <br><label for="novo">Código Tipo de Documento: Novo Registro</label> 
            {/if}
            <input type="hidden" name="id_documento_tipo" value="{$registro.id_documento_tipo}" /><br><br>

            <div class="input-group">        
                <label for="latitude">Descrição</label>        
                <input type="text" class="form-control" name="descricao" id="descricao" value="{$registro.descricao}" />
            </div><br>     


            <div class="form-group">                     
                <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravar" />       
                <a href="/documento_tipo" class="btn btn-primary"> Voltar</a>
            </div>
        </form>

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
<script src="/files/js/documento_tipo/documento_tipo_novo.js"></script>

{include file="comuns/footer.tpl"}
