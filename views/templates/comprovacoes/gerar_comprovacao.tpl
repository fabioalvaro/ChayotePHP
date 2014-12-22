<html>
    <head>
        {include file="comuns/head.tpl"}
    </head>
    <body>
        <div id="wrapper">
            <!-- Sidebar -->
            {include file="comuns/sidebar.tpl"}    
            <div id="page-wrapper">
                <!--Altere daqui pra baixo-->

                <h1>Gerar Comprovação</h1>

                <div class="tab-content">
                    <form name     = "frm_compromovacoes_gerar" 
                          action   = "/comprovacoes/gerar"  
                          method   = "POST" 
                          enctype  = "multipart/form-data"
                          id="frm_compromovacoes_gerar">
                        
                        <input type="hidden" name="id_troca" value="{$dados.id_troca}" />

                        <div class="row">   
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="troca">TROCA:</label>                           
                                    <input class="form-control" type="text" name="troca" id="troca"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group">                     
                                <input type="button" class="btn btn-primary" value="Liberar Comprovação" name="btnGerar" onclick="enviarDados();" />       
                                <a href="/dashboard" class="btn btn-primary"> Voltar</a>
                            </div>
                        </div>



                    </form>
                </div>
            </div>
        </div>

        <!-- JavaScript -->
        <script src="/files/js/jquery-1.10.2.js"></script>
        <!--<script src="/files/js/jquery-2.1.1.js"></script>-->
        <script src="/files/js/jquery_ui/js/jquery-ui-1.10.4.custom.min.js"></script>
        <!--<script src="/files/js/jquery_ui/js/jquery-ui.min.js"></script>-->
        <script src="/files/js/bootstrap.js"></script>
        <!-- Toast Message -->
        <script src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
        <!-- Utils -->
        <script src="/files/js/util.js"></script>
        <!-- JS Especifico do Controller -->
        <script src="/files/js/comprovacoes/gerar.js"></script>

        {include file="comuns/footer.tpl"}
    </body>
</html>