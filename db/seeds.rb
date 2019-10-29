# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: 'Brianna', last_name: 'Kincart', email: 'bk@test.com', password: 'password', password_confirmation: 'password')
user2 = User.create(first_name: 'Alex', last_name: 'Schwartz', email: 'as@test.com', password: 'password', password_confirmation: 'password')
user3 = User.create(first_name: 'Nick', last_name: 'Alberts', email: 'na@test.com', password: 'password', password_confirmation: 'password')

author1 = Author.create(first_name: 'Jane', last_name: 'Austen')
author2 = Author.create(first_name: 'John', last_name: 'Irving')
author3 = Author.create(first_name: 'Jack', last_name: 'Kerouac')

book1 = Book.create(title: 'Pride and Prejudice', author: author1, publication: '1813', creator: user2, description: 'Pride and Prejudice is a romance novel by Jane Austen, first published in 1813. The story charts the emotional development of the protagonist, Elizabeth Bennet, who learns the error of making hasty judgments and comes to appreciate the difference between the superficial and the essential. The comedy of the writing lies in the depiction of manners, education, marriage and money in the British Regency.')
book2 = Book.create(title: 'Persuasion', author: author1, publication: '1818', creator: user2, description: 'Persuasion is the last novel fully completed by Jane Austen. It was published at the end of 1817, six months after her death.')
book3 = Book.create(title: 'Sense and Sensibility', author: author1, publication: '1811', creator: user2, description: "Sense and Sensibility is a novel by Jane Austen, published in 1811. It was published anonymously; By A Lady appears on the cover page where the author's name might have been. It tells the story of the Dashwood sisters, Elinor and Marianne, both of age to marry.")
book4 = Book.create(title: 'A Prayer for Owen Meany', author: author2, publication: '1989', creator: user2, description: "A Prayer for Owen Meany is the seventh novel by American writer John Irving. Published in 1989, it tells the story of John Wheelwright and his best friend Owen Meany growing up together in a small New Hampshire town during the 1950s and 1960s. According to John's narration, Owen is a remarkable boy in many ways; he believes himself to be God's instrument and sets out to fulfill the fate he has prophesied for himself.")
book5 = Book.create(title: 'Big Sur', author: author3, creator: user1)
book6 = Book.create(title: 'On the Road', author: author3, publication: '1962', creator: user1)
book7 = Book.create(title: 'The Subterraneans', author: author3, publication: '1958', creator: user1)
book8 = Book.create(title: 'Tristessa', author: author3, publication: '1960', creator: user1)

review1 = Review.create(rating: 5, body: Faker::Hacker.say_something_smart, book: book1, user: user1)
review2 = Review.create(rating: 5, body: Faker::Hacker.say_something_smart, book: book4, user: user1)
review3 = Review.create(rating: 5, body: Faker::Hacker.say_something_smart, book: book1, user: user2)
review4 = Review.create(rating: 5, body: Faker::Hacker.say_something_smart, book: book2, user: user2)
review5 = Review.create(rating: 5, body: Faker::Hacker.say_something_smart, book: book1, user: user3)
