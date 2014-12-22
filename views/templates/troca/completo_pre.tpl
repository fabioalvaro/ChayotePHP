{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <div class="panel panel-default">

            <div class="panel-heading">
                <h1>Relatório Operacional de Trocas</h1>
            </div>

            <div class="panel-body">
                <form name="frmTrocaOperacional" action="relatorioCompleto" method="POST" enctype="multipart/form-data">
                    
                    <div class="row">
                   
                  <div class="col-xs-3">
                  <div class="form-group">
                   {if $verprojeto=1}   
                  <label for="select_projeto">Projeto:</label>             
                    <select name="select_projeto" id="select_projeto" class="form-control">
                        {foreach from=$lista_projetos item="projeto"}
                        <option value="{$projeto.id_projetos}">{$projeto.nome}</option>
                        {/foreach}
                    </select>
                    {/if}
                         </div>
                        </div>
                        
                        <div class="col-xs-3">
                            <div class="form-group">             
                   
                    <label for="data_inicio">Data Inicial:</label>
                    <input type="text" class="form-control data datepicker" name="data_inicio" id="data_inicio"  />
                          </div>
                        </div>
                        
                        <div class="col-xs-3">
                            <div class="form-group">
                   <label for="data_fim">Data Final:</label>
                    <input type="text" class="form-control data datepicker" name="data_fim" id="data_fim" />
                    </div>
                        </div>
                    </div>
                   <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group">
                                <input type="button" value="Gerar Relatorio" name="gerarCompleto" id="gerarCompleto" class="btn btn-primary form-control" onclick="return validaFormCompleto()"/>
                                
                                </div>
                        </div>
                    </div>
                
                </form>
            </div>

            
              {if isset($mensagem) && $mensagem neq ''}
                <div class="alert alert-danger">{$mensagem}</div>
                {/if}
            
            
            <div class="panel-footer">
                <a href="/dashboard"> Voltar</a>
            </div>

        </div>


        <!--Altere daqui pra cima-->
    </div>
</div>

<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/util.js" type="text/javascript"></script>
<script src="/files/js/toastmessage/javascript/jquery.toastmessage.js" type="text/javascript"></script>
<script type="text/javascript" src="/files/js/jquery_ui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="/files/js/bootstrap.js"></script>
<script type="text/javascript" src="/files/js/jquery.mask.js"></script>
<script type="text/javascript" src="/files/js/troca/completo.js"></script>
{include file="comuns/footer.tpl"}
