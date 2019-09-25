# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
    [
        {
            email: "aaa@aaa",
            password: "111111"
        }
        ])
User.create!(
    [
        {
            nick_name: "ライチ",
            email: "bbb@bbb",
            password: "222222",
            age: 23,
            job: "不動産",
            profile_image: Rails.root.join("app/assets/images/A.jpg").open
        }])
Item.create!(
    [
    {
        
        item_name: "富士山",
        item_image: Rails.root.join("app/assets/images/A.jpg").open,
        rate: 4.1
    },
    {
        
        item_name: "法隆寺",
        item_image: Rails.root.join("app/assets/images/B.jpg").open,
        rate: 3.8
    },
    {
        
        item_name: "白川郷",
        item_image: Rails.root.join("app/assets/images/C.jpg").open,
        rate: 4.0
    }
    ])
    Genre.create!(
    [
    {
        item_id: 1,
        genre_name: "自然遺産"
    },
    {
        item_id: 2,
        genre_name: "文化遺産"
    },
    {
        item_id: 3,
        genre_name: "文化遺産"
    }
    ])
    Country.create!(
    [
    {
        item_id: 1,
        country_name: "日本"
    },
    {
        item_id: 2,
        country_name: "日本"
    },
    {
        item_id: 3,
        country_name: "日本"
    }
    ])
    Area.create!(
    [
    {
        item_id: 1,
        area_name: "日本"
    },
    {
        item_id: 2,
        area_name: "日本"
    },
    {
        item_id: 3,
        area_name: "日本"
    }
    ])