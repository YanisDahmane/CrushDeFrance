puts "Seeding the database..."
puts "Creating User Admin"
AdminUser.create!(email: 'admin@crush.fr', password: 'password', password_confirmation: 'password') if Rails.env.development?
puts "Creating Cities"
10.times do
  City.create!(name: Faker::Address.city)
end
puts "Creating Users"
100.times do
  User.create!(email: Faker::Internet.email, password: 'password', password_confirmation: 'password', cities: City.all.sample(rand(5..8)))
end
puts "Create isaac"
isaac = User.create!(email: 'isaac@crush.fr', password: 'password', password_confirmation: 'password', cities: City.all.sample(rand(5..8)))
puts "Creating Posts"
40.times do
  Post.create!(content: Faker::Lorem.paragraph(sentence_count: 2), user: isaac, city_id: 1, status: Post::STATUS.keys.sample)
end
puts "Finished!"