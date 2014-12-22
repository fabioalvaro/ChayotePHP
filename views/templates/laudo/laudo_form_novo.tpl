{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        <div class="alert alert-info" >'
            <tt><h1>Novo Laudo - Status : {if {$registro.id_laudo}>0} Edi&ccedil;ao {else} Inclus&atilde;o {/if}</h1></tt>
        </div>
        <br> 
        <a href="/laudo" class="btn btn-primary"> Voltar</a><br>
        <form name="frm-laudo" action="/laudo/gravar_laudo" method="POST" enctype="multipart/form-data"
              onsubmit="return validaFormulario()">
       
            <div class="input-group col-lg-2">                    
                {if {$registro.id_laudo}>0}
                    <span class="input-group-addon btn-outline btn-primary">C&oacute;digo</span>
                        <input type="text" class="form-control" name="id_laudo" id="id_laudo" value="{$registro.id_laudo}" READONLY>           
                {else}
                    <span class="input-group-addon btn-outline btn-primary">C&oacute;digo</span>
                          <input type="text" class="form-control" name="" value="Novo Registro" READONLY>           
                {/if}                     
            </div>             
        

            <div type="hidden" class="form-group">        
                <input  type="hidden" class="form-control" name="id_laudo" id="id_laudo" value="{$registro.id_laudo}" />
            </div> 
            
            <div class="input-group col-lg-12">
                <div class="input-group col-lg-8">
                    <span class="input-group-addon btn-outline btn-primary">Data Laudo</span>
                        <input type="datetime" name="data_laudo" id="data_laudo" value="{$registro.data_laudo|date_format:"%y-%m-%d %H:%M:%S"}">                 
                </div>
            </div>
               
            <br>    
            <div class="input-group col-lg-12">
                <div class="input-group col-lg-4">
                    <span class="input-group-addon btn-outline btn-primary">Nº Lote</span>
                        <input type="text" class="form-control" name="num_lote" id="num_lote" value="{$registro.num_lote}">                 
                    <span class="input-group-addon btn-outline btn-primary">Laudo</span>
                        <input type="file" class="form-control" name="arquivo" id="arquivo" value=""/> 
                    <input  type="hidden" class="form-control" name="caminho_arquivo" id="caminho_arquivo" value="{$registro.caminho_arquivo}" />    
                    <input  type="hidden" class="form-control" name="nome_arquivo" id="nome_arquivo" value="{$registro.nome_arquivo}" />    
                </div>
            </div>
                 
            <br>
            <div class="input-group col-lg-12">
                <div class="input-group col-lg-8">
                    <span class="input-group-addon btn-outline btn-primary">Projeto</span>            
                    <select class="form-control" id="selecionaprojeto" name="selecionaprojeto">
                         {foreach from=$projetos item="projeto"}
                             <option value="{$projeto.id_projetos}" {if $registro.id_projetos == $projeto.id_projetos}selected{/if}>{$projeto.nome}</option>
                        {/foreach}
                    </select>
                    <input  type="hidden" class="form-control" name="id_projetos" id="id_projetos" value="{$projeto.id_projetos}" />    
                </div><!-- /input-group -->
            </div>
           
            <br>                    
            <div class="input-group col-lg-12">
                <div class="input-group col-lg-8">
                    <span class="input-group-addon btn-outline btn-primary">Parceiro</span>                    
                    <select class="form-control col-lg-12" name="id_parceiro" id="id_parceiro"> 
                        {foreach from=$lista_parceiros item="parceiro"}
                             <option value="{$parceiro.id_parceiro}" {if $registro.id_parceiro == $parceiro.id_parceiro}selected{/if}>{$parceiro.razao_social}</option>
                        {/foreach}
                    </select>                        
                </div><!-- /input-group -->
            </div>
            
            <br>        
            <div class="input-group col-lg-12">
                <div class="input-group col-lg-8">
                    <span class="input-group-addon btn-outline btn-primary">Equipamento</span>
                    <select class="form-control col-lg-12" name="id_produto" id="id_produto">                        
                        {foreach from=$lista_Produtos item="produtos"}
                             <option value="{$produtos.id_produto}" {if $registro.id_produto == $produtos.id_produto}selected{/if}>{$produtos.descricao}</option>
                        {/foreach}                        
                    </select>   
                </div><!-- /input-group -->
            </div>
       
            <br>        
            <div class="input-group col-lg-12">
                <div class="input-group col-lg-8">
                    <span class="input-group-addon btn-outline btn-primary">Quantidade</span>
                        <input type="text" class="form-control col-lg-4" name="quantidade" id="quantidade" value="{$registro.quantidade}" >                 
                    <span class="input-group-addon btn-outline btn-primary">Nota Fiscal</span>
                        <select class="form-control col-lg-8" name="id_nota_fiscal" id="id_nota_fiscal">                            
                            {foreach from=$lista_Notas_Fiscais item="notas"}
                                <option value="{$notas.id_nota_fiscal}" {if $registro.id_nota_fiscal == $notas.id_nota_fiscal}selected{/if}>{$notas.num_nota_fiscal}</option>
                            {/foreach}                             
                        </select>                        
                    <span class="input-group-addon btn-outline btn-primary">Documento</span>
                        <select class="form-control col-lg-8" name="id_documento" id="id_documento">                                                    
                            {foreach from=$lista_Documentos item="documento"}
                                <option value="{$documento.id_nota_fiscal}" {if $registro.id_documento == $notas.id_nota_fiscal}selected{/if}>{$documento.num_nota_fiscal}</option>
                            {/foreach}                              
                        </select>                                            
                </div><!-- /input-group -->
            </div>
           
            <br>             
            <div type="hidden" class="form-group">        
                <input  type="hidden" class="form-control" name="id_usuario" id="id_usuario" value="{$registro.id_usuario|default: $smarty.session.user.id_usuario}"/>
            </div> 
            
            <input type="hidden" name="status" value="{$registro.status}" />           
            <div class="input-group col-lg-8">  
                <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravar" />
            </div>
           </form>
        

        <!--Altere daqui pra cima-->
    </div>
</div>

<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/jquery_ui/js/jquery-ui-1.10.4.custom.min.js"></script>
<script src="/files/js/bootstrap.js"></script>
<!-- Toast Message -->
<script src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<!-- Utils -->
<script src="/files/js/util.js"></script>
<!-- JS Especifico do Controller -->
<script src="/files/js/laudo/laudo_form_novo.js"></script>
{include file="comuns/footer.tpl"}

