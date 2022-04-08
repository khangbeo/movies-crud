movies = {
  StarWars: 4.8, 
  Divergent: 4.7
  }

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil? 
    puts "What rating does the movie have? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What's the movie title?"
  title = gets.chomp
  if movies[title.to_sym] == nil
    puts "That movie isn't available!"
  else 
    puts "What's the new rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end
when "display"
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when "delete"
  puts "What's the title?"
  title = gets.chomp
  if movies[title.to_sym]
    movies.delete(title.to_sym)
  else 
    puts "That movie isn't available"
  end
else
  puts "Error!"
end
