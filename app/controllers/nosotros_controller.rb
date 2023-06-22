class NosotrosController < ApplicationController
  before_action :set_nosotro, only: %i[ show edit update destroy ]

  # GET /nosotros or /nosotros.json
  def index
    @nosotros = Nosotro.all
  end

  # GET /nosotros/1 or /nosotros/1.json
  def show
  end

  # GET /nosotros/new
  def new
    @nosotro = Nosotro.new
  end

  # GET /nosotros/1/edit
  def edit
  end

  # POST /nosotros or /nosotros.json
  def create
    @nosotro = Nosotro.new(nosotro_params)

    respond_to do |format|
      if @nosotro.save
        format.html { redirect_to nosotro_url(@nosotro), notice: "Nosotro was successfully created." }
        format.json { render :show, status: :created, location: @nosotro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nosotro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nosotros/1 or /nosotros/1.json
  def update
    respond_to do |format|
      if @nosotro.update(nosotro_params)
        format.html { redirect_to nosotro_url(@nosotro), notice: "Nosotro was successfully updated." }
        format.json { render :show, status: :ok, location: @nosotro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nosotro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nosotros/1 or /nosotros/1.json
  def destroy
    @nosotro.destroy

    respond_to do |format|
      format.html { redirect_to nosotros_url, notice: "Nosotro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nosotro
      @nosotro = Nosotro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nosotro_params
      params.require(:nosotro).permit(:titulo, :descripcion)
    end
end
