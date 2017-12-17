require 'test_helper'

class MemberTest < ActiveSupport::TestCase
test "factory girl" do
	member = FactoryGirl.create(:member)
	assert_equal "Takashi Yoshioka", member.full_name
end
end

