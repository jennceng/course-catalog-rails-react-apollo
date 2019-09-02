# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Professor.find_or_create_by(name: "Grace Hopper", title: "professor", email: "g@hopper.com", office: "navy ship room 8", education: "Vassar, Yale")
Professor.find_or_create_by(name: "Alan Turing", title: "department head", email: "not@robot.com", office: "cambridge hall room 7", education: "Princeton, University of Cambridge")

5.times do
  Professor.find_or_create_by(education: Faker::Educator.degree, name: Faker::Name.unique.name, title: "lecturer", email: "me@#{Faker::Name.unique.name}.com", office: Faker::Educator.campus)
end

Professor.all.each do |p|
  3.times do
    Course.find_or_create_by(professor: p, name: Faker::Educator.course_name , catalog_number: "#{Faker::Educator.subject} #{rand(100) + 1}")
  end
end

Course.all.each do |c|
  5.times do
    Review.find_or_create_by(course: c, rating: rand(10) + 1, body: Faker::Quotes::Shakespeare.hamlet_quote)
  end
end
