class ComplexBuildingsController < ApplicationController
  before_action :set_complex_building, only: [:show, :edit, :update, :destroy]

  def index
    @complex_buildings = ComplexBuilding.all
  end

  def show
  end

  def new
    @complex_building = ComplexBuilding.new
  end

  def edit
  end

  def create
    @complex_building = ComplexBuilding.new(complex_building_params)

    if @complex_building.save
      redirect_to complex_buildings_path, notice: 'Complex building was successfully created.'
    else
      render :new
    end
  end

  def update
    if @complex_building.update(complex_building_params)
      redirect_to @complex_building, notice: 'Complex building was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @complex_building.destroy
    redirect_to complex_buildings_url, notice: 'Complex building was successfully destroyed.'
  end

  private
    def set_complex_building
      @complex_building = ComplexBuilding.find(params[:id])
    end

    def complex_building_params
      params.require(:complex_building).permit(:owner, :address, :units, :sqmt, :price, :picture)
    end
end
