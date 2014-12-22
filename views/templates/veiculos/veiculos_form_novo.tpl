{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>Novo Veículo</h1>
        <hr>
        
        <form name="frm-veiculos" 
              action="/veiculos/gravar_veiculos" 
              method="POST" 
              enctype="multipart/form-data"
              onsubmit="return validaFormulario()">
            
            {if {$registro.id_veiculos}>0}
                Codigo:{$registro.id_veiculos}
            {else}
                Codigo: Novo Registro
            {/if}
            <input type="hidden" name="id_veiculos" value="{$registro.id_veiculos}" /><br><br>
            Descrição:
            <br>
            <input type="text" id="descricao" name="descricao" value="{$registro.descricao|default:''}" />            
            <br>
            <br>
            Placa:
            <br>
            <input type="text" id="placa" name="placa" value="{$registro.placa|default:''}" />
            <br>
            <br>
            Tipo:
            <br>
            <input type="text" id="tipo" name="tipo" value="{$registro.tipo|default:''}" />
            <br>
            <br>             
            <input type="hidden" name="status" value="{$registro.status}" />

            <input class="btn btn-primary" type="submit" value="Gravar" name="btnGravar" />
            <br>
            <hr>
            <a class="glyphicon glyphicon-backward" href="/veiculos"> Voltar</a>
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
<script src="/files/js/veiculos/veiculos_novo.js"></script>

{include file="comuns/footer.tpl"}

