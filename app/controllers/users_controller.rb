class UsersController < ApplicationController

  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })

    render({ :template => "user_templates/index.html.erb"})
  end

  def show
    url_username = params.fetch("username")
    matching_usernames = User.where({ :username => url_username })
    @the_user = matching_usernames.at(0)

    if @the_user == nil
      redirect_to("/404")
    else
      render({ :template => "user_templates/show.html.erb"})
    end
  end

  def create
    new_username = params.fetch("new_user")

    a_new_user = User.new
    a_new_user.username = new_username
    a_new_user.save

    redirect_to("/users/" + a_new_user.username.to_s)
    #render({ :template => "user_templates/create.html.erb"})
  end

  def update
    the_name = params.fetch("modify_name")

    matching_users = User.where({ :username => the_name })

    the_user = matching_users.at(0)

    new_name = params.fetch("updated_name")

    the_user.username = new_name

    the_user.save

    redirect_to("/users/" + new_name.to_s)

  end

end