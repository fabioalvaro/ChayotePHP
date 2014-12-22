{if {$etapa} !="segundo" and {$etapa} !="quarto"}  
{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        
     
<h1>Novas Fotos</h1>

<a href="/fotos" class="btn btn-primary"> Voltar</a>
{/if}


<form name="frmfotos"
      
      {if {$etapa} !="segundo" and {$etapa} !="quarto" } 
      action="/fotos/sobe_arquivo"
      {else}
      action="/troca/sobe_fotos"
      {/if}
      method="POST" enctype="multipart/form-data" >
    
  
    {if {$etapa} !="segundo" and {$etapa} !="quarto"} 
    
    {if {$registro.idfotos}>0}
                codigo:{$registro.idfotos}<br>
            {else}
            <br><label for="novo">Codigo Fotos: Novo Registro</label> 
            {/if}
    <input type="hidden" name="idfotos" value="{$registro.idfotos}" /><br><br>
 
    {/if}
    
    <div class="input-group">        
        <label for="latitude">Tipo de Fotos</label> <br>  
       
       {html_options name=id_fotos_tipo options=$lista_tipos_fotos  }
    </div><br>   

    <div class="form-group"> 
    Escolha um arquivo para ser enviado:
    <input type="file" name="arquivo_foto" id="arquivo_foto"  /><br>
    <input type="button" value="enviar" name="btnEnviarFoto" id="btnEnviarFoto" class="btn btn-primary" onclick="comprova_extensao_foto(this.form.arquivo_foto.value)"/> <br>   
 
    </div>
    
    {if {$etapa} != "segundo" and {$etapa} !="quarto"}
    {else}
      
              <table class="table table-striped" border="1">
            <thead>
                <tr>
                    <th>ID Fotos</th>
                    <th>Imagem</th>
                    <th>A&ccedil;&otilde;es</th>
                </tr>
            </thead>
            <tbody>
                    {foreach from=$fotos item="linha"}
                    <tr>
                    <td>{$linha.id_foto}</td>
                    <td>
                    <img src="{$linha.caminho}{$linha.filename}" width="70" height="70" >
                    </td> 
                   
                    <td> 
                    <a class="glyphicon glyphicon-trash" href="/troca/del_fotos/id_fotos/{$linha.id_foto}">Excluir</a> </td>
                </tr>
                {foreachelse}
                <tr><td colspan="6">Nenhuma foto encontrada !</td></tr>
                {/foreach}        
            </tbody>
        </table>
        
        
    {/if}
         
</form>
    
 {if {$etapa} !="segundo" and {$etapa} !="quarto"}            
     
<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/bootstrap.js"></script>
<!-- Toast Message -->
<script src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<!-- Utils -->
<script src="/files/js/util.js"></script>
<!-- JS Especifico do Controller -->
<script src="/files/js/fotos/fotos_novo.js"></script>


{include file="comuns/footer.tpl"}
{/if}  