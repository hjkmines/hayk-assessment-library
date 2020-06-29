# Create classes for `Book`, `BookAuthor`, and `Author`. You should be able to:

# * Create a book DONE 
# * Create an author DONE 
# * Add a book to an author DONE
# * Add an author to a book DONE 
# * Get a list of an author's books
# * Get a list of a book's authors

# Books and Authors shouldn't be stored in each other's classes (use a single source of truth).
require_relative './book'
require_relative './author'
require_relative './bookauthor'
require 'pry'

#book 
book1 = Book.new("Gone with the wind", 1995)
book2 = Book.new("GO GO Gadget", 2005)
book3 = Book.new("Prince of Aserath", 2008)
book4 = Book.new("Huckleberry Farm", 2015)

#authors
author1 = Author.new("John Lennon", 35)
author2 = Author.new("Tony Kim", 32)
author3 = Author.new("James Benton", 41)
author4 = Author.new("Jesus Bethos", 45)

#bookauthor 
bookauthor1 = BookAuthor.new(author3, book2)
bookauthor2 = BookAuthor.new(author2, book3)
bookauthor3 = BookAuthor.new(author1, book1)
bookauthor4 = BookAuthor.new(author1, book1)
bookauthor5 = BookAuthor.new(author3, book4)

binding.pry 
