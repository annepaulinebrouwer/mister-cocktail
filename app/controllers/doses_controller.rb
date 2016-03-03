class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @available_ingredients = Ingredient.all
  end

  def create
    @dose = dose.new(dose_params)
    @dose.save!
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose = dose.find(params[:id])
    @dose.destroy
  end
end
