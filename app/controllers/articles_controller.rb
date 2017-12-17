class ArticlesController < ApplicationController
before_action :login_required, except: [:index, :show]

def index
	@articles = Atricle.order(released_at: :desc)
end

end
