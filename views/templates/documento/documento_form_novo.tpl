{if {$etapa} !="segundo" and {$etapa} !="quarto" } 

{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        
<h1>Novo Documento</h1>

   <div id="mensagem-dock"></div>
        <!-- //Dock das mensagens -->
            <div id="box-mensagem-log" class="alert alert-info alert-dismissable hidden">
                <div class="bs-example">
                    <h3 id="progress-animated">Por favor aguarde enquanto estou processando o arquivo para você :)</h3>
                    <div class="progress progress-striped active">
                        <div class="progress-bar" style="width: 100%"></div>
                    </div>
                </div>   
            </div> 
{/if}
<form name="frmdocumento"
      
      {if {$etapa} !="segundo" and {$etapa} !="quarto" } 
      action="/documento/sobe_arquivo"
      {else}
      action="/troca/sobe_arquivo"
      {/if}
      method="POST" enctype="multipart/form-data" >
    
    {if {$etapa} !="segundo" and {$etapa} !="quarto" } 
    
    {if {$registro.id_documento}>0}
                código:{$registro.id_documento} <br>
            {else}
            <br><label for="novo">Código Consumidora: Novo Registro</label> 
            {/if}
            
    <input type="hidden" name="id_documento" value="{$registro.id_documento}" />
    
   
    
    <br><br>
    
 {/if}
   
 
  {*Bloqueio do F5*}
    
    <input type="hidden" name="doc_enviado" id="doc_enviado"  />
 
 
    <div class="input-group">        
        <label for="id_documento_tipo">Tipo</label> <br>  
       
       {html_options name=id_documento_tipo options=$lista_tipos_documento}
    </div><br>   
  
     {if {$etapa} !="segundo" and {$etapa} !="quarto" } 
    
    <div class="input-group">        
    <label for="id_troca">Código da Troca</label>  <br> 
    {html_options name=id_troca options=$lista_codigo_troca selected=$id_troca}
    </div>
     {/if} 
    
    <br>
    
    <div class="form-group"> 
    Escolha um arquivo para ser enviado:<input type="file" name="arquivo" id="arquivo" /><br>
    </div>
    <div class="form-group">
    {if {$etapa} !="segundo" and {$etapa} !="quarto"} 
    <input type="submit" value="enviar" name="btnEnviarArquivo" class="btn btn-primary"/> 
    <a href="/documento" class="btn btn-primary"> Voltar</a>
    {else}
   <input type="button" value="enviar" name="btnEnviarArquivo" class="btn btn-primary" onclick="comprova_extensao_doc(this.form.arquivo.value)"/> 
    {/if}    
   
   </div>
    
 
    {if {$etapa} != "segundo" and {$etapa} !="quarto"}
    {else}
      
              <table class="table table-striped" border="1">
            <thead>
                <tr>
                    <th>ID Doc.</th>
                    <th>Documento</th>
                    <th>A&ccedil;&otilde;es</th>
                </tr>
            </thead>
            <tbody>
                    {foreach from=$documentos item="linha"}
                    <tr>
                    <td>{$linha.id_documento}</td>
                    <td>
                     {$linha.caminho}{$linha.descricao} </td> 
                   
                    <td> 
                    <a class="glyphicon glyphicon-trash" href="/troca/del_documentos/id_documento/{$linha.id_documento}">Excluir</a> </td>
                </tr>
                {foreachelse}
                <tr><td colspan="6">Nenhum Documento Encontrado !</td></tr>
                {/foreach}        
            </tbody>
        </table>
        
        
    {/if}   
</form>
       
{if {$etapa} !="segundo" and {$etapa} !="quarto" }  
<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/bootstrap.js"></script>
<script src="/files/js/bootbox.min.js"></script>
<!-- Toast Message -->
<script src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<!-- Utils -->
<script src="/files/js/util.js"></script>
<!-- JS Especifico do Controller -->
<script src="/files/js/documento/documento_novo.js"></script>

{include file="comuns/footer.tpl"}
{/if}