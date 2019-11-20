# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Offer.destroy_all
Game.destroy_all
User.destroy_all



francine = User.create!(username:'Francine', email:'francine.capin@gmail.com', password: 'azerty' )
titibs = User.create!(username: 'Titibs', email: 'Thibaud.garnier@gmail.com', password: "azertyuiop")
marie = User.create!(username: 'Marie', email: 'marie@gmail.com', password: "azerty")

monopoly = Game.create!(name: 'Monopoly', description: 'un monopoly classique', user: francine, photo:'https://www.regles-de-jeux.com/wp-content/uploads/2014/03/regle-monopoly.jpg')
scrabble = Game.create!(name: 'Scrabble', description: 'un Scrabble classique',user: titibs, photo: 'https://images-na.ssl-images-amazon.com/images/G/02/aplusautomation/vendorimages/3113c3f5-ed56-4fd4-9649-65df7d902196.jpg._CB328300798_.jpg')
risk = Game.create!(name: 'Risk', description: 'un Risk classique', user: titibs, photo:'https://c8.alamy.com/comp/C5MA7M/the-box-for-the-board-game-risk-C5MA7M.jpg')
bonne_paye = Game.create!(name: 'Bonne paye', description: 'une Bonne paye classique', user: francine, photo:'https://www.regles-de-jeux.com/wp-content/uploads/2012/11/bonne-paie1.jpg')


Offer.create!(title: 'Un scrabble pour un soir', description: 'je pars en vacances', game: scrabble, date:"du 9 au 32")
Offer.create!(title: 'Risk 4*', description: 'le risk de base', game: risk, date:'du 30 fev au 22 mars', user: marie)
