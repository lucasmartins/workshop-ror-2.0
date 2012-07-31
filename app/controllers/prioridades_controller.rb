class PrioridadesController < ApplicationController
  # GET /prioridades
  # GET /prioridades.json
  def index
    @prioridades = Prioridade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prioridades }
    end
  end

  # GET /prioridades/1
  # GET /prioridades/1.json
  def show
    @prioridade = Prioridade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prioridade }
    end
  end

  # GET /prioridades/new
  # GET /prioridades/new.json
  def new
    @prioridade = Prioridade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prioridade }
    end
  end

  # GET /prioridades/1/edit
  def edit
    @prioridade = Prioridade.find(params[:id])
  end

  # POST /prioridades
  # POST /prioridades.json
  def create
    @prioridade = Prioridade.new(params[:prioridade])

    respond_to do |format|
      if @prioridade.save
        format.html { redirect_to @prioridade, notice: 'Prioridade was successfully created.' }
        format.json { render json: @prioridade, status: :created, location: @prioridade }
      else
        format.html { render action: "new" }
        format.json { render json: @prioridade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prioridades/1
  # PUT /prioridades/1.json
  def update
    @prioridade = Prioridade.find(params[:id])

    respond_to do |format|
      if @prioridade.update_attributes(params[:prioridade])
        format.html { redirect_to @prioridade, notice: 'Prioridade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prioridade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prioridades/1
  # DELETE /prioridades/1.json
  def destroy
    @prioridade = Prioridade.find(params[:id])
    @prioridade.destroy

    respond_to do |format|
      format.html { redirect_to prioridades_url }
      format.json { head :no_content }
    end
  end
end
