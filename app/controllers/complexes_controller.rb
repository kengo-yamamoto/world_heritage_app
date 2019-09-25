class ComplexesController < ApplicationController
  def index
    @complexes = Item.all
  end
  def show
    
  end
end
