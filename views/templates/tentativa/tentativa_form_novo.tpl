{if {$etapa} !="segundo" and {$etapa} !="quarto" }  
    {include file="comuns/head.tpl"}
    <div id="wrapper">
        <!-- Sidebar -->
        {include file="comuns/sidebar.tpl"}    
        <div id="page-wrapper">
        {/if}
        <!--Altere daqui pra baixo-->

        <form name="frmtentativa" action="/troca/gravar_tentativa_troca" method="POST" enctype="multipart/form-data">



            {if {$smarty.session['troca']['id_troca']}>0}
                <input type="hidden"  name="id_troca" id="id_troca" value="{$smarty.session['troca']['id_troca']}" />
            {else}
                <input type="hidden"  name="contador_tentativas" id="contador_tentativas" value="{$smarty.session['tentativa']['contador']}" />   
            {/if}


            <div class="form-group">
                <label for="motivo">Motivo de Tentativa</label>
                {html_options name=motivo id=motivo class="form-control" output=$lista_motivos values=$lista_motivos_id}
            </div>

            <div class="form-group">
                <label for="observacao">Observa&ccedil;&otilde;es</label>
                <textarea id="observacao" class="form-control" name="observacao" rows="10" cols="50" values="">
                </textarea>


                <div class="form-group">
                    <label for="data">Data Envio</label><br>
                    <input type="text" name="data" id="data"  value="" readonly="true"/> 
                </div>                                

                <div class="form-group">
                    <label for="hora">Hora</label><br>
                    <input type="text"  name="hora" id="hora" />
                </div>                                  


                <br>

                {* <input type="button" value="Teste" name="btnTester" class="btn btn-primary" onclick="compara_data()"  />*}

                <br>



                {if {$smarty.session['troca']['tentativas']['qtde']} < 3}
                    <input type="button" value="Gravar" name="btnGravar" class="btn btn-primary" onclick="analise_data_tentativa()"  />   
                {/if}

                <br>

                <br>

                {if {$etapa} != "segundo" and {$etapa} !="quarto"}

                {else}

                    <table class="table table-striped" border="1">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Codigo Troca</th>
                                <th>Observação</th>
                                <th>Codigo Tentativa Motivo</th>
                                <th>DataHora</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$tentativa_lista item="linha"}
                                <tr>
                                    <td>{$linha.id_tentativa}</td>
                                    <td>{$linha.id_troca}</td> 
                                    <td>{$linha.observacao}</td>
                                    <td>{$linha.id_tentativa_motivo}</td>
                                    <td>{$linha.datahora}</td>
                                    <td> 
                                        <a class="glyphicon glyphicon-trash" href="/troca/del_tentativa/id_tentativa/{$linha.id_tentativa}">Excluir</a> </td>
                                </tr>
                            {foreachelse}
                                <tr><td colspan="6">Nenhuma tentativa encontrada !</td></tr>
                            {/foreach}        
                        </tbody>
                    </table>

                {/if} 
            </div>
        </form>


        <hr>


        <!--Altere daqui pra cima-->
            
            {if {$etapa} !="segundo" and {$etapa} !="quarto"}
<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/jquery_ui/js/jquery-ui-1.10.4.custom.min.js"></script>
<script src="/files/js/bootstrap.js"></script>
<script src="/files/js/jquery.mask.js"></script>
<!-- Toast Message -->
<script src="/files/js/toastmessage/javascript/jquery.toastmessage.js"></script>
<!-- Utils -->
<script src="/files/js/util.js"></script>
<!-- JS Especifico do Controller -->
<script src="/files/js/tentativa/tentativa.js"></script>

    {include file="comuns/footer.tpl"}
{/if}

