require_relative '../person'
require_relative '../book'
require_relative '../rental'

describe 'Test rental class implementation' do
  before(:each) do
    @book = Book.new('Lord of the Flies', 'Martin G')
    @person = Person.new('Troost', 32)
    @rentals = Rental.new('02/02/2090', @person, @book)
  end

  it 'date of rental implementation' do
    expect(@rentals.date).to eql '02/02/2090'
  end
end
