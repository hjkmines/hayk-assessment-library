class Book 

attr_reader :title, :publication_year
@@all = []

def initialize title, publication_year
  @title = title 
  @publication_year = publication_year
  @@all << self 
end 

def self.all 
  @@all 
end 

def add_author author 
BookAuthor.new(author, self)
end 

def books_author 
  BookAuthor.all.map {|bookauthor| bookauthor.book == self ? bookauthor.author.name : nil}.compact 

end 

end 