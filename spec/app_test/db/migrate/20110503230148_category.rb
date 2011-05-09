class Category < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string  :name
      t.string :description
    end
  end

  def self.down
    drop_table :categories
  end
end

