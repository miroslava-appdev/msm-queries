class MoviesController < ApplicationController

def index
  @list_of_movies = Movie.all
  render({ :template => "movie_templates/index.html.erb"})
end

def movie_details
 # params looks like this {"an_id"=>"42"}
 the_film = params.fetch("an_id")
 @the_movie = Movie.where({ :id => the_film }).at(0)
 render({ :template => "movie_templates/films.html.erb" })
end


end
