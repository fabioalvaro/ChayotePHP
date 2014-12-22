{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->

        <h1>Acompanhamento de Manufatura Reversa</h1>


        <div class="row col-lg-9">
            <form name="frm_man_rev"
                  id="frm_man_rev"
                  method="POST" 
                  enctype="multipart/form-data" 
                  action="/manufatura_reversa/gravar_manufatura_reversa">
                
                <input type="hidden" name="id_manufatura_reversa" id="id_manufatura_reversa" value="{$linha.id_manufatura_reversa}" />
                <input type="hidden" name="data_criacao" id="data_criacao" value="" />
                <input type="hidden" name="id_usuario" value="{$smarty.session.user.id_usuario}" />
                Projeto:
                <select class="form-control" id="id_projeto" name="id_projeto">
                    {foreach from=$projetos item="projeto"}
                        <option value="{$projeto.id_projetos}">{$projeto.nome}</option>
                    {/foreach}
                </select><br>
                <input type="hidden" name="status" id="status" value="1" />
                <textarea name="body" id="body" rows="20" cols="20" style="width: 100%;">
                    {$linha.body}
                </textarea>

                <input type="submit" value="Salvar" name="btnsalvar" id="btnsalvar" />
            </form>
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

