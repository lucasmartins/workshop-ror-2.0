class SelosController < ApplicationController
  # GET /selos
  # GET /selos.json
  def index
    @selos = Selo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @selos }
    end
  end

  # GET /selos/1
  # GET /selos/1.json
  def show
    @selo = Selo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @selo }
    end
  end

  # GET /selos/new
  # GET /selos/new.json
  def new
    @selo = Selo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @selo }
    end
  end

  # GET /selos/1/edit
  def edit
    @selo = Selo.find(params[:id])
  end

  # POST /selos
  # POST /selos.json
  def create
    @selo = Selo.new(params[:selo])

    respond_to do |format|
      if @selo.save
        format.html { redirect_to @selo, notice: 'Selo was successfully created.' }
        format.json { render json: @selo, status: :created, location: @selo }
      else
        format.html { render action: "new" }
        format.json { render json: @selo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /selos/1
  # PUT /selos/1.json
  def update
    @selo = Selo.find(params[:id])

    respond_to do |format|
      if @selo.update_attributes(params[:selo])
        format.html { redirect_to @selo, notice: 'Selo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @selo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selos/1
  # DELETE /selos/1.json
  def destroy
    @selo = Selo.find(params[:id])
    @selo.destroy

    respond_to do |format|
      format.html { redirect_to selos_url }
      format.json { head :no_content }
    end
  end
end
