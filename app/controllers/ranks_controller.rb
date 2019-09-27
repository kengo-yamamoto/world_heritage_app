class RanksController < ApplicationController
  def index
    @items = Item.rating_average
  end
  def show
    
  end
end
