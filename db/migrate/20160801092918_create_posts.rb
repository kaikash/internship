class CreatePosts < ActiveRecord::Migration[5.0]
  def self.up
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
