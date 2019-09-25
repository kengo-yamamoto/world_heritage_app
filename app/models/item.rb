class Item < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_one :genre, dependent: :destroy
    has_one :aria, dependent: :destroy
    has_one :country, dependent: :destroy
    attachment :item_image
end
