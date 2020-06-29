class Author 

  attr_reader :name, :age 
  @@all = []

  def initialize name, age 
    @name = name 
    @age = age 
    @@all << self 
  end 

  def adding_book book 
    BookAuthor.new(self, book)
  end 

  def self.all 
    @@all 
  end 

  def authors_book 
    BookAuthor.all.map { |bookauthor| bookauthor.author == self ? bookauthor.book.title : nil }.compact 
  end 
end 