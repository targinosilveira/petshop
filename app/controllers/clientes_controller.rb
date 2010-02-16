class ClientesController < ApplicationController

  include AuthenticatedSystem
  before_filter :login_required

  # GET /clientes
  # GET /clientes.xml
  def index
    @clientes = Cliente.find(:all, :conditions => ["master_id = ?", current_user.master_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clientes }
    end
  end

  # GET /clientes/1
  # GET /clientes/1.xml
  def show
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cliente }
    end
  end

  # GET /clientes/new
  # GET /clientes/new.xml
  def new
    @estados = Estado.all
    @cliente = Cliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cliente }
    end
  end

  # GET /clientes/1/edit
  def edit
    @estados = Estado.all
    @cliente = Cliente.find(params[:id])
  end

  # POST /clientes
  # POST /clientes.xml
  def create
    params[:cliente] = formata_dados(params[:cliente])
    @estados = Estado.all
    @cliente = Cliente.new(params[:cliente])

    respond_to do |format|
      if @cliente.save
        flash[:notice] = 'Registro salvo com sucesso.'
        format.html { redirect_to(@cliente) }
        format.xml  { render :xml => @cliente, :status => :created, :location => @cliente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clientes/1
  # PUT /clientes/1.xml
  def update
    @cliente = Cliente.find(params[:id])
    params[:cliente] = formata_dados(params[:cliente])

    respond_to do |format|
      if @cliente.update_attributes(params[:cliente])
        flash[:notice] = 'Registro atualizado com sucesso.'
        format.html { redirect_to(@cliente) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.xml
  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy

    respond_to do |format|
      format.html { redirect_to(clientes_url) }
      format.xml  { head :ok }
    end
  end

  def lista_cidades
    unless params[:cliente_estado_id].blank?
      @cidades = Cidade.find(:all, :conditions => ["estado_id = ?", params[:cliente_estado_id]], :order => "nome")
      render :layout => false
    end
  end

  def formata_dados(params)
    params[:cpf_cnpj] = params[:cpf_cnpj].gsub(".","") if params[:cpf_cnpj]
    params[:cpf_cnpj] = params[:cpf_cnpj].gsub("-","") if params[:cpf_cnpj]
    params[:cpf_cnpj] = params[:cpf_cnpj].gsub("/","") if params[:cpf_cnpj]
    params[:cep] = params[:cep].gsub("-","") if params[:cep]
    params[:telefone_residencial] = params[:telefone_residencial].gsub("(","") if params[:telefone_residencial]
    params[:telefone_residencial] = params[:telefone_residencial].gsub(")","") if params[:telefone_residencial]
    params[:telefone_residencial] = params[:telefone_residencial].gsub("-","") if params[:telefone_residencial]
    params[:telefone_residencial] = params[:telefone_residencial].gsub(" ","") if params[:telefone_residencial]
    params[:telefone_trabalho] = params[:telefone_trabalho].gsub("(","") if params[:telefone_trabalho]
    params[:telefone_trabalho] = params[:telefone_trabalho].gsub(")","") if params[:telefone_trabalho]
    params[:telefone_trabalho] = params[:telefone_trabalho].gsub("-","") if params[:telefone_trabalho]
    params[:telefone_trabalho] = params[:telefone_trabalho].gsub(" ","") if params[:telefone_trabalho]
    params[:celular] = params[:celular].gsub("(","") if params[:celular]
    params[:celular] = params[:celular].gsub(")","") if params[:celular]
    params[:celular] = params[:celular].gsub("-","") if params[:celular]
    params[:celular] = params[:celular].gsub(" ","") if params[:celular]
    params[:celular_secundario] = params[:celular_secundario].gsub("(","") if params[:celular_secundario]
    params[:celular_secundario] = params[:celular_secundario].gsub(")","") if params[:celular_secundario]
    params[:celular_secundario] = params[:celular_secundario].gsub("-","") if params[:celular_secundario]
    params[:celular_secundario] = params[:celular_secundario].gsub(" ","") if params[:celular_secundario]
    params
  end


end
