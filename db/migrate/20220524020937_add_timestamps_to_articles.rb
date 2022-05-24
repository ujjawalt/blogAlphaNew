class AddTimestampsToArticles < ActiveRecord::Migration[7.0]
  def change
    #This won't work in rails 7 as it add the created_at and updated_at fields even if we don't specify it. rails db"migrate will show error : duplicate column name!!
    add_column :articles, :created_at, :datetime
    add_column :articles, :updates_at, :datetime
  end
end
