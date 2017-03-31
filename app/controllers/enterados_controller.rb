class EnteradosController < ApplicationController
  before_action :set_enterado, only: [:show, :edit, :update, :destroy]

  # GET /enterados
  # GET /enterados.json
  def index
    @enterados = Enterado.all
  end

  # GET /enterados/1
  # GET /enterados/1.json
  def show
  end

  # GET /enterados/new
  def new
    @enterado = Enterado.new
  end

  # GET /enterados/1/edit
  def edit
  end

  # POST /enterados
  # POST /enterados.json
  def create
    @enterado = Enterado.new(enterado_params)

    respond_to do |format|
      if @enterado.save
        format.html { redirect_to @enterado, notice: 'Enterado was successfully created.' }
        format.json { render :show, status: :created, location: @enterado }
      else
        format.html { render :new }
        format.json { render json: @enterado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enterados/1
  # PATCH/PUT /enterados/1.json
  def update
    respond_to do |format|
      if @enterado.update(enterado_params)
        format.html { redirect_to @enterado, notice: 'Enterado was successfully updated.' }
        format.json { render :show, status: :ok, location: @enterado }
      else
        format.html { render :edit }
        format.json { render json: @enterado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enterados/1
  # DELETE /enterados/1.json
  def destroy
    @enterado.destroy
    respond_to do |format|
      format.html { redirect_to enterados_url, notice: 'Enterado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enterado
      @enterado = Enterado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enterado_params
      params.require(:enterado).permit(:enterado, :post_id, :user_id)
    end
end
