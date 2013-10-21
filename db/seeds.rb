# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@editor = User.create( name: "PortfolioAdmin", email: "editor@example.com", password: "password123", password_confirmation: "password123", role: "editor" )

10.times do
  Post.create(title: Faker::Company.catch_phrase, body: Faker::Lorem.paragraphs, published: false)
end


puts "Done: Editor Seeded \n #{@editor.to_yaml}"
