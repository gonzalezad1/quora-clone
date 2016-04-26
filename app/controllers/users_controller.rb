enable :sessions
# require 'byebug'

post '/signup' do

  user = User.new(params[:user])
  byebug
  if user.save
    byebug
    redirect "/login"
  else
    # what should happen if the user keyed in invalid date?

    redirect "/"
  end
end 


# get "/user_profile" do


# erb :"static/user_profile"

# end 

get "/login" do

erb :"static/login"

end 


post "/login_user" do
  byebug
  @user = User.user_auth(params[:email], params[:password])
  byebug
  if @user.present?
   session[:user_id] = @user.id
	 redirect '/user_profile'
	else
	 redirect "/login"
	end
end 

get '/user_profile' do

erb :"static/user_profile" 
  end 

get "/logout_user" do
	session[:id] = nil
	redirect "/"

  # kill a session when a user choses to logout, for example assign nil to a session
  # redirect to the appropriate page

end 
