{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>
        {if {$registro.id_projetos}>0}
            Alteração do projeto {$registro.id_projetos}
        {else}
            Novo projeto
        {/if}
        </h1>



        <div class="row col-lg-9">
            <a href="/projeto" class="btn btn-primary"> Voltar</a><br>
        </div>
        <div class="row col-lg-9">
            <div>
                <ul class="nav nav-tabs" style="margin-bottom: 15px;">
                    <li class="{$tab1_active|default:''}"><a href="#dda" data-toggle="tab">Dados</a></li>
                        {if {$registro.id_projetos}>0}   
                        <li class="{$tab2_active|default:''}"><a href="#ddb" data-toggle="tab">Configurações</a></li>
                        <li class="{$tab3_active|default:''}"><a href="#ddc" data-toggle="tab">Diagnosticos</a></li>
                        {/if}
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade {$content1_active|default:''}" id="dda">
                        <p>                            
                            {include file="projeto/projeto_form_novo_tab1.html" registro=$registro}
                        </p>
                    </div>  
                        {*Mostra somente se for edição*}
                    {if {$registro.id_projetos}>0}         
                        <div class="tab-pane fade {$content2_active|default:''}" id="ddb">
                            <p>
                                {include file="projeto/projeto_form_novo_tab2.html" registro=$registro}
                            </p>
                        </div>   
                         
                    <div class="tab-pane fade {$content3_active|default:''}" id="ddc">
                        <p>                            
                            {include file="projeto/projeto_form_novo_tab3.html" registro=$registro}
                        </p>
                    </div> 
                    {/if} 
                </div>
            </div>
        </div><!-- /.row -->


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
<script src="/files/js/projeto/projeto_novo.js"></script>

{include file="comuns/footer.tpl"}

