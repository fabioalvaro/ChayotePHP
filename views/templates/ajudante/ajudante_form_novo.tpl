{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">


        <h1>Novo Ajudante</h1>

        <a href="/ajudante" class="btn btn-danger"> Voltar</a><br><br>

        <form name="frm-ajudante" 
              action="/ajudante/gravar_ajudante" 
              method="POST" 
              enctype="multipart/form-data"
              onsubmit="return validaFormulario()">

            {if {$registro.id_ajudante}>0}
                Código:{$registro.id_ajudante}
            {else}
                Código: Novo Registro
            {/if}
            <input type="hidden" name="id_ajudante" id="id_ajudante" value="{$registro.id_ajudante}" /><br>

            <div class="input-group">
                <span class="input-group-addon ">Nome:</span>
                <input class="form-control" type="text" name="nome" id="nome" value="{$registro.nome}" />
            </div><br>
            <div class="input-group">
                <span class="input-group-addon ">Tel1:</span>
                <input class="form-control" type="text" name="telefone1" id="telefone1" value="{$registro.telefone1}" />
            </div><br>

            <div class="input-group">
                <span class="input-group-addon ">Tel2:</span>
                <input class="form-control" type="text" name="telefone2" id="telefone2" value="{$registro.telefone2}" />
            </div><br>

            <div class="input-group">
                <span class="input-group-addon ">Email:</span>
                <input class="form-control" type="text" name="email" id="email" value="{$registro.email}" />
            </div>
            <input type="hidden" name="status" id="status" value="{$registro.status}" /><br><br>

            <input class="btn btn-primary" type="submit" value="Gravar" name="btnGravar" id="btnGravar" />         
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
<script src="/files/js/ajudante/ajudante_novo.js"></script>
<script src="/files/js/bootbox.min.js"></script>

{include file="comuns/footer.tpl"}
