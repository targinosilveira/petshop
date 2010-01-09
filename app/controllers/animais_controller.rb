class AnimaisController < ApplicationController

  before_filter :login_required

  # GET /animais
  # GET /animais.xml
  def index
    @animais = Animal.find(:all)

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
    @animal = Animal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @animal }
    end
  end

  # GET /animais/1/edit
  def edit
    @animal = Animal.find(params[:id])
  end

  # POST /animais
  # POST /animais.xml
  def create
    @animal = Animal.new(params[:animal])

    respond_to do |format|
      if @animal.save
        flash[:notice] = 'Animal was successfully created.'
        format.html { redirect_to(@animal) }
        format.xml  { render :xml => @animal, :status => :created, :location => @animal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @animal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /animais/1
  # PUT /animais/1.xml
  def update
    @animal = Animal.find(params[:id])

    respond_to do |format|
      if @animal.update_attributes(params[:animal])
        flash[:notice] = 'Animal was successfully updated.'
        format.html { redirect_to(@animal) }
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
    @animal.destroy

    respond_to do |format|
      format.html { redirect_to(animais_url) }
      format.xml  { head :ok }
    end
  end
end
