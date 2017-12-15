class SessionsController < ApplicationController
def create
	member = Member.authenticate(params[:name], params[:password])
	if member
		session[:member_id] = member.id
	else
		flash.alert = "name pass wrong"
	end
	redirect_to :root
end

def destroy
	sessions.delete(:member_id)
	redirect_to :root
end
end

