require_relative '../book'

book = Book.new('La Biblia', 'Dios')

describe '#Review the Book file' do
  it 'returns the correct title' do
    expect(book.title).to eql 'La Biblia'
  end

  it 'returns the correct author' do
    expect(book.author).to eql 'Dios'
  end
end
