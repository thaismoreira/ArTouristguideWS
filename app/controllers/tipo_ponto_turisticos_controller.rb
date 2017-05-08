class TipoPontoTuristicosController < ApplicationController
  before_action :set_tipo_ponto_turistico, only: [:show, :edit, :update, :destroy]

  # GET /tipo_ponto_turisticos
  # GET /tipo_ponto_turisticos.json
  def index
    @tipo_ponto_turisticos = TipoPontoTuristico.all
  end

  # GET /tipo_ponto_turisticos/1
  # GET /tipo_ponto_turisticos/1.json
  def show
  end

  # GET /tipo_ponto_turisticos/new
  def new
    @tipo_ponto_turistico = TipoPontoTuristico.new
  end

  # GET /tipo_ponto_turisticos/1/edit
  def edit
  end

  # POST /tipo_ponto_turisticos
  # POST /tipo_ponto_turisticos.json
  def create
    @tipo_ponto_turistico = TipoPontoTuristico.new(tipo_ponto_turistico_params)

    respond_to do |format|
      if @tipo_ponto_turistico.save
        format.html { redirect_to @tipo_ponto_turistico, notice: 'Tipo ponto turistico was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_ponto_turistico }
      else
        format.html { render :new }
        format.json { render json: @tipo_ponto_turistico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_ponto_turisticos/1
  # PATCH/PUT /tipo_ponto_turisticos/1.json
  def update
    respond_to do |format|
      if @tipo_ponto_turistico.update(tipo_ponto_turistico_params)
        format.html { redirect_to @tipo_ponto_turistico, notice: 'Tipo ponto turistico was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_ponto_turistico }
      else
        format.html { render :edit }
        format.json { render json: @tipo_ponto_turistico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_ponto_turisticos/1
  # DELETE /tipo_ponto_turisticos/1.json
  def destroy
    @tipo_ponto_turistico.destroy
    respond_to do |format|
      format.html { redirect_to tipo_ponto_turisticos_url, notice: 'Tipo ponto turistico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_ponto_turistico
      @tipo_ponto_turistico = TipoPontoTuristico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_ponto_turistico_params
      params.require(:tipo_ponto_turistico).permit(:tipo)
    end
end
