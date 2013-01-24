# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..1000).each do |n|
  strN = "%04d" % n
  puts strN
  gebday = Date.new(1960,1,1) +  n
  User.create(name: "name#{strN}", email:"user#{strN}@test.de", birthday: gebday, numlogin:n)
end