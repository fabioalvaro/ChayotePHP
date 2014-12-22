{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        <div class="panel-body">
            <div class="alert alert-info" >
                <tt><h1>Novo Perfil - Status : {if {$registro.id_perfil}>0} Edi&ccedil;&atilde;o {else} Inclus&atilde;o {/if}</h1></tt>
            </div>          
            <a href="/perfil" class="btn btn-primary"> Voltar</a><br>

            <form name="frm-perfil" 
                  action="/perfil/gravar_perfil" 
                  method="POST" 
                  enctype="multipart/form-data"
                  onsubmit="return validaFormulario()">
                <br>
                <div class="input-group col-lg-8">                    
                    {if {$registro.id_perfil}>0}
                        <span class="input-group-addon btn-outline btn-primary">Código</span>
                            <input type="text" class="form-control" name="id_perfil" id="id_perfil" value="{$registro.id_perfil}" READONLY>           
                    {else}
                        <span class="input-group-addon btn-outline btn-primary">Código</span>
                              <input type="text" class="form-control" name="id_perfil" value="" READONLY>           
                    {/if}                     
                    <span class="input-group-addon btn-outline btn-primary">Descri&ccedil;&atilde;o</span>
                        <input type="text" class="form-control" name="descricao" id="descricao" value="{$registro.descricao|default:''}" >           
                </div> 
                <br>            
                    <input type="submit" value="Gravar" name="btnGravar" class="btn btn-primary" />         
                <br>
                <br>
            </form>
            
            {if {$registro.id_perfil}>0}
                {if (isset($lista_de_menus)) }
                <div class="alert alert-info" >
                    <tt><h1>Menus Disponíveis </h1></tt>
                </div>                            
                <form name="frm-perfil-menu" 
                  action="/perfil/insere_menu" 
                  method="POST" enctype="multipart/form-data">
                    <div class="input-group col-lg-12">
                        <div class="input-group col-lg-8">
                            <span class="input-group-addon btn-outline btn-primary">Menus</span>                    
                            <select class="form-control col-lg-12" name="id_menu" id="id_menu"> 
                                {html_options options=$lista_de_menus} 
                            </select>   

                            <span class="input-group-btn">
                                <input type="submit" class="btn btn-primary" value="Insere Menu" name="btnInsereMenu" id="btnInsereMenu"/>
                            </span>                                      
                        </div><!-- /input-group -->
                    </div>                
                    <input type="hidden" name="id_perfil" id="id_perfil"value="{$registro.id_perfil}" />

                </form>
               {else}
                   todos os menus já associados a esse perfil
                {/if}
                <div class="panel-body" id ="painel_menu"> 
                    <table class="table-bordered" border="1" width="100%">
                        <thead>
                            <tr class="alert alert-info"><td colspan="2"><tt><h1>Menus do Perfil </h1></tt></tr>
                            <tr style="font-size: large">
                                <th>Menu</th>
                                <th>Ação</th>
                            </tr>
                        </thead>
                        <tbody> 
                            {if (isset($lista_de_mp))}
                                {foreach from=$lista_de_mp item="linha"}
                                <tr> 
                                    <td>{$linha.menu}</td>
                                    <td><a href="/perfil/excluir_menu/id_perfil/{$linha.id_perfil}/id_menu/{$linha.id_menu}">Excluir</a></td>
                                </tr>
                                {foreachelse}
                                <tr><td colspan="3">nenhum menu associado a esse perfil</td></tr>
                                {/foreach}  
                            {/if}                            
                        </tbody>
                    </table>
                </div>
           {/if} 
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
<script src="/files/js/perfil/perfil_novo.js"></script>



{include file="comuns/footer.tpl"}

