{if {$etapa} !="segundo" and {$etapa} !="quarto"} 
    {include file="comuns/head.tpl"}
    <div id="wrapper">
        <!-- Sidebar -->
        {include file="comuns/sidebar.tpl"}    
        <div id="page-wrapper">
            <!--Altere daqui pra baixo-->
            <h1>Novo Diagnostico de Opções</h1>
        {/if}

        <form name="frmdiagopcoes" onsubmit="return validaFormularioDiag()"

              {if {$etapa} !="segundo" and {$etapa} !="quarto" } 
                  action="/diagnostico_opcoes/gravar_diagnostico_opcoes"
              {else}
                  action="/troca/grava_diagnostico"
              {/if}
              method="POST" enctype="multipart/form-data" >

            {if {$etapa} !="segundo" and {$etapa} !="quarto"} 

                {if {$registro.id_diagnostico_opcoes}>0}
                    codigo:{$registro.id_diagnostico_opcoes} <br>
                {else}
                    <br><label for="novo">Codigo Diagnostico de Opcoes: Novo Registro</label> 
                {/if}
                {*  <input type="hidden" name="id_diagnostico_opcoes" value="{$registro.id_diagnostico_opcoes}" />*} <br><br>

            {/if}

            <div class="input-group">        
                <label for="id_diagnostico">Codigo Diagnostico</label> <br>  

                {html_options name=id_diagnostico options=$lista_codigo_diagnostico}
                
            </div><br>  
            <div class="input-group">        
                <label for="descricao_diag">Descrição</label>        
                <input type="text" class="form-control" name="descricao_diag" id="descricao_diag" />
            </div><br>     



            <div class="form-group">                     
                <input type="submit" class="btn btn-primary" value="Gravar" name="btnGravarDiag" /> <br><br>
            
                
                 {if {$etapa} !="segundo" and {$etapa} !="quarto"} 
                <a href="/diagnostico_opcoes" class="btn btn-primary"> Voltar</a>
                {/if}           
                
                
                 {if {$etapa} != "segundo" and {$etapa} !="quarto"}

                {else}

                    <table class="table table-striped" border="1">
                        <thead>
                            <tr>
                                <th>Parametro</th>
                                <th>Resposta</th>
                                 <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$lista_trocas_opcoes item="linha"}
                                <tr>
                                    <td>{$linha.pergunta}</td>
                                    <td>{$linha.descricao}</td> 
                                    <td> 
                                        <a class="glyphicon glyphicon-trash" href="/troca/del_diagnostico/id_diagnostico/{$linha.id_diagnostico_trocas}">Excluir</a> </td>
                                </tr>
                            {foreachelse}
                                <tr><td colspan="6">Nenhuma tentativa encontrada !</td></tr>
                            {/foreach}        
                        </tbody>
                    </table>

                {/if} 
                
                
                
                
            </div>
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
            <script src="/files/js/diagnostico_opcoes/diagnostico_opcoes_novo.js"></script>


            {include file="comuns/footer.tpl"}
        {/if}