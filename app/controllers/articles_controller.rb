class ArticlesController < ApplicationController
before_action :login_required, except: [:index, :show]

def index
end

end
