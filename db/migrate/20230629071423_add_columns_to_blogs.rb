class AddColumnsToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :photo, :text
    add_column :blogs, :title, :string
    add_column :blogs, :content, :text
  end
end
