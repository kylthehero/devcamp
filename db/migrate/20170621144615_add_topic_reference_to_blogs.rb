class AddTopicReferenceToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :topic, :ref
  end
end
