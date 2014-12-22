{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!-- Sidebar -->
        {include file="comuns/sidebar.tpl"}        
        <!--Altere daqui pra baixo-->

        <div class="row">        

            <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Mapa Completo Administração</h3>
                        <div class="form-inline">
                         <div class="form-group  form-inline">
                            <label>Projeto</label>
                            <select class="form-control" name="id_projetos" id="id_projetos" onclick="id_projetosOnchange()">
                                <option value="">Selecione um projeto</option>
                                {html_options options=$lista_projetos}
                            </select>
                        </div>                            
                    <div class="form-group   form-inline">
                        <label>Cidade</label>                              
                        <select class="form-control" name="id_municipio" id="id_municipio">
                            <option value="">Selecione uma cidade</option>
                            {$lista_cidade_completa}                            
                        </select>
                    </div>  
                            <div class="form-group form-inline">
                                <label> Situação</label>
                                <select class="form-control" id="id_troca_situacao" name="id_troca_situacao">
                                    <option value="">Todos</option>
                                    <option value="3" {if $situacao_troca == 3}selected{/if}>sucesso</option>
                                    <option value="4" {if $situacao_troca == 4}selected{/if}>Insucesso</option>
                                    <option value="2" {if $situacao_troca == 2}selected{/if}>Em Rota</option>
                                    <option value="1" {if $situacao_troca == 1}selected{/if}>Não Iniciados</option>                                   
                                </select>
                            </div>     
                            
                            <div class="form-group form-inline">
                                <label id="lbl_aviso" class="hidden"> Aguarde buscando unidades... <img src="/files/images/loading.gif"></label>                              
                            </div>                                    
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="mapa" style="width:100%;height:550px;"></div>                        
                    </div>
                </div>
            </div>
        </div>






        <!--Altere daqui pra cima-->
    </div>
</div>

<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
{*<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false"></script>*}
<script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="/files/js/bootstrap.js"></script>
<script src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<script src="/files/js/bootbox.min.js"></script>
<script src="/files/js/util.js"></script>
<script src="/files/js/geolocalizacao/mapacheio_admin.js"></script>
{include file="comuns/footer.tpl"}