enable :sessions

post '/signup' do

  user = User.new(params[:user])
  user.password = params[:encrypted_password]

  if user.valid?
	user.save
    redirect "/user_profile"
  else
    # what should happen if the user keyed in invalid date?

    redirect "/"
  end
end 


get "/user_profile" do

erb :"static/user_profile"

end 

get "/login" do

erb :"static/login"

end 

get "/login_user" do

# apply a authentication method to check if a user has entered a valid email and password
  # if a user has successfully been authenticated, you can assign the current user id to a session

end

end 

get "/logout_user" do

  # kill a session when a user choses to logout, for example assign nil to a session
  # redirect to the appropriate page

end 