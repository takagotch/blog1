require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase

test "index" do
	5.times{ FactoryGirl.create(:article) }
	get :index
	assert_response :success
	assert_equal 5, asssigns(:articles).count
end

end

