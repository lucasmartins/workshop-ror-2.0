class EntregasController < ApplicationController
  # GET /entregas
  # GET /entregas.json
  def index
    @entregas = Entrega.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entregas }
    end
  end

  # GET /entregas/1
  # GET /entregas/1.json
  def show
    @entrega = Entrega.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entrega }
    end
  end

  # GET /entregas/new
  # GET /entregas/new.json
  def new
    @entrega = Entrega.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entrega }
    end
  end

  # GET /entregas/1/edit
  def edit
    @entrega = Entrega.find(params[:id])
  end

  # POST /entregas
  # POST /entregas.json
  def create
    @entrega = Entrega.new(params[:entrega])

    respond_to do |format|
      if @entrega.save
        format.html { redirect_to @entrega, notice: 'Entrega was successfully created.' }
        format.json { render json: @entrega, status: :created, location: @entrega }
      else
        format.html { render action: "new" }
        format.json { render json: @entrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entregas/1
  # PUT /entregas/1.json
  def update
    @entrega = Entrega.find(params[:id])

    respond_to do |format|
      if @entrega.update_attributes(params[:entrega])
        format.html { redirect_to @entrega, notice: 'Entrega was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entregas/1
  # DELETE /entregas/1.json
  def destroy
    @entrega = Entrega.find(params[:id])
    @entrega.destroy

    respond_to do |format|
      format.html { redirect_to entregas_url }
      format.json { head :no_content }
    end
  end
end
