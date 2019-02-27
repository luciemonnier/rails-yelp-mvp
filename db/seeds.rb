Restaurant.destroy_all

5.times do
  name = Faker::Restaurant.name
  category = ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  address = Faker::Address.street_address
  phone_number = Faker::PhoneNumber.cell_phone
  restaurant = Restaurant.new(name: name, category: category, address: address, phone_number: phone_number)
  restaurant.save
end
