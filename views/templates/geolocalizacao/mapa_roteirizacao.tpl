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
                        <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 
                            Id Troca: {$id_status_troca}, 
                            Lat: {$lat}, 
                            Long: {$long}, 
                            End: {$endereco}                            
                        </h3>
                        <div class="form-inline">
                            <div class="form-group   form-inline">                                

                            </div>    

                            <div class="form-group form-inline">
                                <label id="lbl_aviso" class="hidden"> Aguarde ... <img src="/files/images/loading.gif"></label>                              
                            </div>                              
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="mapa" style="width:100%;height:550px;"></div>                        
                    </div>
                </div>
            </div>
        </div>
        <input type="hidden" name="lat" id="lat" value="{$lat}" />
        <input type="hidden" name="long" id="long" value="{$long}" />
        <input type="hidden" name="endereco" id="endereco" value="{$endereco}" />
        <input type="hidden" name="id_status_troca" id="id_status_troca" value="{$id_status_troca}" />





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
<script src="/files/js/geolocalizacao/mapa_roteirizacao.js"></script>
{include file="comuns/footer.tpl"}