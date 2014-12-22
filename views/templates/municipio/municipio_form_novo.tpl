{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>Novo Municipio</h1>


        <form name="frm-municipio"
              action="/municipio/gravar_municipio"
              method="POST" enctype="multipart/form-data"
              onsubmit="return validaFormulario()"
              >

            {if {$registro.id_municipio}>0}
                Código:{$registro.id_municipio} <br>
            {else}
                <br><label for="novo">Código Município: Novo Registro</label> 
            {/if}
            <input type="hidden" name="id_municipio" value="{$registro.id_municipio}" /><br><br>
            <div class="input-group">
                <label for="id_estado">Estado</label> 
                
                <select class="form-control" id="id_estado" name="id_estado">
                    {foreach from=$resultado item="resultado2"}
                        <option value="{$resultado2.id_estado}">{$resultado2.uf}</option>
                    {/foreach}
                </select>


            </div><br>
            <div class="input-group">        
                <label for="descricao">Código IBGE</label>        
                <input type="text" class="form-control" name="codigo_ibge" id="codigo_ibge" value="{$registro.codigo_ibge}" />
            </div><br> 
            <div class="input-group">        
                <label for="nome">Nome</label>        
                <input type="text" class="form-control" name="nome" id="nome" value="{$registro.nome}" />
            </div><br> 

            <div class="form-group">                     
                <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravar" />       
                <a href="/municipio" class="btn btn-primary"> Voltar</a>
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
    <script src="/files/js/municipio/municipio_novo.js"></script>

    {include file="comuns/footer.tpl"}
