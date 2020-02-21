class IngredientsController < ApplicationController

  def index
    @ingredient = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new(params[:name])
  end

  def show
    @ingredient = Ingredient.find(params[:name])
  end

  def create
    @ingredient = Ingredient.new(params[:name])
    if @ingredient.save
      "Successfully saved!"
    else
      render "new_ingredient"
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:name])
  end

  def update
    @ingredient = Ingredient.find(params[:name])
    if @ingredient.update
      "Successfully updated!"
    else
      render "edit_ingredient"
    end
  end

  def delete
    @ingredient = Igredient.find(params[:name])
    @ingredient.destroy
  end

  private
    def ingredient_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:ingredient).permit(:name)
  end
end
