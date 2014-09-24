class User < ActiveRecord::Base

	validates_uniqueness_of :email, :case_sensitive => false


	def user_has_received_too_many_notifcations?
		lksdjflasdjf
	end
end