class AtoresController < ApplicationController
  before_action :set_atore, only: %i[ show edit update destroy ]

  # GET /atores or /atores.json
  def index
    @atores = Atore.all
  end

  # GET /atores/1 or /atores/1.json
  def show
  end

  # GET /atores/new
  def new
    @atore = Atore.new
  end

  # GET /atores/1/edit
  def edit
  end

  # POST /atores or /atores.json
  def create
    @atore = Atore.new(atore_params)

    respond_to do |format|
      if @atore.save
        format.html { redirect_to atore_url(@atore), notice: "Atore was successfully created." }
        format.json { render :show, status: :created, location: @atore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atores/1 or /atores/1.json
  def update
    respond_to do |format|
      if @atore.update(atore_params)
        format.html { redirect_to atore_url(@atore), notice: "Atore was successfully updated." }
        format.json { render :show, status: :ok, location: @atore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atores/1 or /atores/1.json
  def destroy
    @atore.destroy

    respond_to do |format|
      format.html { redirect_to atores_url, notice: "Atore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atore
      @atore = Atore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atore_params
      params.require(:atore).permit(:nome, :ano_nascimento, :emaisl)
    end
end
