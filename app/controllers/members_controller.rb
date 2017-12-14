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

def new
	@member = Member.new(birthday: Date.new(1994, 1, 1))
end

def edit
	@member = Member.find(params[:id])
end

end

