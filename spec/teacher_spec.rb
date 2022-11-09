require_relative '../teacher'

teacher = Teacher.new(25, 'English')

describe '#Review teacher file' do
  it 'Return the specialization' do
    expect(teacher.specialization).to eql 'English'
  end

  it 'Return the Age' do
    expect(teacher.age).to eql 25
  end

  it 'Return the Name' do
    expect(teacher.name).to eql 'Unknown'
  end

  it 'Return the Type' do
    expect(teacher.type).to eql 'Teacher'
  end

  it 'Return the answer of the function can_use_services?' do
    expect(teacher.can_use_services?).to eql true
  end
end
