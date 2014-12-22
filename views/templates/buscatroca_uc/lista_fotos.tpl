<!--Altere daqui pra baixo-->
{include file="comuns/head.tpl"}
<div class="container-fluid">
    <div class="page-header">
        <h2>Lista de Fotos</h2>
        <p>Segue abaixo lista com todos os documento(s).</p>
        <dl class="dl-horizontal">
            <dt>Projeto:</dt>
            <dd>{$uc_lista.projeto}</dd>
            <dt>UC:</dt>
            <dd>{$uc_lista.uc}</dd>
            <dt>Nome do Cliente:</dt>
            <dd>{$uc_lista.nomeCliente}</dd>
        </dl>
    </div>
    <div class="container marketing">
        <!-- Three columns of text below the carousel -->
        <div class="row">
            {foreach from=$fotos_lista key=k item="linha" name=foo}
                <div class="col-lg-4" style="padding-bottom:10px;">
                    <img class="img-thumbnail" src="{$linha.caminho}{$linha.filename}" alt="{$linha.descricao}" style="width: 640px; height: 480px;">
                    <div class="btn-group" role="group">
                        <a href="{$linha.caminho}{$linha.filename}" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Visualizar" target="_black"><span class="glyphicon glyphicon-picture"></span></a>
                        <a href="{$linha.caminho}{$linha.filename}" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Download" target="_black" download="{$linha.filename}"><span class="glyphicon glyphicon-download-alt"></span></a>
                        <!--a href="javascript:lista_fotos.resize.modal('{$linha.descricao}', '{$linha.caminho}{$linha.filename}');" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Redimencionar"><span class="glyphicon glyphicon-fullscreen"></span></a-->
                        {if ($vercritica)}
                        <a href="javascript:lista_fotos.criticar.modal('{$linha.descricao}','{$linha.idfotos}',{$uc_lista.uc});" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Criticar"><span class="glyphicon glyphicon-exclamation-sign"></span></a>
                        {/if}
                    </div>
                    <h3>{$linha.descricao}</h3>
                    <p><em class="text-muted">{$linha.filename}</em></p>
                </div><!-- /.col-lg-4 -->
            {/foreach}
        </div><!-- /.row -->
    </div>
    <hr class="featurette-divider">
</div>

<!-- Modal -->
<div class="modal fade" id="lista_fotos-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form class="form-horizontal" role="form">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel"></h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">Dimensões:</label>
                        <div class="col-sm-10">
                            <select class="form-control input-lg" name="resize" class="form-control" id="resize">
                                <option value="none">Não Alterar</option>
                                <option value="1024">1024 x 768</option>
                                <option value="800">800 x 600</option>
                                <option value="640">640 x 480</option>
                            </select>
                        </div>
                    </div>
                    <div class="hide">
                        <input type="hidden" class="form-control" name="filename" id="filename" value="">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-loading-text="Aguarde..." id="lista_fotos-resize-run" onclick="lista_fotos.resize.run(this.form);">Redimensionar</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- Modal Criticar-->
<div class="modal fade" id="criticar-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form class="form-horizontal" role="form">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel"></h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="critica" class="col-sm-2 control-label">Criticas:</label>
                        <div class="col-sm-10">
                            <select class="form-control input-lg" name="critica" class="form-control" id="critica">
                                {html_options options=$lista}
                            </select>
                        </div>
                    </div>
                            <input type="radio" name="resultado" value="1">Aceito
                            <input type="radio" name="resultado" value="0">Rejeitado
                            
                    
                    <div class="hide">
                        <input type="hidden" class="form-control" name="idfoto" id="idfoto" value="">
                        <input type="hidden" class="form-control" name="uc" id="uc" value="">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-loading-text="Aguarde..." id="lista_fotos-criticar-run" onclick="lista_fotos.criticar.run(this.form);">Criticar</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/bootstrap.js"></script>
<script src="/files/js/buscatroca_uc/lista_fotos.js"></script>
{include file="comuns/footer.tpl"}