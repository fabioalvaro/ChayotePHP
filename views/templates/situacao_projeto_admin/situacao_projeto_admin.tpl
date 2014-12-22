{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">


        <h1>Situação do Projeto Copel</h1>


        <div class="input-group col-lg-4">
            <span class="input-group-addon ">Total:</span>
            <input class="form-control" type="text" name="nome" id="nome" value="{$trocaTotal.total}" readonly="readonly"/>
        </div>
        <div class="input-group col-lg-4">
            <span class="input-group-addon ">Sucesso:</span>
            <input class="form-control" type="text" name="telefone1" id="telefone1" value="{$trocaSucesso.total}" readonly="readonly"/>
        </div>

        <div class="input-group col-lg-4">
            <span class="input-group-addon ">Insucesso:</span>
            <input class="form-control" type="text" name="telefone2" id="telefone2" value="{$trocaInsucesso.total}"readonly="readonly" />
        </div>
        <div class="input-group col-lg-4">
            <span class="input-group-addon ">Não Iniciada</span>
            <input class="form-control" type="text" name="telefone2" id="telefone2" value="{$trocaNaoIniciada.total}"readonly="readonly" />
        </div>

        <div class="input-group col-lg-4">
            <span class="input-group-addon ">Em Rota:</span>
            <input class="form-control" type="text" name="email" id="email" value="{$trocaEmRota.total}"readonly="readonly" />
        </div>
       <!-- <input type="hidden" name="status" id="status" value="{$registro.status}" /><br><br> -->
        
        
        
         <h1>Situação do Projeto CPFL</h1>


        <div class="input-group col-lg-4">
            <span class="input-group-addon ">Total:</span>
            <input class="form-control" type="text" name="nome" id="nome" value="{$trocaTotalCPFL.total}" readonly="readonly"/>
        </div>
        <div class="input-group col-lg-4">
            <span class="input-group-addon ">Sucesso:</span>
            <input class="form-control" type="text" name="telefone1" id="telefone1" value="{$trocaSucessoCPFL.total}" readonly="readonly"/>
        </div>

        <div class="input-group col-lg-4">
            <span class="input-group-addon ">Insucesso:</span>
            <input class="form-control" type="text" name="telefone2" id="telefone2" value="{$trocaInsucessoCPFL.total}"readonly="readonly" />
        </div>
        <div class="input-group col-lg-4">
            <span class="input-group-addon ">Não Iniciada</span>
            <input class="form-control" type="text" name="telefone2" id="telefone2" value="{$trocaNaoIniciadaCPFL.total}"readonly="readonly" />
        </div>

        <div class="input-group col-lg-4">
            <span class="input-group-addon ">Em Rota:</span>
            <input class="form-control" type="text" name="email" id="email" value="{$trocaEmRotaCPFL.total}"readonly="readonly" />
        </div>
        


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
