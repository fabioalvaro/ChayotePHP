{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        <form name="form_main" action="tentativa/relatorio" method="POST" enctype="multipart/form-data" onsubmit="return validaFormPreRel()" >
            <div class="panel panel-default">
                
                <div class="panel-heading">
                    <h2>Acompanhamento de Tentativas</h2>
                </div>
                
                <div class="panel-body">

                    <div class="row">
                        
                        <div class="col-xs-3">
                            <div class="form-group">
                                <label for="data_inicio">ID Projeto:</label>
                                <input type="text" name="id_projeto" class="form-control" id="id_projeto" value="1"/>
                            </div>
                        </div>
                        
                        <div class="col-xs-3">
                            <div class="form-group">
                                <label for="data_inicio">Data inicial:</label>
                                <input type="text" name="data_inicio" class="form-control data datepicker" id="data_inicio" />
                            </div>
                        </div>

                        <div class="col-xs-3">
                            <div class="form-group">
                                <label for="data_fim">Data final:</label>
                                <input type="text" name="data_fim" class="form-control data datepicker" id="data_fim" />
                            </div>
                        </div>
                        
                    </div>

                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group">
                                <button id="gerar" class="btn btn-primary form-control">Visualizar</button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </form>
    </div>
    <!--Altere daqui pra cima-->

</div>

<!-- JavaScript -->
<script type="text/javascript" src="/files/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/files/js/bootstrap.js"></script>
<script type="text/javascript" src="/files/js/jquery_ui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<script type="text/javascript" src="/files/js/util.js"></script>

<script type="text/javascript" src="/files/js/jquery.mask.js"></script>
<script type="text/javascript" src="/files/js/tentativa/pre_rel.js"></script>

{include file="comuns/footer.tpl"}
