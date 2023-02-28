# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Post.destroy_all

15.times do
    first_name = Faker::Movies::HarryPotter.character
    last_name = Faker::Movies::HarryPotter.house
    password = Faker::Internet.password(min_length: 8)
    country = Faker::Address.country
    User.create(
        first_name: first_name,
        last_name: last_name,
        age: rand(18..70),
        country: country,
        email: "#{first_name.downcase}@example.com",
        password: password,
        password_confirmation: password
    )
end

8.times do
    Post.create(
        title: Faker::Movies::HarryPotter.book,
        content: Faker::Movies::HarryPotter.quote,
        user: User.all.sample
    )
end