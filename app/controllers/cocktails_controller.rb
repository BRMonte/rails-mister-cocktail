class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Cocktail.new(params[:name])
    if @cocktail.save
      "Successfully saved!"
    else
      render "new"
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:name])
  end

  def update
    @cocktail = Cocktail.find(params[:name])
    if @cocktail.update
      "Successfully updated!"
    else
      render "new"
    end
  end

  def delete
    @cocktail = Cocktail.find(params[:name])
    @cocktail.destroy
  end

  private

  def cocktail_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:cocktail).permit(:name)
  end
end
