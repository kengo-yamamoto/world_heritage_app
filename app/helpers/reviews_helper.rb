module ReviewsHelper
    def self.create_all_ranks #Noteクラスからデータを取ってくる処理なのでクラスメソッド！
        Item.find(Review.group(:item_id).order('count(Item_id) desc').limit(10).pluck(:item_id))
      end
end
