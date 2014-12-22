{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>Novo Tentativa Motivo</h1>
        <hr>

        <form name="frm-tentativa_motivo"
              action="/tentativa_motivo/gravar_tentativa_motivo"
              method="POST" enctype="multipart/form-data"
              onsubmit="return validaFormulario()">

            <div class="row">
                {if {$registro.id_tentativa_motivo}>0}
                    Código:{$registro.id_tentativa_motivo} <br>
                {else}
                    <br><label for="novo">Código Tentativa Motivo: Novo Registro</label> 
                {/if}
                <input type="hidden" name="id_tentativa_motivo" value="{$registro.id_tentativa_motivo}" /><br><br>
            </div>

            <div class="row">
                <div class="input-group col-sm-3">        
                    <label for="latitude">Descrição</label>        
                    <input type="text" class="form-control" name="descricao" id="descricao" value="{$registro.descricao}" />
                </div> 
                <div class="input-group col-sm-3">        
                    <label for="latitude">Permite Roteirizar Novamente?</label>        
                    <select class="form-control" name="permite_rota" id="permite_rota">
                        <option value="1" {if isset($permite_rota) && ($permite_rota == 1)}selected{/if}>SIM</option>
                        <option value="0" {if isset($permite_rota) && ($permite_rota == 0)}selected{/if}>NAO</option>
                    </select> 
                </div>  
            </div>
            <br>
            <div class="row">

                <div class="input-group col-sm-2">  
                    <div class="col-sm-6"> 
                        <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravar" />
                    </div> 
                    <div class="col-sm-6"> 
                        <a href="/tentativa_motivo" class="btn btn-primary"> Voltar</a>
                    </div> 
                </div>
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
    <script src="/files/js/tentativa_motivo/tentativa_motivo_novo.js"></script>

    {include file="comuns/footer.tpl"}
