class CreateUsers < ActiveRecord::Migration
	def change
	create_table :users do |t|

			t.string :username
			t.string :firstname	
			t.string :lastname
			t.string :email
			t.string :encrypted_password			
			t.timestamps
			end	
	end
end