require_relative '../person'

person = Person.new(25, 'Andy')

describe '#Review Person file' do
  it 'Return the Name' do
    expect(person.name).to eql 'Andy'
  end

  it 'Return the Age' do
    expect(person.age).to eql 25
  end

  it 'Return the answer of the function can_use_services?' do
    expect(person.can_use_services?).to eql true
  end

  it 'Return the answer of the function correct_name' do
    expect(person.correct_name).to eql 'Andy'
  end
end
