class Topic < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string  :title
      t.text :content
      t.references :category
    end
  end

  def self.down
    drop_table :topics
  end
end

