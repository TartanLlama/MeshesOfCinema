# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Admin.new(name: "Simon Brand", email: 'tartanllama@hotmail.com', password: 'asdfasdf').save

Carmen::Country.all.each do |c|
  Country.new(country_id: c.code).save
end
