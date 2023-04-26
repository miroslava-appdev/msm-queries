class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details
    # params looks like this {"an_id"=>"42"}
    the_star = params.fetch("an_id")
    @the_actor = Actor.where({ :id => the_star }).at(0)
    @characters = Character.where({ :actor_id => the_star })
    render({ :template => "actor_templates/actors.html.erb" })
   end

end
