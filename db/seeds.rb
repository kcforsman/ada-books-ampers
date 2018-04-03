# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author_list = [
  {
    name: "J.K. Rowling"
  },
  {
    name: "Stephen King"
  },
  {
    name: "William Shakesphere"
  },
  {
    name: "Sarah J Maas"
  }
]

author_list.each do |author|
  worked = Author.create(author)
  puts "#{author[:name]} has ID: #{worked.id}"
end

book_list = [
  {
    author_id: Author.find_by(name: "J.K. Rowling").id,
    title: "Harry Potter and Something Magical",
    description: "yay kids pics that has made history in the modern world",
  },
  {
    author_id: Author.find_by(name: "Stephen King").id,
    title: "Gunslinger",
    description: "I actually haven't read this yet",
  },
  {
    author_id: Author.find_by(name: "Sarah J Maas").id,
    title: "Throne of Glass",
    description: "funn stuff whoot whoot",
  },
  {
    author_id: Author.find_by(name: "William Shakesphere").id,
    title: "Much Ado Around Nothing",
    description: "nothing of importance"
  },
]

book_list.each do |book|
  new_book = Book.create(book)
  puts "#{new_book.title} has ID: #{new_book.id}"
end
