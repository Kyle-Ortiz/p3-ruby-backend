require "faker"
puts "🌱 Seeding spices..."
     25.times do |count|
          Customer.create(
               full_name: Faker::Name.name,
               email: Faker::Internet.email,
               phone_number: Faker::PhoneNumber.cell_phone,
          )
     end

     200.times do |count|
          Invoice.create(
               price: Faker::Commerce.price,
               quantity: rand(20..2000),
               payment_status: Faker::Boolean.boolean,
               order_id: rand(1..220),
               due_by: Faker::Date.between(from: "2020-01-12", to: "2021-12-31"), 
          )
     end

     220.times do |count|
          Order.create(
               style_number: Faker::Barcode.ean(13),
               color: Faker::Commerce.color,
               print_color: Faker::Commerce.color,
               print_location: rand(1..4),
               due_date: Faker::Date.between(from: "2020-01-12", to: "2021-12-31"),
               customer_id: rand(1..25), 
               order_status: rand(1..5),
          )
     end


puts "✅ Done seeding!"
