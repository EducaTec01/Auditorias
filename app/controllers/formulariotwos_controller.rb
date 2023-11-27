class FormulariotwosController < ApplicationController
  before_action :set_formulariotwo, only: %i[ show edit update destroy ]

  # GET /formulariotwos or /formulariotwos.json
  def index
    @formulariotwos = Formulariotwo.all
  end

  # GET /formulariotwos/1 or /formulariotwos/1.json
  def show
  end

  # GET /formulariotwos/new
  def new
    @formulariotwo = Formulariotwo.new
  end

  # GET /formulariotwos/1/edit
  def edit
  end

  # POST /formulariotwos or /formulariotwos.json
  def create
    @formulariotwo = Formulariotwo.new(formulariotwo_params)

    respond_to do |format|
      if @formulariotwo.save
        format.html { redirect_to formulariotwo_url(@formulariotwo), notice: "Formulariotwo was successfully created." }
        format.json { render :show, status: :created, location: @formulariotwo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @formulariotwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formulariotwos/1 or /formulariotwos/1.json
  def update
    respond_to do |format|
      if @formulariotwo.update(formulariotwo_params)
        format.html { redirect_to formulariotwo_url(@formulariotwo), notice: "Formulariotwo was successfully updated." }
        format.json { render :show, status: :ok, location: @formulariotwo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @formulariotwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formulariotwos/1 or /formulariotwos/1.json
  def destroy
    @formulariotwo.destroy

    respond_to do |format|
      format.html { redirect_to formulariotwos_url, notice: "Formulariotwo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulariotwo
      @formulariotwo = Formulariotwo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formulariotwo_params
      params.require(:formulariotwo).permit(:evidencia)
    end
end
