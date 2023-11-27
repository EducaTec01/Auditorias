class AsignacionsController < ApplicationController
  before_action :set_asignacion, only: %i[ show edit update destroy ]

  # GET /asignacions or /asignacions.json
  def index
    @asignacions = Asignacion.all
  end

  # GET /asignacions/1 or /asignacions/1.json
  def show
  end

  # GET /asignacions/new
  def new
    @asignacion = Asignacion.new
  end

  # GET /asignacions/1/edit
  def edit
  end

  # POST /asignacions or /asignacions.json
  def create
    @asignacion = Asignacion.new(asignacion_params)

    respond_to do |format|
      if @asignacion.save
        format.html { redirect_to asignacion_url(@asignacion), notice: "Asignacion was successfully created." }
        format.json { render :show, status: :created, location: @asignacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @asignacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignacions/1 or /asignacions/1.json
  def update
    respond_to do |format|
      if @asignacion.update(asignacion_params)
        format.html { redirect_to asignacion_url(@asignacion), notice: "Asignacion was successfully updated." }
        format.json { render :show, status: :ok, location: @asignacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @asignacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignacions/1 or /asignacions/1.json
  def destroy
    @asignacion.destroy

    respond_to do |format|
      format.html { redirect_to asignacions_url, notice: "Asignacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignacion
      @asignacion = Asignacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asignacion_params
      params.require(:asignacion).permit(:date, :descripcion, :user_id, :departamento_id)
    end
end
