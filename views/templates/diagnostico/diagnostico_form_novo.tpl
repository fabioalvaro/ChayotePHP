{if {$etapa} !="segundo" and {$etapa} !="quarto"}  
    {include file="comuns/head.tpl"}
    <div id="wrapper">
        <!-- Sidebar -->
        {include file="comuns/sidebar.tpl"}    
        <div id="page-wrapper">
     
        <!--Altere daqui pra baixo-->
  <h1>Novo Diagnóstico</h1>
       
        <hr>
         {/if}
        <form name="frm-diagnostico" 

              {if {$etapa} !="segundo"} 
                  action="/diagnostico/gravar_diagnostico" 
              {else}
                  action="/troca/grava_diagnostico"    
              {/if}

              method="POST" 
              enctype="multipart/form-data"
              onsubmit="return validaFormulario()">

            {if {$etapa} !="segundo" and {$etapa} !="quarto"} 

                {if {$registro.id_diagnostico}>0}
                    <h3>Informações Básicas<h5>(Diagnóstico {$registro.id_diagnostico})</h5></h3>
                {else}
                    <h3>Informações Básicas <h5>(Novo Registro)</h5></h3>
                {/if}

            {/if}            

            <input type="hidden" name="id_diagnostico" id="id_diagnostico" value="{$registro.id_diagnostico}" /><br>           
            Descrição:
            <br>
            <input class="form-control" type="text" id="descricao" name="descricao" value="{$registro.descricao|default:""}" />
            Descrição Diagnóstico Tipo:
            <br>  
            {html_options class="form-control" name=id_diagnostico_tipo options=$lista_diagnostico_tipo selected=$tipo_selecionado} 
            <br>
            <input class="btn btn-primary col-lg-2" type="submit" value="Gravar" name="btnGravar" /> 
            <br>
            {if $registro.id_diagnostico > 0}
                <hr>
                <h3>Opções</h3>
                <div class="input-group">
                    <input type="text" class="form-control" name="edt_opcao" id="edt_opcao">
                    <span class="input-group-btn">
                        <input type="button" name="btnAdicionaOpcao" id="btnAdicionaOpcao" class="btn btn-success" value="Adiocionar">
                    </span>
                </div>
                <br>
                
                <table class="table table-bordered table-hover tablesorter">
                    <thead>
                        <tr>
                            <th>Cod</th>
                            <th>Descrição</th>
                            <th>Ação</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$lista_opcoes item="opcao"}
                            <tr>
                                <td>{$opcao.id_diagnostico_opcoes}</td>
                                <td>{$opcao.descricao}</td>
                                <td> 
                                    <a class="glyphicon glyphicon-trash" href="/diagnostico/removeOpcao/id_diagnostico_opcoes/{$opcao.id_diagnostico_opcoes}/id_diagnostico/{$opcao.id_diagnostico}"> Remover</a> 
                                </td>
                            </tr>
                        {foreachelse}
                            <tr><td colspan="3">Nenhum Registro Encontrado</td></tr>
                        {/foreach}        
                    </tbody>
                </table>
            {/if}
            <br>
            <hr>

            {if {$etapa} != "segundo" and {$etapa} !="quarto"}
                <a class="glyphicon glyphicon-backward" href="/diagnostico"> Voltar</a>
                <br><br>

            {else}                           

                <table class="table table-striped" border="1">
                    <thead>
                        <tr>
                            <th>Descrição</th>
                            <th>Codigo Diagnóstico Tipo</th>
                            <th>Ações</th>
                        </tr>
                    </thead>

                    <tbody>

                        {foreach from=$diaglista item=linha}

                            <tr>
                                <td>{$linha.descricao}</td> 
                                <td>{$linha.id_diagnostico_tipo}</td>
                                <td> 
                                    <a class="glyphicon glyphicon-trash" href="/troca/apaga_diagnostico_da_sessao/ordem_diagnostico/{$linha.ordem}">Excluir</a> </td>
                            </tr>
                        {/foreach}             
                    </tbody>
                </table>

        </div>
    {/if}


</form>
<!--Altere daqui pra cima-->
{if {$etapa} !="segundo" and {$etapa} !="quarto" }  
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
<script src="/files/js/diagnostico/diagnostico_novo.js"></script>

{include file="comuns/footer.tpl"}
{/if}

