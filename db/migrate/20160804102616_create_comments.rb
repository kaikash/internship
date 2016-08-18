class CreateComments < ActiveRecord::Migration[5.0]
  def self.up
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :post, index: true
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
