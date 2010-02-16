class RacasController < ApplicationController
  # GET /racas
  # GET /racas.xml
  def index
    @racas = Raca.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @racas }
    end
  end

  # GET /racas/1
  # GET /racas/1.xml
  def show
    @raca = Raca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @raca }
    end
  end

  # GET /racas/new
  # GET /racas/new.xml
  def new
    @tipos = Tipo.all
    @raca = Raca.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @raca }
    end
  end

  # GET /racas/1/edit
  def edit
    @tipos = Tipo.all
    @raca = Raca.find(params[:id])
  end

  # POST /racas
  # POST /racas.xml
  def create
    @tipos = Tipo.all
    @raca = Raca.new(params[:raca])

    respond_to do |format|
      if @raca.save
        flash[:notice] = 'Registro salvo com sucesso.'
        format.html { redirect_to(racas_url) }
        format.xml  { render :xml => @raca, :status => :created, :location => @raca }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @raca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /racas/1
  # PUT /racas/1.xml
  def update
    @raca = Raca.find(params[:id])

    respond_to do |format|
      if @raca.update_attributes(params[:raca])
        flash[:notice] = 'Registro atualizado com sucesso.'
        format.html { redirect_to(racas_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @raca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /racas/1
  # DELETE /racas/1.xml
  def destroy
    @raca = Raca.find(params[:id])
    @raca.destroy

    respond_to do |format|
      format.html { redirect_to(racas_url) }
      format.xml  { head :ok }
    end
  end
end
