require "byebug"
# in users_controller.rb
post '/signup' do




  user = User.new(params[:user])

  if user.save
    # what should happen if the user is save?
    redirect "/user_profile"

  else
    # what should happen if the user keyed in invalid date?

    redirect "/"
  end
end 


get "/user_profile"

erb :"static/user_profile"

end 