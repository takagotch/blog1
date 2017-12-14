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

def create
	@member = Member.new(params[:member])
	if @member.save
		redirect_to @member, notice: "member_register"
	else
		render "new"
	end
end

def update
	@member = Member.find(params[:id])
	@member.assign_attributes(params[:member])
	if @member.save
	  redirect_to @member, notice: "update_member_info"
	else
	end
end

def destroy
	@member = Member.find(params[:id])
	@member.destroy
	redirect_to :members, notice: "delete_member"
end

end

