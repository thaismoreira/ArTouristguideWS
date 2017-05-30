class PontoTuristicosController < ApplicationController
  before_action :set_ponto_turistico, only: [:show, :edit, :update, :destroy]

  # GET /ponto_turisticos
  # GET /ponto_turisticos.json
  def index
    @ponto_turisticos = PontoTuristico.all
  end

  # GET /ponto_turisticos/1
  # GET /ponto_turisticos/1.json
  def show
  end

  # GET /ponto_turisticos/new
  def new
    @ponto_turistico = PontoTuristico.new
  end

  # GET /ponto_turisticos/1/edit
  def edit
  end

  # POST /ponto_turisticos
  # POST /ponto_turisticos.json
  def create
    @ponto_turistico = PontoTuristico.new(ponto_turistico_params)

    respond_to do |format|
      if @ponto_turistico.save
        format.html { redirect_to @ponto_turistico, notice: 'Ponto turistico was successfully created.' }
        format.json { render :show, status: :created, location: @ponto_turistico }
      else
        format.html { render :new }
        format.json { render json: @ponto_turistico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ponto_turisticos/1
  # PATCH/PUT /ponto_turisticos/1.json
  def update
    respond_to do |format|
      if @ponto_turistico.update(ponto_turistico_params)
        format.html { redirect_to @ponto_turistico, notice: 'Ponto turistico was successfully updated.' }
        format.json { render :show, status: :ok, location: @ponto_turistico }
      else
        format.html { render :edit }
        format.json { render json: @ponto_turistico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ponto_turisticos/1
  # DELETE /ponto_turisticos/1.json
  def destroy
    @ponto_turistico.destroy
    respond_to do |format|
      format.html { redirect_to ponto_turisticos_url, notice: 'Ponto turistico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ponto_turistico
      @ponto_turistico = PontoTuristico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ponto_turistico_params
      params.require(:ponto_turistico).permit(:nome, :endereco, :cep, :cidade, :estado_id, :tipo_ponto_turistico_id, :latitude, :longitude, :raio, :azimuthe)
    end
end
