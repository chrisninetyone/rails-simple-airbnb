class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path(@flat)
    else
      render :new
    end
  end


  def show
  end


  def edit
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :price_per_night, :address, :number_of_guests, :description)
  end
end
