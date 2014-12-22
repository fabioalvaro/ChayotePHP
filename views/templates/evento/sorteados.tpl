<div class="row">
    <div class="col-xs-12">
        <table class="table table-hover table-stripede">
            <thead>
                <tr>
                    <th colspan="100%">
                        <a href="/evento/download/tipo/evento/id/{$id_evento}" class="btn btn-danger" rel='tooltip' data-toggle="tooltip" data-placement="bottom" title="Fazer download deste evento" role="button">
                            <span class="glyphicon glyphicon-download-alt"></span> Download de todo o evento</a>
                        <a href="/evento/listarSorteados/id/{$id_evento}" class="btn btn-success" rel='tooltip' data-toggle="tooltip" data-placement="bottom" title="Listar todos os cadastrados" role="button">
                            <span class="glyphicon glyphicon-th-list"></span> Listar todos os cadastrados</a>
                    </th>
                </tr>
                <tr>
                    <th>Código UC</th>
                    <th>Nome</th>
                    <th>Sorteio</th>
                    <th>Entrega</th>
                    <th>Telefone</th>
                    <!--th>CPF</th-->
                    <th class="text-center">Ações</th>
                </tr>
            </thead>
            {foreach from=$sorteados item=uc}
                <tbody>
                    <tr>
                        <td>{$uc.codigo_uc}</td>
                        <td>{$uc.nome}</td>
                        <td>{$uc.dt_sorteio|date_format:'%d/%m/%Y'}</td>
                        <td>{$uc.dt_entrega|date_format:'%d/%m/%Y'}</td>
                        <td>{$uc.telefone|mascara:['10'=>'(##) ####-####','11'=>'(##) #####-####']}</td>
                        <!--td>{$uc.cpf|mascara:['11'=>'###.###.###-##']}</td-->
                        <td class="text-center">
                            <a class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg" href="/evento/detalhes/id/{$uc.id_unidade_consumidora}" role="button">
                                <span class="glyphicon glyphicon-info-sign"></span> Detalhes</a> 
                            <a href="/evento/download/tipo/uc/id/{$uc.id_unidade_consumidora}" class="btn btn-danger" rel='tooltip' data-toggle="tooltip" data-placement="bottom" title="Fazer download deste sorteado" role="button">
                                <span class="glyphicon glyphicon-download-alt"></span> Download</a>
                        </td>
                    </tr>
                </tbody>
            {/foreach}
        </table>
    </div>
</div>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

        </div>
    </div>
</div>