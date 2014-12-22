{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>Novo Bairro</h1>


        <form name="frm-bairro"
              action="/bairro/gravar_bairro"
              method="POST" enctype="multipart/form-data"
              onsubmit="return validaFormulario()"
              >

            {if {$registro.id_bairro}>0}
                codigo:{$registro.id_bairro} <br>
            {else}
                <br><label for="novo">Codigo Bairro: Novo Registro</label> 
            {/if}
            <input type="hidden" name="id_bairro" id="id_bairro" value="{$registro.id_bairro}" /><br><br>
            <div class="input-group">
                <label for="nome">Municipio</label> 
                <select class="form-control" id="id_municipio" name="id_municipio">
                    {foreach from=$resultado item="resultado2"}
                        <option value="{$resultado2.id_municipio}" {if $registro.id_municipio == $resultado2.id_municipio}selected{/if}>{$resultado2.nome}</option>
                    {/foreach}
                </select>

            </div><br>
            <div class="input-group">        
                <label for="telefone">Bairro</label>        
                <input type="text" class="form-control" name="nome" id="nome" value="{$registro.nome}" />
            </div><br> 


            <div class="form-group">                     
                <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravar" />       
                <a href="/bairro" class="btn btn-primary"> Voltar</a>
            </div>
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
    <script src="/files/js/bairro/bairro_novo.js"></script>

    {include file="comuns/footer.tpl"}
