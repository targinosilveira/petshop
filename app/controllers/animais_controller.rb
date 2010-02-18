class AnimaisController < ApplicationController
  # GET /animais
  # GET /animais.xml
  def index
    @cliente = Cliente.find(params[:cliente])
    @animais = @cliente.animais.all
    @tipo = 

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @animais }
    end
  end

  # GET /animais/1
  # GET /animais/1.xml
  def show
    @animal = Animal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @animal }
    end
  end

  # GET /animais/new
  # GET /animais/new.xml
  def new
    @cliente = Cliente.find(params[:cliente])
    @tipos = Tipo.all
    @animal = @cliente.animais.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @animal }
    end
  end

  # GET /animais/1/edit
  def edit
    @tipos = Tipo.all
    @animal = Animal.find(params[:id])
  end

  # POST /animais
  # POST /animais.xml
  def create
    @animal = Animal.new(params[:animal])

    respond_to do |format|
      if @animal.save
        flash[:notice] = 'Registro salvo com sucesso.'
        format.html { redirect_to(animais_url({:cliente => @animal.cliente_id}))}
        format.xml  { render :xml => @animal, :status => :created, :location => @animal }
      else
        flash[:error] = 'Não foi possivel gravar o registro, verifique-o por favor.'
        format.html { redirect_to(new_animal_path({:cliente => @animal.cliente_id}))}
        #format.html { redirect_to(new_animal_path({:cliente => @cliente.id}))}
        #format.html { render :action => "new", :cliente => @cliente.id }
        #format.xml  { render :xml => @animal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /animais/1
  # PUT /animais/1.xml
  def update
    @animal = Animal.find(params[:id])

    respond_to do |format|
      if @animal.update_attributes(params[:animal])
        flash[:notice] = 'Registro atualizado com sucesso.'
        format.html { redirect_to(animais_url({:cliente => @animal.cliente_id}))}
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @animal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /animais/1
  # DELETE /animais/1.xml
  def destroy
    @animal = Animal.find(params[:id])
    cliente_id = @animal.cliente_id
    @animal.destroy

    respond_to do |format|
      format.html { redirect_to(animais_url({:cliente => cliente_id}))}
      format.xml  { head :ok }
    end
  end

   def lista_racas
    unless params[:animal_tipo_id].blank?
      @racas = Raca.find(:all, :conditions => ["tipo_id = ?", params[:animal_tipo_id]], :order => "nome")
      render :layout => false
    end
  end

end
