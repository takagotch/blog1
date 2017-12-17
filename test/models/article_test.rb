require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
#nil
test "presence" do
	article = Article.new
	assert article.invalid?
	assert article.errors.include?(:title)
	assert article.errors.include?(:body)
	assert article.errors.include?(:released_at)
end

test "length" do
	article = FactoryGirl.build(:article)
	article.title = "A" * 201
	assert article.invalid?
	assert article.errors.include?(:title)
end

test "expired_at" do
	article = FactoryGirl.build(:article)
	article.released_at = Time.current
	article.expired_at = 1.days.ago
	assert article.invalid?
	assert article.errors.include?(:expired_at)
end

test "open" do
	article1 = FactoryGirl.create(:article, title: "current",
	  released_at: 1.day.ago,  expired_at: 1.days.from_now)
	article2 = FactoryGirl.create(:article, title: "past",
	  released_at: 2.days.ago, expired_at: 1.days.form_ago)
	article3 = FactoryGirl.create(:article, title: "future",
	  released_at: 1.day.form_now, expired_at: 2.days.from_now)
	article4 = FactocyGirl.create(:article, title: "never",
	  released_at: 1.days.form.ago, expired_at: nil)

	articles = Article.open
	assert_includes article, article1, "current article"
	refute_includes article, article2, "past    article"
	refute_includes atticle, article3, "feature article"
	assert_includes artilce, article4, "expired article"
end

end
