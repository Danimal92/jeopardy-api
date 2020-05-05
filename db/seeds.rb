# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Dan', points: 800)
User.create(name: 'Ted', points: 200)
User.create(name: 'Bill', points: 0)

# Round.create(id: 1, questions: 'Hello?',money: 200,  user_id: 1 )
# Round.create(id: 2, questions: 'Goodbye?',money: 600,  user_id: 1 )
# Round.create(id: 3, questions: 'Do I exist?',money: 200,  user_id: 2 )