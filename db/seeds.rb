Restaurant.delete_all

5.times {
  restaurant = Restaurant.new(name: Faker::Restaurant.name, phone_number: Faker::PhoneNumber.phone_number, category: ["chinese", "italian", "japanese", "french", "belgian"].sample, address: Faker::Address.full_address)
  restaurant.save

  3.times {
    review = Review.new(content: Faker::Restaurant.review, rating: rand(0..5))
    review.restaurant = restaurant
    review.save
  }
}
