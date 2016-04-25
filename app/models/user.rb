require 'bcrypt'

# attr_accessor :password

class User < ActiveRecord::Base
include BCrypt
	validates :username, presence: true, length: { minimum: 4 }
	validates :firstname, presence: true, length: { minimum: 4 }
	validates :lastname, presence: true, length: { minimum: 4 }
	validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/,
	    message: "Please enter a valid email!" }
	validates :encrypted_password, presence: true, length: { in: 4..60 }

# end


# class Password < ActiveRecord::Base

	 def password
	    @password ||= Password.new(password_hash)
	  end

	  def password=(new_password)
	    @password = Password.create(new_password)
	    self.encrypted_password = @password
	  end

	# def login
	#   @user = User.find_by_email(params[:email])
	#   if @user.password == params[:password]
	#     give_token
	#   else
	#     redirect_to home_url
	#   end
	
end
