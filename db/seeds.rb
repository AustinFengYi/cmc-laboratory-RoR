# Category
Category.destroy_all

category_list = [
  { name: "活動訊息" },
  { name: "榮譽事項" },
  { name: "獎學金" },
  { name: "研討會" },
  { name: "活動集錦" },
  { name: "其他消息" },
]

category_list.each do |category|
  Category.create( name: category[:name] )
end
puts "Category created!"
