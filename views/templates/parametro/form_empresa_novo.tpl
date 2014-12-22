<form id="frm_cad_empresa" name="frm_cad_empresa">
  {if isset($registro[0].emp_id)}
    <p>Edição da Empresa cód: {$registro[0].emp_id}</p>
  {/if}
  <fieldset>
    <legend>Cadastro de Empresa</legend>
    <input type="hidden" name="emp_id" id="emp_id" value="{$registro[0].emp_id}"  />    
    <label>Tipo Empresa</label>
    {html_options name=emp_tip_id id=emp_tip_id options=$empresa_tipos selected=$registro[0].emp_tip_id}   

    <label id="lbl_derivada">Empresa Derivada de:</label>
    {html_options name=emp_pai_id id=emp_pai_id options=$empresa_pai_lista selected=$registro[0].emp_pai_id} 
    <br/>

    <label>Razão Social</label><input type="text" name="razao_social" id="razao_social" value="{$registro[0].razao_social}" size="60" /><br/>
    <label>Nome Fantasia</label><input type="text" name="nome_fantasia" id="nome_fantasia" value="{$registro[0].nome_fantasia}" size="60" /><br/>    
    <label>CNPJ</label><input type="text" name="cnpj" id="cnpj" value="{$registro[0].cnpj}" size="60" /><br/>
    <label>Inscr. Estadual</label><input type="text" name="inscr_estadual" id="inscr_estadual" value="{$registro[0].inscr_estadual}" size="60" /><br/>
    <label>Sigla</label><input type="text" name="sigla" id="sigla" value="{$registro[0].sigla}" size="60" /><br/>
    <label>Código Interno</label><input type="text" name="codigo_interno" id="codigo_interno" value="{$registro[0].codigo_interno}" size="60" /><br/>
    <label>Telefone</label><input type="text" name="telefone" id="telefone" value="{$registro[0].telefone}" size="60" /><br/>
    <label>FAX</label><input type="text" name="fax" id="fax" value="{$registro[0].fax}" size="60" /><br/>
    <label>Endereco</label><input type="text" name="endereco" id="endereco" value="{$registro[0].endereco}" size="60" /><br/>
    <label>Bairro</label><input type="text" name="bairro" id="bairro" value="{$registro[0].bairro}" size="60" /><br/>
    <label>CEP</label><input type="text" name="cep" id="cep" value="{$registro[0].cep}" size="60" /><br/>
    <label>website</label><input type="text" name="website" id="website" value="{$registro[0].website}" size="60" /><br/>

    <label>Estado: </label> 
    {if isset($estado_selecionado)}       
      <select name="estado" id="estado">
        {html_options options=$lista_estados selected=$estado_selecionado}
      </select>
    {else}
      <select name="estado" id="estado">{$estado_selecionado}</select>
    {/if}    


    <label>Cidade</label>
    {if isset($registro[0].cid_id)}       
      <select name="cid_id" id="cid_id">
        {html_options options=$lista_cidades selected=$registro[0].cid_id}
      </select>
    {else}
      <select name="cid_id" id="cid_id"><option value="">Selecione um Estado primeiro</option></select>
    {/if}      




    <br/><br/>





    <br/>  
    <br/>    
    
    <input type="button" class="btn_padrao" value="Salvar Empresa" onclick="btn_salvar_empresa()"/><br/>
    <input type="button" class="btn_padrao" value="Voltar" onclick="btn_inicio_empresa_click()"/><br/>    
  </fieldset>
</form>
<div class="clear"></div>