<div class="tipo_critica" id="cidade" style="display: none">
    <div class="row">
        <div class="col-xs-3">
            <div class="form-group">
                <label for="id_estado">Estado:</label>
                <select class="form-control" name="id_estado" id="id_estado" onchange="preencheCidades();"> 
                    {html_options options=$lista_estados}
                </select>
            </div>
        </div>
        <div class="col-xs-3">
            <div class="form-group">
                <label for="id_cidade">Cidade:</label>
                <select disabled class="form-control" name="id_cidades" id="id_cidades">                         
                </select>
            </div>
        </div>
    </div>
</div>


