# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Offer.destroy_all
Game.destroy_all



francine = User.create!(username:'Francine', email:'francine.capin@gmail.com', password: 'azerty' )
titibs = User.create!(username: 'Titibs', email: 'Thibaud.garnier@gmail.com', password: "azertyuiop")
Game.create!(name: 'Monopoly', description: 'un monopoly classique', user: francine)
scrabble = Game.create!(name: 'Scrabble', description: 'un Scrabble classique',user: titibs)
risk = Game.create!(name: 'Risk', description: 'un Risk classique', user: titibs)
Game.create!(name: 'Bonne paye', description: 'une Bonne paye classique', user: francine)

Offer.create!(title: 'Un scrabble pour un soir', description: 'je pars en vacances', game: scrabble, date:"du 9 au 32")
Offer.create!(title: 'Risk 4*', description: 'le risk de base', game: risk, date:'du 30 fev au 22 mars')
