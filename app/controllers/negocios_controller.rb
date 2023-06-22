class NegociosController < ApplicationController
  before_action :set_negocio, only: %i[ show edit update destroy ]

  # GET /negocios or /negocios.json
  def index
    @negocios = Negocio.all
  end

  # GET /negocios/1 or /negocios/1.json
  def show
  end

  # GET /negocios/new
  def new
    @negocio = Negocio.new
  end

  # GET /negocios/1/edit
  def edit
  end

  # POST /negocios or /negocios.json
  def create
    @negocio = Negocio.new(negocio_params)

    respond_to do |format|
      if @negocio.save
        format.html { redirect_to negocio_url(@negocio), notice: "Negocio was successfully created." }
        format.json { render :show, status: :created, location: @negocio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /negocios/1 or /negocios/1.json
  def update
    respond_to do |format|
      if @negocio.update(negocio_params)
        format.html { redirect_to negocio_url(@negocio), notice: "Negocio was successfully updated." }
        format.json { render :show, status: :ok, location: @negocio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /negocios/1 or /negocios/1.json
  def destroy
    @negocio.destroy

    respond_to do |format|
      format.html { redirect_to negocios_url, notice: "Negocio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_negocio
      @negocio = Negocio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def negocio_params
      params.require(:negocio).permit(:titulo, :descripcion)
    end
end
