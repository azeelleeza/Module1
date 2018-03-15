require "pry"
require "rest-client"
require "json"

url="https://www.googleapis.com/books/v1/volumes?q=ruby+programming"

def get_books(url)
  response = RestClient.get(url)
  hash = JSON.parse(response)
  hash['items']
end

def print_books(url)
  #  take an array and calls method(s) for each element of it
  books = get_books(url)
  books.each do |book|
    puts '********************'
    puts get_title(book)
    puts get_authors(book)
  end
end

# def get_book(query)
#   books = get_books(query)
#   books.find do|book|
#     query = book["title"]
#
#   end
# end

def get_authors(book)
  book["volumes"]["authors"].join(" & ")
end

def get_title(book)
  book["volumes"]["title"]
end

def get_description(book)
  book["volumes"]["description"]

end
print_books(url)
 # get_book("The Ruby Programming Language")


puts "ran app"
