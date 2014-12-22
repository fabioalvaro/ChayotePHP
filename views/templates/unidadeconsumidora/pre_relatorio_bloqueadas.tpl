{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        <form name="form_main" action="/unidadeconsumidora/relatorio_bloqueadas" method="POST" enctype="multipart/form-data">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>Relatório de UCs Bloqueadas</h2>
                </div>
                <div class="panel-body">

                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group">
                                <button id="gerar" class="btn btn-primary form-control">Gerar</button>
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

{include file="comuns/footer.tpl"}
