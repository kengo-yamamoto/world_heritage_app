class Item < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_one :genre, dependent: :destroy
    has_one :aria, dependent: :destroy
    has_one :country, dependent: :destroy
    accepts_nested_attributes_for :genre
    accepts_nested_attributes_for :aria
    accepts_nested_attributes_for :country
    attachment :item_image
end
