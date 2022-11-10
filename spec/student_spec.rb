require_relative '../student'

student = Student.new(25, 'A')

describe '#Review student file' do
  it 'Return the Classroom' do
    expect(student.classroom).to eql 'A'
  end

  it 'Return the Age' do
    expect(student.age).to eql 25
  end

  it 'Return the Name' do
    expect(student.name).to eql 'Unknown'
  end

  it 'Return the answer of the function play_hookey?' do
    expect(student.play_hookey).to eql '¯(ツ)/¯'
  end
end
