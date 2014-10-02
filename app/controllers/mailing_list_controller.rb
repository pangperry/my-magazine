class MailingListController < ApplicationController

  def sign_up

  	@name = params[:name]

  	#gb = Gibbon::API.new

	#gb.lists.subscribe({
	#	:id => ENV['MAILCHIMP_SPLASH_SIGNUP_LIST_ID'],
	#	:email => {:email => params[:signup_email]},
	#	:double_optin => true
	#}) 

  	respond_to do |format|

  		format.js
  		
  		format.html do
  			flash[:notice] = "Thanks for signing up, #{@name}"
  			redirect_to root_path
  		end
  	end

  end

end
