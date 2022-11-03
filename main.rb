require_relative './app'

def options
  puts 'Welcome to School Library App!'
  puts
  puts 'Please choose an option by entrying a number:'

  select_option = [
    '1 - List all books',
    '2 - List all people',
    '3 - Create a person',
    '4 - Create a book',
    '5 - Create a rental',
    '6 - List all rentals for a given person id',
    '7 - Exit'
  ]
  puts select_option
  selected_option = gets.chomp.to_i
  choose_action(selected_option)
end

def choose_action(selected_option)
  case selected_option
  when 1
    display_all_people
  when 2
    'list_all_people'
  when 3
    create_a_person
  when 4
   puts 'create_a_book'
  when 5
   puts 'create_a_rental'
  when 6
   puts 'list_all_rentals'
  when 7
    puts 'Exiting app ...'
    exit
  else
    puts 'Invalid option selected'
    options
  end
end

def action_prompt
  options
end

def main
  app = App.new
  app.run
end

main