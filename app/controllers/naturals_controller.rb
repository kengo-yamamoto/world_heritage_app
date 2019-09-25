class NaturalsController < ApplicationController
  def index
    @naturals = Item.all
  end
  def show
    
  end
end
