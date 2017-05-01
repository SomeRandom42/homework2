# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all

years = (1800..2017).to_a
book_types =  ['Fiction', 'Nonfiction']
classifications =
[
    'General Works - encyclopedias',
    'Philosophy, Psychology, Religion',
    'History - Auxiliary Sciences',
    'History (except American)',
    'General U.S. History',
    'Local U.S. History',
    'Geography, Anthropology, Recreation',
    'Social Sciences	U',
    'Political Science	V',
    'Law	Z - Bibliography and Library Science',
    'Education',
   'Music',
   'Fine Arts',
    'Language and Literature',
    'Science',
    'Medicine',
    'Agriculture',
    'Technology',
    'Military',
    'Naval Science',
    'Bibliography and Library Science'
]



#Author.destroy_all





25.times do
  Author.create!(
               first_name:  Faker::Author.first_name ,
               last_name:  Faker::Author.last_name ,
               age: Faker::Author.between(23, 99)
               )
  
end


50.times do
  Book.create!(
               title: Faker::Book.title,
               genre: Faker::Book.genre,
               classification: classifications.sample ,
               book_type: book_types.sample,
               year: years.sample,
               sub_title: Faker::Book.title
               )
               
    
    
    Authorship.create!(book_id: Faker::Number.between(1, 50),
    author_id: Faker::Number.between(1, 25)
    
    
    )              
    
end



