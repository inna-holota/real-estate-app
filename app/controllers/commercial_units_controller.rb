class CommercialUnitsController < ApplicationController
  before_action :set_commercial_unit, only: [:show, :edit, :update, :destroy]

  def index
    @commercial_units = CommercialUnit.all
  end

  def show
  end

  def new
    @commercial_unit = CommercialUnit.new
  end

  def edit
  end

  def create
    @commercial_unit = CommercialUnit.new(commercial_unit_params)

    if @commercial_unit.save
      redirect_to commercial_units_path, notice: 'Commercial unit was successfully created.'
    else
      render :new
    end
  end

  def update
    if @commercial_unit.update(commercial_unit_params)
      redirect_to @commercial_unit, notice: 'Commercial unit was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @commercial_unit.destroy
    redirect_to commercial_units_url, notice: 'Commercial unit was successfully destroyed.'
  end

  private
    def set_commercial_unit
      @commercial_unit = CommercialUnit.find(params[:id])
    end

    def commercial_unit_params
      params.require(:commercial_unit).permit(:owner, :address, :shops, :sqmt, :parking, :price, :picture)
    end
end
