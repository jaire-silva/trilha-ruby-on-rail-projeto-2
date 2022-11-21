class ComentariosController < ApplicationController
  before_action :set_comentario, only: %i[ show edit update destroy ]
  after_action :set_log, only: %i[ create update ]

  # GET /comentarios or /comentarios.json
  def index
    @comentarios = Comentario.naoAprovados
  end

  # GET /comentarios/1 or /comentarios/1.json
  def show
  end

  # GET /comentarios/new
  def new
    @comentario = Comentario.new
  end

  # GET /comentarios/1/edit
  def edit
  end

  # POST /comentarios or /comentarios.json
  def create
    @comentario = Comentario.new(comentario_params)

    respond_to do |format|
      if @comentario.save
        format.html { redirect_to comentarios_path, notice: "Comentario was successfully created." }
        format.json { render :show, status: :created, location: @comentario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comentarios/1 or /comentarios/1.json
  def update
    respond_to do |format|
      if @comentario.update(comentario_params)
        format.html { redirect_to comentarios_path, notice: "Comentario was successfully updated." }
        format.json { render :show, status: :ok, location: @comentario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentarios/1 or /comentarios/1.json
  def destroy
    @comentario.destroy

    respond_to do |format|
      format.html { redirect_to comentarios_url, notice: "Comentario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario
      @comentario = Comentario.find(params[:id])
    end

    def set_log
      if @comentario.aprovado
        @log = Log.new
        @log.comentario = @comentario
        @log.save
      end
    end

    # Only allow a list of trusted parameters through.
    def comentario_params
      params.require(:comentario).permit(:conteudo, :filme_id, :aprovado)
    end
end
