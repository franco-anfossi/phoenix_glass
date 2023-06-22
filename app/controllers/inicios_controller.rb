class IniciosController < ApplicationController
  before_action :set_inicio, only: %i[ show edit update destroy ]

  # GET /inicios or /inicios.json
  def index
    @inicios = Inicio.all
  end

  # GET /inicios/1 or /inicios/1.json
  def show
  end

  # GET /inicios/new
  def new
    @inicio = Inicio.new
  end

  # GET /inicios/1/edit
  def edit
  end

  # POST /inicios or /inicios.json
  def create
    @inicio = Inicio.new(inicio_params)

    respond_to do |format|
      if @inicio.save
        format.html { redirect_to inicio_url(@inicio), notice: "Inicio was successfully created." }
        format.json { render :show, status: :created, location: @inicio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inicios/1 or /inicios/1.json
  def update
    respond_to do |format|
      if @inicio.update(inicio_params)
        format.html { redirect_to inicio_url(@inicio), notice: "Inicio was successfully updated." }
        format.json { render :show, status: :ok, location: @inicio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inicios/1 or /inicios/1.json
  def destroy
    @inicio.destroy

    respond_to do |format|
      format.html { redirect_to inicios_url, notice: "Inicio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inicio
      @inicio = Inicio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inicio_params
      params.require(:inicio).permit(:titulo, :descripcion)
    end
end
