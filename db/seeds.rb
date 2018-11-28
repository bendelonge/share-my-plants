# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Booking.destroy_all
Plant.destroy_all
User.destroy_all

puts "Creating users..."
matt = User.create!(email: 'jego_matt@hotmail.com', password: 'password', first_name: 'Matthieu', last_name: 'Jego', phone_number: '0633185371', profile_picture: File.open(Rails.root.join('db/fixtures/Matt.png')) )
ben = User.create!(email: 'bendelonge@yahoo.com', password: '123456789', first_name: 'Benoit', last_name: 'Delonge', phone_number: '0605040708', profile_picture: File.open(Rails.root.join('db/fixtures/Benoit.jpg')))
henri = User.create!(email: 'henri@gmail.com', password: 'password', first_name: 'Henri', last_name: 'Devorsine', phone_number: '0633156411', profile_picture:File.open(Rails.root.join('db/fixtures/Henri.jpg')) )
adrien = User.create!(email: 'adrien@yahoo.com', password: '123456156789', first_name: 'Adrien', last_name: 'Bonnet', phone_number: '0605041598', profile_picture: File.open(Rails.root.join('db/fixtures/Adrien.jpg')))

puts "Creating plants..."
avocatier = Plant.create!(species: 'Avocatier', city_location: 'Nantes',user: matt, price_per_day: 270, main_picture: File.open(Rails.root.join('db/fixtures/avocatier.jpg')), description: "Le plus diffcile dans sa culture est d'attendre que le noyau produise des racines! Mais, si vous l'achetez en pot, il poussera très rapidement tant qu'il sera bien abreuvé. Ses feuilles deviennent assez larges et longues(20 à 30 cm) et, selon la terre disponible, il peut rester à 2 m de haut ou faire le tour de la pièce où il est placé")
amaryllis = Plant.create!(species: 'Amaryllis', city_location: 'Paris',user: ben, price_per_day: 145, main_picture: File.open(Rails.root.join('db/fixtures/amaryllis.jpg')), description: "Plante à bulbe, cet amaryllis d'intérieur produit une ou plusieurs tiges centralesportant d'énormes fleurs légèrement parfumées superbes en hiver")
gardenia = Plant.create!(species: 'Gardenia', city_location: 'Nantes',user: matt, price_per_day: 199, main_picture: File.open(Rails.root.join('db/fixtures/gardenia.jpg')), description: "Il est irrésistible, avec sa belle floraisonblnche et délicieusement parfumée, même s'il ne vit pas plus de 6 mois en appartement! En serre ou en véranda, il sera plus facile de lui offrir les variations de température adéquates.")
ficus = Plant.create!(species: 'Ficus pleureur', city_location: 'Nantes',user: matt, price_per_day: 958, main_picture: File.open(Rails.root.join('db/fixtures/ficus.jpg')), description: "De feuillage dense, grâcieux et bien développé tout le long de ses nombreuses tiges, ce ficus croît rapidement pour former un grand arbuste et vit de longues années")
crassula = Plant.create!(species: 'Crassula', city_location: 'Paris',user: ben, price_per_day: 129, main_picture: File.open(Rails.root.join('db/fixtures/crassula.jpg')), description: "Elle fait partie des plantes dites grasses dont les feuilles charnues retiennent l'eau dans leurs tissus. Le tronc, peu visible quand elle est jeune, est lui aussi remplé et donne à la plante l'aspect d'un petit arbre")
hypoestes = Plant.create!(species: 'Hypoestes', city_location: 'Paris',user: ben, price_per_day: 199, main_picture: File.open(Rails.root.join('db/fixtures/hypoestes.jpg')), description: "Tapissante et très colorée, cette petite plante a tout pour plaire quand on a peu de place. Vert tacheté de rose, de rouge ou de blanc, elle masque le pot de ses rameauxtouffus et retombants pour créer une boule de fueillage.")
scindapsus = Plant.create!(species: 'Scindapsus', city_location: 'Nantes',user: matt, price_per_day: 59, main_picture: File.open(Rails.root.join('db/fixtures/scindapsus.jpg')), description: "Venue de Brésil, cette solanacée de la famille des piments porte ce joli nom en référence à ses baies rondes. Passant du vert au jaune puis au rouge brillant, cette parure prend toute sa valeur e Octbre et dure plusieurs semaines")
jasmin = Plant.create!(species: 'Jasmin de Madagascar', city_location: 'Nantes',user: ben, price_per_day: 169, main_picture: File.open(Rails.root.join('db/fixtures/jasmin.jpg')), description: "C'est une liane robuste au feuillagecoriace et vernissé, peu abondant. De mai à Septembre, la floraison blanche en étoiles tubulaires est très odorante. Son parfum capiteux exhale ses effluves assez loin autour de la plante.")
abutilon = Plant.create!(species: 'Abutilon', city_location: 'Paris',user: ben, price_per_day: 109, main_picture: File.open(Rails.root.join('db/fixtures/abutilon.jpg')), description: "Arbustes semi-rustiques, les abutilons sont cultivés à l'extérieur dans les régions à climat doux, le plus souvent en plante saisonnière. Protégés du froid dans une maison ou une véranda, ils épanouissent du printemps à l'automne de grosses fleurs en clochettes sur un feuillage large et abondant.")
amayllis2 = Plant.create!(species: 'Amaryllis', city_location: 'Nantes',user: matt, price_per_day: 144, main_picture: File.open(Rails.root.join('db/fixtures/default_plant_picture.png')), description: "Plante à bulbe, cet amaryllis d'intérieur produit une ou plusieurs tiges centralesportant d'énormes fleurs légèrement parfumées superbes en hiver")

puts "Creating bookings..."
Booking.create!(status: 'denied', total_price: 8370 , plant: avocatier, user: henri, starting_date: "2018-07-01" , ending_date: "2018-08-01")
Booking.create!(status: 'approved', total_price: 5970 , plant: gardenia, user: henri, starting_date: "2018-09-01" , ending_date: "2018-09-30")
Booking.create!(status: 'approved', total_price: 3599 , plant: scindapsus, user: henri, starting_date: "2018-10-01" , ending_date: "2018-12-01")
Booking.create!(status: 'approved', total_price: 12675 , plant: jasmin, user: henri, starting_date: "2018-07-01" , ending_date: "2018-09-15")
Booking.create!(status: 'denied', total_price: 1635 , plant: abutilon, user: adrien, starting_date: "2018-11-01" , ending_date: "2018-11-15")
Booking.create!(status: 'denied', total_price: 4360 , plant: abutilon, user: adrien, starting_date: "2018-11-05" , ending_date: "2018-12-15")
Booking.create!(status: 'approved', total_price: 19350 , plant: crassula, user: adrien, starting_date: "2018-07-01" , ending_date: "2018-12-01")
Booking.create!(status: 'pending', total_price: 2725 , plant: abutilon, user: adrien, starting_date: "2018-12-01" , ending_date: "2018-12-25")
Booking.create!(status: 'pending', total_price: 4796 , plant: abutilon, user: adrien, starting_date: "2018-12-18" , ending_date: "2019-02-01")
Booking.create!(status: 'pending', total_price: 7740 , plant: crassula, user: adrien, starting_date: "2018-12-15" , ending_date: "2019-02-15")
Booking.create!(status: 'pending', total_price: 30420 , plant: scindapsus, user: adrien, starting_date: "2019-01-01" , ending_date: "2018-06-01")

puts "Finished!"
