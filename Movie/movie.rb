# Consume the api in the lin above, showing the name, language, genre and summary of a show you have searched for.
require 'open-uri'
require 'json'




def movie_details
    url = 'https://api.tvmaze.com/singlesearch/shows?q=girls'
    output = JSON.parse(open(url).read)
    
puts output['name']
puts output['language']
puts output['genres']
puts output['summary']
end

movie_details

