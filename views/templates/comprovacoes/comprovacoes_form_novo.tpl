{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

<h1>Novo Motorista</h1>

<a href="/motorista" class="btn btn-primary"> voltar</a><br><br>
<form role="form" name="frm-motorista" action="/motorista/gravar_motorista" method="POST" enctype="multipart/form-data" onsubmit="return validaFormulario()" >
    {if {$registro.id_motorista}>0}
                Código:{$registro.id_motorista}
    {else}
                Código: Novo Registro
    {/if}         
    
    <div type="hidden" class="form-group">        
        <input  type="hidden" class="form-control" name="id_motorista" value="{$registro.id_motorista}" />
    </div>
    <div class="form-group">
        <label for="nome">Nome</label>
        <input type="text" class="form-control" name="nome" id="nome" value="{$registro.nome}" />
    </div>
    <div class="form-group">
        <label for="telefone1">Telefone 1</label>
        <input type="text" class="form-control" name="telefone1" id="telefone1" value="{$registro.telefone1}" />
    </div>
    <div class="form-group">
        <label for="telefone2">Telefone 2</label>
        <input type="text" class="form-control" name="telefone2" id="telefone2" value="{$registro.telefone2}" />
    </div>
    <div class="form-group">        
        <label for="email">E-mail</label>        
        <input type="text" class="form-control" name="email" id="email" value="{$registro.email}" />
    </div>
    <div class="form-group">        
        <input type="hidden" class="form-control" name="status" value="{$registro.status}" /><br><br>
    <div class="form-group">
    
    <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravar" />         
</form>

        <!--Altere daqui pra cima-->
    </div>
</div>

<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/bootstrap.js"></script>
<script src="/files/js/motorista/motorista_novo.js"></script>

{include file="comuns/footer.tpl"}

