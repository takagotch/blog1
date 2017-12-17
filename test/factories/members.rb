FactoryGirl.define do
factory :member do
	sequence(:number) { |n| n + 1 }
	sequence(:name) { |n| "Taro#{n}" }
	full_name "Takashi Yoshioka"
	sequence(:email) { |n| "taka#{n}@example.com" }
	birthday 30.years.ago
end
end

