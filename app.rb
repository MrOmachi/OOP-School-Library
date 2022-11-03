require_relative './student'
require_relative './teacher'
require_relative './classroom'
require_relative './book'

class App
  attr_accessor :book, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def run
    action_prompt
  end

  def display_all_people
    puts @people
  end

  # Creating a student or teacher and listing them
  def create_a_person
    puts 'Do you want to create a teacher or a student'
    puts
    puts 'Select 1 to create a Student'
    puts 'Select 2 to create a Teacher'

    choice = gets.chomp.to_i
    case choice
    when 1
      create_a_student
    when 2
      create_a_teacher
    else
      puts 'Select a valid option between 1 and 2'
      create_a_person
    end
  end

  def create_a_student
    puts 'Age'
    age = gets.chomp.to_i

    puts 'classroom: (A or B)'
    classroom = gets.chomp

    puts 'Name'
    name = gets.chomp

    has_permission = permit?

    new_student = Student.new(classroom, age, name: name, parent_permission: has_permission)
    @people.push(new_student)

    puts new_student

    puts "Student #{name} with age #{age} and classroom #{classroom.upcase}, was created"
  end

  def create_a_teacher
    puts 'Age'
    age = gets.chomp.to_i

    puts 'Specialization'
    specialization = gets.chomp

    puts 'Name'
    name = gets.chomp

    new_teacher = Teacher.new(specialization, age, name: name)
    @people.push(new_teacher)

    puts "Teacher #{name} with age #{age} and specialized in #{specialization}, was created"

  end

  def permit?
    puts 'Have a parent permit ? [Y / N]'

    permit = gets.chomp.upcase

    case permit
    when 'Y'
      true
    when 'N'
      false
    else
      puts 'Invalid choice'
      permit?
    end
  end

  # Creating books and listing them
  def display_all_books
    puts @books
  end

  def create_a_book
    puts 'Book Author'
    author = gets.chomp

    puts 'Book Title'
    title = gets.chomp

    new_book = Book.new(title, author)
    @books.push(new_book)

    puts "Book #{title} written by #{author} was created"
  end
end
