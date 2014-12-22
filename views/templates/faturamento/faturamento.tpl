{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        <div class="panel panel-default">

            <div class="panel-heading">
                <h1>Faturamento</h1>
            </div>

            <div class="panel-body"> 

                {if isset($erro)}
                    <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span></button>
                        {$erro}
                    </div>
                {/if}

                <div class="row">
                    <div class=" col-sm-6">
                        <a href="/faturamento/novo_faturamento" class="btn btn-primary col-sm-6">Novo Faturamento</a>
                    </div>
                </div>
                
                <br>

                <div class="row">
                    <div class=" col-sm-6">
                        <a href="/faturamento/pre_relatorio_faturamento" class="btn btn-primary col-sm-6">Relatório Faturamento</a>
                    </div>
                </div>

            </div>

            <div class="panel-footer">
                <a class="glyphicon glyphicon-arrow-left" href="/dashboard"> Voltar</a><br>
            </div>

        </div>

    </div>
    <!--Altere daqui pra cima-->
</div>
</div>

<script type="text/javascript" src="/files/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/files/js/bootstrap.js"></script>
<script type="text/javascript" src="/files/js/jquery_ui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<script type="text/javascript" src="/files/js/util.js"></script>

<script type="text/javascript" src="/files/js/jquery.mask.js"></script>
<script type="text/javascript" src="/files/js/faturamento/novo_faturamento.js"></script>
{include file="comuns/footer.tpl"}
