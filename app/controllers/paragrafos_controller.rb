class ParagrafosController < ApplicationController
  # GET /paragrafos
  # GET /paragrafos.xml
#
  before_filter :authenticate_usuario!

  def index

  #  if @user.curre
    @paragrafos = Paragrafo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @paragrafos }
    end
  end

  # GET /paragrafos/1
  # GET /paragrafos/1.xml
  def show
    @paragrafo = Paragrafo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @paragrafo }
    end
  end

  # GET /paragrafos/new
  # GET /paragrafos/new.xml
  def new
    @paragrafo = Paragrafo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @paragrafo }
    end
  end

  # GET /paragrafos/1/edit
  def edit
    @paragrafo = Paragrafo.find(params[:id])
  end

  # POST /paragrafos
  # POST /paragrafos.xml
  def create
    @paragrafo = Paragrafo.new(params[:paragrafo])

    respond_to do |format|
      if @paragrafo.save
        format.html { redirect_to(@paragrafo, :notice => 'Paragrafo was successfully created.') }
        format.xml  { render :xml => @paragrafo, :status => :created, :location => @paragrafo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @paragrafo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paragrafos/1
  # PUT /paragrafos/1.xml
  def update
    @paragrafo = Paragrafo.find(params[:id])

    respond_to do |format|
      if @paragrafo.update_attributes(params[:paragrafo])
        format.html { redirect_to(@paragrafo, :notice => 'Paragrafo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @paragrafo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paragrafos/1
  # DELETE /paragrafos/1.xml
  def destroy
    @paragrafo = Paragrafo.find(params[:id])
    @paragrafo.destroy

    respond_to do |format|
      format.html { redirect_to(paragrafos_url) }
      format.xml  { head :ok }
    end
  end
end

