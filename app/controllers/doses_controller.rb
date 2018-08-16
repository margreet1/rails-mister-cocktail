class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(cocktail
      _params)
    @cocktail = Cocktail.find(params[:cocktail_id])

    @cocktail.dose = @cocktail
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image_url)
  end

  def destroy
  end
end
