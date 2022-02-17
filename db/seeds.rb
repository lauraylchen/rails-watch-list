require 'open-uri'

puts 'Deleting db....'
Movie.destroy_all

puts 'Creating movies....'

url = 'http://tmdb.lewagon.com/movie/top_rated'
json = URI.open(url).read
movies = JSON.parse(json)
movies['results'].each do |movie|
  Movie.create!(
    title: movie['title'],
    overview: movie['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}",
    rating: movie['vote_average']
  )
end
