{include file="comuns/head.tpl"}
<div id="wrapper">
    <!-- Sidebar -->
    {include file="comuns/sidebar.tpl"}    
    <div id="page-wrapper">
        <!--Altere daqui pra baixo-->
        <div class="alert alert-info" >
            <h1>Novo Usu&aacute;rio - Status : {if {$registro.id_usuario}>0} Edi&ccedil;&atilde;o {else} Inclus&atilde;o {/if}</h1>
        </div>  

        <a href="/usuarios" class="btn btn-primary"> Voltar</a><br> <br>
        <form name="frm-usuario" id="frm-usuario" action="/usuarios/gravar_usuario" method="POST" enctype="multipart/form-data" onsubmit="return validaFormulario()">
            <div class="form-group">
                <label for="id_usuario">            
                       {if {$registro.id_usuario}>0}
                            C&oacute;digo:{$registro.id_usuario}
                            
                       {else}
                            C&oacute;digo: Novo Registro
                       {/if} 
                </label>
                <div type="hidden" class="form-group">        
                    <input type="hidden" class="form-control" name="id_usuario" id="id_usuario" value="{$registro.id_usuario}" />
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label for="nome">Nome</label>
                            <input type="text" class="form-control" name="nome" id="nome" value="{$registro.nome}" />
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label for="nome">Senha</label>
                            <input type="password" class="form-control" name="senha" id="senha" value="{$registro.senha}" >           
                        </div>
                    </div>              
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label for="nome">Tipo Usu&aacute;rio</label>
                            <select class="form-control" name="id_usuario_tipo" id="id_usuario_tipo">
                                {html_options options=$lista_tipos selected=$registro.id_usuario_tipo}
                            </select>                      
                        </div>
                    </div>                                      
                </div> 
                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label for="email">E-mail</label>
                            <input type="text" class="form-control" name="email" id="email" onblur="validaEmail()" value="{$registro.email}">           
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label for="telefone1">Telefone 1</label>
                            <input type="text" class="form-control" name="telefone1" id="telefone1" value="{$registro.telefone1}" >           
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label for="telefone2">Telefone 2</label>
                            <input type="text" class="form-control" name="telefone2" id="telefone2" value="{$registro.telefone2}" >           
                        </div>
                    </div>                        
                </div>     
                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label for="email">Motorista</label>
                        <select class="form-control" name="id_motorista" id="id_motorista">
                            <option value="" ></option>
                            {html_options options=$lista_motoristas selected=$registro.id_motorista}
                        </select>                    
                        <input type="hidden" class="form-control" name="id_projeto" id="id_projeto" value="{$registro.id_projeto}" >                               
                        <input type="hidden" class="form-control" name="id_parceiro" id="id_parceiro" value="{$registro.id_parceiro|default:""}" >
                        <input type="hidden" class="form-control" name="status" id="id_usuario" value="{$registro.status}" />
                        </div>
                    </div>
                </div>                
                <br>            
                <input type="submit" value="Gravar" name="btnGravar" class="btn btn-primary" />         
            </div>
        </form>
        <br>   
        {if {$registro.id_usuario}>0} 
                <!--Altere daqui pra cima-->
                <div class="alert alert-info" >
                    <h1>Perfis do Usuario</h1>
                </div>          
                <div class="panel-body">
                {if ($lista_Perfis > 0)}
                    <form name="frm-usuario-perfil" 
                          action="/usuarios/novo_usuario_perfil/" 
                          method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="id_perfil_usuario">Perfis</label>
                                    <select class="form-control" name="id_perfil_usuario" id="id_perfil_usuario">
                                        {html_options options=$lista_Perfis}
                                    </select>
                                    <input type="hidden" name="id_usuario_perfil" id="id_usuario_perfil"value="{$registro.id_usuario}" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <input type="submit" value="Inserir" name="btnInserir" id="btnInserir" class="btn btn-primary"/>
                            </div>
                        </div>
                    </form>
                {else}
                    Todos os Perfis já estão definidos para esse Usuario.
                {/if}
                </div>        
               
                <div class="panel-body">                    
                    <table class="table" border="1">
                        <thead>
                            <tr>                        
                                <th>Perfil</th>
                                <th>Status</th>
                                <th>Ação</th>
                            </tr>
                        </thead>
                        <tbody>                        
                            {foreach from=$lista_Perfil_Usuario item="linha"}
                            <tr>                                                
                                <td>{$linha.descricao}</td>
                                <td>{if $linha.status=1} Ativo {else} Inativo {/if}</td>                        
                                <td><a class="glyphicon glyphicon-trash" href="/usuarios/del_usuario_perfil/id_usuario/{$linha.id_usuario}/id_perfil/{$linha.id_perfil}">Excluir</a> </td>
                            </tr>
                            {foreachelse}
                            <tr><td colspan="3">nenhum Perfil associado a esse Usuario</td></tr>
                            {/foreach}                                                  
                        </tbody>
                    </table> 
                </div>  
                <br>        
                <!--Altere daqui pra cima-->
                <div class="alert alert-info" >
                    <h1>Projetos do Usuario</h1>
                </div>                                  
                <div class="panel-body">
                {if ($lista_Projetos > 0)}
                    <form name="frm-usuario-projeto" 
                          action="/usuarios/novo_usuario_projeto/" 
                          method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="id_projetos">Projetos</label>
                                    <select class="form-control" name="id_projetos" id="id_projetos">
                                        {html_options options=$lista_Projetos}
                                    </select>
                                    <input type="hidden" name="id_usuario" id="id_usuario"value="{$registro.id_usuario}" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <input type="submit" value="Inserir" name="btnInserir" id="btnInserir" class="btn btn-primary"/>
                            </div>
                        </div>
                    </form>
                {else}
                    Todos os Projeto já estão definidos para esse Usuario.
                {/if}
                </div>        
                <br>        
                <div class="panel-body">                    
                    <table class="table" border="1">
                        <thead>
                            <tr>                        
                                <th>Projetos</th>
                                <th>Ação</th>
                            </tr>
                        </thead>
                        <tbody>                        
                            {foreach from=$lista_usuario_projetos item="linha"}
                            <tr>                                                
                                <td>{$linha.projeto}</td>                                
                                <td><a class="glyphicon glyphicon-trash" href="/usuarios/del_usuario_projeto/id_usuario/{$linha.id_usuario}/id_projetos/{$linha.id_projetos}">Excluir</a> </td>
                            </tr>
                            {foreachelse}
                            <tr><td colspan="3">nenhum Projeto associado a esse Usuario</td></tr>
                            {/foreach}                                                  
                        </tbody>
                    </table> 
                </div>    
                        
        {else} 
            nenhum Perfil e Projeto associado a esse Usuario
        {/if}
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
<script src="/files/js/usuarios/usuario_novo.js"></script>

{include file="comuns/footer.tpl"}

