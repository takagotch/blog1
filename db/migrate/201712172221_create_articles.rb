class CreateArticles < ActiveRecord::Migration
def change
create_table :articles do |t|
	t.string   :title, null: false
	t.text     :body,  null: false
	t.datetime :released_at, null: false
	t.datetime :expired_at
	t.boolean  :mumber_only, null: false,

	t.timestamps             null: false
end
end
end

