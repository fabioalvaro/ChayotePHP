{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>Upload do Cronograma</h1>
        
        <form name="frm-cronograma" 
              action="/cronograma/sobe_cronograma/" 
              method="POST" 
              enctype="multipart/form-data"
              onsubmit="return validaFormulario()"
              >
            {if {$registro.id_cronograma}>0}
                Código:{$registro.id_cronograma}
            {else}
                Código: Novo Registro
            {/if}
            <br><br>
            
            Projetos:

            <select class="form-control" id="selecionaprojeto" name="selecionaprojeto">
                {foreach from=$projetos item="projeto"}
                    <option value="{$projeto.id_projetos}">{$projeto.nome}</option>
                {/foreach}
            </select>
            <br>
            {*Status: 
            <select class="form-control" id="status" name="status">
                {foreach from=$cronograma_lista item="cronograma_lista"}
                    <option value="{$cronograma_lista.statusStatCrono}">{$cronograma_lista.descStatCrono}</option>
                {/foreach}
            </select>*}
            Arquivo: <input type="file" class="form-control" name="arquivo" id="arquivo" value="" width="50" />
            <br>


            Observação: <input type="text" class="form-control" name="observacao" id="mensagem" value="" /><br>

          

            <br>
            <input type="submit" value="Enviar" name="btnEnviar" class="btn btn-primary" /> 
            <a href="/cronograma/cronograma_fox" class="btn btn-primary"> Voltar</a><br>
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
<script src="/files/js/cronograma/cronograma_novo.js"></script>

{include file="comuns/footer.tpl"}

