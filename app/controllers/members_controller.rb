class MembersController < ApplicationControleler
def index
	@members = Member.order("number")
end

def search
	@members = Member.serach(params[:q])
	render "index"
end

def show
	@member = Member.find(params[:id])
end

end

