{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>Nova Critica</h1>


        <form name="frm_critica"
              action="/critica/gravar_critica"
              method="POST" enctype="multipart/form-data"
              onsubmit="return validaFormulario()"
              >

            {if {$registro.critica}>0}
                Codigo:{$registro.id_critica} <br>
            {else}
                <br><label for="novo">Codigo: Novo Registro</label> 
            {/if}
            <input type="hidden" name="id_bairro" id="id_bairro" value="{$registro.id_critica}" /><br><br>
           
            <div class="input-group">        
                <label for="telefone">Descricao</label>        
                <input type="text" class="form-control" name="descricao" id="descricao" value="{$registro.descricao}" />
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
    <script src="/files/js/bairro/critica_novo.js"></script>

    {include file="comuns/footer.tpl"}
