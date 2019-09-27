class Item < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_one :genre, dependent: :destroy
    has_one :area, dependent: :destroy
    has_one :country, dependent: :destroy
    accepts_nested_attributes_for :genre
    accepts_nested_attributes_for :area
    accepts_nested_attributes_for :country
    attachment :item_image

    def self.ranking_by_average
        all.sort_by{|i| i.reviews.average(:rate).to_f}
    end
    def self.ranking_by_duration_week
        all.sort_by{|i| i.reviews.where(created_at: 1.week.ago.end_of_day..Time.zone.now.end_of_day).average(:rate).to_f}
    end
    def self.ranking_by_duration_month
        all.sort_by{|i| i.reviews.where(created_at: 1.month.ago.end_of_day..Time.zone.now.end_of_day).average(:rate).to_f}
    end
    def self.ranking_by_duration_year
        all.sort_by{|i| i.reviews.where(created_at: 1.year.ago.end_of_day..Time.zone.now.end_of_day).average(:rate).to_f}
    end
    # def ranking_by_user_attribute(attribute)
    #     querys = User.all.pluck(attribute).uniq
    #     ranks = querys.map
    #     {|query| Item.all.sort_by{|i| i.reviews.join(:user).where(:job => query).average(:rate).to_f}}
    # end
end
