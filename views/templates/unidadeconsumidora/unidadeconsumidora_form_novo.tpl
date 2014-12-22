{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>Nova Unidade Consumidora</h1>


        <form name="frm-unidadeconsumidora"
              action="/unidadeconsumidora/gravar_unidadeconsumidora"
              method="POST" enctype="multipart/form-data"
              onsubmit="return validaFormulario()"
              >

            {if {$registro.id_uc}>0}
                Código:{$registro.id_uc} <br>
            {else}
                <br><label for="novo">ID Unidade Consumidora: Novo Registro</label> 
            {/if}
            <input type="hidden" name="id_uc" value="{$registro.id_uc}" /><br><br>

            <div class="input-group">
                <label for="nome">Código Unidade Consumidora</label> 
                <input type="text" class="form-control"  name="UC" id="UC" value="{$registro.UC}" >

            </div><br>
            <div class="input-group">
                <label for="nome">Nome</label> 
                <input type="text" class="form-control"  name="nome" id="nome" value="{$registro.nome}" >

            </div><br>
            <div class="input-group">        
                <label for="telefone">Telefone</label>        
                <input type="text" class="form-control" name="telefone" id="telefone" value="{$registro.telefone}" />
            </div><br> 
            <div class="input-group">        
                <label for="cpf">CPF</label>        
                <input type="text" class="form-control" name="cpf" id="cpf" value="{$registro.cpf}" />
            </div><br> 
            <div class="input-group">        
                <label for="bairro">Bairro</label>  <br> 
                {html_options name=id_bairro options=$lista_codigo_bairro }
            </div><br>
            <div class="input-group">        
                <label for="endereco">Endereço</label>        
                <input type="text" class="form-control" name="endereco" id="endereco" value="{$registro.endereco}" />
            </div><br> 
            <div class="input-group">        
                <label for="numero">Nº</label>        
                <input type="text" class="form-control" name="numero" id="numero" value="{$registro.numero}" />
            </div><br> 
            <div class="input-group">
                <label for="cep">CEP</label> 
                <input type="text" class="form-control"  name="cep" id="cep" value="{$registro.cep}" >
            </div><br>
            <div class="input-group">
                <label for="cep">Complemento</label> 
                <input type="text" class="form-control"  name="complemento" id="complemento" value="{$registro.complemento}" >
            </div><br>
            <div class="input-group">        
                <label for="latitude">Latitude</label>        
                <input type="text" class="form-control" name="latitude" id="latitude" value="{$registro.Latitude}" />
            </div><br>     
            <div class="input-group">        
                <label for="longitude">Longitude</label>        
                <input type="text" class="form-control" name="longitude" id="longitude" value="{$registro.Longitude}" />
            </div><br>     

            <div class="form-group">                     
                <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravar" />       
                <a href="/unidadeconsumidora" class="btn btn-primary"> Voltar</a>
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
    <script src="/files/js/unidadeconsumidora/unidadeconsumidora_novo.js"></script>

    {include file="comuns/footer.tpl"}
