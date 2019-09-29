class RanksController < ApplicationController
  def index
    if  params(:query).blank?
        @items = Item.ranking_by_average
    elsif params(:query) == "week"
        @items = Item.ranking_by_week
    elsif params(:query) == "month"
        @items = Item.ranking_by_month
    elsif params(:quety) == "year"
        @items = Item.ranking_by_year
    end
  end
end
