require './json'

module ReadDatabase
  def read_database
	if file.exist?('./JSON/people.json')
		persons = File.open('./JSON/people.json')
		data = persons.read
		JSON.parse(data)
	else
        File.write('./JSON/people.json', [])
	end
end

def read_books
	if file.exist?('./JSON/books.json')
		books = File.open('./JSON/books.json')
		data = books.read
		JSON.parse(data)
	else
		File.write('./JSON/books.json', [])
	end
end

def read_rentals
	if file.exist?('./JSON/rentals.json')
		rentals = File.open('./JSON/rentals.json')
		data = rentals.read
		JSON.parse(data)
	else
		File.write('./JSON/rentals.json', [])
	end
end


