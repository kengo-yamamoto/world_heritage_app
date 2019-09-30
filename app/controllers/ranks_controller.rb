class RanksController < ApplicationController
  def index
    if  params[:query].blank?
        @items = Item.ranking_by_average
    elsif params[:query] == "week"
        @items = Item.ranking_by_duration_week
    elsif params[:query] == "month"
        @items = Item.ranking_by_duration_month
    elsif params[:query] == "year"
        @items = Item.ranking_by_duration_year
        p @items
    end
  
  end
end
