# Initializing a hash with some movies and their ratings.
movies = {
  Interstellar: 4,
  Star_Wars_IV: 4,
  Inception: 3,
  Troy: 3,
}

# Prompting the user to choose an action.
puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

# Getting the user's choice and converting it to lowercase.
choice = gets.chomp.downcase

# Case structure to handle different choices.
case choice
  when "add"
    # Option to add a movie.
    puts "What's the name of the movie to be added?"
    title = gets.chomp.to_sym
    if movies[title].nil?
      # If the movie is not already in the hash, ask for its rating.
      puts "Rate the movie now... (0 to 4)"
      rating = gets.chomp.to_i
      # Add the movie and its rating to the hash.
      movies[title] = rating
    else 
      # If the movie is already in the hash, inform the user.
      puts "The movie has already been added!"
    end
  when "update"
    # Option to update a movie's rating.
    puts "What's the name of the movie to be updated?"
    title = gets.chomp.to_sym
    if movies[title].nil?
      # If the movie is not found in the hash, inform the user.
      puts "No movie in database with that name!"
    else
      # If the movie is found, ask for the new rating.
      puts "Re-rate the movie... (0 to 4)"
      rating = gets.chomp.to_i
      # Update the movie's rating in the hash.
      movies[title] = rating
      puts "#{title} has been updated with a new rating of #{rating}."
    end
  when "display"
    # Option to display all movies and their ratings.
    movies.each { |movie, rating| 
      puts "#{movie}: #{rating}"
    }
  when "delete"
    # Option to delete a movie.
    puts "Enter the name of the movie to be deleted."
    title = gets.chomp.to_sym
    if movies[title].nil?
      # If the movie is not found in the hash, inform the user.
      puts "Error! The movie could not be found!"
    else
      # If the movie is found, delete it from the hash.
      movies.delete(title)
      puts "#{title} has been deleted!"
      puts "Updated hash:"
      puts movies
    end
  else
    # If the user enters an invalid choice, show an error message.
    puts "Error!"
end