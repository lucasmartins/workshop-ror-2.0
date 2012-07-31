class CentralCorreiosController < ApplicationController
  # GET /central_correios
  # GET /central_correios.json
  def index
    @central_correios = CentralCorreio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @central_correios }
    end
  end

  # GET /central_correios/1
  # GET /central_correios/1.json
  def show
    @central_correio = CentralCorreio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @central_correio }
    end
  end

  # GET /central_correios/new
  # GET /central_correios/new.json
  def new
    @central_correio = CentralCorreio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @central_correio }
    end
  end

  # GET /central_correios/1/edit
  def edit
    @central_correio = CentralCorreio.find(params[:id])
  end

  # POST /central_correios
  # POST /central_correios.json
  def create
    @central_correio = CentralCorreio.new(params[:central_correio])

    respond_to do |format|
      if @central_correio.save
        format.html { redirect_to @central_correio, notice: 'Central correio was successfully created.' }
        format.json { render json: @central_correio, status: :created, location: @central_correio }
      else
        format.html { render action: "new" }
        format.json { render json: @central_correio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /central_correios/1
  # PUT /central_correios/1.json
  def update
    @central_correio = CentralCorreio.find(params[:id])

    respond_to do |format|
      if @central_correio.update_attributes(params[:central_correio])
        format.html { redirect_to @central_correio, notice: 'Central correio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @central_correio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /central_correios/1
  # DELETE /central_correios/1.json
  def destroy
    @central_correio = CentralCorreio.find(params[:id])
    @central_correio.destroy

    respond_to do |format|
      format.html { redirect_to central_correios_url }
      format.json { head :no_content }
    end
  end
end
