require_relative './app'
require './choose_action'

def options
  puts 'Welcome to School Library App!'
  puts
  puts 'Please choose an option by entrying a number:'

  select_option = [
    '1 - List all people',
    '2 - List all books',
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

def action_prompt
  options
end

def main
  app = App.new
  app.run
end

main
