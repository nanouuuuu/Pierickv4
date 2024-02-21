class PoissonsController < ApplicationController
  before_action :set_poisson, only: %i[ show edit update destroy ]

  # GET /poissons or /poissons.json
  def index
    @poissons = Poisson.all
  end

  # GET /poissons/1 or /poissons/1.json
  def show
  end

  # GET /poissons/new
  def new
    @poisson = Poisson.new
  end

  # GET /poissons/1/edit
  def edit
  end

  # POST /poissons or /poissons.json
  def create
    @poisson = Poisson.new(poisson_params)

    respond_to do |format|
      if @poisson.save
        format.html { redirect_to poisson_url(@poisson), notice: "Poisson was successfully created." }
        format.json { render :show, status: :created, location: @poisson }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poisson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poissons/1 or /poissons/1.json
  def update
    respond_to do |format|
      if @poisson.update(poisson_params)
        format.html { redirect_to poisson_url(@poisson), notice: "Poisson was successfully updated." }
        format.json { render :show, status: :ok, location: @poisson }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poisson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poissons/1 or /poissons/1.json
  def destroy
    @poisson.destroy!

    respond_to do |format|
      format.html { redirect_to poissons_url, notice: "Poisson was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poisson
      @poisson = Poisson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poisson_params
      params.require(:poisson).permit(:name, :image, :price, :rarity, :description, :nutriscore)
    end
end
