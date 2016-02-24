# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do |n|
	Book.create!(title: "Example Book" + n.to_s,
		content: "day la content",
		author: "NgocVu",
		publish_date: "2015/1/1",
		number_of_pages: n + 50,
		image: "/assets/anh.jpg",
		category_id: 1)
end