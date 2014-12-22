{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>{$title}</h1>

        {if {$etapa}=="primeiro" or {$etapa}=="terceiro"}                
            <a href="/troca" class="btn btn-primary"> Voltar</a><br> <br>
        {else} 
            <a href="/troca/nova_troca/id_troca/{$smarty.session['troca']['id_troca']}" class="btn btn-primary"> Voltar</a><br> <br>
        {/if} 


        <form name="frmtroca" 
              class="form-inline col-md-12"
              role="form"

              {if {$etapa}=="segundo"} 
                  action="/troca/processa_sessao"  
              {else} 
                  action="/troca/gravaHeader" 
              {/if}
              method="POST" enctype="multipart/form-data">

            {if {$smarty.session['troca']['id_troca']}>0}                        
                <div class="form-group col-md-12">
                    <label>Projeto : {$smarty.session['troca']['id_projeto']}</label> | <label>Nro da Troca : {$smarty.session['troca']['id_troca']}</label>
                </div>
            {/if}





            {*            <div class="form-group" hidden="hidden">*}
            {*          <label for="sessao">Sess&atilde;o</label>*}
            <input type="hidden" class="form-control" name="sessao" value="{$sessao}" readonly="true"/>
            {*            </div>*}



            <div class="form-group col-md-6">
                <div class="input-group " >
                    <label for="id_uc_ext" class="input-group-addon">Unidade Consumidora</label>


                    {if {$etapa}=="terceiro" or {$etapa}=="quarto" } 
                        <input type="text" class="form-control" name="id_uc_ext" id="id_uc_ext"  value="{$smarty.session['troca']['uc']}" readonly="true"/>

                    {else}


                        {if {$etapa}=="primeiro"} 

                            {html_options name=id_uc_ext  id=id_uc_ext class="form-control" options=$lista_uc_descricao onchange="busca_basico_header()"}

                        {else} 

                            {html_options name=id_uc_ext  id=id_uc_ext class="form-control" options=$lista_uc_descricao selected=$selecionado onchange="busca_basico_header()"}

                        {/if} 


                    {/if}    


                    <input type="hidden" id="id_uc" name="id_uc" {if {$etapa}=="terceiro"} values="{$registro['id_uc']}" {/if}  >

                </div>
            </div>


            <div class="form-group col-md-6">
                <div class="input-group">
                    <label class="input-group-addon" for="nome">Nome</label>
                    <input type="text" class="form-control" name="nome" id="nome" readonly="true"  />
                </div>
            </div>

            <div class="form-group col-md-12">
                <div class="input-group">
                    <label class="input-group-addon" for="endereco">Endere&ccedil;o  - CEP / Telefone</label>
                    <input type="text" class="form-control" name="endereco" id="endereco"  value="" readonly="true"/>
                </div>
            </div>

            <div class="form-group col-md-6">
                <div class="input-group">
                    <label for="cpf" class="input-group-addon">CPF</label>
                    <input type="text" class="form-control" name="cpf"  id="cpf"  value="" readonly="true" />
                </div>
            </div>


            <div class="form-group col-md-6">
                <div class="input-group">
                    <label class="input-group-addon" for="status_troca">Status da Troca</label>
                    <div class="form-control" >{html_options  name=id_troca_situacao id=id_troca_situacao output=$lista_troca_situacao_descricao values=$lista_troca_situacao_valores selected=$registro['id_troca_situacao']} </div>
                </div>
            </div>
            <br><br>


            <div class="form-group col-md-6">
                <div class="input-group">
                    <label class="input-group-addon" for="dataenviotroca">Data Envio</label>
                    <input type="text" name="data_envio" id="data_envio"  
                           {if {$etapa}=="primeiro"} value="" {/if} 
                           {if {$etapa}=="segundo"}
                               value="{$smarty.session['header']['data_envio']}" {/if} 
                               {if {$etapa}=="terceiro"}
                                   value="{strtotime($registro['data_envio'])|date_format:"%Y-%m-%d"}" {/if} 
                                   {if {$etapa}=="quarto"}
                                       value="{strtotime($registro['data_envio'])|date_format:"%Y-%m-%d"}" {/if} 
                                       readonly="true"/> 
                               </div>
                           </div>
                           <div class="form-group col-md-6">
                               <div class="input-group">
                                   <label class="input-group-addon" for="data_conclusao">Data Conclusão</label>
                                   <input type="text" name="data_conclusao" id="data_conclusao"  
                                          {if {$etapa}=="primeiro"} value="" {/if} 
                                          {if {$etapa}=="segundo"}
                                              value="{$smarty.session['header']['data_envio']}" {/if} 
                                              {if {$etapa}=="terceiro"}
                                                  value="{strtotime($registro['data_conclusao'])|date_format:"%Y-%m-%d"}" {/if} 
                                                  {if {$etapa}=="quarto"}
                                                      value="{{strtotime($registro['data_conclusao'])|date_format:"%Y-%m-%d"}}" {/if} 

   {*  <script src="/files/js/diagnostico_opcoes/diagnostico_opcoes_novo.js"></script>
     {*<script src="/files/js/diagnostico_opcoes/diagnostico_opcoes_novo.js"></script>
     <script src="/files/js/documento/documento_novo.js"></script>
     <script src="/files/js/fotos/fotos_novo.js"></script>*}

                                                      readonly="true"/> 
                                            </div>
                                          </div>

                                          <br><br> <br><br> <br><br> <br>
                                          <input type="button" value="Cadastrar Itens" name="btnGravar" id="btnGravar" class="btn btn-primary"  {if {$etapa}=="primeiro" or {$etapa}=="terceiro"} style="display: inline" {else} style="display: none" {/if} onclick="analise_data()"/> 
                                          <input type="hidden" value="falso" id="valorbotao" name="valorbotao" />
                                          <input type="button" value="Enviar Tudo" name="btnTudo" id="btnTudo" class="btn btn-success" {if {$etapa}=="segundo" or {$etapa}=="primeiro"} style="display: inline" {else} style="display: none" {/if} onclick="analise_data()" /> 

                                   </form>
                                   <br>
                                   <div class="panel panel-default">

                                       <div class="panel-body" {if ({$etapa}=="primeiro" or {$etapa}=="terceiro")} style="display: none" {else} style="display: inline" {/if}  id="acessorios" >  
                                           <hr>
                                           <div class="col-lg-12">
                                               <ul class="nav nav-tabs">
                                                   <li {if {$smarty.session['troca']['aba']}=='documento'} class="active" {/if} ><a href="#troca_documentos" data-toggle="tab">Documentos</a></li>
                                                   <li {if {$smarty.session['troca']['aba']}=='fotos'} class="active" {/if}><a href="#troca_fotos" data-toggle="tab">Fotos</a></li>
                                                   <li  {if {$smarty.session['troca']['aba']}=='tentativa'} class="active" {/if}  ><a href="#troca_tentativas" data-toggle="tab">Tentativas </a></li>
                                                   <li {if {$smarty.session['troca']['aba']}=='diagnostico'} class="active" {/if}><a href="#trocas_diagnosticos" data-toggle="tab">Diagn&oacute;stico</a></li>
                                               </ul>

                                               <!-- Tab panes -->
                                               <div class="tab-content">
                                                   <div {if {$smarty.session['troca']['aba']}=='documento'} class="tab-pane fade active in"  {else} class="tab-pane fade" {/if} id="troca_documentos">
                                                      <p>{include file="documento/documento_form_novo.tpl"}</p>
                                                   </div>
                                                   <div {if {$smarty.session['troca']['aba']}=='fotos'} class="tab-pane fade active in"  {else} class="tab-pane fade" {/if} id="troca_fotos">
                                                    <p>{include file="fotos/fotos_form_novo.tpl"}</p>
                                                   </div>
                                                   <div {if {$smarty.session['troca']['aba']}=='tentativa'} class="tab-pane fade active in"  {else} class="tab-pane fade" {/if}  id="troca_tentativas">
                                                      <p>{include file="tentativa/tentativa_form_novo.tpl"}</p>
                                                   </div>         
                                                   <div {if {$smarty.session['troca']['aba']}=='diagnostico'} class="tab-pane fade active in"  {else} class="tab-pane fade" {/if} id="trocas_diagnosticos">
                                                       <p>{include file="diagnostico_opcoes/diagnostico_opcoes_form_novo.tpl"}</p>
                                                   </div>        
                                               </div>
                                           </div>
                                       </div>   
                                   </div>

                                   <!--Altere daqui pra cima-->
                               </div>
                               <!-- JavaScript -->
                               <script src="/files/js/jquery-1.10.2.js"></script>
                               <script src="/files/js/jquery_ui/js/jquery-ui-1.10.3.custom.min.js"></script>
                                <script src="/files/js/jquery.mask.js"></script>
                               <script src="/files/js/bootstrap.js"></script>

                               <!-- Toast Message -->
                               <script src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
                               <!-- Utils -->
                               <script src="/files/js/util.js"></script>
                               <!-- JS Especifico do Controller -->

                               <script src="/files/js/troca/headertroca.js"></script>
                              <script src="/files/js/tentativa/tentativa.js"></script>
                               <script src="/files/js/documento/documento_novo.js"></script>
                               <script src="/files/js/fotos/fotos_novo.js"></script>
                               <script src="/files/js/diagnostico_opcoes/diagnostico_opcoes_novo.js"></script>
                       

                               {include file="comuns/footer.tpl"}

