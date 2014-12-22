{include file="comuns/head.tpl"}
<div style="margin-left: 15px;margin-right: 15px;margin-top: -15px">
    <h2>Relatório de UCs Bloqueadas</h2>
    <div>
        <table class="table table-hover"border="1">
            <thead>
                <tr>
                    <th> UC </th>
                    <th> Nome </th>
                    <th> Cidade </th>
                    <th> Bairro </th>
                    <th> ID Motivo </th>
                    <th> Motivo </th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$lista_trocas item=troca}
                <tr>
                    <td>{$troca.uc}</td>
                    <td>{$troca.nome}</td>
                    <td>{$troca.municipio}</td>
                    <td>{$troca.bairro}</td>
                    <td>{$troca.id_tentativas_insucesso_detalhe}</td>
                    <td>{$troca.motivo}</td>
                </tr>
                {foreachelse}
                <tr>
                    <td colspan="6">Nada encontrado..</td>
                </tr>
                {/foreach}
            </tbody>
        </table>
    </div>
</div>

<!-- JavaScript -->
<script src="/files/js/jquery-1.10.2.js"></script>
<script src="/files/js/bootstrap.js"></script>

{include file="comuns/footer.tpl"}
