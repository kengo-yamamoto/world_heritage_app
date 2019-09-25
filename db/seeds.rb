# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create!(
    [
    {
        
        item_name: "富士山",
        item_image: "03a1962609f776fc9d752e26c4bb6670a6143bc4078db79dd2c319ec0e02",
        rate: 4.1
    },
    {
        
        item_name: "法隆寺",
        item_image: "4f17b5b961ad0bd841d07e6fa1a44dfbc438326b0d364b94a400e2895135",
        rate: 3.8
    },
    {
        
        item_name: "白川郷",
        item_image: "9a186287ec10f189c1013d487abe0323e326e57cf26bd3234f6c46bc405c",
        rate: 4.0
    }
    ])