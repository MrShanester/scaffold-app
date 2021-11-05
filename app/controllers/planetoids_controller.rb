class PlanetoidsController < ApplicationController
  before_action :set_planetoid, only: [:show, :edit, :update, :destroy]

  # GET /planetoids
  def index
    @planetoids = Planetoid.all
  end

  # GET /planetoids/1
  def show
  end

  # GET /planetoids/new
  def new
    @planetoid = Planetoid.new
  end

  # GET /planetoids/1/edit
  def edit
  end

  # POST /planetoids
  def create
    @planetoid = Planetoid.new(planetoid_params)

    if @planetoid.save
      redirect_to @planetoid, notice: 'Planetoid was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /planetoids/1
  def update
    if @planetoid.update(planetoid_params)
      redirect_to @planetoid, notice: 'Planetoid was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /planetoids/1
  def destroy
    @planetoid.destroy
    redirect_to planetoids_url, notice: 'Planetoid was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planetoid
      @planetoid = Planetoid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def planetoid_params
      params.require(:planetoid).permit(:name, :mass, :diameter, :orbital_distance)
    end
end
