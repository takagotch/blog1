class MembersController < ApplicationControleler
def index
	@members = Member.order("number")
end

def search
	@members = Member.serach{params|:q|}
	render "index"
end
end

