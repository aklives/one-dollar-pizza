class PizzaplacesController < ApplicationController

  def index
    @pizzaplaces = Pizzaplace.all

    render json: @pizzaplaces
  end

  def show
    @pizzaplace = Pizzaplace.find(params[:id])

    render json: @pizzaplace
  end


  def create
    @pizzaplace = Pizzaplace.create(pizzaplaces_params)
      render json: @pizzaplace

  end


private


def pizzaplaces_params
  params.require(:pizzaplace).permit(:name, :address, :zipcode)
end


end
