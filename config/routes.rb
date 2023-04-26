Rails.application.routes.draw do

  #main page
  get("/", { :controller => "application", :action => "homepage" })

  #directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  #movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("movies/:an_id", { :controller => "movies", :action => "movie_details" })

  #actors
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:an_id", { :controller => "actors", :action => "actor_details" })

end
