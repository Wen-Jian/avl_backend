# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

    [
        "足立壽司",
        "鮨隆",
        "匠壽司",
        "游壽司",
        "同壽司",
        "童壽司",
        "牡丹 天ぷら",
        "凜割烹",
        "鮨野村",
        "笹鮨",
        "鮨天本",
        "鮨七海",
        "Ukai 鐵板燒",
        "肉割烹",
        "よる",
        "和牛47",
        "謙安和",
        "凜割烹",
        "匠樂",
        "鮨十兵衛",
        "吟翔懷石料理",
        "初魚料亭",
        "吉兆割烹壽司",
        "野壽司",
        "一宗壽司",
        "鮨蕙",
        "小粋鮨割烹",
        "粋鮨",
        "錵鑶日本料理",
        "筌壽司割烹",
        "平淡天真",
        "新都里懷石料理",
        "彧割烹",
        "極壽司",
        "允壽司",
        "牛壽司",
        "上引水產",
        "三井料理美術館",
        "森壽司",
        "高玉日本料理",
        "丸壽司",
        "綠水棧",
        "牛二壽司",
        "子元日本料理",
        "逸鮮棧",
        "旬採鮨処",
        "鯈樂",
        "鯤壽司",
        "初魚料亭",
        "煮海",
        "德壽司"
    ].each do |name|
        shop = Shop.create!(
            name: name
        )
        p shop
    
    end
    
    Shop.find_by!(name: "足立壽司").operation_times.create!(week_date: 1, open_time: '12:00', close_time: '21:30')
    Shop.find_by!(name: "足立壽司").operation_times.create!(week_date: 2, open_time: '11:30', close_time: '17:00')
    Shop.find_by!(name: "足立壽司").operation_times.create!(week_date: 3, open_time: '09:00', close_time: '21:30')
    Shop.find_by!(name: "足立壽司").operation_times.create!(week_date: 5, open_time: '12:00', close_time: '21:30')
    Shop.find_by!(name: "足立壽司").operation_times.create!(week_date: 4, open_time: '11:30', close_time: '21:30')
    Shop.find_by!(name: "足立壽司").operation_times.create!(week_date: 6, open_time: '12:00', close_time: '21:30')

end
