class Rental
  attr_accessor :date

  def initialize(date)
    @date = date
    @book = Book
    book.rentals << self

    @person = person
    person.rentals << self
  end
end
