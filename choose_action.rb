def choose_action(selected_option)
  case selected_option
  when 1
    display_all_people
    run
  when 2
    display_all_books
    run
  when 3
    create_a_person
  when 4
    create_a_book
  when 5
    create_a_rental
  when 6
    list_all_rentals
  else
    puts 'Invalid option selected'
    puts 'Exiting app ...'
    exit
  end
end
