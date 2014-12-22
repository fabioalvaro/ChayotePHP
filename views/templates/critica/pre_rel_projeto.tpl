<div class="tipo_critica" id="projeto" style="display: none">
    <div class="row">
        <div class="col-xs-3">
            <div class="form-group">
                <label for="id_parceiro">Parceiro:</label>
                <select class="form-control" name="id_parceiro" id="id_parceiro" onchange="preencheProjetos();"> 
                    {html_options options=$lista_parceiro}  
                </select>
            </div>
        </div>
        <div class="col-xs-3">
            <div class="form-group">
                <label for="id_projeto">Projeto:</label>
                <select disabled class="form-control" name="id_projeto" id="id_projetos"> 
                </select>
            </div>
        </div>
    </div>
</div>
