# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

japanese_restaurant = Restaurant.create(name: 'Shiki', address: '71000 Tokyo', category: 'japanese')
chinese_restaurant = Restaurant.create(name: 'Ryu', address: '72000 Shanghai', category: 'chinese')
italian_restaurant = Restaurant.create(name: 'Bonno', address: '73000 Milan', category: 'italian')
Restaurant.create(name: 'Coq au vin', address: '74000 Paris', category: 'french')
Restaurant.create(name: 'Waffles', address: '75000 Brussels', category: 'belgian')

japanese_yummy = Review.new(content: 'yummy yummy', rating: 4)
japanese_yummy.restaurant = japanese_restaurant
japanese_yummy.save

chinese_yummy = Review.new(content: 'So-so', rating: 2)
chinese_yummy.restaurant = chinese_restaurant
chinese_yummy.save

italian_yummy = Review.new(content: 'So-so', rating: 2)
italian_yummy.restaurant = italian_restaurant
italian_yummy.save
