{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->


        <form name    = "frm_prerel_critica" 
              id      = "frm_prerel_critica"
              action  = "/critica/relatorio"
              method  = "POST" 
              enctype = "multipart/form-data"
              target  = "_blank">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>Pré Relatório de Críticas</h2>
                </div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-3">
                            <div class="form-group">
                                <input type="radio" name="filtro" id="chk_periodo" value="0" onclick="abrir_campos('periodo');"/> <label for="chk_periodo">Periodo</label><br>
                                <input type="radio" name="filtro" id="chk_projeto" value="1" onchange="abrir_campos('projeto');"/> <label for="chk_projeto">Projeto</label><br>
                                <input type="radio" name="filtro" id="chk_cidade" value="2" onchange="abrir_campos('cidade');"/> <label for="chk_cidade">Cidade</label><br>
                                <input type="radio" name="filtro" id="chk_uc" value="3" onchange="abrir_campos('uc');"/> <label for="chk_uc">Unidade Consumidora</label><br>
                                <input type="radio" name="filtro" id="chk_geral" checked value="5" onchange="abrir_campos('geral_');"/> <label for="chk_geral">Geral</label><br>     
                            </div>
                        </div>
                    </div>     
                </div>
            </div>  

            {include file="critica/pre_rel_periodo.tpl"}  
            {include file="critica/pre_rel_projeto.tpl"}
            {include file="critica/pre_rel_cidade.tpl"}
            {include file="critica/pre_rel_uc.tpl"}   

            <div class="row" style="margin-top: 24px">
                <div class="col-lg-3">
                    <div class="form-group">
                        <input type="button" class="btn btn-primary form-control" id="visualizar" value="Visualizar" onclick="validaForm(this.form);"/>
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
<script type="text/javascript" src="/files/js/critica/pre_rel.js"></script>

{include file="comuns/footer.tpl"}
