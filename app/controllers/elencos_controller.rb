class ElencosController < ApplicationController
  before_action :set_elenco, only: %i[ show edit update destroy ]

  # GET /elencos or /elencos.json
  def index
    @elencos = Elenco.all
  end

  # GET /elencos/1 or /elencos/1.json
  def show
  end

  # GET /elencos/new
  def new
    @elenco = Elenco.new
  end

  # GET /elencos/1/edit
  def edit
  end

  # POST /elencos or /elencos.json
  def create
    @elenco = Elenco.new(elenco_params)

    respond_to do |format|
      if @elenco.save
        format.html { redirect_to elenco_url(@elenco), notice: "Elenco was successfully created." }
        format.json { render :show, status: :created, location: @elenco }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @elenco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elencos/1 or /elencos/1.json
  def update
    respond_to do |format|
      if @elenco.update(elenco_params)
        format.html { redirect_to elenco_url(@elenco), notice: "Elenco was successfully updated." }
        format.json { render :show, status: :ok, location: @elenco }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @elenco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elencos/1 or /elencos/1.json
  def destroy
    @elenco.destroy

    respond_to do |format|
      format.html { redirect_to elencos_url, notice: "Elenco was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elenco
      @elenco = Elenco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def elenco_params
      params.require(:elenco).permit(:atore_id, :filme_id)
    end
end
